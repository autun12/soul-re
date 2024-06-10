#ifndef _VRAM_H_
#define _VRAM_H_

// size: 0x8
typedef struct VramSize {
    // offset: 0000
    short x;
    // offset: 0002
    short y;
    // offset: 0004
    short w;
    // offset: 0006
    short h;
} VramSize;

// size: 0x1C
typedef struct _BlockVramEntry {
    // offset: 0000 (28 bytes)
    struct _BlockVramEntry *next;
    // offset: 0004
    unsigned char type;
    // offset: 0005
    unsigned char flags;
    // offset: 0006
    short time;
    // offset: 0008
    long ID;
    // offset: 000C
    short x;
    // offset: 000E
    short y;
    // offset: 0010
    short w;
    // offset: 0012
    short h;
    // offset: 0014
    long area;
    // offset: 0018 (4 bytes)
    // size: 0x4
    union {
        struct _StreamUnit *streamUnit;
        // offset: 0000 (36 bytes)
        struct _ObjectTracker *streamObject;
        // offset: 0000 (16 bytes)
        struct _ButtonTexture *button;
    } udata;
} BlockVramEntry;

void VRAM_LoadReturn(void *dataPtr, void *data1, void *data2);
void VRAM_ClearVramBlock(BlockVramEntry *block);
BlockVramEntry *VRAM_CheckVramSlot(short *x, short *y, short w, short h, int type, int startY);
void VRAM_RearrangeVramsLayer(long whichLayer);

#endif
