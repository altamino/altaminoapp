.class public final Lffmpeg/base/MediaEditingConfig;
.super Ljava/lang/Object;
.source "MediaEditingConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lffmpeg/base/MediaEditingConfig$Companion;
    }
.end annotation


# static fields
.field public static final ACTION_AUTO:I = 0x1

.field public static final ACTION_CONCAT_VIDEO:I = 0x1000

.field public static final ACTION_CONVERT_GIF_TO_VIDEO:I = 0x800

.field public static final ACTION_CONVERT_IMG_TO_VIDEO:I = 0x400

.field public static final ACTION_COPY_MIX_AUDIO_VIDEO:I = 0x80

.field public static final ACTION_FLIP_MEDIA:I = 0x200

.field public static final ACTION_GENERATE_SILENT_AUDIO:I = 0x100

.field public static final ACTION_MULTIPLE_MEDIA_MIX:I = 0x20

.field public static final ACTION_SCREENSHOT:I = 0x10

.field public static final ACTION_TRANSCODE_A:I = 0x4

.field public static final ACTION_TRANSCODE_V:I = 0x2

.field public static final ACTION_TRIM:I = 0x8

.field public static final ACTION_WAVE_FORM:I = 0x40

.field public static final Companion:Lffmpeg/base/MediaEditingConfig$Companion;

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field private actionType:I

.field private final additionalMediaInputList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation
.end field

.field private final audioOnly:Z

.field private dropNegativeTs:Z

.field private final duration:I

.field private final forceAudioCodecCopy:Z

.field private forceSoftware:Z

.field private final forceVideoCodecCopy:Z

.field private final frameItemHeight:I

.field private final frameItemWidth:I

.field private final horizontalFlip:Z

.field private final inputClip:Lcom/narvii/video/model/AVClipInfoPack;

.field private final inputClipList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation
.end field

.field private inputHasAudioTrackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private inputHasVideoTrackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private isVerticalVideoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final keepFixedDimension:Z

.field private final keyframeOnlyForScreenshot:Z

.field private final maxVideoBitrate:Ljava/lang/String;

.field private final needProgressCallback:Z

.field private orgVideoDARList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private orgVideoHeightList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private orgVideoWidthList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final output:Ljava/io/File;

.field private runningInBackground:Z

.field private screenshotCount:I

.field private screenshotRate:F

.field private final screenshotScaleRatio:Ljava/lang/String;

.field private final startTime:I

.field private final verticalFlip:Z

.field private final videoBufSize:Ljava/lang/String;

.field private final videoOnly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lffmpeg/base/MediaEditingConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lffmpeg/base/MediaEditingConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lffmpeg/base/MediaEditingConfig;->Companion:Lffmpeg/base/MediaEditingConfig$Companion;

    return-void
.end method

.method public constructor <init>(Lffmpeg/base/MediaEditingConfig$Companion$Builder;)V
    .locals 3

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lffmpeg/base/MediaEditingConfig;->isVerticalVideoList:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lffmpeg/base/MediaEditingConfig;->orgVideoWidthList:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lffmpeg/base/MediaEditingConfig;->orgVideoHeightList:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lffmpeg/base/MediaEditingConfig;->orgVideoDARList:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lffmpeg/base/MediaEditingConfig;->inputHasAudioTrackList:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lffmpeg/base/MediaEditingConfig;->inputHasVideoTrackList:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {p1}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->getType()I

    move-result v0

    iput v0, p0, Lffmpeg/base/MediaEditingConfig;->actionType:I

    .line 46
    invoke-virtual {p1}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->getInputClip()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v0

    iput-object v0, p0, Lffmpeg/base/MediaEditingConfig;->inputClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 47
    invoke-virtual {p1}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->getInputClipList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lffmpeg/base/MediaEditingConfig;->inputClipList:Ljava/util/List;

    .line 48
    invoke-virtual {p1}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->getOutput()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lffmpeg/base/MediaEditingConfig;->output:Ljava/io/File;

    .line 49
    invoke-virtual {p1}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->getDuration()I

    move-result v0

    iput v0, p0, Lffmpeg/base/MediaEditingConfig;->duration:I

    .line 50
    invoke-virtual {p1}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->getStartTime()I

    move-result v0

    iput v0, p0, Lffmpeg/base/MediaEditingConfig;->startTime:I

    const v0, 0x8c000

    int-to-float v0, v0

    .line 51
    iget v1, p0, Lffmpeg/base/MediaEditingConfig;->duration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/16 v1, 0x3e8

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v1, 0xdac

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x80

    goto :goto_0

    :cond_0
    const/16 v0, 0xd2c

    .line 53
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "k"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lffmpeg/base/MediaEditingConfig;->maxVideoBitrate:Ljava/lang/String;

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lffmpeg/base/MediaEditingConfig;->videoBufSize:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->getKeyframeOnlyForScreenshot()Z

    move-result v0

    iput-boolean v0, p0, Lffmpeg/base/MediaEditingConfig;->keyframeOnlyForScreenshot:Z

    .line 56
    invoke-virtual {p1}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->getKeepFixedDimension()Z

    move-result v0

    iput-boolean v0, p0, Lffmpeg/base/MediaEditingConfig;->keepFixedDimension:Z

    .line 57
    invoke-virtual {p1}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->getVideoOnly()Z

    move-result v0

    iput-boolean v0, p0, Lffmpeg/base/MediaEditingConfig;->videoOnly:Z

    .line 58
    invoke-virtual {p1}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->getAudioOnly()Z

    move-result v0

    iput-boolean v0, p0, Lffmpeg/base/MediaEditingConfig;->audioOnly:Z

    .line 59
    invoke-virtual {p1}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->getForceVideoCodecCopy()Z

    move-result v0

    iput-boolean v0, p0, Lffmpeg/base/MediaEditingConfig;->forceVideoCodecCopy:Z

    .line 60
    invoke-virtual {p1}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->getForceAudioCodecCopy()Z

    move-result v0

    iput-boolean v0, p0, Lffmpeg/base/MediaEditingConfig;->forceAudioCodecCopy:Z

    .line 61
    invoke-virtual {p1}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->getAdditionalAudioInputList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lffmpeg/base/MediaEditingConfig;->additionalMediaInputList:Ljava/util/ArrayList;

    .line 62
    invoke-virtual {p1}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->getFrameItemWidth()I

    move-result v0

    iput v0, p0, Lffmpeg/base/MediaEditingConfig;->frameItemWidth:I

    .line 63
    invoke-virtual {p1}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->getFrameItemHeight()I

    move-result v0

    iput v0, p0, Lffmpeg/base/MediaEditingConfig;->frameItemHeight:I

    .line 64
    invoke-virtual {p1}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->getScreenshotCount()I

    move-result v0

    iput v0, p0, Lffmpeg/base/MediaEditingConfig;->screenshotCount:I

    .line 65
    invoke-virtual {p1}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->getScreenshotRate()F

    move-result v0

    iput v0, p0, Lffmpeg/base/MediaEditingConfig;->screenshotRate:F

    .line 66
    invoke-virtual {p1}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->getScreenshotScaleRatio()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lffmpeg/base/MediaEditingConfig;->screenshotScaleRatio:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->getHorizontalFlip()Z

    move-result v0

    iput-boolean v0, p0, Lffmpeg/base/MediaEditingConfig;->horizontalFlip:Z

    .line 68
    invoke-virtual {p1}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->getVerticalFlip()Z

    move-result v0

    iput-boolean v0, p0, Lffmpeg/base/MediaEditingConfig;->verticalFlip:Z

    .line 69
    invoke-virtual {p1}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->getNeedProgressCallback()Z

    move-result v0

    iput-boolean v0, p0, Lffmpeg/base/MediaEditingConfig;->needProgressCallback:Z

    .line 70
    invoke-virtual {p1}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->getDropNegativeTs()Z

    move-result p1

    iput-boolean p1, p0, Lffmpeg/base/MediaEditingConfig;->dropNegativeTs:Z

    return-void
.end method

.method public static synthetic getOrgVideoSar$default(Lffmpeg/base/MediaEditingConfig;IILjava/lang/Object;)F
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 109
    :cond_0
    invoke-virtual {p0, p1}, Lffmpeg/base/MediaEditingConfig;->getOrgVideoSar(I)F

    move-result p0

    return p0
.end method


# virtual methods
.method public final getActionType()I
    .locals 1

    .line 11
    iget v0, p0, Lffmpeg/base/MediaEditingConfig;->actionType:I

    return v0
.end method

.method public final getAdditionalMediaInputList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lffmpeg/base/MediaEditingConfig;->additionalMediaInputList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getAudioOnly()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lffmpeg/base/MediaEditingConfig;->audioOnly:Z

    return v0
.end method

.method public final getDropNegativeTs()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lffmpeg/base/MediaEditingConfig;->dropNegativeTs:Z

    return v0
.end method

.method public final getDuration()I
    .locals 1

    .line 15
    iget v0, p0, Lffmpeg/base/MediaEditingConfig;->duration:I

    return v0
.end method

.method public final getForceAudioCodecCopy()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lffmpeg/base/MediaEditingConfig;->forceAudioCodecCopy:Z

    return v0
.end method

.method public final getForceSoftware()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lffmpeg/base/MediaEditingConfig;->forceSoftware:Z

    return v0
.end method

.method public final getForceVideoCodecCopy()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lffmpeg/base/MediaEditingConfig;->forceVideoCodecCopy:Z

    return v0
.end method

.method public final getFrameItemHeight()I
    .locals 1

    .line 27
    iget v0, p0, Lffmpeg/base/MediaEditingConfig;->frameItemHeight:I

    return v0
.end method

.method public final getFrameItemWidth()I
    .locals 1

    .line 26
    iget v0, p0, Lffmpeg/base/MediaEditingConfig;->frameItemWidth:I

    return v0
.end method

.method public final getHorizontalFlip()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lffmpeg/base/MediaEditingConfig;->horizontalFlip:Z

    return v0
.end method

.method public final getInputClip()Lcom/narvii/video/model/AVClipInfoPack;
    .locals 1

    .line 12
    iget-object v0, p0, Lffmpeg/base/MediaEditingConfig;->inputClip:Lcom/narvii/video/model/AVClipInfoPack;

    return-object v0
.end method

.method public final getInputClipList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lffmpeg/base/MediaEditingConfig;->inputClipList:Ljava/util/List;

    return-object v0
.end method

.method public final getInputHasAudioTrackList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lffmpeg/base/MediaEditingConfig;->inputHasAudioTrackList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getInputHasVideoTrackList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lffmpeg/base/MediaEditingConfig;->inputHasVideoTrackList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getKeepFixedDimension()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lffmpeg/base/MediaEditingConfig;->keepFixedDimension:Z

    return v0
.end method

.method public final getKeyframeOnlyForScreenshot()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lffmpeg/base/MediaEditingConfig;->keyframeOnlyForScreenshot:Z

    return v0
.end method

.method public final getMaxVideoBitrate()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lffmpeg/base/MediaEditingConfig;->maxVideoBitrate:Ljava/lang/String;

    return-object v0
.end method

.method public final getNeedProgressCallback()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lffmpeg/base/MediaEditingConfig;->needProgressCallback:Z

    return v0
.end method

.method public final getOrgVideoDARList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lffmpeg/base/MediaEditingConfig;->orgVideoDARList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getOrgVideoHeightList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lffmpeg/base/MediaEditingConfig;->orgVideoHeightList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getOrgVideoSar(I)F
    .locals 3

    .line 110
    iget-object v0, p0, Lffmpeg/base/MediaEditingConfig;->orgVideoDARList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iget-object v1, p0, Lffmpeg/base/MediaEditingConfig;->orgVideoHeightList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "orgVideoHeightList[clipIndex]"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    mul-float v0, v0, v1

    iget-object v1, p0, Lffmpeg/base/MediaEditingConfig;->orgVideoWidthList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "orgVideoWidthList[clipIndex]"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    div-float/2addr v0, p1

    return v0
.end method

.method public final getOrgVideoWidthList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lffmpeg/base/MediaEditingConfig;->orgVideoWidthList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getOutput()Ljava/io/File;
    .locals 1

    .line 14
    iget-object v0, p0, Lffmpeg/base/MediaEditingConfig;->output:Ljava/io/File;

    return-object v0
.end method

.method public final getRunningInBackground()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lffmpeg/base/MediaEditingConfig;->runningInBackground:Z

    return v0
.end method

.method public final getScreenshotCount()I
    .locals 1

    .line 28
    iget v0, p0, Lffmpeg/base/MediaEditingConfig;->screenshotCount:I

    return v0
.end method

.method public final getScreenshotRate()F
    .locals 1

    .line 29
    iget v0, p0, Lffmpeg/base/MediaEditingConfig;->screenshotRate:F

    return v0
.end method

.method public final getScreenshotScaleRatio()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lffmpeg/base/MediaEditingConfig;->screenshotScaleRatio:Ljava/lang/String;

    return-object v0
.end method

.method public final getStartTime()I
    .locals 1

    .line 16
    iget v0, p0, Lffmpeg/base/MediaEditingConfig;->startTime:I

    return v0
.end method

.method public final getVerticalFlip()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lffmpeg/base/MediaEditingConfig;->verticalFlip:Z

    return v0
.end method

.method public final getVideoBufSize()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lffmpeg/base/MediaEditingConfig;->videoBufSize:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoOnly()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lffmpeg/base/MediaEditingConfig;->videoOnly:Z

    return v0
.end method

.method public final isImageInput()Z
    .locals 1

    .line 114
    iget-object v0, p0, Lffmpeg/base/MediaEditingConfig;->inputClip:Lcom/narvii/video/model/AVClipInfoPack;

    iget-object v0, v0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/Utils;->isBMP(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lffmpeg/base/MediaEditingConfig;->inputClip:Lcom/narvii/video/model/AVClipInfoPack;

    iget-object v0, v0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/Utils;->isJPG(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lffmpeg/base/MediaEditingConfig;->inputClip:Lcom/narvii/video/model/AVClipInfoPack;

    iget-object v0, v0, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/Utils;->isPNG(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isVerticalVideoList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lffmpeg/base/MediaEditingConfig;->isVerticalVideoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final setForceSoftware(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lffmpeg/base/MediaEditingConfig;->forceSoftware:Z

    return-void
.end method

.method public final setRunningInBackground(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lffmpeg/base/MediaEditingConfig;->runningInBackground:Z

    return-void
.end method

.method public final setTranscodeAudio(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 91
    iget p1, p0, Lffmpeg/base/MediaEditingConfig;->actionType:I

    or-int/lit8 p1, p1, 0x4

    goto :goto_0

    .line 93
    :cond_0
    iget p1, p0, Lffmpeg/base/MediaEditingConfig;->actionType:I

    and-int/lit8 p1, p1, -0x5

    .line 90
    :goto_0
    iput p1, p0, Lffmpeg/base/MediaEditingConfig;->actionType:I

    return-void
.end method

.method public final setTranscodeVideo(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 83
    iget p1, p0, Lffmpeg/base/MediaEditingConfig;->actionType:I

    or-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 85
    :cond_0
    iget p1, p0, Lffmpeg/base/MediaEditingConfig;->actionType:I

    and-int/lit8 p1, p1, -0x3

    .line 82
    :goto_0
    iput p1, p0, Lffmpeg/base/MediaEditingConfig;->actionType:I

    return-void
.end method

.method public final setTrim(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 75
    iget p1, p0, Lffmpeg/base/MediaEditingConfig;->actionType:I

    or-int/lit8 p1, p1, 0x8

    goto :goto_0

    .line 77
    :cond_0
    iget p1, p0, Lffmpeg/base/MediaEditingConfig;->actionType:I

    and-int/lit8 p1, p1, -0x9

    .line 74
    :goto_0
    iput p1, p0, Lffmpeg/base/MediaEditingConfig;->actionType:I

    return-void
.end method
