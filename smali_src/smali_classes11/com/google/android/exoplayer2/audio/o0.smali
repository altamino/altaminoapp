.class public final Lcom/google/android/exoplayer2/audio/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DATA_FOURCC:I = 0x64617461

.field public static final DS64_FOURCC:I = 0x64733634

.field public static final FMT_FOURCC:I = 0x666d7420

.field public static final RF64_FOURCC:I = 0x52463634

.field public static final RIFF_FOURCC:I = 0x52494646

.field public static final TYPE_ALAW:I = 0x6

.field public static final TYPE_FLOAT:I = 0x3

.field public static final TYPE_IMA_ADPCM:I = 0x11

.field public static final TYPE_MLAW:I = 0x7

.field public static final TYPE_PCM:I = 0x1

.field public static final TYPE_WAVE_FORMAT_EXTENSIBLE:I = 0xfffe

.field public static final WAVE_FOURCC:I = 0x57415645


# direct methods
.method public static a(II)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-eq p0, v0, :cond_2

    .line 4
    const/4 v0, 0x3

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    .line 10
    const v0, 0xfffe

    .line 11
    .line 12
    if-eq p0, v0, :cond_2

    .line 13
    return v1

    .line 14
    .line 15
    :cond_0
    const/16 p0, 0x20

    .line 16
    .line 17
    if-ne p1, p0, :cond_1

    .line 18
    const/4 v1, 0x4

    .line 19
    :cond_1
    return v1

    .line 20
    .line 21
    .line 22
    :cond_2
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/o0;->W(I)I

    .line 23
    move-result p0

    .line 24
    return p0
.end method
