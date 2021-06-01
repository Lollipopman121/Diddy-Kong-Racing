/* The comment below is needed for this file to be picked up by generate_ld */
/* RAM_POS: 0x80062290 */

#include "types.h"
#include "macros.h"

/************ .rodata ************/

const char D_800E6C20[] = "CSP: oh oh \n";

// Jump table in __CSPVoiceHandler
const u32 D_800E6C30[] = {
    0x8006247C, 0x80062978, 0x800626F8, 0x80062978, 
    0x80062978, 0x800624AC, 0x800624FC, 0x8006270C, 
    0x80062978, 0x8006248C, 0x80062720, 0x80062978, 
    0x80062924, 0x80062944, 0x80062968, 0x80062788, 
    0x800627AC, 0x80062880, 0x80062978, 0x80062978, 
    0x80062978, 0x800626F8, 0x80062564, 0x80062668
};

// Jump table in __CSPHandleNextSeqEvent
const u32 D_800E6C90[] = {
    0x80062A90, 0x80062AF0, 0x80062AA8, 0x80062AC0, 
    0x80062AF0, 0x80062AF0, 0x80062AF0, 0x80062AF0, 
    0x80062AF0, 0x80062AF0, 0x80062AF0, 0x80062AF0, 
    0x80062AF0, 0x80062AF0, 0x80062AF0, 0x80062AF0, 
    0x80062AF0, 0x80062AE8, 0x80062AE8, 0x80062AE8
};

// Jump table in __CSPHandleMIDIMsg
const u32 D_800E6CE0[] = {
    0x80063068, 0x800637CC, 0x800637CC, 0x800637CC, 
    0x800637CC, 0x800637CC, 0x800637CC, 0x800637CC, 
    0x800637CC, 0x800637CC, 0x800637CC, 0x800637CC, 
    0x800637CC, 0x800637CC, 0x800637CC, 0x800637CC, 
    0x80062C38, 0x800637CC, 0x800637CC, 0x800637CC, 
    0x800637CC, 0x800637CC, 0x800637CC, 0x800637CC, 
    0x800637CC, 0x800637CC, 0x800637CC, 0x800637CC, 
    0x800637CC, 0x800637CC, 0x800637CC, 0x800637CC, 
    0x800630C0, 0x800637CC, 0x800637CC, 0x800637CC, 
    0x800637CC, 0x800637CC, 0x800637CC, 0x800637CC, 
    0x800637CC, 0x800637CC, 0x800637CC, 0x800637CC, 
    0x800637CC, 0x800637CC, 0x800637CC, 0x800637CC, 
    0x8006319C, 0x800637CC, 0x800637CC, 0x800637CC, 
    0x800637CC, 0x800637CC, 0x800637CC, 0x800637CC, 
    0x800637CC, 0x800637CC, 0x800637CC, 0x800637CC, 
    0x800637CC, 0x800637CC, 0x800637CC, 0x800637CC, 
    0x800636E0, 0x800637CC, 0x800637CC, 0x800637CC, 
    0x800637CC, 0x800637CC, 0x800637CC, 0x800637CC, 
    0x800637CC, 0x800637CC, 0x800637CC, 0x800637CC, 
    0x800637CC, 0x800637CC, 0x800637CC, 0x800637CC, 
    0x80063124, 0x800637CC, 0x800637CC, 0x800637CC, 
    0x800637CC, 0x800637CC, 0x800637CC, 0x800637CC, 
    0x800637CC, 0x800637CC, 0x800637CC, 0x800637CC, 
    0x800637CC, 0x800637CC, 0x800637CC, 0x800637CC, 
    0x80063714
};

/*********************************/

GLOBAL_ASM("asm/non_matchings/unknown_061D30/alCSPNew.s")
GLOBAL_ASM("asm/non_matchings/unknown_061D30/__CSPVoiceHandler.s")
GLOBAL_ASM("asm/non_matchings/unknown_061D30/__CSPPostNextSeqEvent.s")
GLOBAL_ASM("asm/non_matchings/unknown_061D30/__CSPHandleNextSeqEvent.s")
GLOBAL_ASM("asm/non_matchings/unknown_061D30/__CSPHandleMIDIMsg.s")
GLOBAL_ASM("asm/non_matchings/unknown_061D30/__CSPHandleMetaMsg.s")
GLOBAL_ASM("asm/non_matchings/unknown_061D30/__CSPRepostEvent.s")
GLOBAL_ASM("asm/non_matchings/unknown_061D30/__setUsptFromTempo.s")
