#include "allheaders.h"
static const char *seltext = " X "
		" x ";

#include <iostream>
#include <string.h>
#include <vector>
using namespace std;
char* orientation(PIX* pix);

#include <tesseract/baseapi.h>
#include <leptonica/allheaders.h>
#include <stdio.h>
#include <iostream>

char* orientation(PIX *image) {
	try {
		tesseract::TessBaseAPI *api = new tesseract::TessBaseAPI();
		api->Init("tessdata", "eng");
		api->SetPageSegMode(tesseract::PSM_AUTO_OSD);
		api->SetImage(image);
		char* osd = NULL;
		osd = api->GetOsdText(0);
		return osd;

	} catch (std::exception& e) {
		printf("%s\n", e.what());
		return NULL;
	}
}

PIX* lineRemove(PIX *pixs, int lineLength) {
	l_float32 angle, conf, deg2rad;
	PIX *pix1, *pix2, *pix3, *pix4, *pix5, *pix88;
	PIX *pix6, *pix7, *pix8, *pix9;
	PIXA *pixa;
	L_REGPARAMS *rp;

	deg2rad = 3.14159 / 180.;
	pixa = pixaCreate(0);
	int d = pixGetDepth(pixs);
	if (d == 32) {
		pix88 = pixConvertTo8(pixs, 0);
	} else if (d == 8) {
		pix88 = pixs;
	} else if (d == 1) {
		pix88 = pixConvertTo8(pixs, 0);
	}
	/* Threshold to binary, extracting much of the lines */
	pix1 = pixThresholdToBinary(pix88, 170);
	pixaAddPix(pixa, pix1, L_INSERT);

	/* Find the skew angle and deskew using an interpolated
	 * rotator for anti-aliasing (to avoid jaggies) */
	pixFindSkew(pix1, &angle, &conf);
	pix2 = pixRotateAMGray(pix88, deg2rad * angle, 255);
	pixaAddPix(pixa, pix2, L_INSERT);

	/* Extract the lines to be removed */
	pix3 = pixCloseGray(pix2, lineLength, 1);
	pixaAddPix(pixa, pix3, L_INSERT);

	/* Solidify the lines to be removed */
	pix4 = pixErodeGray(pix3, 1, 5);
	pixaAddPix(pixa, pix4, L_INSERT);

	/* Clean the background of those lines */
	pix5 = pixThresholdToValue(NULL, pix4, 210, 255);
	pixaAddPix(pixa, pix5, L_INSERT);

	pix6 = pixThresholdToValue(NULL, pix5, 200, 0);
	pixaAddPix(pixa, pix6, L_COPY);

	/* Get paint-through mask for changed pixels */
	pix7 = pixThresholdToBinary(pix6, 210);
	pixaAddPix(pixa, pix7, L_INSERT);

	/* Add the inverted, cleaned lines to orig.  Because
	 * the background was cleaned, the inversion is 0,
	 * so when you add, it doesn't lighten those pixels.
	 * It only lightens (to white) the pixels in the lines! */
	pixInvert(pix6, pix6);
	pix8 = pixAddGray(NULL, pix2, pix6);
	pixaAddPix(pixa, pix8, L_COPY);

	pix9 = pixOpenGray(pix8, 1, 9);
	pixaAddPix(pixa, pix9, L_INSERT);
	pixCombineMasked(pix8, pix9, pix7);
	pixaAddPix(pixa, pix8, L_INSERT);

	//	pixaDestroy(&pixa);
	pixDestroy(&pixs);
	pixDestroy(&pix6);
	return pix8;
}

void checkFormat(const char* fileIn, const char* tempFilePath, PIX *pixs) {
	char* ext, *format;
	splitPathAtExtension(fileIn, NULL, &ext);

	int d = pixGetDepth(pixs);

	if (!strcmp(ext, ".bmp"))
		format = "BMP";
	else if (!strcmp(ext, ".jpg"))
		format = "JPEG";
	else if (!strcmp(ext, ".png"))
		format = "PNG";
	else if (!strcmp(ext, ".tif"))
		format = "TIFF_G4";
	else if (!strcmp(ext, ".pnm"))
		format = "PNM";
	if (d != 1 && !strcmp(format, "TIFF_G4")) {
		format = "TIFF";
	}

	lept_free(ext);
	cout << "Format : " << format << endl;
	if (strcmp(format, "BMP") == 0)
		pixWrite(tempFilePath, pixs, IFF_BMP);
	else if (strcmp(format, "JPEG") == 0)
		pixWrite(tempFilePath, pixs, IFF_JFIF_JPEG);
	else if (strcmp(format, "PNG") == 0)
		pixWrite(tempFilePath, pixs, IFF_PNG);
	else if (strcmp(format, "TIFF") == 0)
		pixWrite(tempFilePath, pixs, IFF_TIFF_ZIP);
	else if (strcmp(format, "TIFF_G4") == 0)
		pixWrite(tempFilePath, pixs, IFF_TIFF_G4);
	else if (strcmp(format, "PNM") == 0)
		pixWrite(tempFilePath, pixs, IFF_PNM);
}
PIX* processImages(PIX *pixs) {
	PIX *pix1, *pixdd, *pixd, *pixk, *pixvws, *pixk1, *pixs1, *pixs2, *pixk2,
			*pixMask;
	SEL *sel3;
	int horizonal = 151;
	int vertical = 81;
	pixk1 = pixConvertTo1(pixs, 130);
	sel3 = selCreateFromString("ooooXoooo", 3, 3, NULL);
	pixMask = pixHMT(NULL, pixk1, sel3);
	pixk1 = pixSubtract(NULL, pixk1, pixMask);
	sel3 = selCreateFromString(seltext, 2, 3, NULL);
	pixMask = pixDilate(NULL, pixk1, sel3);

	pix1 = lineRemove(pixMask, horizonal);
	pixdd = pixRotate90(pix1, 1);
	pix1 = lineRemove(pixdd, vertical);
	pixdd = pixRotate90(pix1, -1);
	pixContrastTRC(pixdd, pixdd, 2);

	return pixdd;
}
void splitImages(const char* inputFolder, const char* outputFolder) {
	char *str, *fname, *filename, *ext, *baseName, *filePath, *tempFile,
			*format, *tempFilePath;
	char buffer[512];

	l_int32 i, count, npages, length, noOfFiles, j;
	FILE *fp;
	NUMA *naflags, *nasizes;
	PIX *pix, *pixd;
	PIXA *pixa;
	PIXCMAP *cmap;
	SARRAY *savals, *satypes, *sa;
	vector<string>::iterator iter;
	sa = getFilenamesInDirectory(inputFolder);
	sarrayWriteStream(stderr, sa);
	sarraySort(sa, sa, L_SORT_INCREASING);
	noOfFiles = sarrayGetCount(sa);
	for (i = 0; i < noOfFiles; i++) {
		fname = sarrayGetString(sa, i, 0);
		splitPathAtExtension(fname, &baseName, &ext);
		filePath = genPathname(inputFolder, fname);
		fp = lept_fopen(filePath, "rb");
		if (fileFormatIsTiff(fp)) {
			tiffGetCount(fp, &npages);
			lept_fclose(fp);
			/* split into separate page files */
			if (npages == 1) {
				pix = pixReadTiff(filePath, 0);
				pix = processImages(pix);

				char* osd = orientation(pix);
				if (atoi(osd) == 0)
					pix = pixRotateOrth(pix, 0);
				else if (atoi(osd) == 90)
					pix = pixRotateOrth(pix, 1);
				else if (atoi(osd) == 180)
					pix = pixRotateOrth(pix, 2);
				else if (atoi(osd) == 270)
					pix = pixRotateOrth(pix, 3);
				
				sprintf(buffer, "%s.tif", baseName);
				tempFilePath = genPathname(outputFolder, buffer);
				pixSetResolution(pix, 300, 300);
				pixWrite(tempFilePath, pixConvertTo32(pix), IFF_TIFF_LZW);
				pixDestroy(&pix);
			} else {
				for (j = 0; j < npages; j++) { /* read one beyond to catch error */
					pix = pixReadTiff(filePath, j);
					pix = processImages(pix);
					sprintf(buffer, "%s.tif", baseName, j);
					tempFilePath = genPathname(outputFolder, buffer);
					pixSetResolution(pix, 300, 300);
					pixWriteTiff(tempFilePath, pixConvertTo32(pix),
							IFF_TIFF_LZW, "a+");
					pixDestroy(&pix);
				}
			}
		}
	}
}






int main(int argc, char *argv[]) {
	splitImages(argv[1], argv[2]);
	return 0;
}
