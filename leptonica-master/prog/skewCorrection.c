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



/*
   void skewCorrection(char* infile,char* outfile){


   }
 */


extern "C" int skewCorrection(char *filein,char *fileout)
{
	l_float32    deg2rad;
	l_float32    angle, conf, score;
	PIX         *pix, *pixs, *pixd,*pix_temp;
	pixd = NULL;
	deg2rad = 3.1415926535 / 180.;
	if ((pixs = pixRead(filein)) == NULL){
		return 0;
	}
	pix = pixConvertTo1(pixs, 130);
	pix_temp = pixScale(pix,0.3,0.3);
	pixFindSkewSweepAndSearchScorePivot(pix_temp, &angle, &conf, &score,
			SWEEP_REDUCTION2, SEARCH_REDUCTION,
			0.0, SWEEP_RANGE2, SWEEP_DELTA2,
			SEARCH_MIN_DELTA,
			L_SHEAR_ABOUT_CENTER);
	pixd = pixRotate(pixs, deg2rad * angle, L_ROTATE_AREA_MAP,L_BRING_IN_WHITE, 0, 0);
	pixWriteImpliedFormat(fileout, pixd, 0, 0);
	pixDestroy(&pixs);
	pixDestroy(&pix);
	pixDestroy(&pixd);
	return 1;
}

