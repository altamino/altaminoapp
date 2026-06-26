.class final Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3;
.super Ljava/lang/Object;
.source "FrameRetrieverManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/services/FrameRetrieverManager;->retrieveFrame(Lcom/narvii/video/interfaces/IAVClipInfoPack;IZLcom/narvii/video/interfaces/IVideoServiceCallback;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $frameHeight:I

.field final synthetic $frameHunter:Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;

.field final synthetic $frameTimeInMs:I

.field final synthetic $frameWidth:I

.field final synthetic $input:Lcom/narvii/video/interfaces/IAVClipInfoPack;

.field final synthetic $prefix:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/video/services/FrameRetrieverManager;


# direct methods
.method constructor <init>(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/lang/String;ILcom/narvii/video/interfaces/IAVClipInfoPack;IILcom/narvii/video/services/FrameRetrieverManager$FrameHunter;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3;->this$0:Lcom/narvii/video/services/FrameRetrieverManager;

    iput-object p2, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3;->$prefix:Ljava/lang/String;

    iput p3, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3;->$frameTimeInMs:I

    iput-object p4, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3;->$input:Lcom/narvii/video/interfaces/IAVClipInfoPack;

    iput p5, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3;->$frameWidth:I

    iput p6, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3;->$frameHeight:I

    iput-object p7, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3;->$frameHunter:Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 358
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3;->this$0:Lcom/narvii/video/services/FrameRetrieverManager;

    iget-object v1, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3;->$prefix:Ljava/lang/String;

    iget v2, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3;->$frameTimeInMs:I

    invoke-static {v0}, Lcom/narvii/video/services/FrameRetrieverManager;->access$getFrameRetrieveIntervalInMs$p(Lcom/narvii/video/services/FrameRetrieverManager;)F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/narvii/video/services/FrameRetrieverManager;->access$isFrameProcessed(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/lang/String;IF)Z

    move-result v0

    if-nez v0, :cond_9

    .line 359
    iget v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3;->$frameTimeInMs:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3;->this$0:Lcom/narvii/video/services/FrameRetrieverManager;

    invoke-static {v1}, Lcom/narvii/video/services/FrameRetrieverManager;->access$getFrameSectionSize$p(Lcom/narvii/video/services/FrameRetrieverManager;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3;->this$0:Lcom/narvii/video/services/FrameRetrieverManager;

    invoke-static {v2}, Lcom/narvii/video/services/FrameRetrieverManager;->access$getFrameRetrieveIntervalInMs$p(Lcom/narvii/video/services/FrameRetrieverManager;)F

    move-result v2

    mul-float v1, v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3;->$prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 361
    iget-object v2, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3;->this$0:Lcom/narvii/video/services/FrameRetrieverManager;

    invoke-static {v2}, Lcom/narvii/video/services/FrameRetrieverManager;->access$getFrameSectionLoadFlags$p(Lcom/narvii/video/services/FrameRetrieverManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object v2, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3;->this$0:Lcom/narvii/video/services/FrameRetrieverManager;

    invoke-static {v2}, Lcom/narvii/video/services/FrameRetrieverManager;->access$tryTrimCachedFrames(Lcom/narvii/video/services/FrameRetrieverManager;)V

    .line 363
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3;->this$0:Lcom/narvii/video/services/FrameRetrieverManager;

    invoke-static {v4}, Lcom/narvii/video/services/FrameRetrieverManager;->access$getOutputFolder$p(Lcom/narvii/video/services/FrameRetrieverManager;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 364
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 365
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 368
    :cond_0
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3;->this$0:Lcom/narvii/video/services/FrameRetrieverManager;

    invoke-static {v1}, Lcom/narvii/video/services/FrameRetrieverManager;->access$isForAudioWave$p(Lcom/narvii/video/services/FrameRetrieverManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "wave_tmp.jpg"

    goto :goto_0

    .line 369
    :cond_1
    iget-object v1, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3;->this$0:Lcom/narvii/video/services/FrameRetrieverManager;

    invoke-static {v1}, Lcom/narvii/video/services/FrameRetrieverManager;->access$isForAudioWave$p(Lcom/narvii/video/services/FrameRetrieverManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "wave.jpg"

    goto :goto_0

    :cond_2
    const-string v1, "frame_%05d.jpg"

    .line 372
    :goto_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 373
    iget-object v1, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3;->this$0:Lcom/narvii/video/services/FrameRetrieverManager;

    invoke-static {v1}, Lcom/narvii/video/services/FrameRetrieverManager;->access$isForAudioWave$p(Lcom/narvii/video/services/FrameRetrieverManager;)Z

    move-result v1

    const-string v5, "null cannot be cast to non-null type com.narvii.video.model.AVClipInfoPack"

    if-eqz v1, :cond_4

    .line 374
    new-instance v1, Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    iget-object v3, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3;->$input:Lcom/narvii/video/interfaces/IAVClipInfoPack;

    if-eqz v3, :cond_3

    check-cast v3, Lcom/narvii/video/model/AVClipInfoPack;

    const/16 v5, 0x40

    invoke-direct {v1, v3, v4, v5}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;-><init>(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;I)V

    iget-object v3, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3;->this$0:Lcom/narvii/video/services/FrameRetrieverManager;

    invoke-static {v3}, Lcom/narvii/video/services/FrameRetrieverManager;->access$getFrameRetrieveIntervalInMs$p(Lcom/narvii/video/services/FrameRetrieverManager;)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->duration(I)Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    move-result-object v1

    .line 375
    iget v3, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3;->$frameWidth:I

    invoke-virtual {v1, v3}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->frameItemWidth(I)Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    move-result-object v1

    iget v3, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3;->$frameHeight:I

    invoke-virtual {v1, v3}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->frameItemHeight(I)Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    move-result-object v1

    goto :goto_2

    .line 374
    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_4
    new-instance v1, Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    iget-object v6, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3;->$input:Lcom/narvii/video/interfaces/IAVClipInfoPack;

    if-eqz v6, :cond_8

    check-cast v6, Lcom/narvii/video/model/AVClipInfoPack;

    const/16 v5, 0x10

    invoke-direct {v1, v6, v4, v5}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;-><init>(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;I)V

    iget-object v5, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3;->this$0:Lcom/narvii/video/services/FrameRetrieverManager;

    invoke-static {v5}, Lcom/narvii/video/services/FrameRetrieverManager;->access$getKeyframeOnly$p(Lcom/narvii/video/services/FrameRetrieverManager;)Z

    move-result v5

    invoke-virtual {v1, v5}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->keyframeOnlyForScreenshot(Z)Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    move-result-object v1

    .line 378
    iget-object v5, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3;->this$0:Lcom/narvii/video/services/FrameRetrieverManager;

    invoke-static {v5}, Lcom/narvii/video/services/FrameRetrieverManager;->access$getFrameSectionSize$p(Lcom/narvii/video/services/FrameRetrieverManager;)I

    move-result v5

    invoke-virtual {v1, v5}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->screenshotCount(I)Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    move-result-object v1

    iget-object v5, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3;->this$0:Lcom/narvii/video/services/FrameRetrieverManager;

    invoke-static {v5}, Lcom/narvii/video/services/FrameRetrieverManager;->access$getFrameSectionSize$p(Lcom/narvii/video/services/FrameRetrieverManager;)I

    move-result v5

    if-ne v5, v3, :cond_5

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_5
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 381
    iget-object v5, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3;->this$0:Lcom/narvii/video/services/FrameRetrieverManager;

    invoke-static {v5}, Lcom/narvii/video/services/FrameRetrieverManager;->access$getFrameRetrieveIntervalInMs$p(Lcom/narvii/video/services/FrameRetrieverManager;)F

    move-result v5

    div-float/2addr v3, v5

    .line 378
    :goto_1
    invoke-virtual {v1, v3}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->screenshotRate(F)Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    move-result-object v1

    :goto_2
    if-lez v0, :cond_6

    .line 385
    iget v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3;->$frameTimeInMs:I

    invoke-virtual {v1, v0}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->startTime(I)Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    .line 387
    :cond_6
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3;->this$0:Lcom/narvii/video/services/FrameRetrieverManager;

    invoke-static {v0}, Lcom/narvii/video/services/FrameRetrieverManager;->access$isForAudioWave$p(Lcom/narvii/video/services/FrameRetrieverManager;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 388
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3;->this$0:Lcom/narvii/video/services/FrameRetrieverManager;

    invoke-static {v0}, Lcom/narvii/video/services/FrameRetrieverManager;->access$getMediaRetriever$p(Lcom/narvii/video/services/FrameRetrieverManager;)Lffmpeg/base/IEditor;

    move-result-object v0

    invoke-virtual {v1}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->build()Lffmpeg/base/MediaEditingConfig;

    move-result-object v1

    iget-object v3, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3;->this$0:Lcom/narvii/video/services/FrameRetrieverManager;

    invoke-static {v3}, Lcom/narvii/video/services/FrameRetrieverManager;->access$getAudioWaveExecutor$p(Lcom/narvii/video/services/FrameRetrieverManager;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    new-instance v5, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3$1;

    invoke-direct {v5, p0, v4, v2}, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3$1;-><init>(Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3;Ljava/io/File;Ljava/io/File;)V

    invoke-interface {v0, v1, v3, v5}, Lffmpeg/base/IEditor;->execute(Lffmpeg/base/MediaEditingConfig;Ljava/util/concurrent/ExecutorService;Lffmpeg/base/IEditorExecuteCallback;)V

    goto :goto_3

    .line 399
    :cond_7
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3;->this$0:Lcom/narvii/video/services/FrameRetrieverManager;

    invoke-static {v0}, Lcom/narvii/video/services/FrameRetrieverManager;->access$getMediaRetriever$p(Lcom/narvii/video/services/FrameRetrieverManager;)Lffmpeg/base/IEditor;

    move-result-object v0

    invoke-virtual {v1}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->build()Lffmpeg/base/MediaEditingConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3;->this$0:Lcom/narvii/video/services/FrameRetrieverManager;

    invoke-static {v2}, Lcom/narvii/video/services/FrameRetrieverManager;->access$getAudioWaveExecutor$p(Lcom/narvii/video/services/FrameRetrieverManager;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lffmpeg/base/IEditor;->execute(Lffmpeg/base/MediaEditingConfig;Ljava/util/concurrent/ExecutorService;Lffmpeg/base/IEditorExecuteCallback;)V

    goto :goto_3

    .line 377
    :cond_8
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3;->$frameHunter:Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;

    invoke-virtual {v0}, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->run()V

    return-void
.end method
