
#include "allheaders.h"
/* HMT (with just misses) for speckle up to 2x2 */
static const char *selstr2 = "oooo"
		"oC o"
		"o  o"
		"oooo";
/* HMT (with just misses) for speckle up to 3x3 */
static const char *selstr3 = "ooooo"
		"oC  o"
		"o   o"
		"o   o"
		"ooooo";
#include "allheaders.h"
static const char *seltext = "x    "
		"x Oo "
		"x    "
		"xxxxx";
static const char *seltext3 = " O "
		" x ";
static const char *seltext1 = "  x"
		"oCx"
		"  x";
static const char *seltext2 = " xx"
		"oCx"
		"oo ";

static const char *sel_4_9 = "oxo"
		"oXo"
		"ooo";

static const char *selstr1 = "    "
		" X  "
		" x  "
		"    ";



/* deskew */
#define   DESKEW_REDUCTION      2      /* 1, 2 or 4 */

/* sweep only */
#define   SWEEP_RANGE           10.    /* degrees */
#define   SWEEP_DELTA           0.2    /* degrees */
#define   SWEEP_REDUCTION       2      /* 1, 2, 4 or 8 */

/* sweep and search */
#define   SWEEP_RANGE2          10.    /* degrees */
#define   SWEEP_DELTA2          1.     /* degrees */
#define   SWEEP_REDUCTION2      2      /* 1, 2, 4 or 8 */
#define   SEARCH_REDUCTION      2      /* 1, 2, 4 or 8 */
#define   SEARCH_MIN_DELTA      0.01   /* degrees */

#include <time.h>
#include <iostream>
using namespace std;
#include <opencv2/opencv.hpp>
#include <opencv2/core/utility.hpp>
#include <opencv2/imgproc.hpp>
#include <opencv2/imgcodecs.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/imgproc/types_c.h>

using namespace cv;

cv::Mat pix8ToMat(Pix *pix) {
	startTimer();
	Pix * pix8 = pixConvertTo8(pix, 0);
	cv::Mat mat(cv::Size(pix8->w, pix8->h), CV_8UC1);
	uint32_t *line = pix8->data;
	for (uint32_t y = 0; y < pix8->h; ++y) {
		for (uint32_t x = 0; x < pix8->w; ++x) {
			mat.at<uchar>(y, x) = GET_DATA_BYTE(line, x);
		}
		line += pix8->wpl;
	}
	fprintf(stdout, "Time to convert pix to Mat : %6.3f sec\n", stopTimer());
	return mat;
}
PIX* invertText(PIX *pix) {
	PIX *pix1, *pix2, *pix3, *pix4, *pix5;
	PIX *thresh, *thresh1, *thresh2, *thresh_inv;
	SEL *sel;
	l_int32 area;
	thresh = pixThresholdToBinary(pixConvertTo8(pix, 130), 180);
	thresh_inv = pixInvert(NULL, thresh);

	sel = selCreateBrick(6, 6, 1, 1, SEL_HIT);
	pix2 = pixErode(NULL, thresh, sel);

//	pixWriteImpliedFormat("erode.tif", pix2, 0, 0);
	BOXA* bb = pixConnCompBB(pix2, 8); // to find bounding boxes of all connected components      on the image
	BOX *box;
	l_int32 w, h, pixels;
	pix4 = thresh;
	for (int i = 0; i < boxaGetCount(bb); i++) {
		box = boxaGetBox(bb, i, L_CLONE);
		area = box->w * box->h;
		if (area > 500 and box->x > 2 and box->w > 50 and box->h < box->w) {
			PIX* croppedImage = pixInvert(NULL,
					pixClipRectangle(thresh, box, NULL));
			pixRasterop(pix4, box->x, box->y, box->w, box->h, PIX_SRC,
					croppedImage, 0,
					0);

			pixDestroy(&croppedImage);
		}
	}
	return (pix4);
}


int main(int argc, char *argv[]) {
	clock_t t;
	t = clock();
	char* inputFile = argv[1];
	char* outputFile = argv[2];
	BOX *box;
	PIX *pix1, *pix2, *pixdd, *pixs, *pixd, *pixk, *pixk1, *pixs1, *pixs2,
			*pixk2, *pixMask;
	l_float32 deg2rad = 3.14159 / 180.;
	SEL *sel3;
	pixs = pixRead(inputFile);
	PIX *pixInverted = invertText(pixs);
	pixInverted = invertText(pixInverted);
	pixSetResolution(pixInverted, 200, 200);
	pixWriteTiff(outputFile, pixInverted, 7, "w");
	pixs = pixRead(outputFile);
	return 0;
}
