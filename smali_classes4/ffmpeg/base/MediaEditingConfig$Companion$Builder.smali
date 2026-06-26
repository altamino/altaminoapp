.class public final Lffmpeg/base/MediaEditingConfig$Companion$Builder;
.super Ljava/lang/Object;
.source "MediaEditingConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lffmpeg/base/MediaEditingConfig$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final additionalAudioInputList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation
.end field

.field private audioOnly:Z

.field private dropNegativeTs:Z

.field private duration:I

.field private forceAudioCodecCopy:Z

.field private forceVideoCodecCopy:Z

.field private frameItemHeight:I

.field private frameItemWidth:I

.field private horizontalFlip:Z

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

.field private keepFixedDimension:Z

.field private keyframeOnlyForScreenshot:Z

.field private needProgressCallback:Z

.field private final output:Ljava/io/File;

.field private screenshotCount:I

.field private screenshotRate:F

.field private screenshotScaleRatio:Ljava/lang/String;

.field private startTime:I

.field private final type:I

.field private verticalFlip:Z

.field private videoOnly:Z


# direct methods
.method public constructor <init>(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;I)V
    .locals 1

    const-string v0, "inputClip"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->additionalAudioInputList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 156
    iput v0, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->screenshotCount:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 157
    iput v0, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->screenshotRate:F

    const/16 v0, 0x64

    .line 165
    iput v0, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->frameItemWidth:I

    const/16 v0, 0xc8

    .line 166
    iput v0, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->frameItemHeight:I

    .line 136
    iput-object p1, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->inputClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 137
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->inputClipList:Ljava/util/List;

    .line 138
    iput-object p2, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->output:Ljava/io/File;

    .line 139
    iput p3, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->type:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 135
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;-><init>(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/io/File;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;",
            "Ljava/io/File;",
            "I)V"
        }
    .end annotation

    const-string v0, "inputClipList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->additionalAudioInputList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 156
    iput v0, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->screenshotCount:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 157
    iput v0, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->screenshotRate:F

    const/16 v0, 0x64

    .line 165
    iput v0, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->frameItemWidth:I

    const/16 v0, 0xc8

    .line 166
    iput v0, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->frameItemHeight:I

    const/4 v0, 0x0

    .line 143
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/model/AVClipInfoPack;

    iput-object v0, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->inputClip:Lcom/narvii/video/model/AVClipInfoPack;

    .line 144
    iput-object p1, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->inputClipList:Ljava/util/List;

    .line 145
    iput-object p2, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->output:Ljava/io/File;

    .line 146
    iput p3, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->type:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/io/File;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 142
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;-><init>(Ljava/util/List;Ljava/io/File;I)V

    return-void
.end method


# virtual methods
.method public final additionalAudioInputList(Ljava/util/List;)Lffmpeg/base/MediaEditingConfig$Companion$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;)",
            "Lffmpeg/base/MediaEditingConfig$Companion$Builder;"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->additionalAudioInputList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 174
    iget-object v0, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->additionalAudioInputList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final audioOnly(Z)Lffmpeg/base/MediaEditingConfig$Companion$Builder;
    .locals 0

    .line 221
    iput-boolean p1, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->audioOnly:Z

    return-object p0
.end method

.method public final build()Lffmpeg/base/MediaEditingConfig;
    .locals 1

    .line 270
    new-instance v0, Lffmpeg/base/MediaEditingConfig;

    invoke-direct {v0, p0}, Lffmpeg/base/MediaEditingConfig;-><init>(Lffmpeg/base/MediaEditingConfig$Companion$Builder;)V

    return-object v0
.end method

.method public final dropNegativeTs(Z)Lffmpeg/base/MediaEditingConfig$Companion$Builder;
    .locals 0

    .line 265
    iput-boolean p1, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->dropNegativeTs:Z

    return-object p0
.end method

.method public final duration(I)Lffmpeg/base/MediaEditingConfig$Companion$Builder;
    .locals 0

    .line 179
    iput p1, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->duration:I

    return-object p0
.end method

.method public final forceAudioCodecCopy(Z)Lffmpeg/base/MediaEditingConfig$Companion$Builder;
    .locals 0

    .line 226
    iput-boolean p1, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->forceAudioCodecCopy:Z

    return-object p0
.end method

.method public final forceVideoCodecCopy(Z)Lffmpeg/base/MediaEditingConfig$Companion$Builder;
    .locals 0

    .line 231
    iput-boolean p1, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->forceVideoCodecCopy:Z

    return-object p0
.end method

.method public final frameItemHeight(I)Lffmpeg/base/MediaEditingConfig$Companion$Builder;
    .locals 0

    if-lez p1, :cond_0

    .line 244
    iput p1, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->frameItemHeight:I

    :cond_0
    return-object p0
.end method

.method public final frameItemWidth(I)Lffmpeg/base/MediaEditingConfig$Companion$Builder;
    .locals 0

    if-lez p1, :cond_0

    .line 237
    iput p1, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->frameItemWidth:I

    :cond_0
    return-object p0
.end method

.method public final getAdditionalAudioInputList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->additionalAudioInputList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getAudioOnly()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->audioOnly:Z

    return v0
.end method

.method public final getDropNegativeTs()Z
    .locals 1

    .line 170
    iget-boolean v0, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->dropNegativeTs:Z

    return v0
.end method

.method public final getDuration()I
    .locals 1

    .line 154
    iget v0, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->duration:I

    return v0
.end method

.method public final getForceAudioCodecCopy()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->forceAudioCodecCopy:Z

    return v0
.end method

.method public final getForceVideoCodecCopy()Z
    .locals 1

    .line 163
    iget-boolean v0, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->forceVideoCodecCopy:Z

    return v0
.end method

.method public final getFrameItemHeight()I
    .locals 1

    .line 166
    iget v0, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->frameItemHeight:I

    return v0
.end method

.method public final getFrameItemWidth()I
    .locals 1

    .line 165
    iget v0, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->frameItemWidth:I

    return v0
.end method

.method public final getHorizontalFlip()Z
    .locals 1

    .line 167
    iget-boolean v0, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->horizontalFlip:Z

    return v0
.end method

.method public final getInputClip()Lcom/narvii/video/model/AVClipInfoPack;
    .locals 1

    .line 149
    iget-object v0, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->inputClip:Lcom/narvii/video/model/AVClipInfoPack;

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

    .line 151
    iget-object v0, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->inputClipList:Ljava/util/List;

    return-object v0
.end method

.method public final getKeepFixedDimension()Z
    .locals 1

    .line 160
    iget-boolean v0, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->keepFixedDimension:Z

    return v0
.end method

.method public final getKeyframeOnlyForScreenshot()Z
    .locals 1

    .line 159
    iget-boolean v0, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->keyframeOnlyForScreenshot:Z

    return v0
.end method

.method public final getNeedProgressCallback()Z
    .locals 1

    .line 169
    iget-boolean v0, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->needProgressCallback:Z

    return v0
.end method

.method public final getOutput()Ljava/io/File;
    .locals 1

    .line 150
    iget-object v0, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->output:Ljava/io/File;

    return-object v0
.end method

.method public final getScreenshotCount()I
    .locals 1

    .line 156
    iget v0, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->screenshotCount:I

    return v0
.end method

.method public final getScreenshotRate()F
    .locals 1

    .line 157
    iget v0, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->screenshotRate:F

    return v0
.end method

.method public final getScreenshotScaleRatio()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->screenshotScaleRatio:Ljava/lang/String;

    return-object v0
.end method

.method public final getStartTime()I
    .locals 1

    .line 155
    iget v0, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->startTime:I

    return v0
.end method

.method public final getType()I
    .locals 1

    .line 152
    iget v0, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->type:I

    return v0
.end method

.method public final getVerticalFlip()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->verticalFlip:Z

    return v0
.end method

.method public final getVideoOnly()Z
    .locals 1

    .line 161
    iget-boolean v0, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->videoOnly:Z

    return v0
.end method

.method public final horizontalFlip(Z)Lffmpeg/base/MediaEditingConfig$Companion$Builder;
    .locals 0

    .line 250
    iput-boolean p1, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->horizontalFlip:Z

    return-object p0
.end method

.method public final keepFixedDimension(Z)Lffmpeg/base/MediaEditingConfig$Companion$Builder;
    .locals 0

    .line 211
    iput-boolean p1, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->keepFixedDimension:Z

    return-object p0
.end method

.method public final keyframeOnlyForScreenshot(Z)Lffmpeg/base/MediaEditingConfig$Companion$Builder;
    .locals 0

    .line 206
    iput-boolean p1, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->keyframeOnlyForScreenshot:Z

    return-object p0
.end method

.method public final needProgressCallback(Z)Lffmpeg/base/MediaEditingConfig$Companion$Builder;
    .locals 0

    .line 260
    iput-boolean p1, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->needProgressCallback:Z

    return-object p0
.end method

.method public final screenshotCount(I)Lffmpeg/base/MediaEditingConfig$Companion$Builder;
    .locals 0

    .line 196
    iput p1, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->screenshotCount:I

    return-object p0
.end method

.method public final screenshotRate(F)Lffmpeg/base/MediaEditingConfig$Companion$Builder;
    .locals 0

    .line 201
    iput p1, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->screenshotRate:F

    return-object p0
.end method

.method public final screenshotScaleToSize(II)Lffmpeg/base/MediaEditingConfig$Companion$Builder;
    .locals 1

    if-gtz p1, :cond_0

    if-lez p2, :cond_1

    .line 190
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->screenshotScaleRatio:Ljava/lang/String;

    :cond_1
    return-object p0
.end method

.method public final startTime(I)Lffmpeg/base/MediaEditingConfig$Companion$Builder;
    .locals 0

    .line 184
    iput p1, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->startTime:I

    return-object p0
.end method

.method public final videoOnly(Z)Lffmpeg/base/MediaEditingConfig$Companion$Builder;
    .locals 0

    .line 216
    iput-boolean p1, p0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->videoOnly:Z

    return-object p0
.end method
