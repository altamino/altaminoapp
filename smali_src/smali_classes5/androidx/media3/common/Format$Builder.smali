.class public final Landroidx/media3/common/Format$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/Format;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private accessibilityChannel:I

.field private averageBitrate:I

.field private channelCount:I

.field private codecs:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private colorInfo:Landroidx/media3/common/ColorInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private containerMimeType:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private cryptoType:I

.field private drmInitData:Landroidx/media3/common/DrmInitData;
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

.field private metadata:Landroidx/media3/common/Metadata;
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

.field private tileCountHorizontal:I

.field private tileCountVertical:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/common/Format$Builder;->averageBitrate:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->peakBitrate:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->maxInputSize:I

    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p0, Landroidx/media3/common/Format$Builder;->subsampleOffsetUs:J

    iput v0, p0, Landroidx/media3/common/Format$Builder;->width:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->height:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroidx/media3/common/Format$Builder;->frameRate:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroidx/media3/common/Format$Builder;->pixelWidthHeightRatio:F

    iput v0, p0, Landroidx/media3/common/Format$Builder;->stereoMode:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->channelCount:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->sampleRate:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->pcmEncoding:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->accessibilityChannel:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->tileCountHorizontal:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->tileCountVertical:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/common/Format$Builder;->cryptoType:I

    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/Format;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-object v0, p1, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->label:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->language:Ljava/lang/String;

    .line 7
    iget v0, p1, Landroidx/media3/common/Format;->selectionFlags:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->selectionFlags:I

    .line 8
    iget v0, p1, Landroidx/media3/common/Format;->roleFlags:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->roleFlags:I

    .line 9
    iget v0, p1, Landroidx/media3/common/Format;->averageBitrate:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->averageBitrate:I

    .line 10
    iget v0, p1, Landroidx/media3/common/Format;->peakBitrate:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->peakBitrate:I

    .line 11
    iget-object v0, p1, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->codecs:Ljava/lang/String;

    .line 12
    iget-object v0, p1, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->metadata:Landroidx/media3/common/Metadata;

    .line 13
    iget-object v0, p1, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->containerMimeType:Ljava/lang/String;

    .line 14
    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 15
    iget v0, p1, Landroidx/media3/common/Format;->maxInputSize:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->maxInputSize:I

    .line 16
    iget-object v0, p1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->initializationData:Ljava/util/List;

    .line 17
    iget-object v0, p1, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->drmInitData:Landroidx/media3/common/DrmInitData;

    .line 18
    iget-wide v0, p1, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    iput-wide v0, p0, Landroidx/media3/common/Format$Builder;->subsampleOffsetUs:J

    .line 19
    iget v0, p1, Landroidx/media3/common/Format;->width:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->width:I

    .line 20
    iget v0, p1, Landroidx/media3/common/Format;->height:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->height:I

    .line 21
    iget v0, p1, Landroidx/media3/common/Format;->frameRate:F

    iput v0, p0, Landroidx/media3/common/Format$Builder;->frameRate:F

    .line 22
    iget v0, p1, Landroidx/media3/common/Format;->rotationDegrees:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->rotationDegrees:I

    .line 23
    iget v0, p1, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    iput v0, p0, Landroidx/media3/common/Format$Builder;->pixelWidthHeightRatio:F

    .line 24
    iget-object v0, p1, Landroidx/media3/common/Format;->projectionData:[B

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->projectionData:[B

    .line 25
    iget v0, p1, Landroidx/media3/common/Format;->stereoMode:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->stereoMode:I

    .line 26
    iget-object v0, p1, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->colorInfo:Landroidx/media3/common/ColorInfo;

    .line 27
    iget v0, p1, Landroidx/media3/common/Format;->channelCount:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->channelCount:I

    .line 28
    iget v0, p1, Landroidx/media3/common/Format;->sampleRate:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->sampleRate:I

    .line 29
    iget v0, p1, Landroidx/media3/common/Format;->pcmEncoding:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->pcmEncoding:I

    .line 30
    iget v0, p1, Landroidx/media3/common/Format;->encoderDelay:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->encoderDelay:I

    .line 31
    iget v0, p1, Landroidx/media3/common/Format;->encoderPadding:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->encoderPadding:I

    .line 32
    iget v0, p1, Landroidx/media3/common/Format;->accessibilityChannel:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->accessibilityChannel:I

    .line 33
    iget v0, p1, Landroidx/media3/common/Format;->tileCountHorizontal:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->tileCountHorizontal:I

    .line 34
    iget v0, p1, Landroidx/media3/common/Format;->tileCountVertical:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->tileCountVertical:I

    .line 35
    iget p1, p1, Landroidx/media3/common/Format;->cryptoType:I

    iput p1, p0, Landroidx/media3/common/Format$Builder;->cryptoType:I

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/Format;Landroidx/media3/common/Format$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/common/Format$Builder;-><init>(Landroidx/media3/common/Format;)V

    return-void
.end method

.method static synthetic A(Landroidx/media3/common/Format$Builder;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/media3/common/Format$Builder;->selectionFlags:I

    .line 3
    return p0
.end method

.method static synthetic B(Landroidx/media3/common/Format$Builder;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/media3/common/Format$Builder;->roleFlags:I

    .line 3
    return p0
.end method

.method static synthetic C(Landroidx/media3/common/Format$Builder;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/media3/common/Format$Builder;->averageBitrate:I

    .line 3
    return p0
.end method

.method static synthetic D(Landroidx/media3/common/Format$Builder;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/media3/common/Format$Builder;->peakBitrate:I

    .line 3
    return p0
.end method

.method static synthetic E(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/Format$Builder;->codecs:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method static synthetic F(Landroidx/media3/common/Format$Builder;)Landroidx/media3/common/Metadata;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/Format$Builder;->metadata:Landroidx/media3/common/Metadata;

    .line 3
    return-object p0
.end method

.method static synthetic a(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method static synthetic b(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/Format$Builder;->containerMimeType:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method static synthetic c(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method static synthetic d(Landroidx/media3/common/Format$Builder;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/media3/common/Format$Builder;->maxInputSize:I

    .line 3
    return p0
.end method

.method static synthetic e(Landroidx/media3/common/Format$Builder;)Ljava/util/List;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/Format$Builder;->initializationData:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method static synthetic f(Landroidx/media3/common/Format$Builder;)Landroidx/media3/common/DrmInitData;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/Format$Builder;->drmInitData:Landroidx/media3/common/DrmInitData;

    .line 3
    return-object p0
.end method

.method static synthetic g(Landroidx/media3/common/Format$Builder;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/media3/common/Format$Builder;->subsampleOffsetUs:J

    .line 3
    return-wide v0
.end method

.method static synthetic h(Landroidx/media3/common/Format$Builder;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/media3/common/Format$Builder;->width:I

    .line 3
    return p0
.end method

.method static synthetic i(Landroidx/media3/common/Format$Builder;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/media3/common/Format$Builder;->height:I

    .line 3
    return p0
.end method

.method static synthetic j(Landroidx/media3/common/Format$Builder;)F
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/media3/common/Format$Builder;->frameRate:F

    .line 3
    return p0
.end method

.method static synthetic k(Landroidx/media3/common/Format$Builder;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/media3/common/Format$Builder;->rotationDegrees:I

    .line 3
    return p0
.end method

.method static synthetic l(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/Format$Builder;->label:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method static synthetic m(Landroidx/media3/common/Format$Builder;)F
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/media3/common/Format$Builder;->pixelWidthHeightRatio:F

    .line 3
    return p0
.end method

.method static synthetic n(Landroidx/media3/common/Format$Builder;)[B
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/Format$Builder;->projectionData:[B

    .line 3
    return-object p0
.end method

.method static synthetic o(Landroidx/media3/common/Format$Builder;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/media3/common/Format$Builder;->stereoMode:I

    .line 3
    return p0
.end method

.method static synthetic p(Landroidx/media3/common/Format$Builder;)Landroidx/media3/common/ColorInfo;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/Format$Builder;->colorInfo:Landroidx/media3/common/ColorInfo;

    .line 3
    return-object p0
.end method

.method static synthetic q(Landroidx/media3/common/Format$Builder;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/media3/common/Format$Builder;->channelCount:I

    .line 3
    return p0
.end method

.method static synthetic r(Landroidx/media3/common/Format$Builder;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/media3/common/Format$Builder;->sampleRate:I

    .line 3
    return p0
.end method

.method static synthetic s(Landroidx/media3/common/Format$Builder;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/media3/common/Format$Builder;->pcmEncoding:I

    .line 3
    return p0
.end method

.method static synthetic t(Landroidx/media3/common/Format$Builder;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/media3/common/Format$Builder;->encoderDelay:I

    .line 3
    return p0
.end method

.method static synthetic u(Landroidx/media3/common/Format$Builder;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/media3/common/Format$Builder;->encoderPadding:I

    .line 3
    return p0
.end method

.method static synthetic v(Landroidx/media3/common/Format$Builder;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/media3/common/Format$Builder;->accessibilityChannel:I

    .line 3
    return p0
.end method

.method static synthetic w(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/common/Format$Builder;->language:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method static synthetic x(Landroidx/media3/common/Format$Builder;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/media3/common/Format$Builder;->tileCountHorizontal:I

    .line 3
    return p0
.end method

.method static synthetic y(Landroidx/media3/common/Format$Builder;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/media3/common/Format$Builder;->tileCountVertical:I

    .line 3
    return p0
.end method

.method static synthetic z(Landroidx/media3/common/Format$Builder;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/media3/common/Format$Builder;->cryptoType:I

    .line 3
    return p0
.end method


# virtual methods
.method public G()Landroidx/media3/common/Format;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/common/Format;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;Landroidx/media3/common/Format$1;)V

    .line 7
    return-object v0
.end method

.method public H(I)Landroidx/media3/common/Format$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/Format$Builder;->accessibilityChannel:I

    return-object p0
.end method

.method public I(I)Landroidx/media3/common/Format$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/Format$Builder;->averageBitrate:I

    return-object p0
.end method

.method public J(I)Landroidx/media3/common/Format$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/Format$Builder;->channelCount:I

    return-object p0
.end method

.method public K(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/common/Format$Builder;->codecs:Ljava/lang/String;

    return-object p0
.end method

.method public L(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1    # Landroidx/media3/common/ColorInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/common/Format$Builder;->colorInfo:Landroidx/media3/common/ColorInfo;

    return-object p0
.end method

.method public M(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/common/Format$Builder;->containerMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public N(I)Landroidx/media3/common/Format$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/Format$Builder;->cryptoType:I

    return-object p0
.end method

.method public O(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1    # Landroidx/media3/common/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/common/Format$Builder;->drmInitData:Landroidx/media3/common/DrmInitData;

    return-object p0
.end method

.method public P(I)Landroidx/media3/common/Format$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/Format$Builder;->encoderDelay:I

    return-object p0
.end method

.method public Q(I)Landroidx/media3/common/Format$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/Format$Builder;->encoderPadding:I

    return-object p0
.end method

.method public R(F)Landroidx/media3/common/Format$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/Format$Builder;->frameRate:F

    return-object p0
.end method

.method public S(I)Landroidx/media3/common/Format$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/Format$Builder;->height:I

    return-object p0
.end method

.method public T(I)Landroidx/media3/common/Format$Builder;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    .line 7
    return-object p0
.end method

.method public U(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public V(Ljava/util/List;)Landroidx/media3/common/Format$Builder;
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
            "Landroidx/media3/common/Format$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/media3/common/Format$Builder;->initializationData:Ljava/util/List;

    return-object p0
.end method

.method public W(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/common/Format$Builder;->label:Ljava/lang/String;

    return-object p0
.end method

.method public X(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/common/Format$Builder;->language:Ljava/lang/String;

    return-object p0
.end method

.method public Y(I)Landroidx/media3/common/Format$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/Format$Builder;->maxInputSize:I

    return-object p0
.end method

.method public Z(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1    # Landroidx/media3/common/Metadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/common/Format$Builder;->metadata:Landroidx/media3/common/Metadata;

    return-object p0
.end method

.method public a0(I)Landroidx/media3/common/Format$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/Format$Builder;->pcmEncoding:I

    return-object p0
.end method

.method public b0(I)Landroidx/media3/common/Format$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/Format$Builder;->peakBitrate:I

    return-object p0
.end method

.method public c0(F)Landroidx/media3/common/Format$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/Format$Builder;->pixelWidthHeightRatio:F

    return-object p0
.end method

.method public d0([B)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/common/Format$Builder;->projectionData:[B

    return-object p0
.end method

.method public e0(I)Landroidx/media3/common/Format$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/Format$Builder;->roleFlags:I

    return-object p0
.end method

.method public f0(I)Landroidx/media3/common/Format$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/Format$Builder;->rotationDegrees:I

    return-object p0
.end method

.method public g0(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public h0(I)Landroidx/media3/common/Format$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/Format$Builder;->sampleRate:I

    return-object p0
.end method

.method public i0(I)Landroidx/media3/common/Format$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/Format$Builder;->selectionFlags:I

    return-object p0
.end method

.method public j0(I)Landroidx/media3/common/Format$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/Format$Builder;->stereoMode:I

    return-object p0
.end method

.method public k0(J)Landroidx/media3/common/Format$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/media3/common/Format$Builder;->subsampleOffsetUs:J

    return-object p0
.end method

.method public l0(I)Landroidx/media3/common/Format$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/Format$Builder;->tileCountHorizontal:I

    return-object p0
.end method

.method public m0(I)Landroidx/media3/common/Format$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/Format$Builder;->tileCountVertical:I

    return-object p0
.end method

.method public n0(I)Landroidx/media3/common/Format$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/common/Format$Builder;->width:I

    return-object p0
.end method
