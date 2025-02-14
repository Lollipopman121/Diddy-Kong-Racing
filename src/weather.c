/* The comment below is needed for this file to be picked up by generate_ld */
/* RAM_POS: 0x800AB1F0 */

#include "weather.h"
#include "types.h"
#include "macros.h"
#include "structs.h"
#include "f3ddkr.h"
#include "PR/libultra.h"
#include "camera.h"
#include "tracks.h"
#include "audio_spatial.h"
#include "textures_sprites.h"
#include "math_util.h"
#include "objects.h"

/************ .rodata ************/

const char D_800E87F0[] = "\nMaximum limit of %d lens flare switches, per level, has been exceeded.";

/*********************************/

/************ .data ************/

unk800E2850 D_800E2850[3] = {
    { 0,  0x40, (TextureHeader *)0, 0xFE000000, 0xFE000000, 0xFE000000, 0x03FFFFFF, 0x03FFFFFF, 0x03FFFFFF, 4, 4, 8, 8 },
    { 0, 0x100, (TextureHeader *)1, 0xFE000000, 0xFE000000, 0xFE000000, 0x03FFFFFF, 0x03FFFFFF, 0x03FFFFFF, 4, 4, 8, 8 },
    { 0,  0x08, (TextureHeader *)2, 0xFE000000, 0xFE000000, 0xFE000000, 0x03FFFFFF, 0x03FFFFFF, 0x03FFFFFF, 4, 4, 8, 8 },
};

unk800E28D4 *D_800E28D4 = NULL;
unk800E2850 D_800E28D8 = { NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };

// Not sure about typing for the following.
Vertex *D_800E2904 = 0;
s32 D_800E2908 = 0;
s32 *D_800E290C = NULL;
s16 *D_800E2910 = NULL;
Vertex *D_800E2914[2] = { NULL, NULL };
s32 *gWeatherAssetTable = NULL; // List of Ids
s32 gWeatherAssetTableLength = 0; // Set, but never read.

Gfx D_800E2928[] = {
    gsDPPipeSync(),
    gsDPSetCycleType(G_CYC_1CYCLE),
    gsDPSetTextureLOD(G_TL_TILE),
    gsDPSetTextureLUT(G_TT_NONE),
    gsDPSetTextureDetail(G_TD_CLAMP),
    gsDPSetTexturePersp(G_TP_NONE),
    gsDPSetTextureFilter(G_TF_BILERP),
    gsDPSetTextureConvert(G_TC_FILT),
    gsDPSetAlphaCompare(G_AC_NONE),
    gsDPSetRenderMode(G_RM_CLD_SURF, G_RM_CLD_SURF2),
    gsSPEndDisplayList(),
};

unk800E2980 D_800E2980[2] = {
    { 1, 0xFFFF, 0xC090, 3.0f, 0.0f },
    { 0,      0,      0, 0.0f, 0.0f },
};

unk800E2980 D_800E29A0[4] = {
    { 3, 0xFFFF, 0x0090, 0.75f,  -32.0f },
    { 2, 0x0050, 0xFF60,  0.8f,  -96.0f },
    { 2, 0x00FF, 0x0090, 0.75f, -192.0f },
    { 0,      0,      0,  0.0f,    0.0f },
};

unk800E2980 D_800E29E0[5] = {
    { 3, 0xFF80, 0x1490, 0.65f,  -64.0f },
    { 2, 0xFFFF, 0xFF90,  1.0f, -128.0f },
    { 3, 0xFFFF, 0x8090,  0.5f, -176.0f },
    { 3, 0xFF28, 0x2890, 0.75f, -224.0f },
    { 0,      0,      0,  0.0f,    0.0f },
};

unk800E2980 D_800E2A30[5] = {
    { 3, 0xFF80, 0xFF80,  0.5f,  -64.0f },
    { 1, 0xFFFF, 0xC090, 0.75f, -128.0f },
    { 2, 0xFF28, 0x0080,  0.6f, -176.0f },
    { 1, 0xFFC0, 0xFF90, 0.75f, -224.0f },
    { 0,      0,      0,  0.0f,    0.0f },
};

Object *D_800E2A80 = NULL;
s32 D_800E2A84 = TRUE;
s32 D_800E2A88 = 0;
f32 D_800E2A8C = -200.0f;
f32 D_800E2A90 = 200.0f;
f32 D_800E2A94 = 200.0f;
f32 D_800E2A98 = 200.0f;
f32 D_800E2A9C = 200.0f;
f32 D_800E2AA0 = -200.0f;
f32 D_800E2AA4 = -200.0f;
f32 D_800E2AA8 = -200.0f;

Vertex D_800E2AAC[16] = {
    { 0, 0, 0, 255, 255, 255, 255 },
    { 0, 0, 0, 255, 255, 255, 255 },
    { 0, 0, 0, 255, 255, 255, 255 },
    { 0, 0, 0, 255, 255, 255, 255 },
    { 0, 0, 0, 255, 255, 255, 255 },
    { 0, 0, 0, 255, 255, 255, 255 },
    { 0, 0, 0, 255, 255, 255, 255 },
    { 0, 0, 0, 255, 255, 255, 255 },
    { 0, 0, 0, 255, 255, 255, 255 },
    { 0, 0, 0, 255, 255, 255, 255 },
    { 0, 0, 0, 255, 255, 255, 255 },
    { 0, 0, 0, 255, 255, 255, 255 },
    { 0, 0, 0, 255, 255, 255, 255 },
    { 0, 0, 0, 255, 255, 255, 255 },
    { 0, 0, 0, 255, 255, 255, 255 },
    { 0, 0, 0, 255, 255, 255, 255 },
};

unk800E2B4C D_800E2B4C[8] = {
    { 0, 0, 0, 1.0f, 0.0f, 0.0f, 0.0f, 0, 0 },
    { 0, 0, 0, 1.0f, 0.0f, 0.0f, 0.0f, 0, 0 },
    { 0, 0, 0, 1.0f, 0.0f, 0.0f, 0.0f, 0, 0 },
    { 0, 0, 0, 1.0f, 0.0f, 0.0f, 0.0f, 0, 0 },
    { 0, 0, 0, 1.0f, 0.0f, 0.0f, 0.0f, 0, 0 },
    { 0, 0, 0, 1.0f, 0.0f, 0.0f, 0.0f, 0, 0 },
    { 0, 0, 0, 1.0f, 0.0f, 0.0f, 0.0f, 0, 0 },
    { 0, 0, 0, 1.0f, 0.0f, 0.0f, 0.0f, 0, 0 },
};

unk800E2C2C gRainGfx[2] = {
    { 0, 0, 0x400, 0x400, 0x000A, 0xFFC4, NULL, 128, 255, 255, 128, 128, 255, 128, 0 },
    { 0, 0, 0x600, 0x600, 0x0020, 0xFF40, NULL, 255, 255, 255, 0, 128, 255, 255, 0 }
};

s32 gWeatherType = WEATHER_SNOW;
s32 gLightningFrequency = 65536;
s32 D_800E2C64 = 0;
s32 D_800E2C68 = 65536;
s32 D_800E2C6C = 65536;
s32 D_800E2C70 = 0;
s32 D_800E2C74 = 65536;
s32 D_800E2C78 = 0;
s32 gLightningTimer = 0;
s32 gThunderTimer = 0;
s32 D_800E2C84 = 0;
TextureHeader *gRainOverlayUnusedValue = NULL; // Set, but never read.
Sprite *gRainSplashGfx = 0;
s32 D_800E2C90 = 0;
SoundMask *gWeatherSoundMask = NULL;


FadeTransition gThunderTransition = FADE_TRANSITION(FADE_FULLSCREEN, FADE_FLAG_INVERT, FADE_COLOR_WHITE, 5, 2);

/*******************************/

/************ .bss ************/

s32 D_80127BB0;
s32 D_80127BB4;
s32 D_80127BB8[16];
unk80127BF8 D_80127BF8;
s32 D_80127C00;
s32 D_80127C04;
s32 D_80127C08;
Gfx *gCurrWeatherDisplayList;
MatrixS *gCurrWeatherMatrix;
Vertex *gCurrWeatherVertexList;
TriangleList *gCurrWeatherTriList;
ObjectSegment *gWeatherCamera;
Matrix *gWeatherCameraMatrix;
s32 D_80127C24;
s32 D_80127C28;
Matrix *D_80127C2C;
Vec3f D_80127C30;
Object *D_80127C40[16];

/******************************/

/**
 * Official Name: initWeather
*/
void init_weather(void) {
    D_800E28D8.unk0 = 0;
    D_800E28D8.unk4 = 0;
    D_800E28D4 = NULL;
    D_80127BB0 = 0;
    D_80127C00 = 6;
    D_80127C00 <<= 2;
    D_80127C04 = D_80127C00 >> 1;
    D_800E2914[0] = 0;
    D_800E2914[1] = 0;
    D_800E290C = 0;
    D_80127BF8.unk0 = -1;
    D_80127BF8.unk2 = -512;
    D_800E2A80 = NULL;
    D_800E2A84 = TRUE;
    D_800E2A88 = 0;
    if (gWeatherAssetTable == NULL) {
        gWeatherAssetTable = (s32 *)load_asset_section_from_rom(ASSET_WEATHER_PARTICLES);
        gWeatherAssetTableLength = 0;
        while ((s32) gWeatherAssetTable[gWeatherAssetTableLength] != -1) {
            gWeatherAssetTableLength++;
        }
    }
    D_80127C08 = 0;
}

/**
 * Official Name: setWeatherLimits
*/
void set_weather_limits(s16 arg0, s16 arg1) {
    if (D_80127BF8.unk2 < D_80127BF8.unk0) {
        D_80127BF8.unk0 = arg0;
        D_80127BF8.unk2 = arg1;
    } else {
        D_80127BF8.unk0 = arg1;
        D_80127BF8.unk2 = arg0;
    }
}

#define FREE_MEM(mem)                   \
    tempMem = (s32 *) mem;              \
    if (tempMem != NULL) {              \
        free_from_memory_pool(tempMem); \
        mem = NULL;                     \
    }
#define FREE_TEX(tex)                   \
    tempTex = tex;                      \
    if (tempTex != NULL) {              \
        free_texture(tempTex);          \
        tex = NULL;                     \
    }

/**
 * Free the weather assets from memory.
 * If it's raining, then free those too.
 * Official Name: freeWeather
 */
void free_weather_memory(void) {
    TextureHeader *tempTex;
    s32 *tempMem;

    FREE_MEM(D_800E290C);
    FREE_MEM(D_800E2914[0]);
    FREE_MEM(D_800E2914[1]);
    FREE_MEM(D_800E28D4);
    FREE_MEM(D_800E28D8.unk0);
    FREE_TEX(D_800E28D8.unk8);
    FREE_MEM(D_800E2910);

    D_800E2A88 = 0;
    D_800E2A80 = NULL;
    D_800E2A84 = TRUE;
    if (gWeatherType != WEATHER_SNOW) {
        free_rain_memory();
    }
}

GLOBAL_ASM("asm/non_matchings/weather/func_800AB4A8.s")

void func_800ABB34(void) {
    s32 temp_v0;
    s32 phi_s1;
    s32 i;

    temp_v0 = 0x10000 / D_800E28D8.unk4;
    phi_s1 = 0;

    for(i = 0; i < D_800E28D8.unk4; i++) {
        D_800E28D8.unk0[i].unk0 = coss(phi_s1 & 0xFFFF) << 3;
        D_800E28D8.unk0[i].unk4 = 0xFFFC0000;
        D_800E28D8.unk0[i].unk8 = sins(phi_s1 & 0xFFFF) << 1;
        phi_s1 += temp_v0;
    }

    D_800E28D8.unk8 = load_texture(*gWeatherAssetTable);
}


void changeWeather(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    if ((arg5 > 0) && ((arg0 != D_80127BB8[5]) || (arg1 != D_80127BB8[8]) || (arg2 != D_80127BB8[11])
        || (arg3 != D_80127BB8[0]) || (arg4 != D_80127BB8[12]))) {
        D_80127BB8[5] = arg0;
        D_80127BB8[8] = arg1;
        D_80127BB8[11] = arg2;
        D_80127BB8[4] = (s32) ((s32) (arg0 - D_80127BB8[3]) / arg5);
        D_80127BB8[7] = (s32) ((s32) (arg1 - D_80127BB8[6]) / arg5);
        D_80127BB8[10] = (s32) ((s32) (arg2 - D_80127BB8[9]) / arg5);
        if (gWeatherType == WEATHER_SNOW) {
            D_80127BB8[1] = (s32) ((s32) (arg3 - D_80127BB8[0]) / arg5);
            D_80127BB8[13] = (s32) ((s32) (arg4 - D_80127BB8[12]) / arg5);
            D_80127BB8[2] = arg3;
            D_80127BB8[14] = arg4;
            D_80127BB8[15] = arg5;
            return;
        }
        D_80127BB8[0] = arg3;
        D_80127BB8[12] = arg4;
        D_80127BB8[15] = 0;
        func_800AD2C4(arg3 + 1, arg4 + 1, (f32) arg5 / 60.0f);
    }
}

/**
 * The root function for handling all weather.
 * Decide whether to perform rain or snow logic, execute it, then set it to render right after.
 */
void process_weather(Gfx **currDisplayList, MatrixS **currHudMat, Vertex **currHudVerts, TriangleList **currHudTris, s32 updateRate) {
    UNUSED s32 unused;
    gCurrWeatherDisplayList = *currDisplayList;
    gCurrWeatherMatrix = *currHudMat;
    gCurrWeatherVertexList = *currHudVerts;
    gCurrWeatherTriList = *currHudTris;
    gWeatherCamera = get_active_camera_segment();
    gWeatherCameraMatrix = get_camera_matrix();
    if (gWeatherType != WEATHER_SNOW) {
        handle_weather_rain(updateRate);
    } else {
        if (D_80127BB8[15] > 0) {
            if (updateRate < D_80127BB8[15]) {
                D_80127BB8[0] += D_80127BB8[1] * updateRate;
                D_80127BB8[3] += D_80127BB8[4] * updateRate;
                D_80127BB8[6] += D_80127BB8[7] * updateRate;
                D_80127BB8[9] += D_80127BB8[10] * updateRate;
                D_80127BB8[12] += D_80127BB8[13] * updateRate;
                D_80127BB8[15] -= updateRate;
            } else {
                D_80127BB8[0] = D_80127BB8[2];
                D_80127BB8[3] = D_80127BB8[5];
                D_80127BB8[6] = D_80127BB8[8];
                D_80127BB8[9] = D_80127BB8[11];
                D_80127BB8[12] = D_80127BB8[14];
                D_80127BB8[15] = 0;
            }
        }
        D_80127BB4 = (D_80127BB0 * D_80127BB8[0]) >> (unused = 16);
        D_80127BF8.unk4 = (D_80127BF8.unk0 + ((D_80127BF8.unk2 - D_80127BF8.unk0) * D_80127BB8[12])) >> (unused = 16);

        func_800AC0C8(updateRate);
        if ((D_80127BB4 > 0) && (D_80127BF8.unk4 < D_80127BF8.unk0)) {
            D_800E2904 = D_800E2914[D_80127C08];
            func_800AC21C(); // Both of these funcs are needed to render.
            render_falling_snow();
            D_80127C08 = 1 - D_80127C08;
        }
    }
    *currDisplayList = gCurrWeatherDisplayList;
    *currHudMat = gCurrWeatherMatrix;
    *currHudVerts = gCurrWeatherVertexList;
    *currHudTris = gCurrWeatherTriList;
}

// This is the snow physics that makes it move
void func_800AC0C8(s32 updateRate) {
    unk800E2850_unk0* temp_v1;
    s32 i;

    for (i = 0; i < D_80127BB0; i++) {
        temp_v1 = &D_800E28D8.unk0[D_800E28D4[i].unkF];
        D_800E28D4[i].unk0 = ((((temp_v1->unk0 + (D_80127BB8[3] * 2)) * updateRate) >> 1) + D_800E28D4[i].unk0) & D_800E28D8.unk18;
        D_800E28D4[i].unk4 = ((((temp_v1->unk4 + (D_80127BB8[6] * 2)) * updateRate) >> 1) + D_800E28D4[i].unk4) & D_800E28D8.unk1C;
        D_800E28D4[i].unk8 = ((((temp_v1->unk8 + (D_80127BB8[9] * 2)) * updateRate) >> 1) + D_800E28D4[i].unk8) & D_800E28D8.unk20;
        D_800E28D4[i].unkF++;
        if (D_800E28D4[i].unkF >= D_800E28D8.unk4) {
            D_800E28D4[i].unkF -= D_800E28D8.unk4;
        } 
    }
}

#ifdef NON_EQUIVALENT
void func_800AC21C(void) {
    s16 zPos; // sp74
    s16 yPos;
    s16 xPos;
    Matrix sp64;
    s32 sp58;
    s32 sp54;
    s32 sp50;
    s32 i;

    sp58 = (gWeatherCamera->trans.x_position * 65536.0f);
    sp54 = (gWeatherCamera->trans.y_position * 65536.0f);
    sp50 = (gWeatherCamera->trans.z_position * 65536.0f);
    D_800E2908 = 0;
    for(i = 0; i < D_80127BB4; i++) {
        sp64[0][0] = (f32) (((D_800E28D4[i].unk0 - sp58) & D_800E28D8.unk18) + D_800E28D8.unkC) * (1.0f / 65536.0f);
        sp64[0][1] = (f32) (((D_800E28D4[i].unk4 - sp54) & D_800E28D8.unk1C) + D_800E28D8.unk10) * (1.0f / 65536.0f);
        sp64[0][2] = (f32) (((D_800E28D4[i].unk8 - sp50) & D_800E28D8.unk20) + D_800E28D8.unk14) * (1.0f / 65536.0f);
        f32_matrix_dot(gWeatherCameraMatrix, &sp64, &sp64);
        zPos = sp64[0][2];
        if ((zPos < D_80127BF8.unk0) && (D_80127BF8.unk4 < zPos)) {
            xPos = sp64[0][0];
            yPos = sp64[0][1];
            D_800E2904[i].x = xPos - D_800E28D8.unk24;
            D_800E2904[i].y = yPos + D_800E28D8.unk26;
            D_800E2904[i].z = zPos;
            D_800E2904[i+1].x = xPos + D_800E28D8.unk24;
            D_800E2904[i+1].y = yPos + D_800E28D8.unk26;
            D_800E2904[i+1].z = zPos;
            D_800E2904[i+2].x = xPos + D_800E28D8.unk24;
            D_800E2904[i+2].y = yPos - D_800E28D8.unk26;
            D_800E2904[i+2].z = zPos;
            D_800E2904[i+3].x = xPos - D_800E28D8.unk24;
            D_800E2904[i+3].y = yPos - D_800E28D8.unk26;
            D_800E2904[i+3].z = zPos;
            D_800E2908 += 4;
            D_800E2910[D_800E2908 >> 2] = i;
            if ((!i) && (!i)){} // Fakematch
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/weather/func_800AC21C.s")
#endif

/**
 * Load and execute the draw commands for the falling snowflakes, seen with snowy weather enabled.
 */
void render_falling_snow(void) {
    s32 i;
    u32 mtx;

    if (D_800E28D8.unk8 != NULL) {
        D_80127C00 = 4;
        D_80127C04 = 2;
        if (D_800E2908 >= 4) {
            i = 0;
            mtx = (u32) get_projection_matrix_s16();
            gSPMatrix(gCurrWeatherDisplayList++, OS_PHYSICAL_TO_K0(mtx ^ 0), G_MTX_DKR_INDEX_0);
            gDkrInsertMatrix(gCurrWeatherDisplayList++, G_MTX_DKR_INDEX_0, 0);
            load_and_set_texture_no_offset(&gCurrWeatherDisplayList, D_800E28D8.unk8, RENDER_Z_COMPARE);
            while (i + D_80127C00 < D_800E2908) {
                mtx = (u32) &D_800E2904[i];
                gSPVertexDKR(gCurrWeatherDisplayList++, OS_PHYSICAL_TO_K0(mtx), D_80127C00, 0);
                gSPPolygon(gCurrWeatherDisplayList++, OS_PHYSICAL_TO_K0(D_800E290C), D_80127C04, 1);
                i += D_80127C00;
            }
            mtx = (u32) &D_800E2904[i];
            gSPVertexDKR(gCurrWeatherDisplayList++, OS_PHYSICAL_TO_K0(mtx), (D_800E2908 - i), 0);
            gSPPolygon(gCurrWeatherDisplayList++, OS_PHYSICAL_TO_K0(D_800E290C), ((s32) (D_800E2908 - i) >> 1), 1);
        }
    }
}

UNUSED void func_800AC850(void) {
    D_800E2A84 = TRUE;
}

UNUSED void func_800AC860(void) {
    if (D_800E2A80 != NULL) {
        D_800E2A84 = FALSE;
    }
}

void func_800AC880(Object *obj) {
    if (obj == D_800E2A80) {
        D_800E2A80 = NULL;
        D_800E2A84 = TRUE;
    }
}

void func_800AC8A8(Object *lensflareObj) {
    LevelObjectEntry_LensFlare *entry;
    Vec3s sp1C;

    D_800E2A80 = lensflareObj;
    D_800E2A84 = 0;
    entry = &D_800E2A80->segment.level_entry->lensFlare;
    
    switch (entry->unkC) {
    default:
        D_80127C24 = 0; 
        break;
    case 1:
        D_80127C24 = (s32) D_800E29A0;
        break;
    case 2:
        D_80127C24 = (s32) D_800E29E0;
        break;
    case 3:
        D_80127C24 = (s32) D_800E2A30;
        break;
    }

    switch (entry->unkD) {
    default:
        D_80127C28 = 0;
        break;
    case 1: 
        D_80127C28 = (s32) D_800E29A0;
        break;
    case 2: 
        D_80127C28 = (s32) D_800E29E0;
        break;
    case 3: 
        D_80127C28 = (s32) D_800E2A30;
        break;
    }
    
    if (entry->unkE == 1) {
        D_80127C2C = (Matrix *) D_800E2980;
    } else {
        D_80127C2C = NULL;
    }

    sp1C.y_rotation = entry->unkA;
    sp1C.x_rotation = entry->unk8; 
    sp1C.z_rotation = 0;
    D_80127C30.x = 0;
    D_80127C30.y = 0;
    D_80127C30.z = -1.0f;
    f32_vec3_apply_object_rotation3((ObjectTransform *) &sp1C, D_80127C30.f);
    D_80127C30.x = -D_80127C30.x;
    D_80127C30.y = -D_80127C30.y;
    D_80127C30.z = -D_80127C30.z;
}

//https://decomp.me/scratch/mYuMJ
GLOBAL_ASM("asm/non_matchings/weather/func_800ACA20.s")

void cameraAddOverrideObject(Object *arg0) {
    if (D_800E2A88 < 0x10) {
        D_80127C40[D_800E2A88] = arg0;
        D_800E2A88++;
    }
}

void func_800ACF98(Object* arg0) {
    s32 i;
    s32 isFound = FALSE;

    for (i = 0; i < D_800E2A88 && !isFound; i++) {
        if (D_80127C40[i] == arg0) {
            isFound = TRUE;
        }
    }

    if (isFound) {
        D_800E2A88--;
        i--;
        for (; i < D_800E2A88; i++) {
            D_80127C40[i] = D_80127C40[i + 1];
        }
    }

}

void func_800AD030(ObjectSegment *cameraSegment) {
    LevelObjectEntry_Weather *weather;
    f32 xDiff;
    f32 zDiff;
    f32 yDiff;
    s32 i; 
    D_800E2A84 = FALSE;
    if (D_800E2A88 > 0 && D_800E2A80 != 0) {
        if(D_80127C40[0]){} // Fakematch
        for (i = 0; i < D_800E2A88; i++) {
            xDiff = cameraSegment->trans.x_position - D_80127C40[i]->segment.trans.x_position;
            yDiff = cameraSegment->trans.y_position - D_80127C40[i]->segment.trans.y_position;
            zDiff = cameraSegment->trans.z_position - D_80127C40[i]->segment.trans.z_position;
            weather = &D_80127C40[i]->segment.level_entry->weather;
            if (sqrtf((xDiff * xDiff) + (yDiff * yDiff) + (zDiff * zDiff)) < weather->radius) {
                D_800E2A84 = TRUE;
            }
        }
    }
}

void func_800AD144(s32 arg0, s32 arg1) {
    gLightningFrequency = arg0;
    D_800E2C64 = 0;
    D_800E2C68 = gLightningFrequency;
    D_800E2C6C = arg1;
    D_800E2C70 = 0;
    D_800E2C74 = D_800E2C6C;
    D_800E2C78 = 0;
    gLightningTimer = 0;
    gThunderTimer = 0;
    D_800E2C84 = 0;
    D_800E2C90 = 0;
    gRainGfx[0].tex = load_texture(gWeatherAssetTable[1]);
    gRainGfx[1].tex = load_texture(gWeatherAssetTable[1]);
    gRainSplashGfx = (Sprite *)func_8007C12C(gWeatherAssetTable[3], 0);
    gWeatherType = WEATHER_RAIN;
}

/**
 * Free the rain overlay and splash asset data from memory.
 * Clear the soundmask too, stopping any ongoing audio.
 */
void free_rain_memory(void) {
    if (gRainGfx[0].tex != NULL) {
        free_texture(gRainGfx[0].tex);
        gRainOverlayUnusedValue = NULL;
    }

    if (gRainGfx[1].tex != NULL) {
        free_texture(gRainGfx[1].tex);
        gRainOverlayUnusedValue = NULL;
    }

    if (gRainSplashGfx != NULL) {
        free_sprite(gRainSplashGfx);
        gRainSplashGfx = NULL;
    }

    if (gWeatherSoundMask != NULL) {
        func_800096F8(gWeatherSoundMask);
        gWeatherSoundMask = NULL;
    }

    gWeatherType = WEATHER_SNOW;
}

void func_800AD2C4(s32 arg0, s32 arg1, f32 arg2) {
    D_800E2C78 = osTvType == TV_TYPE_PAL ? 50.0 * arg2 : 60.0 * arg2;
    D_800E2C68 = arg0;
    D_800E2C64 = (D_800E2C68 - gLightningFrequency) / D_800E2C78;
    D_800E2C74 = arg1;
    D_800E2C70 = (D_800E2C74 - D_800E2C6C) / D_800E2C78;
}

void func_800AD40C(void) {
    s32 a, b;
    if (gWeatherType != WEATHER_SNOW && get_viewport_count() == VIEWPORTS_COUNT_1_PLAYER) {
        a = ((gLightningFrequency * -38) >> 16) + 1018;
        b = ((gLightningFrequency * -20) >> 16) + 1023;
        set_fog(0, a, b, 28, 15, 36);
    }
}

// Unused.
void func_800AD4AC(s32 arg0) {
    D_800E2C6C = arg0;
}

/**
 * When active, (Single player only) Call all the functions related to the behaviour and rendering of
 * rain, and if necessary, thunder.
 */
void handle_weather_rain(s32 updateRate) {
    s32 i;

    if ((get_viewport_count() == VIEWPORTS_COUNT_1_PLAYER) && (gWeatherType != WEATHER_SNOW)) {
        if (D_800E2C78 > 0) {
            if (updateRate < D_800E2C78) {
                D_800E2C78 -= updateRate;
                gLightningFrequency += D_800E2C64 * updateRate;
                D_800E2C6C += D_800E2C70 * updateRate;
            } else {
                D_800E2C78 = 0;
                gLightningFrequency = D_800E2C68;
                D_800E2C6C = D_800E2C74;
            }
        }
        handle_rain_sound(updateRate);
        render_rain_splashes(updateRate);
        handle_rain_lightning(updateRate);
        if (gLightningFrequency >= 256) {
            set_ortho_matrix_view(&gCurrWeatherDisplayList, &gCurrWeatherMatrix);
            for(i = 0; i < 2; i++) {
                render_rain_overlay(&gRainGfx[i], updateRate);
            }
            gDPSetPrimColor(gCurrWeatherDisplayList++, 0, 0, 255, 255, 255, 255);
            gDPSetEnvColor(gCurrWeatherDisplayList++, 255, 255, 255, 0);
            reset_render_settings(&gCurrWeatherDisplayList); // Pipesync and some stuff idk yet
            viewport_reset(&gCurrWeatherDisplayList); // Looks to create a viewport scissor.
        }
    }
}

GLOBAL_ASM("asm/non_matchings/weather/render_rain_splashes.s")

/**
 * On a randomly set timer, based on the weather intensity, count down and make the sound of thunder.
 * Set a second timer, that then counts down to zero and creates a flash of lightning in the form of a screen transition.
 * Afterwards, set the thunder timer back.
 */
void handle_rain_lightning(s32 updateRate) {
    if (gThunderTimer > 0) {
        gThunderTimer -= updateRate;
        if (gThunderTimer <= 0) {
            if (D_800E2C6C >= 32769 && check_fadeout_transition() == 0) {
                transition_begin(&gThunderTransition);
            }
            sound_play(SOUND_LIGHTNING, NULL);
            gThunderTimer = 0;
        }
    } else if (gLightningFrequency >= 48000) {
        if (gLightningTimer > 0) {
            gLightningTimer -= updateRate;
            return;
        }
        sound_play(SOUND_THUNDER, NULL);
        gThunderTimer = 600 - ((s32) (gLightningFrequency + -48000) >> 5);
        gLightningTimer = get_random_number_from_range(900, 1140) - ((s32) (gLightningFrequency + -48000) >> 5);
    }
}

/**
 * Emit looping rain sound, using the camera position and direction as reference.
 */
void handle_rain_sound(UNUSED s32 updateRate) {
    f32 xPos;
    f32 yPos;
    f32 zPos;
    f32 length;
    f32 cosOffset;
    f32 sineOffset;

    length = 1152.0f - (f32) (gLightningFrequency >> 6);
    cosOffset = sins_f(gWeatherCamera->trans.y_rotation) * length;
    sineOffset = coss_f(gWeatherCamera->trans.y_rotation) * length;
    xPos = gWeatherCamera->trans.x_position + (sineOffset - cosOffset);
    yPos = gWeatherCamera->trans.y_position;
    zPos = gWeatherCamera->trans.z_position + (-sineOffset - cosOffset);
    if (gWeatherSoundMask) {
        update_spatial_audio_position(gWeatherSoundMask, xPos, yPos, zPos);
    } else {
        play_sound_at_position(SOUND_RAIN, xPos, yPos, zPos, 1, &gWeatherSoundMask);
    }
}

#ifdef NON_EQUIVALENT
void render_rain_overlay(unk800E2C2C *arg0, s32 arg1) {
    f32 zSins;
    Triangle *sp64;
    f32 zCoss;
    s32 altVertical;
    s32 altHorizontal;
    s32 opacity;
    s32 horizontal;
    s32 vertical;
    s32 temp_t9;
    s32 temp_v1;
    TextureHeader *tex;
    Vertex *verts;
    Triangle *tris;

    tex = arg0->tex;
    if (tex != NULL) {
        horizontal = tex->width << 5;
        vertical = tex->height << 5;
        temp_v1 = (horizontal * 2) - 1;
        temp_t9 = ((vertical * 2) - 1) & 0xFFFFFFFFFFFFFFFF;
        arg0->unk0 = (normalise_time(arg0->unk8 * arg1) + arg0->unk0) & temp_v1;
        arg0->unk2 = (normalise_time(arg0->unkA * arg1) + arg0->unk2) & temp_t9;
        horizontal = (arg0->unk4 * horizontal) >> 8;
        opacity = (arg0->unk16 * (((D_800E2C6C >> 2) * gLightningFrequency) >> 14)) >> 16;
        if (opacity > 0) {
            altVertical = arg0->unk2;
            vertical = ((arg0->unk6 * vertical) >> 8) + arg0->unk2;
            altHorizontal = (arg0->unk0 + ((horizontal * 6 * gWeatherCamera->trans.y_rotation) >> 16)) & temp_v1;
            horizontal += altHorizontal;
            zSins = sins_f(gWeatherCamera->trans.z_rotation);
            zCoss = coss_f(gWeatherCamera->trans.z_rotation);
            verts = &D_800E2AAC[D_800E2C90];
            verts[0].x = ((D_800E2A8C * zCoss) - (D_800E2A9C * zSins));
            verts[0].y = ((D_800E2A8C * zSins) + (D_800E2A9C * zCoss));
            verts[1].x = ((D_800E2A9C * zCoss) - (D_800E2A9C * zSins));
            verts[1].y = ((D_800E2A9C * zSins) + (D_800E2A9C * zCoss));
            verts[2].x = ((D_800E2A9C * zCoss) - (D_800E2AA8 * zSins));
            verts[2].y = ((D_800E2A9C * zSins) + (D_800E2AA8 * zCoss));
            verts[3].x = ((D_800E2AA8 * zCoss) - (D_800E2AA8 * zSins));
            verts[3].y = ((D_800E2AA8 * zSins) + (D_800E2AA8 * zCoss));
            tris = gCurrWeatherTriList;
            tris[0].vertices = (0x40 << 24) | (0 << 16) | (1 << 8) | 2;
            tris[0].uv0.u = altHorizontal;
            tris[0].uv0.v = altVertical;
            tris[0].uv1.u = horizontal;
            tris[0].uv1.v = altVertical;
            tris[0].uv2.u = horizontal;
            tris[0].uv2.v = vertical;
            tris[1].vertices = (0x40 << 24) | (2 << 16) | (3 << 8) | 0;
            tris[1].uv0.u = horizontal;
            tris[1].uv0.v = vertical;
            tris[1].uv1.u = altHorizontal;
            tris[1].uv1.v = vertical;
            tris[1].uv2.u = altHorizontal;
            tris[1].uv2.v = altVertical;
            sp64 = tris + 0x20;
            func_8007F594(&gCurrWeatherDisplayList, 0, COLOUR_RGBA32(arg0->primitiveRed, arg0->primitiveGreen, arg0->primitiveBlue, opacity), COLOUR_RGBA32(arg0->environmentRed, arg0->environmentGreen, arg0->environmentBlue, 0));
            gDkrDmaDisplayList(gCurrWeatherDisplayList++, OS_PHYSICAL_TO_K0(tex->cmd), tex->numberOfCommands);
            gSPVertexDKR(gCurrWeatherDisplayList++, OS_PHYSICAL_TO_K0(&D_800E2AAC[D_800E2C90]), 4, 0);
            gSPPolygon(gCurrWeatherDisplayList++, OS_PHYSICAL_TO_K0(gCurrWeatherTriList), 2, 1);
            gDPPipeSync(gCurrWeatherDisplayList++);
            D_800E2C90 = (D_800E2C90 + 4) & 0xF;
            gCurrWeatherTriList = sp64;
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/weather/render_rain_overlay.s")
#endif
