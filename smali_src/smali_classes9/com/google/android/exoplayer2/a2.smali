.class public final Lcom/google/android/exoplayer2/a2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/a2$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/h$a<",
            "Lcom/google/android/exoplayer2/a2;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT:Lcom/google/android/exoplayer2/a2;

.field private static final FIELD_ACCESSIBILITY_CHANNEL:I = 0x1c

.field private static final FIELD_AVERAGE_BITRATE:I = 0x5

.field private static final FIELD_CHANNEL_COUNT:I = 0x17

.field private static final FIELD_CODECS:I = 0x7

.field private static final FIELD_COLOR_INFO:I = 0x16

.field private static final FIELD_CONTAINER_MIME_TYPE:I = 0x9

.field private static final FIELD_CRYPTO_TYPE:I = 0x1d

.field private static final FIELD_DRM_INIT_DATA:I = 0xd

.field private static final FIELD_ENCODER_DELAY:I = 0x1a

.field private static final FIELD_ENCODER_PADDING:I = 0x1b

.field private static final FIELD_FRAME_RATE:I = 0x11

.field private static final FIELD_HEIGHT:I = 0x10

.field private static final FIELD_ID:I = 0x0

.field private static final FIELD_INITIALIZATION_DATA:I = 0xc

.field private static final FIELD_LABEL:I = 0x1

.field private static final FIELD_LANGUAGE:I = 0x2

.field private static final FIELD_MAX_INPUT_SIZE:I = 0xb

.field private static final FIELD_METADATA:I = 0x8

.field private static final FIELD_PCM_ENCODING:I = 0x19

.field private static final FIELD_PEAK_BITRATE:I = 0x6

.field private static final FIELD_PIXEL_WIDTH_HEIGHT_RATIO:I = 0x13

.field private static final FIELD_PROJECTION_DATA:I = 0x14

.field private static final FIELD_ROLE_FLAGS:I = 0x4

.field private static final FIELD_ROTATION_DEGREES:I = 0x12

.field private static final FIELD_SAMPLE_MIME_TYPE:I = 0xa

.field private static final FIELD_SAMPLE_RATE:I = 0x18

.field private static final FIELD_SELECTION_FLAGS:I = 0x3

.field private static final FIELD_STEREO_MODE:I = 0x15

.field private static final FIELD_SUBSAMPLE_OFFSET_US:I = 0xe

.field private static final FIELD_WIDTH:I = 0xf

.field public static final NO_VALUE:I = -0x1

.field public static final OFFSET_SAMPLE_RELATIVE:J = 0x7fffffffffffffffL


# instance fields
.field public final accessibilityChannel:I

.field public final averageBitrate:I

.field public final bitrate:I

.field public final channelCount:I

.field public final codecs:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final colorInfo:Lcom/google/android/exoplayer2/video/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final containerMimeType:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final cryptoType:I

.field public final drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final encoderDelay:I

.field public final encoderPadding:I

.field public final frameRate:F

.field private hashCode:I

.field public final height:I

.field public final id:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final initializationData:Ljava/util/List;
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

.field public final metadata:Lcom/google/android/exoplayer2/metadata/Metadata;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final pcmEncoding:I

.field public final peakBitrate:I

.field public final pixelWidthHeightRatio:F

.field public final projectionData:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final roleFlags:I

.field public final rotationDegrees:I

.field public final sampleMimeType:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final sampleRate:I

.field public final selectionFlags:I

.field public final stereoMode:I

.field public final subsampleOffsetUs:J

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/a2$b;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/exoplayer2/a2$b;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a2$b;->E()Lcom/google/android/exoplayer2/a2;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sput-object v0, Lcom/google/android/exoplayer2/a2;->DEFAULT:Lcom/google/android/exoplayer2/a2;

    .line 12
    .line 13
    new-instance v0, Lcom/google/android/exoplayer2/z1;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Lcom/google/android/exoplayer2/z1;-><init>()V

    .line 17
    .line 18
    sput-object v0, Lcom/google/android/exoplayer2/a2;->CREATOR:Lcom/google/android/exoplayer2/h$a;

    .line 19
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/a2$b;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->a(Lcom/google/android/exoplayer2/a2$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2;->id:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->l(Lcom/google/android/exoplayer2/a2$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2;->label:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->w(Lcom/google/android/exoplayer2/a2$b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->y0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2;->language:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->y(Lcom/google/android/exoplayer2/a2$b;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/a2;->selectionFlags:I

    .line 7
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->z(Lcom/google/android/exoplayer2/a2$b;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/a2;->roleFlags:I

    .line 8
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->A(Lcom/google/android/exoplayer2/a2$b;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/a2;->averageBitrate:I

    .line 9
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->B(Lcom/google/android/exoplayer2/a2$b;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/a2;->peakBitrate:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    move v0, v1

    :cond_0
    iput v0, p0, Lcom/google/android/exoplayer2/a2;->bitrate:I

    .line 10
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->C(Lcom/google/android/exoplayer2/a2$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2;->codecs:Ljava/lang/String;

    .line 11
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->D(Lcom/google/android/exoplayer2/a2$b;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 12
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->b(Lcom/google/android/exoplayer2/a2$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2;->containerMimeType:Ljava/lang/String;

    .line 13
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->c(Lcom/google/android/exoplayer2/a2$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2;->sampleMimeType:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->d(Lcom/google/android/exoplayer2/a2$b;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/a2;->maxInputSize:I

    .line 15
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->e(Lcom/google/android/exoplayer2/a2$b;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->e(Lcom/google/android/exoplayer2/a2$b;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/a2;->initializationData:Ljava/util/List;

    .line 16
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->f(Lcom/google/android/exoplayer2/a2$b;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 17
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->g(Lcom/google/android/exoplayer2/a2$b;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/exoplayer2/a2;->subsampleOffsetUs:J

    .line 18
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->h(Lcom/google/android/exoplayer2/a2$b;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/a2;->width:I

    .line 19
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->i(Lcom/google/android/exoplayer2/a2$b;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/a2;->height:I

    .line 20
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->j(Lcom/google/android/exoplayer2/a2$b;)F

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/a2;->frameRate:F

    .line 21
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->k(Lcom/google/android/exoplayer2/a2$b;)I

    move-result v1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->k(Lcom/google/android/exoplayer2/a2$b;)I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/google/android/exoplayer2/a2;->rotationDegrees:I

    .line 22
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->m(Lcom/google/android/exoplayer2/a2$b;)F

    move-result v1

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v1, v1, v4

    if-nez v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->m(Lcom/google/android/exoplayer2/a2$b;)F

    move-result v1

    :goto_2
    iput v1, p0, Lcom/google/android/exoplayer2/a2;->pixelWidthHeightRatio:F

    .line 23
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->n(Lcom/google/android/exoplayer2/a2$b;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/a2;->projectionData:[B

    .line 24
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->o(Lcom/google/android/exoplayer2/a2$b;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/a2;->stereoMode:I

    .line 25
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->p(Lcom/google/android/exoplayer2/a2$b;)Lcom/google/android/exoplayer2/video/c;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/a2;->colorInfo:Lcom/google/android/exoplayer2/video/c;

    .line 26
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->q(Lcom/google/android/exoplayer2/a2$b;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/a2;->channelCount:I

    .line 27
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->r(Lcom/google/android/exoplayer2/a2$b;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/a2;->sampleRate:I

    .line 28
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->s(Lcom/google/android/exoplayer2/a2$b;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/a2;->pcmEncoding:I

    .line 29
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->t(Lcom/google/android/exoplayer2/a2$b;)I

    move-result v1

    if-ne v1, v2, :cond_4

    move v1, v3

    goto :goto_3

    :cond_4
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->t(Lcom/google/android/exoplayer2/a2$b;)I

    move-result v1

    :goto_3
    iput v1, p0, Lcom/google/android/exoplayer2/a2;->encoderDelay:I

    .line 30
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->u(Lcom/google/android/exoplayer2/a2$b;)I

    move-result v1

    if-ne v1, v2, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->u(Lcom/google/android/exoplayer2/a2$b;)I

    move-result v3

    :goto_4
    iput v3, p0, Lcom/google/android/exoplayer2/a2;->encoderPadding:I

    .line 31
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->v(Lcom/google/android/exoplayer2/a2$b;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/a2;->accessibilityChannel:I

    .line 32
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->x(Lcom/google/android/exoplayer2/a2$b;)I

    move-result v1

    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/a2;->cryptoType:I

    goto :goto_5

    .line 33
    :cond_6
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2$b;->x(Lcom/google/android/exoplayer2/a2$b;)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/a2;->cryptoType:I

    :goto_5
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/a2$b;Lcom/google/android/exoplayer2/a2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/a2;-><init>(Lcom/google/android/exoplayer2/a2$b;)V

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/a2;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/a2;->e(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/a2;

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

.method private static e(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/a2;
    .locals 6

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/a2$b;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/exoplayer2/a2$b;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/c;->a(Landroid/os/Bundle;)V

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    sget-object v3, Lcom/google/android/exoplayer2/a2;->DEFAULT:Lcom/google/android/exoplayer2/a2;

    .line 20
    .line 21
    iget-object v4, v3, Lcom/google/android/exoplayer2/a2;->id:Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-static {v2, v4}, Lcom/google/android/exoplayer2/a2;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    check-cast v2, Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/a2$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 31
    move-result-object v2

    .line 32
    const/4 v4, 0x1

    .line 33
    .line 34
    .line 35
    invoke-static {v4}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 36
    move-result-object v4

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object v4

    .line 41
    .line 42
    iget-object v5, v3, Lcom/google/android/exoplayer2/a2;->label:Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/a2;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    move-result-object v4

    .line 47
    .line 48
    check-cast v4, Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/a2$b;->U(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 52
    move-result-object v2

    .line 53
    const/4 v4, 0x2

    .line 54
    .line 55
    .line 56
    invoke-static {v4}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 57
    move-result-object v4

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object v4

    .line 62
    .line 63
    iget-object v5, v3, Lcom/google/android/exoplayer2/a2;->language:Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/a2;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    move-result-object v4

    .line 68
    .line 69
    check-cast v4, Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/a2$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 73
    move-result-object v2

    .line 74
    const/4 v4, 0x3

    .line 75
    .line 76
    .line 77
    invoke-static {v4}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 78
    move-result-object v4

    .line 79
    .line 80
    iget v5, v3, Lcom/google/android/exoplayer2/a2;->selectionFlags:I

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v4, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 84
    move-result v4

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/a2$b;->g0(I)Lcom/google/android/exoplayer2/a2$b;

    .line 88
    move-result-object v2

    .line 89
    const/4 v4, 0x4

    .line 90
    .line 91
    .line 92
    invoke-static {v4}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 93
    move-result-object v4

    .line 94
    .line 95
    iget v5, v3, Lcom/google/android/exoplayer2/a2;->roleFlags:I

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v4, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 99
    move-result v4

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/a2$b;->c0(I)Lcom/google/android/exoplayer2/a2$b;

    .line 103
    move-result-object v2

    .line 104
    const/4 v4, 0x5

    .line 105
    .line 106
    .line 107
    invoke-static {v4}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 108
    move-result-object v4

    .line 109
    .line 110
    iget v5, v3, Lcom/google/android/exoplayer2/a2;->averageBitrate:I

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v4, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 114
    move-result v4

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/a2$b;->G(I)Lcom/google/android/exoplayer2/a2$b;

    .line 118
    move-result-object v2

    .line 119
    const/4 v4, 0x6

    .line 120
    .line 121
    .line 122
    invoke-static {v4}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 123
    move-result-object v4

    .line 124
    .line 125
    iget v5, v3, Lcom/google/android/exoplayer2/a2;->peakBitrate:I

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v4, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 129
    move-result v4

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/a2$b;->Z(I)Lcom/google/android/exoplayer2/a2$b;

    .line 133
    move-result-object v2

    .line 134
    const/4 v4, 0x7

    .line 135
    .line 136
    .line 137
    invoke-static {v4}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 138
    move-result-object v4

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    move-result-object v4

    .line 143
    .line 144
    iget-object v5, v3, Lcom/google/android/exoplayer2/a2;->codecs:Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/a2;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    move-result-object v4

    .line 149
    .line 150
    check-cast v4, Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/a2$b;->I(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 154
    move-result-object v2

    .line 155
    .line 156
    const/16 v4, 0x8

    .line 157
    .line 158
    .line 159
    invoke-static {v4}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 160
    move-result-object v4

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 164
    move-result-object v4

    .line 165
    .line 166
    check-cast v4, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 167
    .line 168
    iget-object v5, v3, Lcom/google/android/exoplayer2/a2;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 169
    .line 170
    .line 171
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/a2;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    move-result-object v4

    .line 173
    .line 174
    check-cast v4, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/a2$b;->X(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/a2$b;

    .line 178
    move-result-object v2

    .line 179
    .line 180
    const/16 v4, 0x9

    .line 181
    .line 182
    .line 183
    invoke-static {v4}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 184
    move-result-object v4

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 188
    move-result-object v4

    .line 189
    .line 190
    iget-object v5, v3, Lcom/google/android/exoplayer2/a2;->containerMimeType:Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/a2;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    move-result-object v4

    .line 195
    .line 196
    check-cast v4, Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/a2$b;->K(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 200
    move-result-object v2

    .line 201
    .line 202
    const/16 v4, 0xa

    .line 203
    .line 204
    .line 205
    invoke-static {v4}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 206
    move-result-object v4

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 210
    move-result-object v4

    .line 211
    .line 212
    iget-object v5, v3, Lcom/google/android/exoplayer2/a2;->sampleMimeType:Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/a2;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    move-result-object v4

    .line 217
    .line 218
    check-cast v4, Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/a2$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 222
    move-result-object v2

    .line 223
    .line 224
    const/16 v4, 0xb

    .line 225
    .line 226
    .line 227
    invoke-static {v4}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 228
    move-result-object v4

    .line 229
    .line 230
    iget v3, v3, Lcom/google/android/exoplayer2/a2;->maxInputSize:I

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0, v4, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 234
    move-result v3

    .line 235
    .line 236
    .line 237
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/a2$b;->W(I)Lcom/google/android/exoplayer2/a2$b;

    .line 238
    .line 239
    new-instance v2, Ljava/util/ArrayList;

    .line 240
    .line 241
    .line 242
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .line 244
    .line 245
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->i(I)Ljava/lang/String;

    .line 246
    move-result-object v3

    .line 247
    .line 248
    .line 249
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 250
    move-result-object v3

    .line 251
    .line 252
    if-nez v3, :cond_1

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/a2$b;->T(Ljava/util/List;)Lcom/google/android/exoplayer2/a2$b;

    .line 256
    move-result-object v1

    .line 257
    .line 258
    const/16 v2, 0xd

    .line 259
    .line 260
    .line 261
    invoke-static {v2}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 262
    move-result-object v2

    .line 263
    .line 264
    .line 265
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 266
    move-result-object v2

    .line 267
    .line 268
    check-cast v2, Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a2$b;->M(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/a2$b;

    .line 272
    move-result-object v1

    .line 273
    .line 274
    const/16 v2, 0xe

    .line 275
    .line 276
    .line 277
    invoke-static {v2}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 278
    move-result-object v2

    .line 279
    .line 280
    sget-object v3, Lcom/google/android/exoplayer2/a2;->DEFAULT:Lcom/google/android/exoplayer2/a2;

    .line 281
    .line 282
    iget-wide v4, v3, Lcom/google/android/exoplayer2/a2;->subsampleOffsetUs:J

    .line 283
    .line 284
    .line 285
    invoke-virtual {p0, v2, v4, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 286
    move-result-wide v4

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1, v4, v5}, Lcom/google/android/exoplayer2/a2$b;->i0(J)Lcom/google/android/exoplayer2/a2$b;

    .line 290
    move-result-object v1

    .line 291
    .line 292
    const/16 v2, 0xf

    .line 293
    .line 294
    .line 295
    invoke-static {v2}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 296
    move-result-object v2

    .line 297
    .line 298
    iget v4, v3, Lcom/google/android/exoplayer2/a2;->width:I

    .line 299
    .line 300
    .line 301
    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 302
    move-result v2

    .line 303
    .line 304
    .line 305
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a2$b;->j0(I)Lcom/google/android/exoplayer2/a2$b;

    .line 306
    move-result-object v1

    .line 307
    .line 308
    const/16 v2, 0x10

    .line 309
    .line 310
    .line 311
    invoke-static {v2}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 312
    move-result-object v2

    .line 313
    .line 314
    iget v4, v3, Lcom/google/android/exoplayer2/a2;->height:I

    .line 315
    .line 316
    .line 317
    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 318
    move-result v2

    .line 319
    .line 320
    .line 321
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a2$b;->Q(I)Lcom/google/android/exoplayer2/a2$b;

    .line 322
    move-result-object v1

    .line 323
    .line 324
    const/16 v2, 0x11

    .line 325
    .line 326
    .line 327
    invoke-static {v2}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 328
    move-result-object v2

    .line 329
    .line 330
    iget v4, v3, Lcom/google/android/exoplayer2/a2;->frameRate:F

    .line 331
    .line 332
    .line 333
    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 334
    move-result v2

    .line 335
    .line 336
    .line 337
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a2$b;->P(F)Lcom/google/android/exoplayer2/a2$b;

    .line 338
    move-result-object v1

    .line 339
    .line 340
    const/16 v2, 0x12

    .line 341
    .line 342
    .line 343
    invoke-static {v2}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 344
    move-result-object v2

    .line 345
    .line 346
    iget v4, v3, Lcom/google/android/exoplayer2/a2;->rotationDegrees:I

    .line 347
    .line 348
    .line 349
    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 350
    move-result v2

    .line 351
    .line 352
    .line 353
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a2$b;->d0(I)Lcom/google/android/exoplayer2/a2$b;

    .line 354
    move-result-object v1

    .line 355
    .line 356
    const/16 v2, 0x13

    .line 357
    .line 358
    .line 359
    invoke-static {v2}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 360
    move-result-object v2

    .line 361
    .line 362
    iget v4, v3, Lcom/google/android/exoplayer2/a2;->pixelWidthHeightRatio:F

    .line 363
    .line 364
    .line 365
    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 366
    move-result v2

    .line 367
    .line 368
    .line 369
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a2$b;->a0(F)Lcom/google/android/exoplayer2/a2$b;

    .line 370
    move-result-object v1

    .line 371
    .line 372
    const/16 v2, 0x14

    .line 373
    .line 374
    .line 375
    invoke-static {v2}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 376
    move-result-object v2

    .line 377
    .line 378
    .line 379
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 380
    move-result-object v2

    .line 381
    .line 382
    .line 383
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a2$b;->b0([B)Lcom/google/android/exoplayer2/a2$b;

    .line 384
    move-result-object v1

    .line 385
    .line 386
    const/16 v2, 0x15

    .line 387
    .line 388
    .line 389
    invoke-static {v2}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 390
    move-result-object v2

    .line 391
    .line 392
    iget v4, v3, Lcom/google/android/exoplayer2/a2;->stereoMode:I

    .line 393
    .line 394
    .line 395
    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 396
    move-result v2

    .line 397
    .line 398
    .line 399
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a2$b;->h0(I)Lcom/google/android/exoplayer2/a2$b;

    .line 400
    .line 401
    const/16 v1, 0x16

    .line 402
    .line 403
    .line 404
    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 405
    move-result-object v1

    .line 406
    .line 407
    .line 408
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 409
    move-result-object v1

    .line 410
    .line 411
    if-eqz v1, :cond_0

    .line 412
    .line 413
    sget-object v2, Lcom/google/android/exoplayer2/video/c;->CREATOR:Lcom/google/android/exoplayer2/h$a;

    .line 414
    .line 415
    .line 416
    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/h$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/h;

    .line 417
    move-result-object v1

    .line 418
    .line 419
    check-cast v1, Lcom/google/android/exoplayer2/video/c;

    .line 420
    .line 421
    .line 422
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a2$b;->J(Lcom/google/android/exoplayer2/video/c;)Lcom/google/android/exoplayer2/a2$b;

    .line 423
    .line 424
    :cond_0
    const/16 v1, 0x17

    .line 425
    .line 426
    .line 427
    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 428
    move-result-object v1

    .line 429
    .line 430
    iget v2, v3, Lcom/google/android/exoplayer2/a2;->channelCount:I

    .line 431
    .line 432
    .line 433
    invoke-virtual {p0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 434
    move-result v1

    .line 435
    .line 436
    .line 437
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a2$b;->H(I)Lcom/google/android/exoplayer2/a2$b;

    .line 438
    move-result-object v1

    .line 439
    .line 440
    const/16 v2, 0x18

    .line 441
    .line 442
    .line 443
    invoke-static {v2}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 444
    move-result-object v2

    .line 445
    .line 446
    iget v4, v3, Lcom/google/android/exoplayer2/a2;->sampleRate:I

    .line 447
    .line 448
    .line 449
    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 450
    move-result v2

    .line 451
    .line 452
    .line 453
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a2$b;->f0(I)Lcom/google/android/exoplayer2/a2$b;

    .line 454
    move-result-object v1

    .line 455
    .line 456
    const/16 v2, 0x19

    .line 457
    .line 458
    .line 459
    invoke-static {v2}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 460
    move-result-object v2

    .line 461
    .line 462
    iget v4, v3, Lcom/google/android/exoplayer2/a2;->pcmEncoding:I

    .line 463
    .line 464
    .line 465
    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 466
    move-result v2

    .line 467
    .line 468
    .line 469
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a2$b;->Y(I)Lcom/google/android/exoplayer2/a2$b;

    .line 470
    move-result-object v1

    .line 471
    .line 472
    const/16 v2, 0x1a

    .line 473
    .line 474
    .line 475
    invoke-static {v2}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 476
    move-result-object v2

    .line 477
    .line 478
    iget v4, v3, Lcom/google/android/exoplayer2/a2;->encoderDelay:I

    .line 479
    .line 480
    .line 481
    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 482
    move-result v2

    .line 483
    .line 484
    .line 485
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a2$b;->N(I)Lcom/google/android/exoplayer2/a2$b;

    .line 486
    move-result-object v1

    .line 487
    .line 488
    const/16 v2, 0x1b

    .line 489
    .line 490
    .line 491
    invoke-static {v2}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 492
    move-result-object v2

    .line 493
    .line 494
    iget v4, v3, Lcom/google/android/exoplayer2/a2;->encoderPadding:I

    .line 495
    .line 496
    .line 497
    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 498
    move-result v2

    .line 499
    .line 500
    .line 501
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a2$b;->O(I)Lcom/google/android/exoplayer2/a2$b;

    .line 502
    move-result-object v1

    .line 503
    .line 504
    const/16 v2, 0x1c

    .line 505
    .line 506
    .line 507
    invoke-static {v2}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 508
    move-result-object v2

    .line 509
    .line 510
    iget v4, v3, Lcom/google/android/exoplayer2/a2;->accessibilityChannel:I

    .line 511
    .line 512
    .line 513
    invoke-virtual {p0, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 514
    move-result v2

    .line 515
    .line 516
    .line 517
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/a2$b;->F(I)Lcom/google/android/exoplayer2/a2$b;

    .line 518
    move-result-object v1

    .line 519
    .line 520
    const/16 v2, 0x1d

    .line 521
    .line 522
    .line 523
    invoke-static {v2}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 524
    move-result-object v2

    .line 525
    .line 526
    iget v3, v3, Lcom/google/android/exoplayer2/a2;->cryptoType:I

    .line 527
    .line 528
    .line 529
    invoke-virtual {p0, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 530
    move-result p0

    .line 531
    .line 532
    .line 533
    invoke-virtual {v1, p0}, Lcom/google/android/exoplayer2/a2$b;->L(I)Lcom/google/android/exoplayer2/a2$b;

    .line 534
    .line 535
    .line 536
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a2$b;->E()Lcom/google/android/exoplayer2/a2;

    .line 537
    move-result-object p0

    .line 538
    return-object p0

    .line 539
    .line 540
    .line 541
    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    .line 543
    add-int/lit8 v1, v1, 0x1

    .line 544
    .line 545
    goto/16 :goto_0
.end method

.method private static h(I)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x24

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static i(I)Ljava/lang/String;
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
    const/16 v1, 0xc

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "_"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const/16 v1, 0x24

    .line 22
    .line 23
    .line 24
    invoke-static {p0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method


# virtual methods
.method public b()Lcom/google/android/exoplayer2/a2$b;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/a2$b;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/a2$b;-><init>(Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/a2$a;)V

    .line 7
    return-object v0
.end method

.method public c(I)Lcom/google/android/exoplayer2/a2;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/a2;->b()Lcom/google/android/exoplayer2/a2$b;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/a2$b;->L(I)Lcom/google/android/exoplayer2/a2$b;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/a2$b;->E()Lcom/google/android/exoplayer2/a2;

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
    const-class v3, Lcom/google/android/exoplayer2/a2;

    .line 14
    .line 15
    if-eq v3, v2, :cond_1

    .line 16
    .line 17
    goto/16 :goto_1

    .line 18
    .line 19
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/a2;

    .line 20
    .line 21
    iget v2, p0, Lcom/google/android/exoplayer2/a2;->hashCode:I

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    iget v3, p1, Lcom/google/android/exoplayer2/a2;->hashCode:I

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
    iget v2, p0, Lcom/google/android/exoplayer2/a2;->selectionFlags:I

    .line 33
    .line 34
    iget v3, p1, Lcom/google/android/exoplayer2/a2;->selectionFlags:I

    .line 35
    .line 36
    if-ne v2, v3, :cond_3

    .line 37
    .line 38
    iget v2, p0, Lcom/google/android/exoplayer2/a2;->roleFlags:I

    .line 39
    .line 40
    iget v3, p1, Lcom/google/android/exoplayer2/a2;->roleFlags:I

    .line 41
    .line 42
    if-ne v2, v3, :cond_3

    .line 43
    .line 44
    iget v2, p0, Lcom/google/android/exoplayer2/a2;->averageBitrate:I

    .line 45
    .line 46
    iget v3, p1, Lcom/google/android/exoplayer2/a2;->averageBitrate:I

    .line 47
    .line 48
    if-ne v2, v3, :cond_3

    .line 49
    .line 50
    iget v2, p0, Lcom/google/android/exoplayer2/a2;->peakBitrate:I

    .line 51
    .line 52
    iget v3, p1, Lcom/google/android/exoplayer2/a2;->peakBitrate:I

    .line 53
    .line 54
    if-ne v2, v3, :cond_3

    .line 55
    .line 56
    iget v2, p0, Lcom/google/android/exoplayer2/a2;->maxInputSize:I

    .line 57
    .line 58
    iget v3, p1, Lcom/google/android/exoplayer2/a2;->maxInputSize:I

    .line 59
    .line 60
    if-ne v2, v3, :cond_3

    .line 61
    .line 62
    iget-wide v2, p0, Lcom/google/android/exoplayer2/a2;->subsampleOffsetUs:J

    .line 63
    .line 64
    iget-wide v4, p1, Lcom/google/android/exoplayer2/a2;->subsampleOffsetUs:J

    .line 65
    .line 66
    cmp-long v2, v2, v4

    .line 67
    .line 68
    if-nez v2, :cond_3

    .line 69
    .line 70
    iget v2, p0, Lcom/google/android/exoplayer2/a2;->width:I

    .line 71
    .line 72
    iget v3, p1, Lcom/google/android/exoplayer2/a2;->width:I

    .line 73
    .line 74
    if-ne v2, v3, :cond_3

    .line 75
    .line 76
    iget v2, p0, Lcom/google/android/exoplayer2/a2;->height:I

    .line 77
    .line 78
    iget v3, p1, Lcom/google/android/exoplayer2/a2;->height:I

    .line 79
    .line 80
    if-ne v2, v3, :cond_3

    .line 81
    .line 82
    iget v2, p0, Lcom/google/android/exoplayer2/a2;->rotationDegrees:I

    .line 83
    .line 84
    iget v3, p1, Lcom/google/android/exoplayer2/a2;->rotationDegrees:I

    .line 85
    .line 86
    if-ne v2, v3, :cond_3

    .line 87
    .line 88
    iget v2, p0, Lcom/google/android/exoplayer2/a2;->stereoMode:I

    .line 89
    .line 90
    iget v3, p1, Lcom/google/android/exoplayer2/a2;->stereoMode:I

    .line 91
    .line 92
    if-ne v2, v3, :cond_3

    .line 93
    .line 94
    iget v2, p0, Lcom/google/android/exoplayer2/a2;->channelCount:I

    .line 95
    .line 96
    iget v3, p1, Lcom/google/android/exoplayer2/a2;->channelCount:I

    .line 97
    .line 98
    if-ne v2, v3, :cond_3

    .line 99
    .line 100
    iget v2, p0, Lcom/google/android/exoplayer2/a2;->sampleRate:I

    .line 101
    .line 102
    iget v3, p1, Lcom/google/android/exoplayer2/a2;->sampleRate:I

    .line 103
    .line 104
    if-ne v2, v3, :cond_3

    .line 105
    .line 106
    iget v2, p0, Lcom/google/android/exoplayer2/a2;->pcmEncoding:I

    .line 107
    .line 108
    iget v3, p1, Lcom/google/android/exoplayer2/a2;->pcmEncoding:I

    .line 109
    .line 110
    if-ne v2, v3, :cond_3

    .line 111
    .line 112
    iget v2, p0, Lcom/google/android/exoplayer2/a2;->encoderDelay:I

    .line 113
    .line 114
    iget v3, p1, Lcom/google/android/exoplayer2/a2;->encoderDelay:I

    .line 115
    .line 116
    if-ne v2, v3, :cond_3

    .line 117
    .line 118
    iget v2, p0, Lcom/google/android/exoplayer2/a2;->encoderPadding:I

    .line 119
    .line 120
    iget v3, p1, Lcom/google/android/exoplayer2/a2;->encoderPadding:I

    .line 121
    .line 122
    if-ne v2, v3, :cond_3

    .line 123
    .line 124
    iget v2, p0, Lcom/google/android/exoplayer2/a2;->accessibilityChannel:I

    .line 125
    .line 126
    iget v3, p1, Lcom/google/android/exoplayer2/a2;->accessibilityChannel:I

    .line 127
    .line 128
    if-ne v2, v3, :cond_3

    .line 129
    .line 130
    iget v2, p0, Lcom/google/android/exoplayer2/a2;->cryptoType:I

    .line 131
    .line 132
    iget v3, p1, Lcom/google/android/exoplayer2/a2;->cryptoType:I

    .line 133
    .line 134
    if-ne v2, v3, :cond_3

    .line 135
    .line 136
    iget v2, p0, Lcom/google/android/exoplayer2/a2;->frameRate:F

    .line 137
    .line 138
    iget v3, p1, Lcom/google/android/exoplayer2/a2;->frameRate:F

    .line 139
    .line 140
    .line 141
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    .line 142
    move-result v2

    .line 143
    .line 144
    if-nez v2, :cond_3

    .line 145
    .line 146
    iget v2, p0, Lcom/google/android/exoplayer2/a2;->pixelWidthHeightRatio:F

    .line 147
    .line 148
    iget v3, p1, Lcom/google/android/exoplayer2/a2;->pixelWidthHeightRatio:F

    .line 149
    .line 150
    .line 151
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    .line 152
    move-result v2

    .line 153
    .line 154
    if-nez v2, :cond_3

    .line 155
    .line 156
    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->id:Ljava/lang/String;

    .line 157
    .line 158
    iget-object v3, p1, Lcom/google/android/exoplayer2/a2;->id:Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 162
    move-result v2

    .line 163
    .line 164
    if-eqz v2, :cond_3

    .line 165
    .line 166
    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->label:Ljava/lang/String;

    .line 167
    .line 168
    iget-object v3, p1, Lcom/google/android/exoplayer2/a2;->label:Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    move-result v2

    .line 173
    .line 174
    if-eqz v2, :cond_3

    .line 175
    .line 176
    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->codecs:Ljava/lang/String;

    .line 177
    .line 178
    iget-object v3, p1, Lcom/google/android/exoplayer2/a2;->codecs:Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 182
    move-result v2

    .line 183
    .line 184
    if-eqz v2, :cond_3

    .line 185
    .line 186
    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->containerMimeType:Ljava/lang/String;

    .line 187
    .line 188
    iget-object v3, p1, Lcom/google/android/exoplayer2/a2;->containerMimeType:Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 192
    move-result v2

    .line 193
    .line 194
    if-eqz v2, :cond_3

    .line 195
    .line 196
    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->sampleMimeType:Ljava/lang/String;

    .line 197
    .line 198
    iget-object v3, p1, Lcom/google/android/exoplayer2/a2;->sampleMimeType:Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 202
    move-result v2

    .line 203
    .line 204
    if-eqz v2, :cond_3

    .line 205
    .line 206
    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->language:Ljava/lang/String;

    .line 207
    .line 208
    iget-object v3, p1, Lcom/google/android/exoplayer2/a2;->language:Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 212
    move-result v2

    .line 213
    .line 214
    if-eqz v2, :cond_3

    .line 215
    .line 216
    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->projectionData:[B

    .line 217
    .line 218
    iget-object v3, p1, Lcom/google/android/exoplayer2/a2;->projectionData:[B

    .line 219
    .line 220
    .line 221
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 222
    move-result v2

    .line 223
    .line 224
    if-eqz v2, :cond_3

    .line 225
    .line 226
    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 227
    .line 228
    iget-object v3, p1, Lcom/google/android/exoplayer2/a2;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 229
    .line 230
    .line 231
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 232
    move-result v2

    .line 233
    .line 234
    if-eqz v2, :cond_3

    .line 235
    .line 236
    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->colorInfo:Lcom/google/android/exoplayer2/video/c;

    .line 237
    .line 238
    iget-object v3, p1, Lcom/google/android/exoplayer2/a2;->colorInfo:Lcom/google/android/exoplayer2/video/c;

    .line 239
    .line 240
    .line 241
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 242
    move-result v2

    .line 243
    .line 244
    if-eqz v2, :cond_3

    .line 245
    .line 246
    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 247
    .line 248
    iget-object v3, p1, Lcom/google/android/exoplayer2/a2;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 249
    .line 250
    .line 251
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 252
    move-result v2

    .line 253
    .line 254
    if-eqz v2, :cond_3

    .line 255
    .line 256
    .line 257
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/a2;->g(Lcom/google/android/exoplayer2/a2;)Z

    .line 258
    move-result p1

    .line 259
    .line 260
    if-eqz p1, :cond_3

    .line 261
    goto :goto_0

    .line 262
    :cond_3
    move v0, v1

    .line 263
    :goto_0
    return v0

    .line 264
    :cond_4
    :goto_1
    return v1
.end method

.method public f()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/a2;->width:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v2, p0, Lcom/google/android/exoplayer2/a2;->height:I

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    mul-int v1, v0, v2

    :cond_1
    :goto_0
    return v1
.end method

.method public g(Lcom/google/android/exoplayer2/a2;)Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/a2;->initializationData:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p1, Lcom/google/android/exoplayer2/a2;->initializationData:Ljava/util/List;

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
    iget-object v1, p0, Lcom/google/android/exoplayer2/a2;->initializationData:Ljava/util/List;

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
    iget-object v1, p0, Lcom/google/android/exoplayer2/a2;->initializationData:Ljava/util/List;

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
    iget-object v3, p1, Lcom/google/android/exoplayer2/a2;->initializationData:Ljava/util/List;

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
    iget v0, p0, Lcom/google/android/exoplayer2/a2;->hashCode:I

    .line 3
    .line 4
    if-nez v0, :cond_7

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/a2;->id:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/a2;->label:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/a2;->language:Ljava/lang/String;

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
    iget v0, p0, Lcom/google/android/exoplayer2/a2;->selectionFlags:I

    .line 49
    add-int/2addr v2, v0

    .line 50
    .line 51
    mul-int/lit8 v2, v2, 0x1f

    .line 52
    .line 53
    iget v0, p0, Lcom/google/android/exoplayer2/a2;->roleFlags:I

    .line 54
    add-int/2addr v2, v0

    .line 55
    .line 56
    mul-int/lit8 v2, v2, 0x1f

    .line 57
    .line 58
    iget v0, p0, Lcom/google/android/exoplayer2/a2;->averageBitrate:I

    .line 59
    add-int/2addr v2, v0

    .line 60
    .line 61
    mul-int/lit8 v2, v2, 0x1f

    .line 62
    .line 63
    iget v0, p0, Lcom/google/android/exoplayer2/a2;->peakBitrate:I

    .line 64
    add-int/2addr v2, v0

    .line 65
    .line 66
    mul-int/lit8 v2, v2, 0x1f

    .line 67
    .line 68
    iget-object v0, p0, Lcom/google/android/exoplayer2/a2;->codecs:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/a2;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

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
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/metadata/Metadata;->hashCode()I

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/a2;->containerMimeType:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/a2;->sampleMimeType:Ljava/lang/String;

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
    iget v0, p0, Lcom/google/android/exoplayer2/a2;->maxInputSize:I

    .line 120
    add-int/2addr v2, v0

    .line 121
    .line 122
    mul-int/lit8 v2, v2, 0x1f

    .line 123
    .line 124
    iget-wide v0, p0, Lcom/google/android/exoplayer2/a2;->subsampleOffsetUs:J

    .line 125
    long-to-int v0, v0

    .line 126
    add-int/2addr v2, v0

    .line 127
    .line 128
    mul-int/lit8 v2, v2, 0x1f

    .line 129
    .line 130
    iget v0, p0, Lcom/google/android/exoplayer2/a2;->width:I

    .line 131
    add-int/2addr v2, v0

    .line 132
    .line 133
    mul-int/lit8 v2, v2, 0x1f

    .line 134
    .line 135
    iget v0, p0, Lcom/google/android/exoplayer2/a2;->height:I

    .line 136
    add-int/2addr v2, v0

    .line 137
    .line 138
    mul-int/lit8 v2, v2, 0x1f

    .line 139
    .line 140
    iget v0, p0, Lcom/google/android/exoplayer2/a2;->frameRate:F

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
    iget v0, p0, Lcom/google/android/exoplayer2/a2;->rotationDegrees:I

    .line 150
    add-int/2addr v2, v0

    .line 151
    .line 152
    mul-int/lit8 v2, v2, 0x1f

    .line 153
    .line 154
    iget v0, p0, Lcom/google/android/exoplayer2/a2;->pixelWidthHeightRatio:F

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
    iget v0, p0, Lcom/google/android/exoplayer2/a2;->stereoMode:I

    .line 164
    add-int/2addr v2, v0

    .line 165
    .line 166
    mul-int/lit8 v2, v2, 0x1f

    .line 167
    .line 168
    iget v0, p0, Lcom/google/android/exoplayer2/a2;->channelCount:I

    .line 169
    add-int/2addr v2, v0

    .line 170
    .line 171
    mul-int/lit8 v2, v2, 0x1f

    .line 172
    .line 173
    iget v0, p0, Lcom/google/android/exoplayer2/a2;->sampleRate:I

    .line 174
    add-int/2addr v2, v0

    .line 175
    .line 176
    mul-int/lit8 v2, v2, 0x1f

    .line 177
    .line 178
    iget v0, p0, Lcom/google/android/exoplayer2/a2;->pcmEncoding:I

    .line 179
    add-int/2addr v2, v0

    .line 180
    .line 181
    mul-int/lit8 v2, v2, 0x1f

    .line 182
    .line 183
    iget v0, p0, Lcom/google/android/exoplayer2/a2;->encoderDelay:I

    .line 184
    add-int/2addr v2, v0

    .line 185
    .line 186
    mul-int/lit8 v2, v2, 0x1f

    .line 187
    .line 188
    iget v0, p0, Lcom/google/android/exoplayer2/a2;->encoderPadding:I

    .line 189
    add-int/2addr v2, v0

    .line 190
    .line 191
    mul-int/lit8 v2, v2, 0x1f

    .line 192
    .line 193
    iget v0, p0, Lcom/google/android/exoplayer2/a2;->accessibilityChannel:I

    .line 194
    add-int/2addr v2, v0

    .line 195
    .line 196
    mul-int/lit8 v2, v2, 0x1f

    .line 197
    .line 198
    iget v0, p0, Lcom/google/android/exoplayer2/a2;->cryptoType:I

    .line 199
    add-int/2addr v2, v0

    .line 200
    .line 201
    iput v2, p0, Lcom/google/android/exoplayer2/a2;->hashCode:I

    .line 202
    .line 203
    :cond_7
    iget v0, p0, Lcom/google/android/exoplayer2/a2;->hashCode:I

    .line 204
    return v0
.end method

.method public j(Z)Landroid/os/Bundle;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    iget-object v3, p0, Lcom/google/android/exoplayer2/a2;->id:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    const/4 v2, 0x1

    .line 17
    .line 18
    .line 19
    invoke-static {v2}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    iget-object v3, p0, Lcom/google/android/exoplayer2/a2;->label:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const/4 v2, 0x2

    .line 27
    .line 28
    .line 29
    invoke-static {v2}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    iget-object v3, p0, Lcom/google/android/exoplayer2/a2;->language:Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const/4 v2, 0x3

    .line 37
    .line 38
    .line 39
    invoke-static {v2}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    iget v3, p0, Lcom/google/android/exoplayer2/a2;->selectionFlags:I

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 46
    const/4 v2, 0x4

    .line 47
    .line 48
    .line 49
    invoke-static {v2}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    iget v3, p0, Lcom/google/android/exoplayer2/a2;->roleFlags:I

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 56
    const/4 v2, 0x5

    .line 57
    .line 58
    .line 59
    invoke-static {v2}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 60
    move-result-object v2

    .line 61
    .line 62
    iget v3, p0, Lcom/google/android/exoplayer2/a2;->averageBitrate:I

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 66
    const/4 v2, 0x6

    .line 67
    .line 68
    .line 69
    invoke-static {v2}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 70
    move-result-object v2

    .line 71
    .line 72
    iget v3, p0, Lcom/google/android/exoplayer2/a2;->peakBitrate:I

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 76
    const/4 v2, 0x7

    .line 77
    .line 78
    .line 79
    invoke-static {v2}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 80
    move-result-object v2

    .line 81
    .line 82
    iget-object v3, p0, Lcom/google/android/exoplayer2/a2;->codecs:Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    if-nez p1, :cond_0

    .line 88
    .line 89
    const/16 p1, 0x8

    .line 90
    .line 91
    .line 92
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 93
    move-result-object p1

    .line 94
    .line 95
    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 99
    .line 100
    :cond_0
    const/16 p1, 0x9

    .line 101
    .line 102
    .line 103
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 104
    move-result-object p1

    .line 105
    .line 106
    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->containerMimeType:Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    const/16 p1, 0xa

    .line 112
    .line 113
    .line 114
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 115
    move-result-object p1

    .line 116
    .line 117
    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->sampleMimeType:Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    const/16 p1, 0xb

    .line 123
    .line 124
    .line 125
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 126
    move-result-object p1

    .line 127
    .line 128
    iget v2, p0, Lcom/google/android/exoplayer2/a2;->maxInputSize:I

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, p1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 132
    .line 133
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/a2;->initializationData:Ljava/util/List;

    .line 134
    .line 135
    .line 136
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 137
    move-result p1

    .line 138
    .line 139
    if-ge v1, p1, :cond_1

    .line 140
    .line 141
    .line 142
    invoke-static {v1}, Lcom/google/android/exoplayer2/a2;->i(I)Ljava/lang/String;

    .line 143
    move-result-object p1

    .line 144
    .line 145
    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->initializationData:Ljava/util/List;

    .line 146
    .line 147
    .line 148
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 149
    move-result-object v2

    .line 150
    .line 151
    check-cast v2, [B

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 155
    .line 156
    add-int/lit8 v1, v1, 0x1

    .line 157
    goto :goto_0

    .line 158
    .line 159
    :cond_1
    const/16 p1, 0xd

    .line 160
    .line 161
    .line 162
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 163
    move-result-object p1

    .line 164
    .line 165
    iget-object v1, p0, Lcom/google/android/exoplayer2/a2;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 169
    .line 170
    const/16 p1, 0xe

    .line 171
    .line 172
    .line 173
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 174
    move-result-object p1

    .line 175
    .line 176
    iget-wide v1, p0, Lcom/google/android/exoplayer2/a2;->subsampleOffsetUs:J

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 180
    .line 181
    const/16 p1, 0xf

    .line 182
    .line 183
    .line 184
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 185
    move-result-object p1

    .line 186
    .line 187
    iget v1, p0, Lcom/google/android/exoplayer2/a2;->width:I

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 191
    .line 192
    const/16 p1, 0x10

    .line 193
    .line 194
    .line 195
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 196
    move-result-object p1

    .line 197
    .line 198
    iget v1, p0, Lcom/google/android/exoplayer2/a2;->height:I

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 202
    .line 203
    const/16 p1, 0x11

    .line 204
    .line 205
    .line 206
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 207
    move-result-object p1

    .line 208
    .line 209
    iget v1, p0, Lcom/google/android/exoplayer2/a2;->frameRate:F

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 213
    .line 214
    const/16 p1, 0x12

    .line 215
    .line 216
    .line 217
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 218
    move-result-object p1

    .line 219
    .line 220
    iget v1, p0, Lcom/google/android/exoplayer2/a2;->rotationDegrees:I

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 224
    .line 225
    const/16 p1, 0x13

    .line 226
    .line 227
    .line 228
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 229
    move-result-object p1

    .line 230
    .line 231
    iget v1, p0, Lcom/google/android/exoplayer2/a2;->pixelWidthHeightRatio:F

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 235
    .line 236
    const/16 p1, 0x14

    .line 237
    .line 238
    .line 239
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 240
    move-result-object p1

    .line 241
    .line 242
    iget-object v1, p0, Lcom/google/android/exoplayer2/a2;->projectionData:[B

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 246
    .line 247
    const/16 p1, 0x15

    .line 248
    .line 249
    .line 250
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 251
    move-result-object p1

    .line 252
    .line 253
    iget v1, p0, Lcom/google/android/exoplayer2/a2;->stereoMode:I

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 257
    .line 258
    iget-object p1, p0, Lcom/google/android/exoplayer2/a2;->colorInfo:Lcom/google/android/exoplayer2/video/c;

    .line 259
    .line 260
    if-eqz p1, :cond_2

    .line 261
    .line 262
    const/16 p1, 0x16

    .line 263
    .line 264
    .line 265
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 266
    move-result-object p1

    .line 267
    .line 268
    iget-object v1, p0, Lcom/google/android/exoplayer2/a2;->colorInfo:Lcom/google/android/exoplayer2/video/c;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/video/c;->toBundle()Landroid/os/Bundle;

    .line 272
    move-result-object v1

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 276
    .line 277
    :cond_2
    const/16 p1, 0x17

    .line 278
    .line 279
    .line 280
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 281
    move-result-object p1

    .line 282
    .line 283
    iget v1, p0, Lcom/google/android/exoplayer2/a2;->channelCount:I

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 287
    .line 288
    const/16 p1, 0x18

    .line 289
    .line 290
    .line 291
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 292
    move-result-object p1

    .line 293
    .line 294
    iget v1, p0, Lcom/google/android/exoplayer2/a2;->sampleRate:I

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 298
    .line 299
    const/16 p1, 0x19

    .line 300
    .line 301
    .line 302
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 303
    move-result-object p1

    .line 304
    .line 305
    iget v1, p0, Lcom/google/android/exoplayer2/a2;->pcmEncoding:I

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 309
    .line 310
    const/16 p1, 0x1a

    .line 311
    .line 312
    .line 313
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 314
    move-result-object p1

    .line 315
    .line 316
    iget v1, p0, Lcom/google/android/exoplayer2/a2;->encoderDelay:I

    .line 317
    .line 318
    .line 319
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 320
    .line 321
    const/16 p1, 0x1b

    .line 322
    .line 323
    .line 324
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 325
    move-result-object p1

    .line 326
    .line 327
    iget v1, p0, Lcom/google/android/exoplayer2/a2;->encoderPadding:I

    .line 328
    .line 329
    .line 330
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 331
    .line 332
    const/16 p1, 0x1c

    .line 333
    .line 334
    .line 335
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 336
    move-result-object p1

    .line 337
    .line 338
    iget v1, p0, Lcom/google/android/exoplayer2/a2;->accessibilityChannel:I

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 342
    .line 343
    const/16 p1, 0x1d

    .line 344
    .line 345
    .line 346
    invoke-static {p1}, Lcom/google/android/exoplayer2/a2;->h(I)Ljava/lang/String;

    .line 347
    move-result-object p1

    .line 348
    .line 349
    iget v1, p0, Lcom/google/android/exoplayer2/a2;->cryptoType:I

    .line 350
    .line 351
    .line 352
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 353
    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/a2;->j(Z)Landroid/os/Bundle;

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
    iget-object v1, p0, Lcom/google/android/exoplayer2/a2;->id:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->label:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->containerMimeType:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->sampleMimeType:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->codecs:Ljava/lang/String;

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
    iget v2, p0, Lcom/google/android/exoplayer2/a2;->bitrate:I

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
    iget-object v2, p0, Lcom/google/android/exoplayer2/a2;->language:Ljava/lang/String;

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
    iget v2, p0, Lcom/google/android/exoplayer2/a2;->width:I

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
    iget v2, p0, Lcom/google/android/exoplayer2/a2;->height:I

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
    iget v2, p0, Lcom/google/android/exoplayer2/a2;->frameRate:F

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v2, "], ["

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    iget v2, p0, Lcom/google/android/exoplayer2/a2;->channelCount:I

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    iget v1, p0, Lcom/google/android/exoplayer2/a2;->sampleRate:I

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v1, "])"

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object v0

    .line 119
    return-object v0
.end method
