.class public final Landroidx/media3/common/Format;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Bundleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/Format$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/common/Format;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT:Landroidx/media3/common/Format;

.field private static final FIELD_ACCESSIBILITY_CHANNEL:Ljava/lang/String;

.field private static final FIELD_AVERAGE_BITRATE:Ljava/lang/String;

.field private static final FIELD_CHANNEL_COUNT:Ljava/lang/String;

.field private static final FIELD_CODECS:Ljava/lang/String;

.field private static final FIELD_COLOR_INFO:Ljava/lang/String;

.field private static final FIELD_CONTAINER_MIME_TYPE:Ljava/lang/String;

.field private static final FIELD_CRYPTO_TYPE:Ljava/lang/String;

.field private static final FIELD_DRM_INIT_DATA:Ljava/lang/String;

.field private static final FIELD_ENCODER_DELAY:Ljava/lang/String;

.field private static final FIELD_ENCODER_PADDING:Ljava/lang/String;

.field private static final FIELD_FRAME_RATE:Ljava/lang/String;

.field private static final FIELD_HEIGHT:Ljava/lang/String;

.field private static final FIELD_ID:Ljava/lang/String;

.field private static final FIELD_INITIALIZATION_DATA:Ljava/lang/String;

.field private static final FIELD_LABEL:Ljava/lang/String;

.field private static final FIELD_LANGUAGE:Ljava/lang/String;

.field private static final FIELD_MAX_INPUT_SIZE:Ljava/lang/String;

.field private static final FIELD_METADATA:Ljava/lang/String;

.field private static final FIELD_PCM_ENCODING:Ljava/lang/String;

.field private static final FIELD_PEAK_BITRATE:Ljava/lang/String;

.field private static final FIELD_PIXEL_WIDTH_HEIGHT_RATIO:Ljava/lang/String;

.field private static final FIELD_PROJECTION_DATA:Ljava/lang/String;

.field private static final FIELD_ROLE_FLAGS:Ljava/lang/String;

.field private static final FIELD_ROTATION_DEGREES:Ljava/lang/String;

.field private static final FIELD_SAMPLE_MIME_TYPE:Ljava/lang/String;

.field private static final FIELD_SAMPLE_RATE:Ljava/lang/String;

.field private static final FIELD_SELECTION_FLAGS:Ljava/lang/String;

.field private static final FIELD_STEREO_MODE:Ljava/lang/String;

.field private static final FIELD_SUBSAMPLE_OFFSET_US:Ljava/lang/String;

.field private static final FIELD_TILE_COUNT_HORIZONTAL:Ljava/lang/String;

.field private static final FIELD_TILE_COUNT_VERTICAL:Ljava/lang/String;

.field private static final FIELD_WIDTH:Ljava/lang/String;

.field public static final NO_VALUE:I = -0x1

.field public static final OFFSET_SAMPLE_RELATIVE:J = 0x7fffffffffffffffL
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field


# instance fields
.field public final accessibilityChannel:I
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public final averageBitrate:I
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public final bitrate:I
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public final channelCount:I

.field public final codecs:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final colorInfo:Landroidx/media3/common/ColorInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public final containerMimeType:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final cryptoType:I
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public final drmInitData:Landroidx/media3/common/DrmInitData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public final encoderDelay:I
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public final encoderPadding:I
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public final frameRate:F

.field private hashCode:I

.field public final height:I

.field public final id:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final initializationData:Ljava/util/List;
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final label:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final language:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final maxInputSize:I
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public final metadata:Landroidx/media3/common/Metadata;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public final pcmEncoding:I
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public final peakBitrate:I
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public final pixelWidthHeightRatio:F

.field public final projectionData:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public final roleFlags:I

.field public final rotationDegrees:I
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public final sampleMimeType:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final sampleRate:I

.field public final selectionFlags:I

.field public final stereoMode:I
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public final subsampleOffsetUs:J
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public final tileCountHorizontal:I
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public final tileCountVertical:I
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation
.end field

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/common/Format$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->G()Landroidx/media3/common/Format;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sput-object v0, Landroidx/media3/common/Format;->DEFAULT:Landroidx/media3/common/Format;

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    sput-object v0, Landroidx/media3/common/Format;->FIELD_ID:Ljava/lang/String;

    .line 19
    const/4 v0, 0x1

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    sput-object v0, Landroidx/media3/common/Format;->FIELD_LABEL:Ljava/lang/String;

    .line 26
    const/4 v0, 0x2

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    sput-object v0, Landroidx/media3/common/Format;->FIELD_LANGUAGE:Ljava/lang/String;

    .line 33
    const/4 v0, 0x3

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    sput-object v0, Landroidx/media3/common/Format;->FIELD_SELECTION_FLAGS:Ljava/lang/String;

    .line 40
    const/4 v0, 0x4

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    sput-object v0, Landroidx/media3/common/Format;->FIELD_ROLE_FLAGS:Ljava/lang/String;

    .line 47
    const/4 v0, 0x5

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    sput-object v0, Landroidx/media3/common/Format;->FIELD_AVERAGE_BITRATE:Ljava/lang/String;

    .line 54
    const/4 v0, 0x6

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    sput-object v0, Landroidx/media3/common/Format;->FIELD_PEAK_BITRATE:Ljava/lang/String;

    .line 61
    const/4 v0, 0x7

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    sput-object v0, Landroidx/media3/common/Format;->FIELD_CODECS:Ljava/lang/String;

    .line 68
    .line 69
    const/16 v0, 0x8

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    sput-object v0, Landroidx/media3/common/Format;->FIELD_METADATA:Ljava/lang/String;

    .line 76
    .line 77
    const/16 v0, 0x9

    .line 78
    .line 79
    .line 80
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    sput-object v0, Landroidx/media3/common/Format;->FIELD_CONTAINER_MIME_TYPE:Ljava/lang/String;

    .line 84
    .line 85
    const/16 v0, 0xa

    .line 86
    .line 87
    .line 88
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    sput-object v0, Landroidx/media3/common/Format;->FIELD_SAMPLE_MIME_TYPE:Ljava/lang/String;

    .line 92
    .line 93
    const/16 v0, 0xb

    .line 94
    .line 95
    .line 96
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    sput-object v0, Landroidx/media3/common/Format;->FIELD_MAX_INPUT_SIZE:Ljava/lang/String;

    .line 100
    .line 101
    const/16 v0, 0xc

    .line 102
    .line 103
    .line 104
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 105
    move-result-object v0

    .line 106
    .line 107
    sput-object v0, Landroidx/media3/common/Format;->FIELD_INITIALIZATION_DATA:Ljava/lang/String;

    .line 108
    .line 109
    const/16 v0, 0xd

    .line 110
    .line 111
    .line 112
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 113
    move-result-object v0

    .line 114
    .line 115
    sput-object v0, Landroidx/media3/common/Format;->FIELD_DRM_INIT_DATA:Ljava/lang/String;

    .line 116
    .line 117
    const/16 v0, 0xe

    .line 118
    .line 119
    .line 120
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 121
    move-result-object v0

    .line 122
    .line 123
    sput-object v0, Landroidx/media3/common/Format;->FIELD_SUBSAMPLE_OFFSET_US:Ljava/lang/String;

    .line 124
    .line 125
    const/16 v0, 0xf

    .line 126
    .line 127
    .line 128
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 129
    move-result-object v0

    .line 130
    .line 131
    sput-object v0, Landroidx/media3/common/Format;->FIELD_WIDTH:Ljava/lang/String;

    .line 132
    .line 133
    const/16 v0, 0x10

    .line 134
    .line 135
    .line 136
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 137
    move-result-object v0

    .line 138
    .line 139
    sput-object v0, Landroidx/media3/common/Format;->FIELD_HEIGHT:Ljava/lang/String;

    .line 140
    .line 141
    const/16 v0, 0x11

    .line 142
    .line 143
    .line 144
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 145
    move-result-object v0

    .line 146
    .line 147
    sput-object v0, Landroidx/media3/common/Format;->FIELD_FRAME_RATE:Ljava/lang/String;

    .line 148
    .line 149
    const/16 v0, 0x12

    .line 150
    .line 151
    .line 152
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 153
    move-result-object v0

    .line 154
    .line 155
    sput-object v0, Landroidx/media3/common/Format;->FIELD_ROTATION_DEGREES:Ljava/lang/String;

    .line 156
    .line 157
    const/16 v0, 0x13

    .line 158
    .line 159
    .line 160
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 161
    move-result-object v0

    .line 162
    .line 163
    sput-object v0, Landroidx/media3/common/Format;->FIELD_PIXEL_WIDTH_HEIGHT_RATIO:Ljava/lang/String;

    .line 164
    .line 165
    const/16 v0, 0x14

    .line 166
    .line 167
    .line 168
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 169
    move-result-object v0

    .line 170
    .line 171
    sput-object v0, Landroidx/media3/common/Format;->FIELD_PROJECTION_DATA:Ljava/lang/String;

    .line 172
    .line 173
    const/16 v0, 0x15

    .line 174
    .line 175
    .line 176
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 177
    move-result-object v0

    .line 178
    .line 179
    sput-object v0, Landroidx/media3/common/Format;->FIELD_STEREO_MODE:Ljava/lang/String;

    .line 180
    .line 181
    const/16 v0, 0x16

    .line 182
    .line 183
    .line 184
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 185
    move-result-object v0

    .line 186
    .line 187
    sput-object v0, Landroidx/media3/common/Format;->FIELD_COLOR_INFO:Ljava/lang/String;

    .line 188
    .line 189
    const/16 v0, 0x17

    .line 190
    .line 191
    .line 192
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 193
    move-result-object v0

    .line 194
    .line 195
    sput-object v0, Landroidx/media3/common/Format;->FIELD_CHANNEL_COUNT:Ljava/lang/String;

    .line 196
    .line 197
    const/16 v0, 0x18

    .line 198
    .line 199
    .line 200
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 201
    move-result-object v0

    .line 202
    .line 203
    sput-object v0, Landroidx/media3/common/Format;->FIELD_SAMPLE_RATE:Ljava/lang/String;

    .line 204
    .line 205
    const/16 v0, 0x19

    .line 206
    .line 207
    .line 208
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 209
    move-result-object v0

    .line 210
    .line 211
    sput-object v0, Landroidx/media3/common/Format;->FIELD_PCM_ENCODING:Ljava/lang/String;

    .line 212
    .line 213
    const/16 v0, 0x1a

    .line 214
    .line 215
    .line 216
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 217
    move-result-object v0

    .line 218
    .line 219
    sput-object v0, Landroidx/media3/common/Format;->FIELD_ENCODER_DELAY:Ljava/lang/String;

    .line 220
    .line 221
    const/16 v0, 0x1b

    .line 222
    .line 223
    .line 224
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 225
    move-result-object v0

    .line 226
    .line 227
    sput-object v0, Landroidx/media3/common/Format;->FIELD_ENCODER_PADDING:Ljava/lang/String;

    .line 228
    .line 229
    const/16 v0, 0x1c

    .line 230
    .line 231
    .line 232
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 233
    move-result-object v0

    .line 234
    .line 235
    sput-object v0, Landroidx/media3/common/Format;->FIELD_ACCESSIBILITY_CHANNEL:Ljava/lang/String;

    .line 236
    .line 237
    const/16 v0, 0x1d

    .line 238
    .line 239
    .line 240
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 241
    move-result-object v0

    .line 242
    .line 243
    sput-object v0, Landroidx/media3/common/Format;->FIELD_CRYPTO_TYPE:Ljava/lang/String;

    .line 244
    .line 245
    const/16 v0, 0x1e

    .line 246
    .line 247
    .line 248
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 249
    move-result-object v0

    .line 250
    .line 251
    sput-object v0, Landroidx/media3/common/Format;->FIELD_TILE_COUNT_HORIZONTAL:Ljava/lang/String;

    .line 252
    .line 253
    const/16 v0, 0x1f

    .line 254
    .line 255
    .line 256
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z0(I)Ljava/lang/String;

    .line 257
    move-result-object v0

    .line 258
    .line 259
    sput-object v0, Landroidx/media3/common/Format;->FIELD_TILE_COUNT_VERTICAL:Ljava/lang/String;

    .line 260
    .line 261
    new-instance v0, Landroidx/media3/common/k;

    .line 262
    .line 263
    .line 264
    invoke-direct {v0}, Landroidx/media3/common/k;-><init>()V

    .line 265
    .line 266
    sput-object v0, Landroidx/media3/common/Format;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    .line 267
    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/Format$Builder;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->a(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->l(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->w(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->M0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->A(Landroidx/media3/common/Format$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/Format;->selectionFlags:I

    .line 7
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->B(Landroidx/media3/common/Format$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/Format;->roleFlags:I

    .line 8
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->C(Landroidx/media3/common/Format$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/Format;->averageBitrate:I

    .line 9
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->D(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    iput v1, p0, Landroidx/media3/common/Format;->peakBitrate:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    move v0, v1

    :cond_0
    iput v0, p0, Landroidx/media3/common/Format;->bitrate:I

    .line 10
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->E(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 11
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->F(Landroidx/media3/common/Format$Builder;)Landroidx/media3/common/Metadata;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    .line 12
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->b(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    .line 13
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->c(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->d(Landroidx/media3/common/Format$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/Format;->maxInputSize:I

    .line 15
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->e(Landroidx/media3/common/Format$Builder;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->e(Landroidx/media3/common/Format$Builder;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    .line 16
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->f(Landroidx/media3/common/Format$Builder;)Landroidx/media3/common/DrmInitData;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    .line 17
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->g(Landroidx/media3/common/Format$Builder;)J

    move-result-wide v3

    iput-wide v3, p0, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    .line 18
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->h(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    iput v1, p0, Landroidx/media3/common/Format;->width:I

    .line 19
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->i(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    iput v1, p0, Landroidx/media3/common/Format;->height:I

    .line 20
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->j(Landroidx/media3/common/Format$Builder;)F

    move-result v1

    iput v1, p0, Landroidx/media3/common/Format;->frameRate:F

    .line 21
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->k(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->k(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    :goto_1
    iput v1, p0, Landroidx/media3/common/Format;->rotationDegrees:I

    .line 22
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->m(Landroidx/media3/common/Format$Builder;)F

    move-result v1

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v1, v1, v4

    if-nez v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->m(Landroidx/media3/common/Format$Builder;)F

    move-result v1

    :goto_2
    iput v1, p0, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    .line 23
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->n(Landroidx/media3/common/Format$Builder;)[B

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/common/Format;->projectionData:[B

    .line 24
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->o(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    iput v1, p0, Landroidx/media3/common/Format;->stereoMode:I

    .line 25
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->p(Landroidx/media3/common/Format$Builder;)Landroidx/media3/common/ColorInfo;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    .line 26
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->q(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    iput v1, p0, Landroidx/media3/common/Format;->channelCount:I

    .line 27
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->r(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    iput v1, p0, Landroidx/media3/common/Format;->sampleRate:I

    .line 28
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->s(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    iput v1, p0, Landroidx/media3/common/Format;->pcmEncoding:I

    .line 29
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->t(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    if-ne v1, v2, :cond_4

    move v1, v3

    goto :goto_3

    :cond_4
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->t(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    :goto_3
    iput v1, p0, Landroidx/media3/common/Format;->encoderDelay:I

    .line 30
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->u(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    if-ne v1, v2, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->u(Landroidx/media3/common/Format$Builder;)I

    move-result v3

    :goto_4
    iput v3, p0, Landroidx/media3/common/Format;->encoderPadding:I

    .line 31
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->v(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    iput v1, p0, Landroidx/media3/common/Format;->accessibilityChannel:I

    .line 32
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->x(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    iput v1, p0, Landroidx/media3/common/Format;->tileCountHorizontal:I

    .line 33
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->y(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    iput v1, p0, Landroidx/media3/common/Format;->tileCountVertical:I

    .line 34
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->z(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    const/4 p1, 0x1

    iput p1, p0, Landroidx/media3/common/Format;->cryptoType:I

    goto :goto_5

    .line 35
    :cond_6
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->z(Landroidx/media3/common/Format$Builder;)I

    move-result p1

    iput p1, p0, Landroidx/media3/common/Format;->cryptoType:I

    :goto_5
    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/Format$Builder;Landroidx/media3/common/Format$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Landroidx/media3/common/Format;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/common/Format;->e(Landroid/os/Bundle;)Landroidx/media3/common/Format;

    move-result-object p0

    return-object p0
.end method

.method private static d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method private static e(Landroid/os/Bundle;)Landroidx/media3/common/Format;
    .locals 6

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/common/Format$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Landroidx/media3/common/util/BundleableUtil;->c(Landroid/os/Bundle;)V

    .line 9
    .line 10
    sget-object v1, Landroidx/media3/common/Format;->FIELD_ID:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    sget-object v2, Landroidx/media3/common/Format;->DEFAULT:Landroidx/media3/common/Format;

    .line 17
    .line 18
    iget-object v3, v2, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v3}, Landroidx/media3/common/Format;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    check-cast v1, Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->U(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    sget-object v3, Landroidx/media3/common/Format;->FIELD_LABEL:Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    iget-object v4, v2, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-static {v3, v4}, Landroidx/media3/common/Format;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    check-cast v3, Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v3}, Landroidx/media3/common/Format$Builder;->W(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    sget-object v3, Landroidx/media3/common/Format;->FIELD_LANGUAGE:Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object v3

    .line 53
    .line 54
    iget-object v4, v2, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    invoke-static {v3, v4}, Landroidx/media3/common/Format;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    move-result-object v3

    .line 59
    .line 60
    check-cast v3, Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v3}, Landroidx/media3/common/Format$Builder;->X(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    sget-object v3, Landroidx/media3/common/Format;->FIELD_SELECTION_FLAGS:Ljava/lang/String;

    .line 67
    .line 68
    iget v4, v2, Landroidx/media3/common/Format;->selectionFlags:I

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 72
    move-result v3

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v3}, Landroidx/media3/common/Format$Builder;->i0(I)Landroidx/media3/common/Format$Builder;

    .line 76
    move-result-object v1

    .line 77
    .line 78
    sget-object v3, Landroidx/media3/common/Format;->FIELD_ROLE_FLAGS:Ljava/lang/String;

    .line 79
    .line 80
    iget v4, v2, Landroidx/media3/common/Format;->roleFlags:I

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 84
    move-result v3

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v3}, Landroidx/media3/common/Format$Builder;->e0(I)Landroidx/media3/common/Format$Builder;

    .line 88
    move-result-object v1

    .line 89
    .line 90
    sget-object v3, Landroidx/media3/common/Format;->FIELD_AVERAGE_BITRATE:Ljava/lang/String;

    .line 91
    .line 92
    iget v4, v2, Landroidx/media3/common/Format;->averageBitrate:I

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 96
    move-result v3

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v3}, Landroidx/media3/common/Format$Builder;->I(I)Landroidx/media3/common/Format$Builder;

    .line 100
    move-result-object v1

    .line 101
    .line 102
    sget-object v3, Landroidx/media3/common/Format;->FIELD_PEAK_BITRATE:Ljava/lang/String;

    .line 103
    .line 104
    iget v4, v2, Landroidx/media3/common/Format;->peakBitrate:I

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 108
    move-result v3

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v3}, Landroidx/media3/common/Format$Builder;->b0(I)Landroidx/media3/common/Format$Builder;

    .line 112
    move-result-object v1

    .line 113
    .line 114
    sget-object v3, Landroidx/media3/common/Format;->FIELD_CODECS:Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    move-result-object v3

    .line 119
    .line 120
    iget-object v4, v2, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    invoke-static {v3, v4}, Landroidx/media3/common/Format;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    move-result-object v3

    .line 125
    .line 126
    check-cast v3, Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v3}, Landroidx/media3/common/Format$Builder;->K(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 130
    move-result-object v1

    .line 131
    .line 132
    sget-object v3, Landroidx/media3/common/Format;->FIELD_METADATA:Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 136
    move-result-object v3

    .line 137
    .line 138
    check-cast v3, Landroidx/media3/common/Metadata;

    .line 139
    .line 140
    iget-object v4, v2, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    .line 141
    .line 142
    .line 143
    invoke-static {v3, v4}, Landroidx/media3/common/Format;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    move-result-object v3

    .line 145
    .line 146
    check-cast v3, Landroidx/media3/common/Metadata;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v3}, Landroidx/media3/common/Format$Builder;->Z(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    .line 150
    move-result-object v1

    .line 151
    .line 152
    sget-object v3, Landroidx/media3/common/Format;->FIELD_CONTAINER_MIME_TYPE:Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 156
    move-result-object v3

    .line 157
    .line 158
    iget-object v4, v2, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    invoke-static {v3, v4}, Landroidx/media3/common/Format;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    move-result-object v3

    .line 163
    .line 164
    check-cast v3, Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v3}, Landroidx/media3/common/Format$Builder;->M(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 168
    move-result-object v1

    .line 169
    .line 170
    sget-object v3, Landroidx/media3/common/Format;->FIELD_SAMPLE_MIME_TYPE:Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    move-result-object v3

    .line 175
    .line 176
    iget-object v4, v2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    invoke-static {v3, v4}, Landroidx/media3/common/Format;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    move-result-object v3

    .line 181
    .line 182
    check-cast v3, Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, v3}, Landroidx/media3/common/Format$Builder;->g0(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 186
    move-result-object v1

    .line 187
    .line 188
    sget-object v3, Landroidx/media3/common/Format;->FIELD_MAX_INPUT_SIZE:Ljava/lang/String;

    .line 189
    .line 190
    iget v2, v2, Landroidx/media3/common/Format;->maxInputSize:I

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0, v3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 194
    move-result v2

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->Y(I)Landroidx/media3/common/Format$Builder;

    .line 198
    .line 199
    new-instance v1, Ljava/util/ArrayList;

    .line 200
    .line 201
    .line 202
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 203
    const/4 v2, 0x0

    .line 204
    .line 205
    .line 206
    :goto_0
    invoke-static {v2}, Landroidx/media3/common/Format;->h(I)Ljava/lang/String;

    .line 207
    move-result-object v3

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 211
    move-result-object v3

    .line 212
    .line 213
    if-nez v3, :cond_1

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->V(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    .line 217
    move-result-object v1

    .line 218
    .line 219
    sget-object v2, Landroidx/media3/common/Format;->FIELD_DRM_INIT_DATA:Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 223
    move-result-object v2

    .line 224
    .line 225
    check-cast v2, Landroidx/media3/common/DrmInitData;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->O(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    .line 229
    move-result-object v1

    .line 230
    .line 231
    sget-object v2, Landroidx/media3/common/Format;->FIELD_SUBSAMPLE_OFFSET_US:Ljava/lang/String;

    .line 232
    .line 233
    sget-object v3, Landroidx/media3/common/Format;->DEFAULT:Landroidx/media3/common/Format;

    .line 234
    .line 235
    iget-wide v4, v3, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0, v2, v4, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 239
    move-result-wide v4

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1, v4, v5}, Landroidx/media3/common/Format$Builder;->k0(J)Landroidx/media3/common/Format$Builder;

    .line 243
    move-result-object v1

    .line 244
    .line 245
    sget-object v2, Landroidx/media3/common/Format;->FIELD_WIDTH:Ljava/lang/String;

    .line 246
    .line 247
    iget v4, v3, Landroidx/media3/common/Format;->width:I

    .line 248
    .line 249
    .line 250
    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 251
    move-result v2

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->n0(I)Landroidx/media3/common/Format$Builder;

    .line 255
    move-result-object v1

    .line 256
    .line 257
    sget-object v2, Landroidx/media3/common/Format;->FIELD_HEIGHT:Ljava/lang/String;

    .line 258
    .line 259
    iget v4, v3, Landroidx/media3/common/Format;->height:I

    .line 260
    .line 261
    .line 262
    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 263
    move-result v2

    .line 264
    .line 265
    .line 266
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->S(I)Landroidx/media3/common/Format$Builder;

    .line 267
    move-result-object v1

    .line 268
    .line 269
    sget-object v2, Landroidx/media3/common/Format;->FIELD_FRAME_RATE:Ljava/lang/String;

    .line 270
    .line 271
    iget v4, v3, Landroidx/media3/common/Format;->frameRate:F

    .line 272
    .line 273
    .line 274
    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 275
    move-result v2

    .line 276
    .line 277
    .line 278
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->R(F)Landroidx/media3/common/Format$Builder;

    .line 279
    move-result-object v1

    .line 280
    .line 281
    sget-object v2, Landroidx/media3/common/Format;->FIELD_ROTATION_DEGREES:Ljava/lang/String;

    .line 282
    .line 283
    iget v4, v3, Landroidx/media3/common/Format;->rotationDegrees:I

    .line 284
    .line 285
    .line 286
    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 287
    move-result v2

    .line 288
    .line 289
    .line 290
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->f0(I)Landroidx/media3/common/Format$Builder;

    .line 291
    move-result-object v1

    .line 292
    .line 293
    sget-object v2, Landroidx/media3/common/Format;->FIELD_PIXEL_WIDTH_HEIGHT_RATIO:Ljava/lang/String;

    .line 294
    .line 295
    iget v4, v3, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    .line 296
    .line 297
    .line 298
    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 299
    move-result v2

    .line 300
    .line 301
    .line 302
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->c0(F)Landroidx/media3/common/Format$Builder;

    .line 303
    move-result-object v1

    .line 304
    .line 305
    sget-object v2, Landroidx/media3/common/Format;->FIELD_PROJECTION_DATA:Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 309
    move-result-object v2

    .line 310
    .line 311
    .line 312
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->d0([B)Landroidx/media3/common/Format$Builder;

    .line 313
    move-result-object v1

    .line 314
    .line 315
    sget-object v2, Landroidx/media3/common/Format;->FIELD_STEREO_MODE:Ljava/lang/String;

    .line 316
    .line 317
    iget v4, v3, Landroidx/media3/common/Format;->stereoMode:I

    .line 318
    .line 319
    .line 320
    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 321
    move-result v2

    .line 322
    .line 323
    .line 324
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->j0(I)Landroidx/media3/common/Format$Builder;

    .line 325
    .line 326
    sget-object v1, Landroidx/media3/common/Format;->FIELD_COLOR_INFO:Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 330
    move-result-object v1

    .line 331
    .line 332
    if-eqz v1, :cond_0

    .line 333
    .line 334
    sget-object v2, Landroidx/media3/common/ColorInfo;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    .line 335
    .line 336
    .line 337
    invoke-interface {v2, v1}, Landroidx/media3/common/Bundleable$Creator;->a(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    .line 338
    move-result-object v1

    .line 339
    .line 340
    check-cast v1, Landroidx/media3/common/ColorInfo;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->L(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/Format$Builder;

    .line 344
    .line 345
    :cond_0
    sget-object v1, Landroidx/media3/common/Format;->FIELD_CHANNEL_COUNT:Ljava/lang/String;

    .line 346
    .line 347
    iget v2, v3, Landroidx/media3/common/Format;->channelCount:I

    .line 348
    .line 349
    .line 350
    invoke-virtual {p0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 351
    move-result v1

    .line 352
    .line 353
    .line 354
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->J(I)Landroidx/media3/common/Format$Builder;

    .line 355
    move-result-object v1

    .line 356
    .line 357
    sget-object v2, Landroidx/media3/common/Format;->FIELD_SAMPLE_RATE:Ljava/lang/String;

    .line 358
    .line 359
    iget v4, v3, Landroidx/media3/common/Format;->sampleRate:I

    .line 360
    .line 361
    .line 362
    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 363
    move-result v2

    .line 364
    .line 365
    .line 366
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->h0(I)Landroidx/media3/common/Format$Builder;

    .line 367
    move-result-object v1

    .line 368
    .line 369
    sget-object v2, Landroidx/media3/common/Format;->FIELD_PCM_ENCODING:Ljava/lang/String;

    .line 370
    .line 371
    iget v4, v3, Landroidx/media3/common/Format;->pcmEncoding:I

    .line 372
    .line 373
    .line 374
    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 375
    move-result v2

    .line 376
    .line 377
    .line 378
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->a0(I)Landroidx/media3/common/Format$Builder;

    .line 379
    move-result-object v1

    .line 380
    .line 381
    sget-object v2, Landroidx/media3/common/Format;->FIELD_ENCODER_DELAY:Ljava/lang/String;

    .line 382
    .line 383
    iget v4, v3, Landroidx/media3/common/Format;->encoderDelay:I

    .line 384
    .line 385
    .line 386
    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 387
    move-result v2

    .line 388
    .line 389
    .line 390
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->P(I)Landroidx/media3/common/Format$Builder;

    .line 391
    move-result-object v1

    .line 392
    .line 393
    sget-object v2, Landroidx/media3/common/Format;->FIELD_ENCODER_PADDING:Ljava/lang/String;

    .line 394
    .line 395
    iget v4, v3, Landroidx/media3/common/Format;->encoderPadding:I

    .line 396
    .line 397
    .line 398
    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 399
    move-result v2

    .line 400
    .line 401
    .line 402
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->Q(I)Landroidx/media3/common/Format$Builder;

    .line 403
    move-result-object v1

    .line 404
    .line 405
    sget-object v2, Landroidx/media3/common/Format;->FIELD_ACCESSIBILITY_CHANNEL:Ljava/lang/String;

    .line 406
    .line 407
    iget v4, v3, Landroidx/media3/common/Format;->accessibilityChannel:I

    .line 408
    .line 409
    .line 410
    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 411
    move-result v2

    .line 412
    .line 413
    .line 414
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->H(I)Landroidx/media3/common/Format$Builder;

    .line 415
    move-result-object v1

    .line 416
    .line 417
    sget-object v2, Landroidx/media3/common/Format;->FIELD_TILE_COUNT_HORIZONTAL:Ljava/lang/String;

    .line 418
    .line 419
    iget v4, v3, Landroidx/media3/common/Format;->tileCountHorizontal:I

    .line 420
    .line 421
    .line 422
    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 423
    move-result v2

    .line 424
    .line 425
    .line 426
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->l0(I)Landroidx/media3/common/Format$Builder;

    .line 427
    move-result-object v1

    .line 428
    .line 429
    sget-object v2, Landroidx/media3/common/Format;->FIELD_TILE_COUNT_VERTICAL:Ljava/lang/String;

    .line 430
    .line 431
    iget v4, v3, Landroidx/media3/common/Format;->tileCountVertical:I

    .line 432
    .line 433
    .line 434
    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 435
    move-result v2

    .line 436
    .line 437
    .line 438
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->m0(I)Landroidx/media3/common/Format$Builder;

    .line 439
    move-result-object v1

    .line 440
    .line 441
    sget-object v2, Landroidx/media3/common/Format;->FIELD_CRYPTO_TYPE:Ljava/lang/String;

    .line 442
    .line 443
    iget v3, v3, Landroidx/media3/common/Format;->cryptoType:I

    .line 444
    .line 445
    .line 446
    invoke-virtual {p0, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 447
    move-result p0

    .line 448
    .line 449
    .line 450
    invoke-virtual {v1, p0}, Landroidx/media3/common/Format$Builder;->N(I)Landroidx/media3/common/Format$Builder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->G()Landroidx/media3/common/Format;

    .line 454
    move-result-object p0

    .line 455
    return-object p0

    .line 456
    .line 457
    .line 458
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    .line 460
    add-int/lit8 v2, v2, 0x1

    .line 461
    .line 462
    goto/16 :goto_0
.end method

.method private static h(I)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    sget-object v1, Landroidx/media3/common/Format;->FIELD_INITIALIZATION_DATA:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "_"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const/16 v1, 0x24

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public static j(Landroidx/media3/common/Format;)Ljava/lang/String;
    .locals 8
    .param p0    # Landroidx/media3/common/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    const-string p0, "null"

    .line 5
    return-object p0

    .line 6
    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    const-string v1, "id="

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v1, ", mimeType="

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    iget-object v1, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    iget v1, p0, Landroidx/media3/common/Format;->bitrate:I

    .line 33
    const/4 v2, -0x1

    .line 34
    .line 35
    if-eq v1, v2, :cond_1

    .line 36
    .line 37
    const-string v1, ", bitrate="

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    iget v1, p0, Landroidx/media3/common/Format;->bitrate:I

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    :cond_1
    iget-object v1, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 48
    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    const-string v1, ", codecs="

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    iget-object v1, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    :cond_2
    iget-object v1, p0, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    .line 62
    .line 63
    const/16 v3, 0x2c

    .line 64
    .line 65
    if-eqz v1, :cond_9

    .line 66
    .line 67
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 68
    .line 69
    .line 70
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 71
    const/4 v4, 0x0

    .line 72
    .line 73
    :goto_0
    iget-object v5, p0, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    .line 74
    .line 75
    iget v6, v5, Landroidx/media3/common/DrmInitData;->schemeDataCount:I

    .line 76
    .line 77
    if-ge v4, v6, :cond_8

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5, v4}, Landroidx/media3/common/DrmInitData;->h(I)Landroidx/media3/common/DrmInitData$SchemeData;

    .line 81
    move-result-object v5

    .line 82
    .line 83
    iget-object v5, v5, Landroidx/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    .line 84
    .line 85
    sget-object v6, Landroidx/media3/common/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 89
    move-result v6

    .line 90
    .line 91
    if-eqz v6, :cond_3

    .line 92
    .line 93
    const-string v5, "cenc"

    .line 94
    .line 95
    .line 96
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    goto :goto_1

    .line 98
    .line 99
    :cond_3
    sget-object v6, Landroidx/media3/common/C;->CLEARKEY_UUID:Ljava/util/UUID;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 103
    move-result v6

    .line 104
    .line 105
    if-eqz v6, :cond_4

    .line 106
    .line 107
    const-string v5, "clearkey"

    .line 108
    .line 109
    .line 110
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    goto :goto_1

    .line 112
    .line 113
    :cond_4
    sget-object v6, Landroidx/media3/common/C;->PLAYREADY_UUID:Ljava/util/UUID;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 117
    move-result v6

    .line 118
    .line 119
    if-eqz v6, :cond_5

    .line 120
    .line 121
    const-string v5, "playready"

    .line 122
    .line 123
    .line 124
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    goto :goto_1

    .line 126
    .line 127
    :cond_5
    sget-object v6, Landroidx/media3/common/C;->WIDEVINE_UUID:Ljava/util/UUID;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 131
    move-result v6

    .line 132
    .line 133
    if-eqz v6, :cond_6

    .line 134
    .line 135
    const-string v5, "widevine"

    .line 136
    .line 137
    .line 138
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    goto :goto_1

    .line 140
    .line 141
    :cond_6
    sget-object v6, Landroidx/media3/common/C;->UUID_NIL:Ljava/util/UUID;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 145
    move-result v6

    .line 146
    .line 147
    if-eqz v6, :cond_7

    .line 148
    .line 149
    const-string v5, "universal"

    .line 150
    .line 151
    .line 152
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 153
    goto :goto_1

    .line 154
    .line 155
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    const-string v7, "unknown ("

    .line 161
    .line 162
    .line 163
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string v5, ")"

    .line 169
    .line 170
    .line 171
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    move-result-object v5

    .line 176
    .line 177
    .line 178
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 181
    goto :goto_0

    .line 182
    .line 183
    :cond_8
    const-string v4, ", drm=["

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-static {v3}, Lcom/google/common/base/h;->d(C)Lcom/google/common/base/h;

    .line 190
    move-result-object v4

    .line 191
    .line 192
    .line 193
    invoke-virtual {v4, v0, v1}, Lcom/google/common/base/h;->b(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    const/16 v1, 0x5d

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    :cond_9
    iget v1, p0, Landroidx/media3/common/Format;->width:I

    .line 201
    .line 202
    if-eq v1, v2, :cond_a

    .line 203
    .line 204
    iget v1, p0, Landroidx/media3/common/Format;->height:I

    .line 205
    .line 206
    if-eq v1, v2, :cond_a

    .line 207
    .line 208
    const-string v1, ", res="

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    iget v1, p0, Landroidx/media3/common/Format;->width:I

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    const-string v1, "x"

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    iget v1, p0, Landroidx/media3/common/Format;->height:I

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    :cond_a
    iget-object v1, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    .line 229
    .line 230
    if-eqz v1, :cond_b

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1}, Landroidx/media3/common/ColorInfo;->g()Z

    .line 234
    move-result v1

    .line 235
    .line 236
    if-eqz v1, :cond_b

    .line 237
    .line 238
    const-string v1, ", color="

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    iget-object v1, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1}, Landroidx/media3/common/ColorInfo;->k()Ljava/lang/String;

    .line 247
    move-result-object v1

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    :cond_b
    iget v1, p0, Landroidx/media3/common/Format;->frameRate:F

    .line 253
    .line 254
    const/high16 v4, -0x40800000    # -1.0f

    .line 255
    .line 256
    cmpl-float v1, v1, v4

    .line 257
    .line 258
    if-eqz v1, :cond_c

    .line 259
    .line 260
    const-string v1, ", fps="

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    iget v1, p0, Landroidx/media3/common/Format;->frameRate:F

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    :cond_c
    iget v1, p0, Landroidx/media3/common/Format;->channelCount:I

    .line 271
    .line 272
    if-eq v1, v2, :cond_d

    .line 273
    .line 274
    const-string v1, ", channels="

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    iget v1, p0, Landroidx/media3/common/Format;->channelCount:I

    .line 280
    .line 281
    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    :cond_d
    iget v1, p0, Landroidx/media3/common/Format;->sampleRate:I

    .line 285
    .line 286
    if-eq v1, v2, :cond_e

    .line 287
    .line 288
    const-string v1, ", sample_rate="

    .line 289
    .line 290
    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    iget v1, p0, Landroidx/media3/common/Format;->sampleRate:I

    .line 294
    .line 295
    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    :cond_e
    iget-object v1, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    .line 299
    .line 300
    if-eqz v1, :cond_f

    .line 301
    .line 302
    const-string v1, ", language="

    .line 303
    .line 304
    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    iget-object v1, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    :cond_f
    iget-object v1, p0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    .line 313
    .line 314
    if-eqz v1, :cond_10

    .line 315
    .line 316
    const-string v1, ", label="

    .line 317
    .line 318
    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    iget-object v1, p0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    :cond_10
    iget v1, p0, Landroidx/media3/common/Format;->selectionFlags:I

    .line 327
    .line 328
    const-string v2, "]"

    .line 329
    .line 330
    if-eqz v1, :cond_14

    .line 331
    .line 332
    new-instance v1, Ljava/util/ArrayList;

    .line 333
    .line 334
    .line 335
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .line 337
    iget v4, p0, Landroidx/media3/common/Format;->selectionFlags:I

    .line 338
    .line 339
    and-int/lit8 v4, v4, 0x4

    .line 340
    .line 341
    if-eqz v4, :cond_11

    .line 342
    .line 343
    const-string v4, "auto"

    .line 344
    .line 345
    .line 346
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    .line 348
    :cond_11
    iget v4, p0, Landroidx/media3/common/Format;->selectionFlags:I

    .line 349
    .line 350
    and-int/lit8 v4, v4, 0x1

    .line 351
    .line 352
    if-eqz v4, :cond_12

    .line 353
    .line 354
    const-string v4, "default"

    .line 355
    .line 356
    .line 357
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    .line 359
    :cond_12
    iget v4, p0, Landroidx/media3/common/Format;->selectionFlags:I

    .line 360
    .line 361
    and-int/lit8 v4, v4, 0x2

    .line 362
    .line 363
    if-eqz v4, :cond_13

    .line 364
    .line 365
    const-string v4, "forced"

    .line 366
    .line 367
    .line 368
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    .line 370
    :cond_13
    const-string v4, ", selectionFlags=["

    .line 371
    .line 372
    .line 373
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-static {v3}, Lcom/google/common/base/h;->d(C)Lcom/google/common/base/h;

    .line 377
    move-result-object v4

    .line 378
    .line 379
    .line 380
    invoke-virtual {v4, v0, v1}, Lcom/google/common/base/h;->b(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    :cond_14
    iget v1, p0, Landroidx/media3/common/Format;->roleFlags:I

    .line 386
    .line 387
    if-eqz v1, :cond_24

    .line 388
    .line 389
    new-instance v1, Ljava/util/ArrayList;

    .line 390
    .line 391
    .line 392
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 393
    .line 394
    iget v4, p0, Landroidx/media3/common/Format;->roleFlags:I

    .line 395
    .line 396
    and-int/lit8 v4, v4, 0x1

    .line 397
    .line 398
    if-eqz v4, :cond_15

    .line 399
    .line 400
    const-string v4, "main"

    .line 401
    .line 402
    .line 403
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    .line 405
    :cond_15
    iget v4, p0, Landroidx/media3/common/Format;->roleFlags:I

    .line 406
    .line 407
    and-int/lit8 v4, v4, 0x2

    .line 408
    .line 409
    if-eqz v4, :cond_16

    .line 410
    .line 411
    const-string v4, "alt"

    .line 412
    .line 413
    .line 414
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    .line 416
    :cond_16
    iget v4, p0, Landroidx/media3/common/Format;->roleFlags:I

    .line 417
    .line 418
    and-int/lit8 v4, v4, 0x4

    .line 419
    .line 420
    if-eqz v4, :cond_17

    .line 421
    .line 422
    const-string v4, "supplementary"

    .line 423
    .line 424
    .line 425
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    .line 427
    :cond_17
    iget v4, p0, Landroidx/media3/common/Format;->roleFlags:I

    .line 428
    .line 429
    and-int/lit8 v4, v4, 0x8

    .line 430
    .line 431
    if-eqz v4, :cond_18

    .line 432
    .line 433
    const-string v4, "commentary"

    .line 434
    .line 435
    .line 436
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    .line 438
    :cond_18
    iget v4, p0, Landroidx/media3/common/Format;->roleFlags:I

    .line 439
    .line 440
    and-int/lit8 v4, v4, 0x10

    .line 441
    .line 442
    if-eqz v4, :cond_19

    .line 443
    .line 444
    const-string v4, "dub"

    .line 445
    .line 446
    .line 447
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    .line 449
    :cond_19
    iget v4, p0, Landroidx/media3/common/Format;->roleFlags:I

    .line 450
    .line 451
    and-int/lit8 v4, v4, 0x20

    .line 452
    .line 453
    if-eqz v4, :cond_1a

    .line 454
    .line 455
    const-string v4, "emergency"

    .line 456
    .line 457
    .line 458
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    .line 460
    :cond_1a
    iget v4, p0, Landroidx/media3/common/Format;->roleFlags:I

    .line 461
    .line 462
    and-int/lit8 v4, v4, 0x40

    .line 463
    .line 464
    if-eqz v4, :cond_1b

    .line 465
    .line 466
    const-string v4, "caption"

    .line 467
    .line 468
    .line 469
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    .line 471
    :cond_1b
    iget v4, p0, Landroidx/media3/common/Format;->roleFlags:I

    .line 472
    .line 473
    and-int/lit16 v4, v4, 0x80

    .line 474
    .line 475
    if-eqz v4, :cond_1c

    .line 476
    .line 477
    const-string v4, "subtitle"

    .line 478
    .line 479
    .line 480
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    .line 482
    :cond_1c
    iget v4, p0, Landroidx/media3/common/Format;->roleFlags:I

    .line 483
    .line 484
    and-int/lit16 v4, v4, 0x100

    .line 485
    .line 486
    if-eqz v4, :cond_1d

    .line 487
    .line 488
    const-string v4, "sign"

    .line 489
    .line 490
    .line 491
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    .line 493
    :cond_1d
    iget v4, p0, Landroidx/media3/common/Format;->roleFlags:I

    .line 494
    .line 495
    and-int/lit16 v4, v4, 0x200

    .line 496
    .line 497
    if-eqz v4, :cond_1e

    .line 498
    .line 499
    const-string v4, "describes-video"

    .line 500
    .line 501
    .line 502
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    .line 504
    :cond_1e
    iget v4, p0, Landroidx/media3/common/Format;->roleFlags:I

    .line 505
    .line 506
    and-int/lit16 v4, v4, 0x400

    .line 507
    .line 508
    if-eqz v4, :cond_1f

    .line 509
    .line 510
    const-string v4, "describes-music"

    .line 511
    .line 512
    .line 513
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    .line 515
    :cond_1f
    iget v4, p0, Landroidx/media3/common/Format;->roleFlags:I

    .line 516
    .line 517
    and-int/lit16 v4, v4, 0x800

    .line 518
    .line 519
    if-eqz v4, :cond_20

    .line 520
    .line 521
    const-string v4, "enhanced-intelligibility"

    .line 522
    .line 523
    .line 524
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    .line 526
    :cond_20
    iget v4, p0, Landroidx/media3/common/Format;->roleFlags:I

    .line 527
    .line 528
    and-int/lit16 v4, v4, 0x1000

    .line 529
    .line 530
    if-eqz v4, :cond_21

    .line 531
    .line 532
    const-string v4, "transcribes-dialog"

    .line 533
    .line 534
    .line 535
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    .line 537
    :cond_21
    iget v4, p0, Landroidx/media3/common/Format;->roleFlags:I

    .line 538
    .line 539
    and-int/lit16 v4, v4, 0x2000

    .line 540
    .line 541
    if-eqz v4, :cond_22

    .line 542
    .line 543
    const-string v4, "easy-read"

    .line 544
    .line 545
    .line 546
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    .line 548
    :cond_22
    iget p0, p0, Landroidx/media3/common/Format;->roleFlags:I

    .line 549
    .line 550
    and-int/lit16 p0, p0, 0x4000

    .line 551
    .line 552
    if-eqz p0, :cond_23

    .line 553
    .line 554
    const-string p0, "trick-play"

    .line 555
    .line 556
    .line 557
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    .line 559
    :cond_23
    const-string p0, ", roleFlags=["

    .line 560
    .line 561
    .line 562
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    invoke-static {v3}, Lcom/google/common/base/h;->d(C)Lcom/google/common/base/h;

    .line 566
    move-result-object p0

    .line 567
    .line 568
    .line 569
    invoke-virtual {p0, v0, v1}, Lcom/google/common/base/h;->b(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 576
    move-result-object p0

    .line 577
    return-object p0
.end method


# virtual methods
.method public b()Landroidx/media3/common/Format$Builder;
    .locals 2
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/common/Format$Builder;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Landroidx/media3/common/Format$Builder;-><init>(Landroidx/media3/common/Format;Landroidx/media3/common/Format$1;)V

    .line 7
    return-object v0
.end method

.method public c(I)Landroidx/media3/common/Format;
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/common/Format;->b()Landroidx/media3/common/Format$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroidx/media3/common/Format$Builder;->N(I)Landroidx/media3/common/Format$Builder;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->G()Landroidx/media3/common/Format;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz p1, :cond_4

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    const-class v3, Landroidx/media3/common/Format;

    .line 14
    .line 15
    if-eq v3, v2, :cond_1

    .line 16
    .line 17
    goto/16 :goto_1

    .line 18
    .line 19
    :cond_1
    check-cast p1, Landroidx/media3/common/Format;

    .line 20
    .line 21
    iget v2, p0, Landroidx/media3/common/Format;->hashCode:I

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    iget v3, p1, Landroidx/media3/common/Format;->hashCode:I

    .line 26
    .line 27
    if-eqz v3, :cond_2

    .line 28
    .line 29
    if-eq v2, v3, :cond_2

    .line 30
    return v1

    .line 31
    .line 32
    :cond_2
    iget v2, p0, Landroidx/media3/common/Format;->selectionFlags:I

    .line 33
    .line 34
    iget v3, p1, Landroidx/media3/common/Format;->selectionFlags:I

    .line 35
    .line 36
    if-ne v2, v3, :cond_3

    .line 37
    .line 38
    iget v2, p0, Landroidx/media3/common/Format;->roleFlags:I

    .line 39
    .line 40
    iget v3, p1, Landroidx/media3/common/Format;->roleFlags:I

    .line 41
    .line 42
    if-ne v2, v3, :cond_3

    .line 43
    .line 44
    iget v2, p0, Landroidx/media3/common/Format;->averageBitrate:I

    .line 45
    .line 46
    iget v3, p1, Landroidx/media3/common/Format;->averageBitrate:I

    .line 47
    .line 48
    if-ne v2, v3, :cond_3

    .line 49
    .line 50
    iget v2, p0, Landroidx/media3/common/Format;->peakBitrate:I

    .line 51
    .line 52
    iget v3, p1, Landroidx/media3/common/Format;->peakBitrate:I

    .line 53
    .line 54
    if-ne v2, v3, :cond_3

    .line 55
    .line 56
    iget v2, p0, Landroidx/media3/common/Format;->maxInputSize:I

    .line 57
    .line 58
    iget v3, p1, Landroidx/media3/common/Format;->maxInputSize:I

    .line 59
    .line 60
    if-ne v2, v3, :cond_3

    .line 61
    .line 62
    iget-wide v2, p0, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    .line 63
    .line 64
    iget-wide v4, p1, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    .line 65
    .line 66
    cmp-long v2, v2, v4

    .line 67
    .line 68
    if-nez v2, :cond_3

    .line 69
    .line 70
    iget v2, p0, Landroidx/media3/common/Format;->width:I

    .line 71
    .line 72
    iget v3, p1, Landroidx/media3/common/Format;->width:I

    .line 73
    .line 74
    if-ne v2, v3, :cond_3

    .line 75
    .line 76
    iget v2, p0, Landroidx/media3/common/Format;->height:I

    .line 77
    .line 78
    iget v3, p1, Landroidx/media3/common/Format;->height:I

    .line 79
    .line 80
    if-ne v2, v3, :cond_3

    .line 81
    .line 82
    iget v2, p0, Landroidx/media3/common/Format;->rotationDegrees:I

    .line 83
    .line 84
    iget v3, p1, Landroidx/media3/common/Format;->rotationDegrees:I

    .line 85
    .line 86
    if-ne v2, v3, :cond_3

    .line 87
    .line 88
    iget v2, p0, Landroidx/media3/common/Format;->stereoMode:I

    .line 89
    .line 90
    iget v3, p1, Landroidx/media3/common/Format;->stereoMode:I

    .line 91
    .line 92
    if-ne v2, v3, :cond_3

    .line 93
    .line 94
    iget v2, p0, Landroidx/media3/common/Format;->channelCount:I

    .line 95
    .line 96
    iget v3, p1, Landroidx/media3/common/Format;->channelCount:I

    .line 97
    .line 98
    if-ne v2, v3, :cond_3

    .line 99
    .line 100
    iget v2, p0, Landroidx/media3/common/Format;->sampleRate:I

    .line 101
    .line 102
    iget v3, p1, Landroidx/media3/common/Format;->sampleRate:I

    .line 103
    .line 104
    if-ne v2, v3, :cond_3

    .line 105
    .line 106
    iget v2, p0, Landroidx/media3/common/Format;->pcmEncoding:I

    .line 107
    .line 108
    iget v3, p1, Landroidx/media3/common/Format;->pcmEncoding:I

    .line 109
    .line 110
    if-ne v2, v3, :cond_3

    .line 111
    .line 112
    iget v2, p0, Landroidx/media3/common/Format;->encoderDelay:I

    .line 113
    .line 114
    iget v3, p1, Landroidx/media3/common/Format;->encoderDelay:I

    .line 115
    .line 116
    if-ne v2, v3, :cond_3

    .line 117
    .line 118
    iget v2, p0, Landroidx/media3/common/Format;->encoderPadding:I

    .line 119
    .line 120
    iget v3, p1, Landroidx/media3/common/Format;->encoderPadding:I

    .line 121
    .line 122
    if-ne v2, v3, :cond_3

    .line 123
    .line 124
    iget v2, p0, Landroidx/media3/common/Format;->accessibilityChannel:I

    .line 125
    .line 126
    iget v3, p1, Landroidx/media3/common/Format;->accessibilityChannel:I

    .line 127
    .line 128
    if-ne v2, v3, :cond_3

    .line 129
    .line 130
    iget v2, p0, Landroidx/media3/common/Format;->tileCountHorizontal:I

    .line 131
    .line 132
    iget v3, p1, Landroidx/media3/common/Format;->tileCountHorizontal:I

    .line 133
    .line 134
    if-ne v2, v3, :cond_3

    .line 135
    .line 136
    iget v2, p0, Landroidx/media3/common/Format;->tileCountVertical:I

    .line 137
    .line 138
    iget v3, p1, Landroidx/media3/common/Format;->tileCountVertical:I

    .line 139
    .line 140
    if-ne v2, v3, :cond_3

    .line 141
    .line 142
    iget v2, p0, Landroidx/media3/common/Format;->cryptoType:I

    .line 143
    .line 144
    iget v3, p1, Landroidx/media3/common/Format;->cryptoType:I

    .line 145
    .line 146
    if-ne v2, v3, :cond_3

    .line 147
    .line 148
    iget v2, p0, Landroidx/media3/common/Format;->frameRate:F

    .line 149
    .line 150
    iget v3, p1, Landroidx/media3/common/Format;->frameRate:F

    .line 151
    .line 152
    .line 153
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    .line 154
    move-result v2

    .line 155
    .line 156
    if-nez v2, :cond_3

    .line 157
    .line 158
    iget v2, p0, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    .line 159
    .line 160
    iget v3, p1, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    .line 161
    .line 162
    .line 163
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    .line 164
    move-result v2

    .line 165
    .line 166
    if-nez v2, :cond_3

    .line 167
    .line 168
    iget-object v2, p0, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    .line 169
    .line 170
    iget-object v3, p1, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 174
    move-result v2

    .line 175
    .line 176
    if-eqz v2, :cond_3

    .line 177
    .line 178
    iget-object v2, p0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    .line 179
    .line 180
    iget-object v3, p1, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 184
    move-result v2

    .line 185
    .line 186
    if-eqz v2, :cond_3

    .line 187
    .line 188
    iget-object v2, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 189
    .line 190
    iget-object v3, p1, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 194
    move-result v2

    .line 195
    .line 196
    if-eqz v2, :cond_3

    .line 197
    .line 198
    iget-object v2, p0, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    .line 199
    .line 200
    iget-object v3, p1, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 204
    move-result v2

    .line 205
    .line 206
    if-eqz v2, :cond_3

    .line 207
    .line 208
    iget-object v2, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 209
    .line 210
    iget-object v3, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 214
    move-result v2

    .line 215
    .line 216
    if-eqz v2, :cond_3

    .line 217
    .line 218
    iget-object v2, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    .line 219
    .line 220
    iget-object v3, p1, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 224
    move-result v2

    .line 225
    .line 226
    if-eqz v2, :cond_3

    .line 227
    .line 228
    iget-object v2, p0, Landroidx/media3/common/Format;->projectionData:[B

    .line 229
    .line 230
    iget-object v3, p1, Landroidx/media3/common/Format;->projectionData:[B

    .line 231
    .line 232
    .line 233
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 234
    move-result v2

    .line 235
    .line 236
    if-eqz v2, :cond_3

    .line 237
    .line 238
    iget-object v2, p0, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    .line 239
    .line 240
    iget-object v3, p1, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    .line 241
    .line 242
    .line 243
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 244
    move-result v2

    .line 245
    .line 246
    if-eqz v2, :cond_3

    .line 247
    .line 248
    iget-object v2, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    .line 249
    .line 250
    iget-object v3, p1, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    .line 251
    .line 252
    .line 253
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 254
    move-result v2

    .line 255
    .line 256
    if-eqz v2, :cond_3

    .line 257
    .line 258
    iget-object v2, p0, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    .line 259
    .line 260
    iget-object v3, p1, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    .line 261
    .line 262
    .line 263
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 264
    move-result v2

    .line 265
    .line 266
    if-eqz v2, :cond_3

    .line 267
    .line 268
    .line 269
    invoke-virtual {p0, p1}, Landroidx/media3/common/Format;->g(Landroidx/media3/common/Format;)Z

    .line 270
    move-result p1

    .line 271
    .line 272
    if-eqz p1, :cond_3

    .line 273
    goto :goto_0

    .line 274
    :cond_3
    move v0, v1

    .line 275
    :goto_0
    return v0

    .line 276
    :cond_4
    :goto_1
    return v1
.end method

.method public f()I
    .locals 3
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/media3/common/Format;->width:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v2, p0, Landroidx/media3/common/Format;->height:I

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    mul-int v1, v0, v2

    :cond_1
    :goto_0
    return v1
.end method

.method public g(Landroidx/media3/common/Format;)Z
    .locals 4
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    .line 9
    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    return v2

    .line 17
    :cond_0
    move v0, v2

    .line 18
    .line 19
    :goto_0
    iget-object v1, p0, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    .line 20
    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 23
    move-result v1

    .line 24
    .line 25
    if-ge v0, v1, :cond_2

    .line 26
    .line 27
    iget-object v1, p0, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    .line 28
    .line 29
    .line 30
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    check-cast v1, [B

    .line 34
    .line 35
    iget-object v3, p1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    .line 36
    .line 37
    .line 38
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object v3

    .line 40
    .line 41
    check-cast v3, [B

    .line 42
    .line 43
    .line 44
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 45
    move-result v1

    .line 46
    .line 47
    if-nez v1, :cond_1

    .line 48
    return v2

    .line 49
    .line 50
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/4 p1, 0x1

    .line 53
    return p1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Landroidx/media3/common/Format;->hashCode:I

    .line 3
    .line 4
    if-nez v0, :cond_7

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    move v0, v1

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 15
    move-result v0

    .line 16
    .line 17
    :goto_0
    const/16 v2, 0x20f

    .line 18
    add-int/2addr v2, v0

    .line 19
    .line 20
    mul-int/lit8 v2, v2, 0x1f

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 28
    move-result v0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v0, v1

    .line 31
    :goto_1
    add-int/2addr v2, v0

    .line 32
    .line 33
    mul-int/lit8 v2, v2, 0x1f

    .line 34
    .line 35
    iget-object v0, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    move v0, v1

    .line 39
    goto :goto_2

    .line 40
    .line 41
    .line 42
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 43
    move-result v0

    .line 44
    :goto_2
    add-int/2addr v2, v0

    .line 45
    .line 46
    mul-int/lit8 v2, v2, 0x1f

    .line 47
    .line 48
    iget v0, p0, Landroidx/media3/common/Format;->selectionFlags:I

    .line 49
    add-int/2addr v2, v0

    .line 50
    .line 51
    mul-int/lit8 v2, v2, 0x1f

    .line 52
    .line 53
    iget v0, p0, Landroidx/media3/common/Format;->roleFlags:I

    .line 54
    add-int/2addr v2, v0

    .line 55
    .line 56
    mul-int/lit8 v2, v2, 0x1f

    .line 57
    .line 58
    iget v0, p0, Landroidx/media3/common/Format;->averageBitrate:I

    .line 59
    add-int/2addr v2, v0

    .line 60
    .line 61
    mul-int/lit8 v2, v2, 0x1f

    .line 62
    .line 63
    iget v0, p0, Landroidx/media3/common/Format;->peakBitrate:I

    .line 64
    add-int/2addr v2, v0

    .line 65
    .line 66
    mul-int/lit8 v2, v2, 0x1f

    .line 67
    .line 68
    iget-object v0, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 69
    .line 70
    if-nez v0, :cond_3

    .line 71
    move v0, v1

    .line 72
    goto :goto_3

    .line 73
    .line 74
    .line 75
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 76
    move-result v0

    .line 77
    :goto_3
    add-int/2addr v2, v0

    .line 78
    .line 79
    mul-int/lit8 v2, v2, 0x1f

    .line 80
    .line 81
    iget-object v0, p0, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    .line 82
    .line 83
    if-nez v0, :cond_4

    .line 84
    move v0, v1

    .line 85
    goto :goto_4

    .line 86
    .line 87
    .line 88
    :cond_4
    invoke-virtual {v0}, Landroidx/media3/common/Metadata;->hashCode()I

    .line 89
    move-result v0

    .line 90
    :goto_4
    add-int/2addr v2, v0

    .line 91
    .line 92
    mul-int/lit8 v2, v2, 0x1f

    .line 93
    .line 94
    iget-object v0, p0, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    .line 95
    .line 96
    if-nez v0, :cond_5

    .line 97
    move v0, v1

    .line 98
    goto :goto_5

    .line 99
    .line 100
    .line 101
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 102
    move-result v0

    .line 103
    :goto_5
    add-int/2addr v2, v0

    .line 104
    .line 105
    mul-int/lit8 v2, v2, 0x1f

    .line 106
    .line 107
    iget-object v0, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 108
    .line 109
    if-nez v0, :cond_6

    .line 110
    goto :goto_6

    .line 111
    .line 112
    .line 113
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 114
    move-result v1

    .line 115
    :goto_6
    add-int/2addr v2, v1

    .line 116
    .line 117
    mul-int/lit8 v2, v2, 0x1f

    .line 118
    .line 119
    iget v0, p0, Landroidx/media3/common/Format;->maxInputSize:I

    .line 120
    add-int/2addr v2, v0

    .line 121
    .line 122
    mul-int/lit8 v2, v2, 0x1f

    .line 123
    .line 124
    iget-wide v0, p0, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    .line 125
    long-to-int v0, v0

    .line 126
    add-int/2addr v2, v0

    .line 127
    .line 128
    mul-int/lit8 v2, v2, 0x1f

    .line 129
    .line 130
    iget v0, p0, Landroidx/media3/common/Format;->width:I

    .line 131
    add-int/2addr v2, v0

    .line 132
    .line 133
    mul-int/lit8 v2, v2, 0x1f

    .line 134
    .line 135
    iget v0, p0, Landroidx/media3/common/Format;->height:I

    .line 136
    add-int/2addr v2, v0

    .line 137
    .line 138
    mul-int/lit8 v2, v2, 0x1f

    .line 139
    .line 140
    iget v0, p0, Landroidx/media3/common/Format;->frameRate:F

    .line 141
    .line 142
    .line 143
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 144
    move-result v0

    .line 145
    add-int/2addr v2, v0

    .line 146
    .line 147
    mul-int/lit8 v2, v2, 0x1f

    .line 148
    .line 149
    iget v0, p0, Landroidx/media3/common/Format;->rotationDegrees:I

    .line 150
    add-int/2addr v2, v0

    .line 151
    .line 152
    mul-int/lit8 v2, v2, 0x1f

    .line 153
    .line 154
    iget v0, p0, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    .line 155
    .line 156
    .line 157
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 158
    move-result v0

    .line 159
    add-int/2addr v2, v0

    .line 160
    .line 161
    mul-int/lit8 v2, v2, 0x1f

    .line 162
    .line 163
    iget v0, p0, Landroidx/media3/common/Format;->stereoMode:I

    .line 164
    add-int/2addr v2, v0

    .line 165
    .line 166
    mul-int/lit8 v2, v2, 0x1f

    .line 167
    .line 168
    iget v0, p0, Landroidx/media3/common/Format;->channelCount:I

    .line 169
    add-int/2addr v2, v0

    .line 170
    .line 171
    mul-int/lit8 v2, v2, 0x1f

    .line 172
    .line 173
    iget v0, p0, Landroidx/media3/common/Format;->sampleRate:I

    .line 174
    add-int/2addr v2, v0

    .line 175
    .line 176
    mul-int/lit8 v2, v2, 0x1f

    .line 177
    .line 178
    iget v0, p0, Landroidx/media3/common/Format;->pcmEncoding:I

    .line 179
    add-int/2addr v2, v0

    .line 180
    .line 181
    mul-int/lit8 v2, v2, 0x1f

    .line 182
    .line 183
    iget v0, p0, Landroidx/media3/common/Format;->encoderDelay:I

    .line 184
    add-int/2addr v2, v0

    .line 185
    .line 186
    mul-int/lit8 v2, v2, 0x1f

    .line 187
    .line 188
    iget v0, p0, Landroidx/media3/common/Format;->encoderPadding:I

    .line 189
    add-int/2addr v2, v0

    .line 190
    .line 191
    mul-int/lit8 v2, v2, 0x1f

    .line 192
    .line 193
    iget v0, p0, Landroidx/media3/common/Format;->accessibilityChannel:I

    .line 194
    add-int/2addr v2, v0

    .line 195
    .line 196
    mul-int/lit8 v2, v2, 0x1f

    .line 197
    .line 198
    iget v0, p0, Landroidx/media3/common/Format;->tileCountHorizontal:I

    .line 199
    add-int/2addr v2, v0

    .line 200
    .line 201
    mul-int/lit8 v2, v2, 0x1f

    .line 202
    .line 203
    iget v0, p0, Landroidx/media3/common/Format;->tileCountVertical:I

    .line 204
    add-int/2addr v2, v0

    .line 205
    .line 206
    mul-int/lit8 v2, v2, 0x1f

    .line 207
    .line 208
    iget v0, p0, Landroidx/media3/common/Format;->cryptoType:I

    .line 209
    add-int/2addr v2, v0

    .line 210
    .line 211
    iput v2, p0, Landroidx/media3/common/Format;->hashCode:I

    .line 212
    .line 213
    :cond_7
    iget v0, p0, Landroidx/media3/common/Format;->hashCode:I

    .line 214
    return v0
.end method

.method public i(Z)Landroid/os/Bundle;
    .locals 3
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    sget-object v1, Landroidx/media3/common/Format;->FIELD_ID:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    sget-object v1, Landroidx/media3/common/Format;->FIELD_LABEL:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v2, p0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    sget-object v1, Landroidx/media3/common/Format;->FIELD_LANGUAGE:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v2, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    sget-object v1, Landroidx/media3/common/Format;->FIELD_SELECTION_FLAGS:Ljava/lang/String;

    .line 29
    .line 30
    iget v2, p0, Landroidx/media3/common/Format;->selectionFlags:I

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 34
    .line 35
    sget-object v1, Landroidx/media3/common/Format;->FIELD_ROLE_FLAGS:Ljava/lang/String;

    .line 36
    .line 37
    iget v2, p0, Landroidx/media3/common/Format;->roleFlags:I

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 41
    .line 42
    sget-object v1, Landroidx/media3/common/Format;->FIELD_AVERAGE_BITRATE:Ljava/lang/String;

    .line 43
    .line 44
    iget v2, p0, Landroidx/media3/common/Format;->averageBitrate:I

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 48
    .line 49
    sget-object v1, Landroidx/media3/common/Format;->FIELD_PEAK_BITRATE:Ljava/lang/String;

    .line 50
    .line 51
    iget v2, p0, Landroidx/media3/common/Format;->peakBitrate:I

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 55
    .line 56
    sget-object v1, Landroidx/media3/common/Format;->FIELD_CODECS:Ljava/lang/String;

    .line 57
    .line 58
    iget-object v2, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    if-nez p1, :cond_0

    .line 64
    .line 65
    sget-object p1, Landroidx/media3/common/Format;->FIELD_METADATA:Ljava/lang/String;

    .line 66
    .line 67
    iget-object v1, p0, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 71
    .line 72
    :cond_0
    sget-object p1, Landroidx/media3/common/Format;->FIELD_CONTAINER_MIME_TYPE:Ljava/lang/String;

    .line 73
    .line 74
    iget-object v1, p0, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    sget-object p1, Landroidx/media3/common/Format;->FIELD_SAMPLE_MIME_TYPE:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v1, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    sget-object p1, Landroidx/media3/common/Format;->FIELD_MAX_INPUT_SIZE:Ljava/lang/String;

    .line 87
    .line 88
    iget v1, p0, Landroidx/media3/common/Format;->maxInputSize:I

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 92
    const/4 p1, 0x0

    .line 93
    .line 94
    :goto_0
    iget-object v1, p0, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    .line 95
    .line 96
    .line 97
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 98
    move-result v1

    .line 99
    .line 100
    if-ge p1, v1, :cond_1

    .line 101
    .line 102
    .line 103
    invoke-static {p1}, Landroidx/media3/common/Format;->h(I)Ljava/lang/String;

    .line 104
    move-result-object v1

    .line 105
    .line 106
    iget-object v2, p0, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    .line 107
    .line 108
    .line 109
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 110
    move-result-object v2

    .line 111
    .line 112
    check-cast v2, [B

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 116
    .line 117
    add-int/lit8 p1, p1, 0x1

    .line 118
    goto :goto_0

    .line 119
    .line 120
    :cond_1
    sget-object p1, Landroidx/media3/common/Format;->FIELD_DRM_INIT_DATA:Ljava/lang/String;

    .line 121
    .line 122
    iget-object v1, p0, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 126
    .line 127
    sget-object p1, Landroidx/media3/common/Format;->FIELD_SUBSAMPLE_OFFSET_US:Ljava/lang/String;

    .line 128
    .line 129
    iget-wide v1, p0, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 133
    .line 134
    sget-object p1, Landroidx/media3/common/Format;->FIELD_WIDTH:Ljava/lang/String;

    .line 135
    .line 136
    iget v1, p0, Landroidx/media3/common/Format;->width:I

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 140
    .line 141
    sget-object p1, Landroidx/media3/common/Format;->FIELD_HEIGHT:Ljava/lang/String;

    .line 142
    .line 143
    iget v1, p0, Landroidx/media3/common/Format;->height:I

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 147
    .line 148
    sget-object p1, Landroidx/media3/common/Format;->FIELD_FRAME_RATE:Ljava/lang/String;

    .line 149
    .line 150
    iget v1, p0, Landroidx/media3/common/Format;->frameRate:F

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 154
    .line 155
    sget-object p1, Landroidx/media3/common/Format;->FIELD_ROTATION_DEGREES:Ljava/lang/String;

    .line 156
    .line 157
    iget v1, p0, Landroidx/media3/common/Format;->rotationDegrees:I

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 161
    .line 162
    sget-object p1, Landroidx/media3/common/Format;->FIELD_PIXEL_WIDTH_HEIGHT_RATIO:Ljava/lang/String;

    .line 163
    .line 164
    iget v1, p0, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 168
    .line 169
    sget-object p1, Landroidx/media3/common/Format;->FIELD_PROJECTION_DATA:Ljava/lang/String;

    .line 170
    .line 171
    iget-object v1, p0, Landroidx/media3/common/Format;->projectionData:[B

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 175
    .line 176
    sget-object p1, Landroidx/media3/common/Format;->FIELD_STEREO_MODE:Ljava/lang/String;

    .line 177
    .line 178
    iget v1, p0, Landroidx/media3/common/Format;->stereoMode:I

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 182
    .line 183
    iget-object p1, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    .line 184
    .line 185
    if-eqz p1, :cond_2

    .line 186
    .line 187
    sget-object v1, Landroidx/media3/common/Format;->FIELD_COLOR_INFO:Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1}, Landroidx/media3/common/ColorInfo;->toBundle()Landroid/os/Bundle;

    .line 191
    move-result-object p1

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 195
    .line 196
    :cond_2
    sget-object p1, Landroidx/media3/common/Format;->FIELD_CHANNEL_COUNT:Ljava/lang/String;

    .line 197
    .line 198
    iget v1, p0, Landroidx/media3/common/Format;->channelCount:I

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 202
    .line 203
    sget-object p1, Landroidx/media3/common/Format;->FIELD_SAMPLE_RATE:Ljava/lang/String;

    .line 204
    .line 205
    iget v1, p0, Landroidx/media3/common/Format;->sampleRate:I

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 209
    .line 210
    sget-object p1, Landroidx/media3/common/Format;->FIELD_PCM_ENCODING:Ljava/lang/String;

    .line 211
    .line 212
    iget v1, p0, Landroidx/media3/common/Format;->pcmEncoding:I

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 216
    .line 217
    sget-object p1, Landroidx/media3/common/Format;->FIELD_ENCODER_DELAY:Ljava/lang/String;

    .line 218
    .line 219
    iget v1, p0, Landroidx/media3/common/Format;->encoderDelay:I

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 223
    .line 224
    sget-object p1, Landroidx/media3/common/Format;->FIELD_ENCODER_PADDING:Ljava/lang/String;

    .line 225
    .line 226
    iget v1, p0, Landroidx/media3/common/Format;->encoderPadding:I

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 230
    .line 231
    sget-object p1, Landroidx/media3/common/Format;->FIELD_ACCESSIBILITY_CHANNEL:Ljava/lang/String;

    .line 232
    .line 233
    iget v1, p0, Landroidx/media3/common/Format;->accessibilityChannel:I

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 237
    .line 238
    sget-object p1, Landroidx/media3/common/Format;->FIELD_TILE_COUNT_HORIZONTAL:Ljava/lang/String;

    .line 239
    .line 240
    iget v1, p0, Landroidx/media3/common/Format;->tileCountHorizontal:I

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 244
    .line 245
    sget-object p1, Landroidx/media3/common/Format;->FIELD_TILE_COUNT_VERTICAL:Ljava/lang/String;

    .line 246
    .line 247
    iget v1, p0, Landroidx/media3/common/Format;->tileCountVertical:I

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 251
    .line 252
    sget-object p1, Landroidx/media3/common/Format;->FIELD_CRYPTO_TYPE:Ljava/lang/String;

    .line 253
    .line 254
    iget v1, p0, Landroidx/media3/common/Format;->cryptoType:I

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 258
    return-object v0
.end method

.method public k(Landroidx/media3/common/Format;)Landroidx/media3/common/Format;
    .locals 11
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    return-object p0

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->k(Ljava/lang/String;)I

    .line 9
    move-result v0

    .line 10
    .line 11
    iget-object v1, p1, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v2, p1, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_1
    iget-object v2, p0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    .line 19
    .line 20
    :goto_0
    iget-object v3, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    .line 21
    const/4 v4, 0x3

    .line 22
    const/4 v5, 0x1

    .line 23
    .line 24
    if-eq v0, v4, :cond_2

    .line 25
    .line 26
    if-ne v0, v5, :cond_3

    .line 27
    .line 28
    :cond_2
    iget-object v4, p1, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    .line 29
    .line 30
    if-eqz v4, :cond_3

    .line 31
    move-object v3, v4

    .line 32
    .line 33
    :cond_3
    iget v4, p0, Landroidx/media3/common/Format;->averageBitrate:I

    .line 34
    const/4 v6, -0x1

    .line 35
    .line 36
    if-ne v4, v6, :cond_4

    .line 37
    .line 38
    iget v4, p1, Landroidx/media3/common/Format;->averageBitrate:I

    .line 39
    .line 40
    :cond_4
    iget v7, p0, Landroidx/media3/common/Format;->peakBitrate:I

    .line 41
    .line 42
    if-ne v7, v6, :cond_5

    .line 43
    .line 44
    iget v7, p1, Landroidx/media3/common/Format;->peakBitrate:I

    .line 45
    .line 46
    :cond_5
    iget-object v6, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 47
    .line 48
    if-nez v6, :cond_6

    .line 49
    .line 50
    iget-object v8, p1, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    invoke-static {v8, v0}, Landroidx/media3/common/util/Util;->M(Ljava/lang/String;I)Ljava/lang/String;

    .line 54
    move-result-object v8

    .line 55
    .line 56
    .line 57
    invoke-static {v8}, Landroidx/media3/common/util/Util;->f1(Ljava/lang/String;)[Ljava/lang/String;

    .line 58
    move-result-object v9

    .line 59
    array-length v9, v9

    .line 60
    .line 61
    if-ne v9, v5, :cond_6

    .line 62
    move-object v6, v8

    .line 63
    .line 64
    :cond_6
    iget-object v5, p0, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    .line 65
    .line 66
    if-nez v5, :cond_7

    .line 67
    .line 68
    iget-object v5, p1, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    .line 69
    goto :goto_1

    .line 70
    .line 71
    :cond_7
    iget-object v8, p1, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5, v8}, Landroidx/media3/common/Metadata;->c(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    .line 75
    move-result-object v5

    .line 76
    .line 77
    :goto_1
    iget v8, p0, Landroidx/media3/common/Format;->frameRate:F

    .line 78
    .line 79
    const/high16 v9, -0x40800000    # -1.0f

    .line 80
    .line 81
    cmpl-float v9, v8, v9

    .line 82
    .line 83
    if-nez v9, :cond_8

    .line 84
    const/4 v9, 0x2

    .line 85
    .line 86
    if-ne v0, v9, :cond_8

    .line 87
    .line 88
    iget v8, p1, Landroidx/media3/common/Format;->frameRate:F

    .line 89
    .line 90
    :cond_8
    iget v0, p0, Landroidx/media3/common/Format;->selectionFlags:I

    .line 91
    .line 92
    iget v9, p1, Landroidx/media3/common/Format;->selectionFlags:I

    .line 93
    or-int/2addr v0, v9

    .line 94
    .line 95
    iget v9, p0, Landroidx/media3/common/Format;->roleFlags:I

    .line 96
    .line 97
    iget v10, p1, Landroidx/media3/common/Format;->roleFlags:I

    .line 98
    or-int/2addr v9, v10

    .line 99
    .line 100
    iget-object p1, p1, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    .line 101
    .line 102
    iget-object v10, p0, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    .line 103
    .line 104
    .line 105
    invoke-static {p1, v10}, Landroidx/media3/common/DrmInitData;->g(Landroidx/media3/common/DrmInitData;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/DrmInitData;

    .line 106
    move-result-object p1

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Landroidx/media3/common/Format;->b()Landroidx/media3/common/Format$Builder;

    .line 110
    move-result-object v10

    .line 111
    .line 112
    .line 113
    invoke-virtual {v10, v1}, Landroidx/media3/common/Format$Builder;->U(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 114
    move-result-object v1

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->W(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 118
    move-result-object v1

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v3}, Landroidx/media3/common/Format$Builder;->X(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 122
    move-result-object v1

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v0}, Landroidx/media3/common/Format$Builder;->i0(I)Landroidx/media3/common/Format$Builder;

    .line 126
    move-result-object v0

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v9}, Landroidx/media3/common/Format$Builder;->e0(I)Landroidx/media3/common/Format$Builder;

    .line 130
    move-result-object v0

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v4}, Landroidx/media3/common/Format$Builder;->I(I)Landroidx/media3/common/Format$Builder;

    .line 134
    move-result-object v0

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v7}, Landroidx/media3/common/Format$Builder;->b0(I)Landroidx/media3/common/Format$Builder;

    .line 138
    move-result-object v0

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v6}, Landroidx/media3/common/Format$Builder;->K(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 142
    move-result-object v0

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v5}, Landroidx/media3/common/Format$Builder;->Z(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    .line 146
    move-result-object v0

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, p1}, Landroidx/media3/common/Format$Builder;->O(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    .line 150
    move-result-object p1

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v8}, Landroidx/media3/common/Format$Builder;->R(F)Landroidx/media3/common/Format$Builder;

    .line 154
    move-result-object p1

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->G()Landroidx/media3/common/Format;

    .line 158
    move-result-object p1

    .line 159
    return-object p1
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/media3/common/Format;->i(Z)Landroid/os/Bundle;

    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "Format("

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, ", "

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iget-object v2, p0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    iget-object v2, p0, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    iget-object v2, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    iget-object v2, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    iget v2, p0, Landroidx/media3/common/Format;->bitrate:I

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    iget-object v2, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v2, ", ["

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    iget v2, p0, Landroidx/media3/common/Format;->width:I

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    iget v2, p0, Landroidx/media3/common/Format;->height:I

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    iget v2, p0, Landroidx/media3/common/Format;->frameRate:F

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    iget-object v2, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v2, "], ["

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    iget v2, p0, Landroidx/media3/common/Format;->channelCount:I

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    iget v1, p0, Landroidx/media3/common/Format;->sampleRate:I

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v1, "])"

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object v0

    .line 127
    return-object v0
.end method
