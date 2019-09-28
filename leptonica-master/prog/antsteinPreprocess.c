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

l_float32 skewCorrection(char *filein,char *fileout)
{
	l_int32      ret;
	l_float32    deg2rad;
	l_float32    angle, conf, score;
	PIX         *pix, *pixd,*pixs;
	pixd = NULL;
	deg2rad = 3.1415926535 / 180.;
	pixs = pixRead(filein);
	int d = pixGetDepth(pixs);
	printf("Depth2 : %d\n",d);
	if (pixs == NULL){
		printf("Error in reading...\n");
		return 0;
	}
	pix = pixConvertTo1(pixs, 130);
	pixs = pixScale(pix,0.3,0.3);
	pixFindSkew(pixs,&angle,&conf);
	pixd = pixRotate(pix, deg2rad * angle, L_ROTATE_AREA_MAP,L_BRING_IN_WHITE, 0, 0);
	pixWriteImpliedFormat(fileout, pixd, 0, 0);
	pixDestroy(&pixs);
	pixDestroy(&pix);
	pixDestroy(&pixd);
	return angle;
}

int noiseRemoval(char *inputFile,char *outputFile)
{
	PIX          *pixs, *pix1, *pix2, *pix3, *pix4, *pix5;
	PIX          *pix6, *pix7, *pix8, *pix9, *pix10,*pix88;
	PIXA         *pixa1;
	SEL          *sel1, *sel2, *sel3, *sel4;
	L_REGPARAMS  *rp;


	/*  Normalize for rapidly varying background */
	pixa1 = pixaCreate(0);
	pixs = pixRead(inputFile);

	int d = pixGetDepth(pixs);
	printf("Depth1 : %d\n",d);
	if(d == 32){
		pixs = pixConvertTo32(pixs);
		pix88 = pixConvertRGBToGray(pixs,0.0,0.0,0.0);
	}else if (d==8){
		pix88 = pixConvert8To32(pixs);
		pix88 = pixConvertRGBToGray(pix88,0.0,0.0,0.0);
	}else if(d == 1){
		pix88 = pixConvert1To32(NULL, pixs, 0xffffffff, 0);
		pix88 = pixConvertRGBToGray(pix88,0.0,0.0,0.0);


	}
	//	pix88 = pixConvert32To8(pixs);
	pix1 = pixBackgroundNormFlex(pix88, 7, 7, 1, 1, 10);
	pixaAddPix(pixa1, pix1, L_INSERT);

	/* Remove the background */
	pix2 = pixGammaTRCMasked(NULL, pix1, NULL, 1.0, 100, 175);

	/* Binarize */
	pix3 = pixThresholdToBinary(pix2, 180);
	pixaAddPix(pixa1, pix3, L_INSERT);

	/* Remove the speckle noise up to 2x2 */
	sel1 = selCreateFromString(selstr2, 4, 4, "speckle2");
	pix4 = pixHMT(NULL, pix3, sel1);
	pixaAddPix(pixa1, pix4, L_INSERT);
	sel2 = selCreateBrick(2, 2, 0, 0, SEL_HIT);
	pix5 = pixDilate(NULL, pix4, sel2);
	pixaAddPix(pixa1, pix5, L_INSERT);
	pix6 = pixSubtract(NULL, pix3, pix5);
	pixaAddPix(pixa1, pix6, L_INSERT);

	/* Remove the speckle noise up to 3x3 */
	sel3 = selCreateFromString(selstr3, 5, 5, "speckle3");
	pix7 = pixHMT(NULL, pix3, sel3);
	pixaAddPix(pixa1, pix7, L_INSERT);
	sel4 = selCreateBrick(3, 3, 0, 0, SEL_HIT);
	pix8 = pixDilate(NULL, pix7, sel4);
	pixaAddPix(pixa1, pix8, L_INSERT);
	pix9 = pixSubtract(NULL, pix3, pix8);
	pixaAddPix(pixa1, pix9, L_INSERT);
	pixWriteImpliedFormat(outputFile, pix9, 0, 0);  /* 7 */




	l_int32      ret;
	l_float32    deg2rad;
	l_float32    angle, conf, score;
	PIX         *pix11, *pixdd,*pixss,*pixd;
	pixdd = NULL;
	deg2rad = 3.1415926535 / 180.;
	d = pixGetDepth(pix9);
	printf("Depth2 : %d\n",d);
	if (pix9 == NULL){
		printf("Error in reading...\n");
		return 0;
	}
	pix11 = pixConvertTo1(pix9, 130);
	pixss = pixScale(pix11,0.5,0.5);
	pixFindSkew(pixss,&angle,&conf);
	pixdd = pixRotate(pix11, deg2rad * angle, L_ROTATE_AREA_MAP,L_BRING_IN_WHITE, 0, 0);
	
	//pixd = pixOrientCorrect(pixdd,1,1, NULL, NULL, NULL, 1);

	pix11 = pixConvert1To8(NULL, pixdd, 0, 255);
	pix2 = pixBilateral(pix11, 50.0, 60.0,10, 4);
	pix3 = pixThresholdToBinary(pix2,200);
	pixInvert(pix3, pix11);
/*
	pix11 = pixConvert1To8(NULL, pixdd, 0, 255);
	pix1 = pixSobelEdgeFilter(pix11, L_HORIZONTAL_EDGES);
	pix11 = pixThresholdToBinary(pix1,250);
	pixInvert(pix11, pix2);
*/
	pixWriteImpliedFormat("hello.tif", pix11, 0, 0);

	sel2 = selCreateBrick(2,2, 0, 0, SEL_HIT);
	pixd = pixDilate(NULL, pixdd, sel2);

	pixWriteImpliedFormat(outputFile, pixd, 0, 0);
	pixDestroy(&pixss);
	pixDestroy(&pix11);
	pixDestroy(&pixdd);
	pixDestroy(&pixd);




	selDestroy(&sel1);
	selDestroy(&sel2);
	selDestroy(&sel3);
	selDestroy(&sel4);
	pixDestroy(&pix2);
	pixaDestroy(&pixa1);
/*
	pixaDestroy(&pix1);
	pixaDestroy(&pix3);
	pixaDestroy(&pix4);
	pixaDestroy(&pix5);
	pixaDestroy(&pix6);
	pixaDestroy(&pix7);
	pixaDestroy(&pix8);
	pixaDestroy(&pix88);
	pixaDestroy(&pix9);
*/

//	float result = skewCorrection(outputFile,outputFile);

	return 0;
}



int main(int argc,char *argv[]){
	clock_t t;
	t = clock();

	int result = noiseRemoval(argv[1],argv[2]);

	t = clock() - t;
	double time_taken = ((double)t)/CLOCKS_PER_SEC; // in seconds
	printf("Execution Time : %f\n",time_taken);

	return 0;
}
