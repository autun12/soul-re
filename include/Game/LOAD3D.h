#ifndef _LOAD3D_H_
#define _LOAD3D_H_

void LOAD_CleanUpBuffers();
void LOAD_StopLoad();
long LOAD_HashName(char *string);
long LOAD_HashUnit(char *name);
void LOAD_InitCdLoader(char *bigFileName, char *voiceFileName);

#endif
