#ifndef _LIBS_H_
#define _LIBS_H_

/*TODO: Remove LIBS.h when adding PSYQ headers*/

#define getScratchAddr(offset)  ((unsigned long *)(0x1f800000+(offset)*4))

int rand();
void ApplyMatrix(MATRIX *, SVECTOR *, VECTOR *);
void ApplyMatrixSV(MATRIX *, SVECTOR *, SVECTOR *);
void ApplyMatrixLV(MATRIX *, VECTOR *, VECTOR *);
void TransposeMatrix(MATRIX *, MATRIX *);
void EnterCriticalSection();
void ExitCriticalSection();
int GetRCnt(int);
void ClearOTagR(unsigned long *, int);

#endif
