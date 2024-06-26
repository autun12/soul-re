#include "common.h"

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadGetMemorySize);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadInit);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadInstallUpdateFunc);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadInitVolume);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadSetMasterVolume);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadStartMasterVolumeFade);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadSetSfxMasterVolume);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadSetMusicMasterVolume);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadStartMusicMasterVolFade);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadShutdown);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadSlotUpdateWrapper);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadSlotUpdate);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadCreateFourCharID);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadLoadDynamicSoundBank);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadLoadDynamicSoundBankReturn);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadLoadDynamicSoundBankReturn2);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadFreeDynamicSoundBank);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadOpenDynamicSoundBank);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadLoadDynamicSfx);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadFreeDynamicSfx);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadRelocateMusicMemoryBegin);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadRelocateMusicMemoryEnd);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadRelocateSfxMemory);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadGetNumLoadsQueued);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadPurgeLoadQueue);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadProcessLoadQueue);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadLoadDynamicSfxAbort);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadLoadDynamicSfxDone);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadLoadDynamicSfxReturn);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadWaveMalloc);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadGetSramBlockAddr);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadWaveFree);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadFreeSingleDynSfx);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", setSramFullAlarm);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadLoadSingleDynSfx);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", HackCallback);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadLoadDynamicSfxReturn2);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadCheckSramFragmented);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadProcessSramDefrag);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadIsSfxLoaded);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadInitSequenceSlot);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadWaitForSramTransferComplete);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadInitReverb);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadShutdownReverb);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadGetReverbMode);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadGetReverbSize);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadGetReverbDepth);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadGetNumDynamicSequences);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadAssignDynamicSequence);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadGetTempoFromDynamicSequence);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadSetSlotTempo);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadStartSlot);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadStopSlot);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadStopAllSlots);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadDisableSlot);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadEnableSlot);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadPauseSlot);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadResumeSlot);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadGetSlotStatus);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadAllNotesOff);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadMuteChannels);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadUnMuteChannels);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadInstallEndSequenceCallback);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadSetUserVariable);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadSetNoUpdateMode);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadPauseSound);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadCancelPauseSound);

INCLUDE_ASM("asm/nonmatchings/Game/PSX/AADLIB", aadResumeSound);
