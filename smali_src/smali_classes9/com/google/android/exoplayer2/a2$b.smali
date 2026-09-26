.class public final Lcom/google/android/exoplayer2/a2$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/a2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private accessibilityChannel:I

.field private averageBitrate:I

.field private channelCount:I

.field private codecs:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private colorInfo:Lcom/google/android/exoplayer2/video/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private containerMimeType:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private cryptoType:I

.field private drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private encoderDelay:I

.field private encoderPadding:I

.field private frameRate:F

.field private height:I

.field private id:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private initializationData:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private label:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private language:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private maxInputSize:I

.field private metadata:Lcom/google/android/exoplayer2/metadata/Metadata;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private pcmEncoding:I

.field private peakBitrate:I

.field private pixelWidthHeightRatio:F

.field private projectionData:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private roleFlags:I

.field private rotationDegrees:I

.field private sampleMimeType:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private sampleRate:I

.field private selectionFlags:I

.field private stereoMode:I

.field private subsampleOffsetUs:J

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/a2$b;->averageBitrate:I

    iput v0, p0, Lcom/google/android/exoplayer2/a2$b;->peakBitrate:I

    iput v0, p0, Lcom/google/android/exoplayer2/a2$b;->maxInputSize:I

    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p0, Lcom/google/android/exoplayer2/a2$b;->subsampleOffsetUs:J

    iput v0, p0, Lcom/google/android/exoplayer2/a2$b;->width:I

    iput v0, p0, Lcom/google/android/exoplayer2/a2$b;->height:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/google/android/exoplayer2/a2$b;->frameRate:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/google/android/exoplayer2/a2$b;->pixelWidthHeightRatio:F

    iput v0, p0, Lcom/google/android/exoplayer2/a2$b;->stereoMode:I

    iput v0, p0, Lcom/google/android/exoplayer2/a2$b;->channelCount:I

    iput v0, p0, Lcom/google/android/exoplayer2/a2$b;->sampleRate:I

    iput v0, p0, Lcom/google/android/exoplayer2/a2$b;->pcmEncoding:I

    iput v0, p0, Lcom/google/android/exoplayer2/a2$b;->accessibilityChannel:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/a2$b;->cryptoType:I

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/a2;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-object v0, p1, Lcom/google/android/exoplayer2/a2;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2$b;->id:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Lcom/google/android/exoplayer2/a2;->label:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2$b;->label:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Lcom/google/android/exoplayer2/a2;->language:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2$b;->language:Ljava/lang/String;

    .line 7
    iget v0, p1, Lcom/google/android/exoplayer2/a2;->selectionFlags:I

    iput v0, p0, Lcom/google/android/exoplayer2/a2$b;->selectionFlags:I

    .line 8
    iget v0, p1, Lcom/google/android/exoplayer2/a2;->roleFlags:I

    iput v0, p0, Lcom/google/android/exoplayer2/a2$b;->roleFlags:I

    .line 9
    iget v0, p1, Lcom/google/android/exoplayer2/a2;->averageBitrate:I

    iput v0, p0, Lcom/google/android/exoplayer2/a2$b;->averageBitrate:I

    .line 10
    iget v0, p1, Lcom/google/android/exoplayer2/a2;->peakBitrate:I

    iput v0, p0, Lcom/google/android/exoplayer2/a2$b;->peakBitrate:I

    .line 11
    iget-object v0, p1, Lcom/google/android/exoplayer2/a2;->codecs:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2$b;->codecs:Ljava/lang/String;

    .line 12
    iget-object v0, p1, Lcom/google/android/exoplayer2/a2;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2$b;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 13
    iget-object v0, p1, Lcom/google/android/exoplayer2/a2;->containerMimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2$b;->containerMimeType:Ljava/lang/String;

    .line 14
    iget-object v0, p1, Lcom/google/android/exoplayer2/a2;->sampleMimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2$b;->sampleMimeType:Ljava/lang/String;

    .line 15
    iget v0, p1, Lcom/google/android/exoplayer2/a2;->maxInputSize:I

    iput v0, p0, Lcom/google/android/exoplayer2/a2$b;->maxInputSize:I

    .line 16
    iget-object v0, p1, Lcom/google/android/exoplayer2/a2;->initializationData:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2$b;->initializationData:Ljava/util/List;

    .line 17
    iget-object v0, p1, Lcom/google/android/exoplayer2/a2;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2$b;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 18
    iget-wide v0, p1, Lcom/google/android/exoplayer2/a2;->subsampleOffsetUs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/a2$b;->subsampleOffsetUs:J

    .line 19
    iget v0, p1, Lcom/google/android/exoplayer2/a2;->width:I

    iput v0, p0, Lcom/google/android/exoplayer2/a2$b;->width:I

    .line 20
    iget v0, p1, Lcom/google/android/exoplayer2/a2;->height:I

    iput v0, p0, Lcom/google/android/exoplayer2/a2$b;->height:I

    .line 21
    iget v0, p1, Lcom/google/android/exoplayer2/a2;->frameRate:F

    iput v0, p0, Lcom/google/android/exoplayer2/a2$b;->frameRate:F

    .line 22
    iget v0, p1, Lcom/google/android/exoplayer2/a2;->rotationDegrees:I

    iput v0, p0, Lcom/google/android/exoplayer2/a2$b;->rotationDegrees:I

    .line 23
    iget v0, p1, Lcom/google/android/exoplayer2/a2;->pixelWidthHeightRatio:F

    iput v0, p0, Lcom/google/android/exoplayer2/a2$b;->pixelWidthHeightRatio:F

    .line 24
    iget-object v0, p1, Lcom/google/android/exoplayer2/a2;->projectionData:[B

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2$b;->projectionData:[B

    .line 25
    iget v0, p1, Lcom/google/android/exoplayer2/a2;->stereoMode:I

    iput v0, p0, Lcom/google/android/exoplayer2/a2$b;->stereoMode:I

    .line 26
    iget-object v0, p1, Lcom/google/android/exoplayer2/a2;->colorInfo:Lcom/google/android/exoplayer2/video/c;

    iput-object v0, p0, Lcom/google/android/exoplayer2/a2$b;->colorInfo:Lcom/google/android/exoplayer2/video/c;

    .line 27
    iget v0, p1, Lcom/google/android/exoplayer2/a2;->channelCount:I

    iput v0, p0, Lcom/google/android/exoplayer2/a2$b;->channelCount:I

    .line 28
    iget v0, p1, Lcom/google/android/exoplayer2/a2;->sampleRate:I

    iput v0, p0, Lcom/google/android/exoplayer2/a2$b;->sampleRate:I

    .line 29
    iget v0, p1, Lcom/google/android/exoplayer2/a2;->pcmEncoding:I

    iput v0, p0, Lcom/google/android/exoplayer2/a2$b;->pcmEncoding:I

    .line 30
    iget v0, p1, Lcom/google/android/exoplayer2/a2;->encoderDelay:I

    iput v0, p0, Lcom/google/android/exoplayer2/a2$b;->encoderDelay:I

    .line 31
    iget v0, p1, Lcom/google/android/exoplayer2/a2;->encoderPadding:I

    iput v0, p0, Lcom/google/android/exoplayer2/a2$b;->encoderPadding:I

    .line 32
    iget v0, p1, Lcom/google/android/exoplayer2/a2;->accessibilityChannel:I

    iput v0, p0, Lcom/google/android/exoplayer2/a2$b;->accessibilityChannel:I

    .line 33
    iget p1, p1, Lcom/google/android/exoplayer2/a2;->cryptoType:I

    iput p1, p0, Lcom/google/android/exoplayer2/a2$b;->cryptoType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/a2;Lcom/google/android/exoplayer2/a2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/a2$b;-><init>(Lcom/google/android/exoplayer2/a2;)V

    return-void
.end method

.method static synthetic A(Lcom/google/android/exoplayer2/a2$b;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/a2$b;->averageBitrate:I

    .line 3
    return p0
.end method

.method static synthetic B(Lcom/google/android/exoplayer2/a2$b;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/a2$b;->peakBitrate:I

    .line 3
    return p0
.end method

.method static synthetic C(Lcom/google/android/exoplayer2/a2$b;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/a2$b;->codecs:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method static synthetic D(Lcom/google/android/exoplayer2/a2$b;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/a2$b;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 3
    return-object p0
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/a2$b;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/a2$b;->id:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/a2$b;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/a2$b;->containerMimeType:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/a2$b;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/a2$b;->sampleMimeType:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/a2$b;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/a2$b;->maxInputSize:I

    .line 3
    return p0
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/a2$b;)Ljava/util/List;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/a2$b;->initializationData:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/a2$b;)Lcom/google/android/exoplayer2/drm/DrmInitData;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/a2$b;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/google/android/exoplayer2/a2$b;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/a2$b;->subsampleOffsetUs:J

    .line 3
    return-wide v0
.end method

.method static synthetic h(Lcom/google/android/exoplayer2/a2$b;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/a2$b;->width:I

    .line 3
    return p0
.end method

.method static synthetic i(Lcom/google/android/exoplayer2/a2$b;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/a2$b;->height:I

    .line 3
    return p0
.end method

.method static synthetic j(Lcom/google/android/exoplayer2/a2$b;)F
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/a2$b;->frameRate:F

    .line 3
    return p0
.end method

.method static synthetic k(Lcom/google/android/exoplayer2/a2$b;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/a2$b;->rotationDegrees:I

    .line 3
    return p0
.end method

.method static synthetic l(Lcom/google/android/exoplayer2/a2$b;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/a2$b;->label:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method static synthetic m(Lcom/google/android/exoplayer2/a2$b;)F
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/a2$b;->pixelWidthHeightRatio:F

    .line 3
    return p0
.end method

.method static synthetic n(Lcom/google/android/exoplayer2/a2$b;)[B
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/a2$b;->projectionData:[B

    .line 3
    return-object p0
.end method

.method static synthetic o(Lcom/google/android/exoplayer2/a2$b;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/a2$b;->stereoMode:I

    .line 3
    return p0
.end method

.method static synthetic p(Lcom/google/android/exoplayer2/a2$b;)Lcom/google/android/exoplayer2/video/c;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/a2$b;->colorInfo:Lcom/google/android/exoplayer2/video/c;

    .line 3
    return-object p0
.end method

.method static synthetic q(Lcom/google/android/exoplayer2/a2$b;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/a2$b;->channelCount:I

    .line 3
    return p0
.end method

.method static synthetic r(Lcom/google/android/exoplayer2/a2$b;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/a2$b;->sampleRate:I

    .line 3
    return p0
.end method

.method static synthetic s(Lcom/google/android/exoplayer2/a2$b;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/a2$b;->pcmEncoding:I

    .line 3
    return p0
.end method

.method static synthetic t(Lcom/google/android/exoplayer2/a2$b;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/a2$b;->encoderDelay:I

    .line 3
    return p0
.end method

.method static synthetic u(Lcom/google/android/exoplayer2/a2$b;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/a2$b;->encoderPadding:I

    .line 3
    return p0
.end method

.method static synthetic v(Lcom/google/android/exoplayer2/a2$b;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/a2$b;->accessibilityChannel:I

    .line 3
    return p0
.end method

.method static synthetic w(Lcom/google/android/exoplayer2/a2$b;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/a2$b;->language:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method static synthetic x(Lcom/google/android/exoplayer2/a2$b;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/a2$b;->cryptoType:I

    .line 3
    return p0
.end method

.method static synthetic y(Lcom/google/android/exoplayer2/a2$b;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/a2$b;->selectionFlags:I

    .line 3
    return p0
.end method

.method static synthetic z(Lcom/google/android/exoplayer2/a2$b;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/a2$b;->roleFlags:I

    .line 3
    return p0
.end method


# virtual methods
.method public E()Lcom/google/android/exoplayer2/a2;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/a2;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/a2;-><init>(Lcom/google/android/exoplayer2/a2$b;Lcom/google/android/exoplayer2/a2$a;)V

    .line 7
    return-object v0
.end method

.method public F(I)Lcom/google/android/exoplayer2/a2$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/a2$b;->accessibilityChannel:I

    return-object p0
.end method

.method public G(I)Lcom/google/android/exoplayer2/a2$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/a2$b;->averageBitrate:I

    return-object p0
.end method

.method public H(I)Lcom/google/android/exoplayer2/a2$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/a2$b;->channelCount:I

    return-object p0
.end method

.method public I(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/a2$b;->codecs:Ljava/lang/String;

    return-object p0
.end method

.method public J(Lcom/google/android/exoplayer2/video/c;)Lcom/google/android/exoplayer2/a2$b;
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/video/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/a2$b;->colorInfo:Lcom/google/android/exoplayer2/video/c;

    return-object p0
.end method

.method public K(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/a2$b;->containerMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public L(I)Lcom/google/android/exoplayer2/a2$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/a2$b;->cryptoType:I

    return-object p0
.end method

.method public M(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/a2$b;
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/drm/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/a2$b;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    return-object p0
.end method

.method public N(I)Lcom/google/android/exoplayer2/a2$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/a2$b;->encoderDelay:I

    return-object p0
.end method

.method public O(I)Lcom/google/android/exoplayer2/a2$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/a2$b;->encoderPadding:I

    return-object p0
.end method

.method public P(F)Lcom/google/android/exoplayer2/a2$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/a2$b;->frameRate:F

    return-object p0
.end method

.method public Q(I)Lcom/google/android/exoplayer2/a2$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/a2$b;->height:I

    return-object p0
.end method

.method public R(I)Lcom/google/android/exoplayer2/a2$b;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/exoplayer2/a2$b;->id:Ljava/lang/String;

    .line 7
    return-object p0
.end method

.method public S(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/a2$b;->id:Ljava/lang/String;

    return-object p0
.end method

.method public T(Ljava/util/List;)Lcom/google/android/exoplayer2/a2$b;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Lcom/google/android/exoplayer2/a2$b;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/a2$b;->initializationData:Ljava/util/List;

    return-object p0
.end method

.method public U(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/a2$b;->label:Ljava/lang/String;

    return-object p0
.end method

.method public V(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/a2$b;->language:Ljava/lang/String;

    return-object p0
.end method

.method public W(I)Lcom/google/android/exoplayer2/a2$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/a2$b;->maxInputSize:I

    return-object p0
.end method

.method public X(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/a2$b;
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/metadata/Metadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/a2$b;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    return-object p0
.end method

.method public Y(I)Lcom/google/android/exoplayer2/a2$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/a2$b;->pcmEncoding:I

    return-object p0
.end method

.method public Z(I)Lcom/google/android/exoplayer2/a2$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/a2$b;->peakBitrate:I

    return-object p0
.end method

.method public a0(F)Lcom/google/android/exoplayer2/a2$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/a2$b;->pixelWidthHeightRatio:F

    return-object p0
.end method

.method public b0([B)Lcom/google/android/exoplayer2/a2$b;
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/a2$b;->projectionData:[B

    return-object p0
.end method

.method public c0(I)Lcom/google/android/exoplayer2/a2$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/a2$b;->roleFlags:I

    return-object p0
.end method

.method public d0(I)Lcom/google/android/exoplayer2/a2$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/a2$b;->rotationDegrees:I

    return-object p0
.end method

.method public e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/a2$b;->sampleMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public f0(I)Lcom/google/android/exoplayer2/a2$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/a2$b;->sampleRate:I

    return-object p0
.end method

.method public g0(I)Lcom/google/android/exoplayer2/a2$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/a2$b;->selectionFlags:I

    return-object p0
.end method

.method public h0(I)Lcom/google/android/exoplayer2/a2$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/a2$b;->stereoMode:I

    return-object p0
.end method

.method public i0(J)Lcom/google/android/exoplayer2/a2$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/a2$b;->subsampleOffsetUs:J

    return-object p0
.end method

.method public j0(I)Lcom/google/android/exoplayer2/a2$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/a2$b;->width:I

    return-object p0
.end method
