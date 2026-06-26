.class public final Lcom/narvii/video/services/SceneMediaProcessor;
.super Ljava/lang/Object;
.source "SceneMediaProcessor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSceneMediaProcessor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SceneMediaProcessor.kt\ncom/narvii/video/services/SceneMediaProcessor\n*L\n1#1,808:1\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

.field private static completedTaskCount:I

.field private static final inProcessingEditingConfigMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lffmpeg/base/MediaEditingConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static inProcessingGlobalMusicMixingTask:Lffmpeg/base/MediaEditingConfig;

.field private static final processListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final progressMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static sceneInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/scene/model/SceneInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static storyProcessFailureFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/narvii/video/services/SceneMediaProcessor;

    invoke-direct {v0}, Lcom/narvii/video/services/SceneMediaProcessor;-><init>()V

    sput-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->progressMap:Ljava/util/HashMap;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->processListenerMap:Ljava/util/HashMap;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->inProcessingEditingConfigMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$copySceneOrgFileToOutputFile(Lcom/narvii/video/services/SceneMediaProcessor;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/video/services/SceneMediaProcessor;->copySceneOrgFileToOutputFile(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V

    return-void
.end method

.method public static final synthetic access$getCompletedTaskCount$p(Lcom/narvii/video/services/SceneMediaProcessor;)I
    .locals 0

    .line 39
    sget p0, Lcom/narvii/video/services/SceneMediaProcessor;->completedTaskCount:I

    return p0
.end method

.method public static final synthetic access$getInProcessingEditingConfigMap$p(Lcom/narvii/video/services/SceneMediaProcessor;)Ljava/util/HashMap;
    .locals 0

    .line 39
    sget-object p0, Lcom/narvii/video/services/SceneMediaProcessor;->inProcessingEditingConfigMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$getInProcessingGlobalMusicMixingTask$p(Lcom/narvii/video/services/SceneMediaProcessor;)Lffmpeg/base/MediaEditingConfig;
    .locals 0

    .line 39
    sget-object p0, Lcom/narvii/video/services/SceneMediaProcessor;->inProcessingGlobalMusicMixingTask:Lffmpeg/base/MediaEditingConfig;

    return-object p0
.end method

.method public static final synthetic access$getPathIndexInSceneList(Lcom/narvii/video/services/SceneMediaProcessor;Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/narvii/video/services/SceneMediaProcessor;->getPathIndexInSceneList(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getProcessListenerMap$p(Lcom/narvii/video/services/SceneMediaProcessor;)Ljava/util/HashMap;
    .locals 0

    .line 39
    sget-object p0, Lcom/narvii/video/services/SceneMediaProcessor;->processListenerMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$getProgressMap$p(Lcom/narvii/video/services/SceneMediaProcessor;)Ljava/util/HashMap;
    .locals 0

    .line 39
    sget-object p0, Lcom/narvii/video/services/SceneMediaProcessor;->progressMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$getSceneInfoList$p(Lcom/narvii/video/services/SceneMediaProcessor;)Ljava/util/ArrayList;
    .locals 0

    .line 39
    sget-object p0, Lcom/narvii/video/services/SceneMediaProcessor;->sceneInfoList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getStoryProcessFailureFlag$p(Lcom/narvii/video/services/SceneMediaProcessor;)Z
    .locals 0

    .line 39
    sget-boolean p0, Lcom/narvii/video/services/SceneMediaProcessor;->storyProcessFailureFlag:Z

    return p0
.end method

.method public static final synthetic access$mixBGM_stage2(Lcom/narvii/video/services/SceneMediaProcessor;Ljava/util/ArrayList;Ljava/io/File;Ljava/util/ArrayList;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V
    .locals 0

    .line 39
    invoke-direct/range {p0 .. p5}, Lcom/narvii/video/services/SceneMediaProcessor;->mixBGM_stage2(Ljava/util/ArrayList;Ljava/io/File;Ljava/util/ArrayList;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V

    return-void
.end method

.method public static final synthetic access$setCompletedTaskCount$p(Lcom/narvii/video/services/SceneMediaProcessor;I)V
    .locals 0

    .line 39
    sput p1, Lcom/narvii/video/services/SceneMediaProcessor;->completedTaskCount:I

    return-void
.end method

.method public static final synthetic access$setInProcessingGlobalMusicMixingTask$p(Lcom/narvii/video/services/SceneMediaProcessor;Lffmpeg/base/MediaEditingConfig;)V
    .locals 0

    .line 39
    sput-object p1, Lcom/narvii/video/services/SceneMediaProcessor;->inProcessingGlobalMusicMixingTask:Lffmpeg/base/MediaEditingConfig;

    return-void
.end method

.method public static final synthetic access$setSceneInfoList$p(Lcom/narvii/video/services/SceneMediaProcessor;Ljava/util/ArrayList;)V
    .locals 0

    .line 39
    sput-object p1, Lcom/narvii/video/services/SceneMediaProcessor;->sceneInfoList:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$setStoryProcessFailureFlag$p(Lcom/narvii/video/services/SceneMediaProcessor;Z)V
    .locals 0

    .line 39
    sput-boolean p1, Lcom/narvii/video/services/SceneMediaProcessor;->storyProcessFailureFlag:Z

    return-void
.end method

.method public static final synthetic access$stepIntoBGMMixing(Lcom/narvii/video/services/SceneMediaProcessor;Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Ljava/util/ArrayList;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V
    .locals 0

    .line 39
    invoke-direct/range {p0 .. p5}, Lcom/narvii/video/services/SceneMediaProcessor;->stepIntoBGMMixing(Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Ljava/util/ArrayList;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V

    return-void
.end method

.method private final addMediaProcessListener(Ljava/lang/String;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V
    .locals 1

    .line 71
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->processListenerMap:Ljava/util/HashMap;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final copySceneOrgFileToOutputFile(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/scene/model/SceneInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;",
            ")V"
        }
    .end annotation

    .line 564
    new-instance v0, Lcom/narvii/video/services/SceneMediaProcessor$copySceneOrgFileToOutputFile$task$1;

    invoke-direct {v0, p1, p2, p3}, Lcom/narvii/video/services/SceneMediaProcessor$copySceneOrgFileToOutputFile$task$1;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V

    .line 575
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 576
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static synthetic fillVideoMetadata$default(Lcom/narvii/video/services/SceneMediaProcessor;Lcom/narvii/video/model/AVClipInfoPack;ZLcom/narvii/video/model/StreamInfo;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 241
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/video/services/SceneMediaProcessor;->fillVideoMetadata(Lcom/narvii/video/model/AVClipInfoPack;ZLcom/narvii/video/model/StreamInfo;)V

    return-void
.end method

.method private final getPathIndexInSceneList(Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/scene/model/SceneInfo;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 749
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 750
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/scene/model/SceneInfo;

    iget-object v2, v2, Lcom/narvii/scene/model/SceneInfo;->outputUrl:Ljava/lang/String;

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public static synthetic getPreviewMedia$default(Lcom/narvii/video/services/SceneMediaProcessor;Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ILjava/lang/Object;)Lffmpeg/base/MediaEditingConfig;
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_1

    move-object v6, v0

    goto :goto_1

    :cond_1
    move-object v6, p5

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    .line 175
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/video/services/SceneMediaProcessor;->getPreviewMedia(Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)Lffmpeg/base/MediaEditingConfig;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getSceneCoverImage$default(Lcom/narvii/video/services/SceneMediaProcessor;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ILjava/lang/Object;)Lffmpeg/base/MediaEditingConfig;
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 93
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/video/services/SceneMediaProcessor;->getSceneCoverImage(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)Lffmpeg/base/MediaEditingConfig;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getSceneCoverImage$default(Lcom/narvii/video/services/SceneMediaProcessor;Lcom/narvii/scene/model/SceneInfo;Ljava/io/File;Lcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 121
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/narvii/video/services/SceneMediaProcessor;->getSceneCoverImage(Lcom/narvii/scene/model/SceneInfo;Ljava/io/File;Lcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V

    return-void
.end method

.method public static synthetic getStoryCoverImage$default(Lcom/narvii/video/services/SceneMediaProcessor;Lcom/narvii/scene/model/SceneDraft;Ljava/io/File;ILcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 150
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/video/services/SceneMediaProcessor;->getStoryCoverImage(Lcom/narvii/scene/model/SceneDraft;Ljava/io/File;ILcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V

    return-void
.end method

.method private final mixBGM_stage1(Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Ljava/util/ArrayList;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/narvii/video/services/VideoManager;",
            "Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;",
            ")V"
        }
    .end annotation

    .line 600
    new-instance v2, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 601
    new-instance v7, Ljava/io/File;

    invoke-virtual {p4}, Lcom/narvii/video/services/VideoManager;->getTmpFileFolder()Ljava/io/File;

    move-result-object v0

    const-string v1, "mixed_audio_tmp.mp4"

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 602
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 604
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/video/model/AVClipInfoPack;

    .line 605
    invoke-virtual {v3}, Lcom/narvii/video/model/AVClipInfoPack;->copy()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v3

    const-string v4, "media.copy()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 606
    iput v1, v3, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 607
    invoke-virtual {v3}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    move-result v4

    add-int/2addr v1, v4

    const/high16 v4, 0x3f800000    # 1.0f

    .line 608
    iget v5, p2, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    sub-float/2addr v4, v5

    iput v4, v3, Lcom/narvii/video/model/AVClipInfoPack;->trackVolume:F

    .line 609
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_1

    .line 611
    iget v0, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-interface {p5, v0}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;->onProgress(F)V

    .line 612
    :cond_1
    new-instance v9, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage1$1;

    move-object v0, v9

    move-object v1, p5

    move-object v3, v7

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage1$1;-><init>(Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;Lkotlin/jvm/internal/Ref$FloatRef;Ljava/io/File;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/narvii/video/services/VideoManager;)V

    invoke-virtual {p4, v8, p2, v7, v9}, Lcom/narvii/video/services/VideoManager;->mixBGM_Stage1(Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;Lcom/narvii/video/interfaces/IVideoServiceCallback;)Lffmpeg/base/MediaEditingConfig;

    move-result-object p1

    sput-object p1, Lcom/narvii/video/services/SceneMediaProcessor;->inProcessingGlobalMusicMixingTask:Lffmpeg/base/MediaEditingConfig;

    return-void
.end method

.method static synthetic mixBGM_stage1$default(Lcom/narvii/video/services/SceneMediaProcessor;Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Ljava/util/ArrayList;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 599
    invoke-direct/range {v0 .. v5}, Lcom/narvii/video/services/SceneMediaProcessor;->mixBGM_stage1(Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Ljava/util/ArrayList;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V

    return-void
.end method

.method private final mixBGM_stage2(Ljava/util/ArrayList;Ljava/io/File;Ljava/util/ArrayList;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;",
            "Ljava/io/File;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/narvii/video/services/VideoManager;",
            "Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;",
            ")V"
        }
    .end annotation

    .line 648
    new-instance v10, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v0, 0x0

    iput v0, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 649
    new-instance v11, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean v0, v11, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 650
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 652
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v13, :cond_2

    move-object/from16 v15, p1

    .line 653
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "sceneMediaList[index]"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v16, v1

    check-cast v16, Lcom/narvii/video/model/AVClipInfoPack;

    .line 654
    new-instance v9, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-direct {v9}, Lcom/narvii/video/model/AVClipInfoPack;-><init>()V

    .line 655
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 656
    iput v0, v9, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 657
    invoke-virtual/range {v16 .. v16}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, v9, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 658
    invoke-virtual/range {v16 .. v16}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    move-result v1

    add-int v17, v0, v1

    .line 659
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->sceneInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "sceneInfoList!![index]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v0

    check-cast v8, Lcom/narvii/scene/model/SceneInfo;

    .line 660
    new-instance v7, Ljava/io/File;

    move-object/from16 v6, p3

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v18, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;

    move-object/from16 v0, v18

    move-object v1, v11

    move-object v2, v12

    move-object v3, v8

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v10

    move-object/from16 v19, v7

    move-object/from16 v7, p1

    move-object/from16 v20, v10

    move-object v10, v8

    move-object/from16 v8, p3

    move-object/from16 v21, v9

    move-object/from16 v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/narvii/video/services/SceneMediaProcessor$mixBGM_stage2$task$1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/HashMap;Lcom/narvii/scene/model/SceneInfo;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;Lkotlin/jvm/internal/Ref$IntRef;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/io/File;)V

    move-object/from16 v1, p4

    move-object/from16 v2, v16

    move-object/from16 v3, v21

    move-object/from16 v4, v19

    move v5, v14

    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Lcom/narvii/video/services/VideoManager;->mixBGM_Stage2(Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;ILcom/narvii/video/interfaces/IVideoServiceCallback;)Lffmpeg/base/MediaEditingConfig;

    move-result-object v0

    .line 728
    sget-object v1, Lcom/narvii/video/services/SceneMediaProcessor;->sceneInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 729
    sget-object v1, Lcom/narvii/video/services/SceneMediaProcessor;->inProcessingEditingConfigMap:Ljava/util/HashMap;

    iget-object v2, v10, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    const-string v3, "sceneInfo.id"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v14, v14, 0x1

    move/from16 v0, v17

    move-object/from16 v10, v20

    goto/16 :goto_0

    .line 659
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0

    :cond_2
    return-void
.end method

.method static synthetic mixBGM_stage2$default(Lcom/narvii/video/services/SceneMediaProcessor;Ljava/util/ArrayList;Ljava/io/File;Ljava/util/ArrayList;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 646
    invoke-direct/range {v0 .. v5}, Lcom/narvii/video/services/SceneMediaProcessor;->mixBGM_stage2(Ljava/util/ArrayList;Ljava/io/File;Ljava/util/ArrayList;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V

    return-void
.end method

.method private final obtainProcessListenerImpl(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/scene/model/SceneInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            "Lcom/narvii/video/services/VideoManager;",
            "Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;",
            ")",
            "Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;"
        }
    .end annotation

    .line 758
    new-instance v6, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/narvii/video/services/SceneMediaProcessor$obtainProcessListenerImpl$1;-><init>(Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Ljava/util/ArrayList;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;Lcom/narvii/video/services/VideoManager;)V

    return-object v6
.end method

.method public static synthetic processScene$default(Lcom/narvii/video/services/SceneMediaProcessor;Lcom/narvii/scene/model/SceneInfo;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ZILjava/lang/Object;)Lffmpeg/base/MediaEditingConfig;
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 326
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/narvii/video/services/SceneMediaProcessor;->processScene(Lcom/narvii/scene/model/SceneInfo;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;Z)Lffmpeg/base/MediaEditingConfig;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic processScene$default(Lcom/narvii/video/services/SceneMediaProcessor;Lcom/narvii/app/NVContext;Lcom/narvii/scene/model/SceneInfo;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ZILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    and-int/lit8 p5, p7, 0x20

    if-eqz p5, :cond_1

    const/4 p6, 0x0

    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    move v6, p6

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 479
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/video/services/SceneMediaProcessor;->processScene(Lcom/narvii/app/NVContext;Lcom/narvii/scene/model/SceneInfo;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;Z)V

    return-void
.end method

.method public static synthetic processScene$default(Lcom/narvii/video/services/SceneMediaProcessor;Lcom/narvii/scene/model/SceneInfo;Lcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 413
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/narvii/video/services/SceneMediaProcessor;->processScene(Lcom/narvii/scene/model/SceneInfo;Lcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;Z)V

    return-void
.end method

.method public static synthetic processStory$default(Lcom/narvii/video/services/SceneMediaProcessor;Lcom/narvii/app/NVContext;Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ILjava/lang/Object;)Ljava/util/ArrayList;
    .locals 9

    and-int/lit8 v0, p7, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object v7, p5

    :goto_0
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_1

    move-object v8, v1

    goto :goto_1

    :cond_1
    move-object v8, p6

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 509
    invoke-virtual/range {v2 .. v8}, Lcom/narvii/video/services/SceneMediaProcessor;->processStory(Lcom/narvii/app/NVContext;Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private final removeMediaProcessListener(Ljava/lang/String;)V
    .locals 1

    .line 75
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->processListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final stepIntoBGMMixing(Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Ljava/util/ArrayList;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/scene/model/SceneInfo;",
            ">;",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/narvii/video/services/VideoManager;",
            "Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;",
            ")V"
        }
    .end annotation

    .line 584
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 585
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/scene/model/SceneInfo;

    .line 586
    new-instance v3, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-direct {v3}, Lcom/narvii/video/model/AVClipInfoPack;-><init>()V

    const-string v4, "scene"

    .line 587
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/narvii/video/services/SceneMediaProcessorKt;->getOrgFile(Lcom/narvii/scene/model/SceneInfo;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 588
    iget-object v0, v3, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    const-string v4, "clip.inputPath"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4, v0}, Lcom/narvii/video/services/VideoManager;->fetchStreamInfoSync(Ljava/lang/String;)Lcom/narvii/video/model/StreamInfo;

    move-result-object v0

    .line 589
    iget v4, v0, Lcom/narvii/video/model/StreamInfo;->durationInMs:I

    iput v4, v3, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 590
    iput v4, v3, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    .line 591
    iget-object v4, v0, Lcom/narvii/video/model/StreamInfo;->aCodecType:Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    iput-boolean v4, v3, Lcom/narvii/video/model/AVClipInfoPack;->hasAudioTrack:Z

    .line 592
    iget-object v0, v0, Lcom/narvii/video/model/StreamInfo;->vCodecType:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, v3, Lcom/narvii/video/model/AVClipInfoPack;->hasVideoTrack:Z

    .line 593
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 595
    :cond_2
    iput-boolean v2, p2, Lcom/narvii/video/model/AVClipInfoPack;->hasAudioTrack:Z

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 596
    invoke-direct/range {v0 .. v5}, Lcom/narvii/video/services/SceneMediaProcessor;->mixBGM_stage1(Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Ljava/util/ArrayList;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V

    return-void
.end method

.method static synthetic stepIntoBGMMixing$default(Lcom/narvii/video/services/SceneMediaProcessor;Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Ljava/util/ArrayList;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 579
    invoke-direct/range {v0 .. v5}, Lcom/narvii/video/services/SceneMediaProcessor;->stepIntoBGMMixing(Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Ljava/util/ArrayList;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V

    return-void
.end method


# virtual methods
.method public final clearListeners()V
    .locals 1

    .line 323
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->processListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final fillAudioClipMetadata(Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/media/online/audio/model/Sound;Lcom/narvii/media/online/audio/model/AssetCategory;)Lcom/narvii/video/model/AVClipInfoPack;
    .locals 1

    const-string v0, "audioClip"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 232
    iget-object v0, p2, Lcom/narvii/media/online/audio/model/Sound;->id:Ljava/lang/String;

    iput-object v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->musicId:Ljava/lang/String;

    .line 233
    iget p2, p2, Lcom/narvii/media/online/audio/model/Sound;->type:I

    iput p2, p1, Lcom/narvii/video/model/AVClipInfoPack;->musicType:I

    :cond_0
    if-eqz p3, :cond_1

    .line 236
    iget-object p2, p3, Lcom/narvii/media/online/audio/model/AssetCategory;->id:Ljava/lang/String;

    iput-object p2, p1, Lcom/narvii/video/model/AVClipInfoPack;->categoryId:Ljava/lang/String;

    :cond_1
    return-object p1
.end method

.method public final fillVideoMetadata(Lcom/narvii/video/model/AVClipInfoPack;ZLcom/narvii/video/model/StreamInfo;)V
    .locals 12

    const-string v0, "clip"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x500

    const/16 v1, 0x2d0

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    if-eqz p2, :cond_0

    .line 244
    iput v1, p1, Lcom/narvii/video/model/AVClipInfoPack;->rawVideoWidth:I

    .line 245
    iput v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->rawVideoHeight:I

    const/16 p2, 0x14

    .line 246
    iput p2, p1, Lcom/narvii/video/model/AVClipInfoPack;->frameRate:I

    const/16 p2, 0x3e8

    .line 247
    iput p2, p1, Lcom/narvii/video/model/AVClipInfoPack;->bitRate:I

    .line 248
    iget-object p2, p1, Lcom/narvii/video/model/AVClipInfoPack;->targetRectInfo:[F

    aput v5, p2, v4

    .line 249
    aput v5, p2, v3

    .line 250
    aput v6, p2, v7

    .line 251
    aput v6, p2, v2

    goto/16 :goto_6

    :cond_0
    if-eqz p3, :cond_5

    .line 254
    iget p2, p3, Lcom/narvii/video/model/StreamInfo;->rotate:I

    const/16 v8, 0x10e

    const/16 v9, 0x5a

    if-eq p2, v9, :cond_2

    if-ne p2, v8, :cond_1

    goto :goto_0

    :cond_1
    iget p2, p3, Lcom/narvii/video/model/StreamInfo;->width:I

    goto :goto_1

    :cond_2
    :goto_0
    iget p2, p3, Lcom/narvii/video/model/StreamInfo;->height:I

    :goto_1
    iput p2, p1, Lcom/narvii/video/model/AVClipInfoPack;->rawVideoWidth:I

    .line 255
    iget p2, p3, Lcom/narvii/video/model/StreamInfo;->rotate:I

    if-eq p2, v9, :cond_4

    if-ne p2, v8, :cond_3

    goto :goto_2

    :cond_3
    iget p2, p3, Lcom/narvii/video/model/StreamInfo;->height:I

    goto :goto_3

    :cond_4
    :goto_2
    iget p2, p3, Lcom/narvii/video/model/StreamInfo;->width:I

    :goto_3
    iput p2, p1, Lcom/narvii/video/model/AVClipInfoPack;->rawVideoHeight:I

    .line 256
    iget p2, p3, Lcom/narvii/video/model/StreamInfo;->fps:I

    iput p2, p1, Lcom/narvii/video/model/AVClipInfoPack;->frameRate:I

    .line 257
    iget p2, p3, Lcom/narvii/video/model/StreamInfo;->bitrateInKbps:I

    iput p2, p1, Lcom/narvii/video/model/AVClipInfoPack;->bitRate:I

    goto :goto_6

    .line 260
    :cond_5
    invoke-virtual {p1}, Lcom/narvii/video/model/AVClipInfoPack;->getRotateAngle()I

    move-result p2

    const/high16 p3, 0x3f100000    # 0.5625f

    if-eqz p2, :cond_7

    const/16 v8, 0xb4

    if-ne p2, v8, :cond_6

    goto :goto_4

    .line 265
    :cond_6
    iget p2, p1, Lcom/narvii/video/model/AVClipInfoPack;->rawVideoHeight:I

    int-to-float p2, p2

    iget v8, p1, Lcom/narvii/video/model/AVClipInfoPack;->rawVideoWidth:I

    goto :goto_5

    .line 263
    :cond_7
    :goto_4
    iget p2, p1, Lcom/narvii/video/model/AVClipInfoPack;->rawVideoWidth:I

    int-to-float p2, p2

    iget v8, p1, Lcom/narvii/video/model/AVClipInfoPack;->rawVideoHeight:I

    :goto_5
    int-to-float v8, v8

    div-float/2addr p2, v8

    cmpg-float v8, p2, p3

    if-gez v8, :cond_8

    int-to-float p3, v0

    mul-float p2, p2, p3

    float-to-int p2, p2

    rsub-int p3, p2, 0x2d0

    .line 270
    div-int/2addr p3, v7

    .line 271
    iget-object v8, p1, Lcom/narvii/video/model/AVClipInfoPack;->targetRectInfo:[F

    int-to-float p3, p3

    int-to-float v9, v1

    div-float/2addr p3, v9

    aput p3, v8, v4

    .line 272
    aput v5, v8, v3

    int-to-float p2, p2

    div-float/2addr p2, v9

    .line 273
    aput p2, v8, v7

    .line 274
    aput v6, v8, v2

    goto :goto_6

    :cond_8
    cmpl-float p3, p2, p3

    if-lez p3, :cond_9

    int-to-float p3, v1

    div-float/2addr p3, p2

    float-to-int p2, p3

    rsub-int p3, p2, 0x500

    .line 278
    div-int/2addr p3, v7

    .line 279
    iget-object v8, p1, Lcom/narvii/video/model/AVClipInfoPack;->targetRectInfo:[F

    aput v5, v8, v4

    int-to-float p3, p3

    int-to-float v9, v0

    div-float/2addr p3, v9

    .line 280
    aput p3, v8, v3

    .line 281
    aput v6, v8, v7

    int-to-float p2, p2

    div-float/2addr p2, v9

    .line 282
    aput p2, v8, v2

    .line 286
    :cond_9
    :goto_6
    iget-object p2, p1, Lcom/narvii/video/model/AVClipInfoPack;->croppingData:Lcom/narvii/cropping/CroppingData;

    if-eqz p2, :cond_c

    .line 287
    invoke-virtual {p2}, Lcom/narvii/cropping/CroppingData;->isDynamic()Z

    move-result p3

    if-eqz p3, :cond_a

    .line 288
    iget-object p3, p1, Lcom/narvii/video/model/AVClipInfoPack;->targetRectInfo:[F

    aput v5, p3, v4

    .line 289
    aput v5, p3, v3

    .line 290
    aput v6, p3, v7

    .line 291
    aput v6, p3, v2

    :cond_a
    int-to-float p3, v1

    .line 293
    iget-object v1, p1, Lcom/narvii/video/model/AVClipInfoPack;->targetRectInfo:[F

    aget v8, v1, v7

    mul-float v8, v8, p3

    int-to-float v0, v0

    .line 294
    aget v9, v1, v2

    mul-float v9, v9, v0

    .line 295
    aget v10, v1, v4

    mul-float v10, v10, p3

    .line 296
    aget v1, v1, v3

    mul-float v1, v1, v0

    .line 297
    iget v11, p2, Lcom/narvii/cropping/CroppingData;->scale:F

    cmpl-float v5, v11, v5

    if-lez v5, :cond_b

    sub-float v5, v11, v6

    mul-float v5, v5, v8

    sub-float/2addr v11, v6

    mul-float v11, v11, v9

    add-float/2addr v8, v5

    add-float/2addr v9, v11

    int-to-float v6, v7

    div-float/2addr v5, v6

    sub-float/2addr v10, v5

    div-float/2addr v11, v6

    sub-float/2addr v1, v11

    .line 305
    :cond_b
    iget v5, p2, Lcom/narvii/cropping/CroppingData;->transformXRatio:F

    mul-float v5, v5, p3

    add-float/2addr v10, v5

    .line 306
    iget p2, p2, Lcom/narvii/cropping/CroppingData;->transformYRatio:F

    neg-float p2, p2

    mul-float p2, p2, v0

    add-float/2addr v1, p2

    .line 307
    iget-object p1, p1, Lcom/narvii/video/model/AVClipInfoPack;->targetRectInfo:[F

    div-float/2addr v10, p3

    aput v10, p1, v4

    div-float/2addr v1, v0

    .line 308
    aput v1, p1, v3

    div-float/2addr v8, p3

    .line 309
    aput v8, p1, v7

    div-float/2addr v9, v0

    .line 310
    aput v9, p1, v2

    :cond_c
    return-void
.end method

.method public final getPreviewMedia(Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)Lffmpeg/base/MediaEditingConfig;
    .locals 9

    const-string v0, "videoClip"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputFile"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-static {p3}, Lcom/narvii/util/Utils;->deleteDir(Ljava/io/File;)Z

    .line 179
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_4

    .line 181
    invoke-virtual {p2}, Lcom/narvii/video/model/AVClipInfoPack;->copy()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v0

    const-string v1, "it.copy()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Lcom/narvii/video/model/AVClipInfoPack;->getInputFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 183
    invoke-virtual {p2}, Lcom/narvii/video/model/AVClipInfoPack;->getInputFile()Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string v1, "it.inputFile!!"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    const-string v1, "it.inputFile!!.absolutePath"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Lcom/narvii/video/services/VideoManager;->fetchStreamInfoSync(Ljava/lang/String;)Lcom/narvii/video/model/StreamInfo;

    move-result-object p2

    .line 184
    iget-object p2, p2, Lcom/narvii/video/model/StreamInfo;->aCodecType:Ljava/lang/String;

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, v0, Lcom/narvii/video/model/AVClipInfoPack;->hasAudioTrack:Z

    goto :goto_1

    .line 183
    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1

    .line 186
    :cond_3
    :goto_1
    iget p2, v0, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    iget v1, p1, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    add-int/2addr p2, v1

    iput p2, v0, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 187
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const/4 v5, 0x0

    .line 189
    new-instance v6, Lcom/narvii/video/services/SceneMediaProcessor$getPreviewMedia$2;

    invoke-direct {v6, p5}, Lcom/narvii/video/services/SceneMediaProcessor$getPreviewMedia$2;-><init>(Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v1, p4

    move-object v2, p1

    move-object v4, p3

    invoke-static/range {v1 .. v8}, Lcom/narvii/video/services/VideoManager;->encodeScenePreview$default(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/model/AVClipInfoPack;Ljava/util/ArrayList;Ljava/io/File;ZLcom/narvii/video/interfaces/IVideoServiceCallback;ILjava/lang/Object;)Lffmpeg/base/MediaEditingConfig;

    move-result-object p1

    return-object p1
.end method

.method public final getSceneCoverImage(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)Lffmpeg/base/MediaEditingConfig;
    .locals 12

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v0, p5

    const-string v3, "videoClip"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "outputFile"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "videoManager"

    move-object v4, p3

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Lcom/narvii/video/model/AVClipInfoPack;->getInputFile()Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 95
    invoke-static {v0, v2, v3, v1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener$DefaultImpls;->onFailed$default(Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ZILjava/lang/Object;)V

    :cond_0
    return-object v1

    .line 98
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 99
    invoke-static {p2}, Lcom/narvii/util/Utils;->deleteDir(Ljava/io/File;)Z

    .line 101
    :cond_2
    iget v3, v1, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    int-to-double v5, v3

    invoke-virtual {p1}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    move-result v3

    int-to-double v7, v3

    const-wide v9, 0x3fd3333333333333L    # 0.3

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v9

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v7

    double-to-int v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcom/narvii/video/services/SceneMediaProcessor$getSceneCoverImage$1;

    invoke-direct {v7, p2, v0}, Lcom/narvii/video/services/SceneMediaProcessor$getSceneCoverImage$1;-><init>(Ljava/io/File;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v10, 0x58

    const/4 v11, 0x0

    move-object v0, p3

    move-object v1, p1

    move-object v2, p2

    move v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move v9, v10

    move-object v10, v11

    invoke-static/range {v0 .. v10}, Lcom/narvii/video/services/VideoManager;->getCoverImage$default(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;IIILcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/String;ZILjava/lang/Object;)Lffmpeg/base/MediaEditingConfig;

    move-result-object v0

    return-object v0
.end method

.method public final getSceneCoverImage(Lcom/narvii/scene/model/SceneInfo;Ljava/io/File;Lcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V
    .locals 2

    const-string v0, "sceneInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iget-object v0, p1, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    invoke-static {p2}, Lcom/narvii/util/Utils;->deleteDir(Ljava/io/File;)Z

    :cond_1
    if-eqz p3, :cond_2

    .line 129
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "outputFile.absolutePath"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/narvii/video/services/SceneMediaProcessor$getSceneCoverImage$2;

    invoke-direct {v1, p2, p4}, Lcom/narvii/video/services/SceneMediaProcessor$getSceneCoverImage$2;-><init>(Ljava/io/File;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V

    invoke-virtual {p3, p1, v0, v1}, Lcom/narvii/video/interfaces/ISceneVideoGenerator;->grabSceneCoverImage(Lcom/narvii/scene/model/SceneInfo;Ljava/lang/String;Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    if-eqz p4, :cond_4

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 123
    invoke-static {p4, p1, p2, p3}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener$DefaultImpls;->onFailed$default(Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ZILjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public final getStoryCoverImage(Lcom/narvii/scene/model/SceneDraft;Ljava/io/File;ILcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V
    .locals 2

    const-string v0, "sceneDraft"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-static {p2}, Lcom/narvii/util/Utils;->deleteDir(Ljava/io/File;)Z

    :cond_0
    if-eqz p4, :cond_1

    .line 154
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "outputFile.absolutePath"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/narvii/video/services/SceneMediaProcessor$getStoryCoverImage$1;

    invoke-direct {v1, p2, p5}, Lcom/narvii/video/services/SceneMediaProcessor$getStoryCoverImage$1;-><init>(Ljava/io/File;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V

    invoke-virtual {p4, p1, v0, p3, v1}, Lcom/narvii/video/interfaces/ISceneVideoGenerator;->grabStoryCoverImage(Lcom/narvii/scene/model/SceneDraft;Ljava/lang/String;ILcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;)V

    :cond_1
    return-void
.end method

.method public final getVideoSource(Ljava/lang/String;II)I
    .locals 1

    const-string v0, "mediaPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    const/16 p3, 0x64

    if-eq p2, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 219
    :cond_0
    invoke-static {p1}, Lcom/narvii/util/Utils;->isGifInData(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    const/4 p1, 0x4

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    :goto_0
    return p1
.end method

.method public final onPreSceneDraft()V
    .locals 4

    .line 315
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->sceneInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 316
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/scene/model/SceneInfo;

    .line 317
    sget-object v2, Lcom/narvii/video/services/SceneMediaProcessor;->progressMap:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v3, -0x40800000    # -1.0f

    :goto_1
    iput v3, v1, Lcom/narvii/scene/model/SceneInfo;->currentSceneVideoProgress:F

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final processScene(Lcom/narvii/scene/model/SceneInfo;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;Z)Lffmpeg/base/MediaEditingConfig;
    .locals 12

    move-object v0, p1

    move-object v1, p2

    move/from16 v10, p4

    const-string v2, "scene"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "videoManager"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v10, :cond_0

    .line 328
    sget-object v2, Lcom/narvii/video/services/SceneMediaProcessor;->inProcessingEditingConfigMap:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lffmpeg/base/MediaEditingConfig;

    if-eqz v2, :cond_0

    .line 329
    invoke-virtual {v2}, Lffmpeg/base/MediaEditingConfig;->getRunningInBackground()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 330
    invoke-virtual {p2, v2}, Lcom/narvii/video/services/VideoManager;->abort(Lffmpeg/base/MediaEditingConfig;)V

    .line 333
    :cond_0
    sget-object v2, Lcom/narvii/video/services/SceneMediaProcessor;->progressMap:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    const-string v11, "scene.id"

    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    invoke-static {p1}, Lcom/narvii/video/services/SceneMediaProcessorKt;->getOrgFile(Lcom/narvii/scene/model/SceneInfo;)Ljava/io/File;

    move-result-object v2

    .line 335
    new-instance v4, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lkotlin/io/FilesKt;->getNameWithoutExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_tmp."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lkotlin/io/FilesKt;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 337
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 339
    :cond_1
    sget-object v3, Lcom/narvii/video/services/SceneMediaProcessor;->inProcessingEditingConfigMap:Ljava/util/HashMap;

    iget-object v5, v0, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lffmpeg/base/MediaEditingConfig;

    if-eqz v3, :cond_2

    .line 341
    invoke-virtual {p2, v3}, Lcom/narvii/video/services/VideoManager;->abort(Lffmpeg/base/MediaEditingConfig;)V

    .line 343
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 344
    iget-object v5, v0, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/video/model/AVClipInfoPack;

    .line 345
    iget-object v7, v6, Lcom/narvii/video/model/AVClipInfoPack;->streamInfo:Lcom/narvii/video/model/StreamInfo;

    .line 346
    iget-object v7, v7, Lcom/narvii/video/model/StreamInfo;->aCodecType:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 347
    invoke-virtual {v6}, Lcom/narvii/video/model/AVClipInfoPack;->copy()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v6

    const-string v7, "audioClip.copy()"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x1

    .line 348
    iput-boolean v7, v6, Lcom/narvii/video/model/AVClipInfoPack;->hasAudioTrack:Z

    .line 349
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 352
    :cond_4
    iput-object v3, v0, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    .line 353
    iget-object v3, v0, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    const-string v5, "scene.videoClips"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v0, Lcom/narvii/scene/model/SceneInfo;->audioClips:Ljava/util/ArrayList;

    const/4 v6, 0x0

    new-instance v7, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;

    move-object v8, p3

    invoke-direct {v7, p3, p1, v2, v4}, Lcom/narvii/video/services/SceneMediaProcessor$processScene$editingConfig$1;-><init>(Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;Lcom/narvii/scene/model/SceneInfo;Ljava/io/File;Ljava/io/File;)V

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v1, p2

    move-object v2, v3

    move-object v3, v5

    move v5, v6

    move/from16 v6, p4

    invoke-static/range {v1 .. v9}, Lcom/narvii/video/services/VideoManager;->encodeSceneOutput$default(Lcom/narvii/video/services/VideoManager;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/io/File;ZZLcom/narvii/video/interfaces/IVideoServiceCallback;ILjava/lang/Object;)Lffmpeg/base/MediaEditingConfig;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 407
    invoke-virtual {v1, v10}, Lffmpeg/base/MediaEditingConfig;->setRunningInBackground(Z)V

    .line 408
    sget-object v2, Lcom/narvii/video/services/SceneMediaProcessor;->inProcessingEditingConfigMap:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object v1
.end method

.method public final processScene(Lcom/narvii/app/NVContext;Lcom/narvii/scene/model/SceneInfo;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;Z)V
    .locals 6

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scene"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    iget-object v0, p2, Lcom/narvii/scene/model/SceneInfo;->videoClips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 484
    iget-object v2, v1, Lcom/narvii/video/model/AVClipInfoPack;->croppingData:Lcom/narvii/cropping/CroppingData;

    .line 487
    iget-wide v2, v1, Lcom/narvii/video/model/AVClipInfoPack;->speed:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    .line 490
    iget-object v2, v1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/narvii/util/Utils;->isJPG(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/narvii/util/Utils;->isPNG(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/narvii/util/Utils;->isBMP(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 498
    :cond_1
    invoke-static {}, Lcom/narvii/app/NVApplication;->isBasedOnMeishe()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 500
    invoke-virtual {p0, p2, p4, p5, p6}, Lcom/narvii/video/services/SceneMediaProcessor;->processScene(Lcom/narvii/scene/model/SceneInfo;Lcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;Z)V

    const-string p2, "meishe"

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    .line 503
    invoke-virtual {p0, p2, p3, p5, p6}, Lcom/narvii/video/services/SceneMediaProcessor;->processScene(Lcom/narvii/scene/model/SceneInfo;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;Z)Lffmpeg/base/MediaEditingConfig;

    const-string p2, "ffmpeg"

    :goto_1
    return-void

    .line 503
    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final processScene(Lcom/narvii/scene/model/SceneInfo;Lcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;Z)V
    .locals 4

    const-string p4, "scene"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    sget-object p4, Lcom/narvii/video/services/SceneMediaProcessor;->progressMap:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    const-string v1, "scene.id"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    invoke-static {p1}, Lcom/narvii/video/services/SceneMediaProcessorKt;->getOrgFile(Lcom/narvii/scene/model/SceneInfo;)Ljava/io/File;

    move-result-object p4

    .line 419
    new-instance v0, Ljava/io/File;

    invoke-virtual {p4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p4}, Lkotlin/io/FilesKt;->getNameWithoutExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_tmp."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lkotlin/io/FilesKt;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    if-eqz p2, :cond_1

    .line 426
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tmpOrgFile.absolutePath"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;

    invoke-direct {v2, p1, p4, p3, v0}, Lcom/narvii/video/services/SceneMediaProcessor$processScene$2;-><init>(Lcom/narvii/scene/model/SceneInfo;Ljava/io/File;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;Ljava/io/File;)V

    const/4 p3, 0x0

    invoke-virtual {p2, p1, v1, v2, p3}, Lcom/narvii/video/interfaces/ISceneVideoGenerator;->generateSceneVideo(Lcom/narvii/scene/model/SceneInfo;Ljava/lang/String;Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;Z)V

    :cond_1
    return-void
.end method

.method public final processStory(Lcom/narvii/app/NVContext;Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)Ljava/util/ArrayList;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/scene/model/SceneInfo;",
            ">;",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            "Lcom/narvii/video/services/VideoManager;",
            "Lcom/narvii/video/interfaces/ISceneVideoGenerator;",
            "Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;",
            ")",
            "Ljava/util/ArrayList<",
            "Lffmpeg/base/MediaEditingConfig;",
            ">;"
        }
    .end annotation

    move-object/from16 v6, p2

    move-object/from16 v15, p5

    const-string v0, "ctx"

    move-object/from16 v14, p1

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sceneInfoList"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoManager"

    move-object/from16 v13, p4

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 510
    sput-object v6, Lcom/narvii/video/services/SceneMediaProcessor;->sceneInfoList:Ljava/util/ArrayList;

    .line 511
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 512
    sput-boolean v0, Lcom/narvii/video/services/SceneMediaProcessor;->storyProcessFailureFlag:Z

    .line 513
    sput v0, Lcom/narvii/video/services/SceneMediaProcessor;->completedTaskCount:I

    .line 514
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/high16 v16, 0x3f800000    # 1.0f

    const-string v11, "scene.id"

    const/high16 v10, -0x40800000    # -1.0f

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/scene/model/SceneInfo;

    .line 515
    iget-object v3, v2, Lcom/narvii/scene/model/SceneInfo;->outputUrl:Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    sget-object v3, Lcom/narvii/video/services/SceneMediaProcessor;->progressMap:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 517
    sget-object v3, Lcom/narvii/video/services/SceneMediaProcessor;->progressMap:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget v5, v2, Lcom/narvii/scene/model/SceneInfo;->currentSceneVideoProgress:F

    sget-object v7, Lcom/narvii/video/services/SceneMediaProcessor;->progressMap:Ljava/util/HashMap;

    iget-object v2, v2, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    if-eqz v2, :cond_0

    goto :goto_1

    .line 518
    :cond_0
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 517
    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 521
    :cond_1
    sget-object v3, Lcom/narvii/video/services/SceneMediaProcessor;->progressMap:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, v2, Lcom/narvii/scene/model/SceneInfo;->currentSceneVideoProgress:F

    cmpg-float v2, v2, v16

    if-nez v2, :cond_2

    const/high16 v10, 0x3f800000    # 1.0f

    :cond_2
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    if-eqz v15, :cond_4

    .line 526
    invoke-virtual {v15, v6}, Lcom/narvii/video/interfaces/ISceneVideoGenerator;->prepareSceneList(Ljava/util/ArrayList;)V

    .line 529
    :cond_4
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v9, :cond_c

    .line 530
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "sceneInfoList[index]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v0

    check-cast v7, Lcom/narvii/scene/model/SceneInfo;

    .line 531
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->progressMap:Ljava/util/HashMap;

    iget-object v1, v7, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_3

    :cond_5
    const/high16 v0, -0x40800000    # -1.0f

    :goto_3
    cmpg-float v1, v0, v16

    if-nez v1, :cond_9

    .line 534
    invoke-static {v7}, Lcom/narvii/video/services/SceneMediaProcessorKt;->getOrgFile(Lcom/narvii/scene/model/SceneInfo;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 535
    sget v0, Lcom/narvii/video/services/SceneMediaProcessor;->completedTaskCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/narvii/video/services/SceneMediaProcessor;->completedTaskCount:I

    .line 536
    sget v0, Lcom/narvii/video/services/SceneMediaProcessor;->completedTaskCount:I

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_7

    if-nez p3, :cond_6

    move-object/from16 v7, p0

    move-object/from16 v5, p6

    .line 538
    invoke-direct {v7, v6, v12, v5}, Lcom/narvii/video/services/SceneMediaProcessor;->copySceneOrgFileToOutputFile(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V

    goto :goto_4

    :cond_6
    move-object/from16 v7, p0

    move-object/from16 v5, p6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object v3, v12

    move-object/from16 v4, p4

    .line 540
    invoke-direct/range {v0 .. v5}, Lcom/narvii/video/services/SceneMediaProcessor;->stepIntoBGMMixing(Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Ljava/util/ArrayList;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)V

    goto :goto_4

    :cond_7
    move-object/from16 v7, p0

    :goto_4
    move/from16 v17, v8

    move/from16 v18, v9

    move-object v9, v11

    move-object/from16 v20, v12

    const/high16 v19, -0x40800000    # -1.0f

    goto/16 :goto_6

    .line 544
    :cond_8
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->progressMap:Ljava/util/HashMap;

    iget-object v1, v7, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    iput v10, v7, Lcom/narvii/scene/model/SceneInfo;->currentSceneVideoProgress:F

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    .line 547
    invoke-direct/range {v0 .. v5}, Lcom/narvii/video/services/SceneMediaProcessor;->obtainProcessListenerImpl(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x20

    const/4 v3, 0x0

    move-object v5, v7

    move-object/from16 v7, p0

    move/from16 v17, v8

    move-object/from16 v8, p1

    move/from16 v18, v9

    move-object v9, v5

    const/high16 v19, -0x40800000    # -1.0f

    move-object/from16 v10, p4

    move-object v4, v11

    move-object/from16 v11, p5

    move-object/from16 v20, v12

    move-object v12, v0

    move v13, v1

    move v14, v2

    move-object v15, v3

    invoke-static/range {v7 .. v15}, Lcom/narvii/video/services/SceneMediaProcessor;->processScene$default(Lcom/narvii/video/services/SceneMediaProcessor;Lcom/narvii/app/NVContext;Lcom/narvii/scene/model/SceneInfo;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ZILjava/lang/Object;)V

    move-object v9, v4

    goto/16 :goto_6

    :cond_9
    move-object v5, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move-object v4, v11

    move-object/from16 v20, v12

    const/high16 v19, -0x40800000    # -1.0f

    cmpg-float v1, v0, v19

    if-nez v1, :cond_a

    goto :goto_5

    :cond_a
    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_b

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    move-object/from16 v3, p3

    move-object v15, v4

    move-object/from16 v4, p4

    move-object v9, v5

    move-object/from16 v5, p6

    .line 551
    invoke-direct/range {v0 .. v5}, Lcom/narvii/video/services/SceneMediaProcessor;->obtainProcessListenerImpl(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    move-result-object v12

    const/4 v13, 0x0

    const/16 v14, 0x20

    const/4 v0, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object v5, v15

    move-object v15, v0

    invoke-static/range {v7 .. v15}, Lcom/narvii/video/services/SceneMediaProcessor;->processScene$default(Lcom/narvii/video/services/SceneMediaProcessor;Lcom/narvii/app/NVContext;Lcom/narvii/scene/model/SceneInfo;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/ISceneVideoGenerator;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;ZILjava/lang/Object;)V

    move-object v9, v5

    goto :goto_6

    :cond_b
    move-object v9, v5

    move-object v5, v4

    .line 554
    sget-object v7, Lcom/narvii/video/services/SceneMediaProcessor;->processListenerMap:Ljava/util/HashMap;

    iget-object v8, v9, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v9, v5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/narvii/video/services/SceneMediaProcessor;->obtainProcessListenerImpl(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;)Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;

    move-result-object v0

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    add-int/lit8 v8, v17, 0x1

    move-object/from16 v14, p1

    move-object/from16 v13, p4

    move-object/from16 v15, p5

    move-object v11, v9

    move/from16 v9, v18

    move-object/from16 v12, v20

    const/high16 v10, -0x40800000    # -1.0f

    goto/16 :goto_2

    .line 558
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 559
    sget-object v1, Lcom/narvii/video/services/SceneMediaProcessor;->inProcessingEditingConfigMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final release(Lcom/narvii/video/services/VideoManager;)V
    .locals 3

    const-string v0, "videoManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->processListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 60
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->progressMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 61
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->inProcessingEditingConfigMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lffmpeg/base/MediaEditingConfig;

    const-string v2, "task"

    .line 62
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/narvii/video/services/VideoManager;->abort(Lffmpeg/base/MediaEditingConfig;)V

    goto :goto_0

    .line 64
    :cond_0
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->inProcessingGlobalMusicMixingTask:Lffmpeg/base/MediaEditingConfig;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/narvii/video/services/VideoManager;->abort(Lffmpeg/base/MediaEditingConfig;)V

    .line 65
    :cond_1
    sget-object p1, Lcom/narvii/video/services/SceneMediaProcessor;->inProcessingEditingConfigMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    const/4 p1, 0x0

    .line 66
    sput p1, Lcom/narvii/video/services/SceneMediaProcessor;->completedTaskCount:I

    .line 67
    sput-boolean p1, Lcom/narvii/video/services/SceneMediaProcessor;->storyProcessFailureFlag:Z

    return-void
.end method

.method public final removeScene(Lcom/narvii/scene/model/SceneInfo;Lcom/narvii/video/services/VideoManager;)V
    .locals 2

    const-string v0, "scene"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, -0x40800000    # -1.0f

    .line 79
    iput v0, p1, Lcom/narvii/scene/model/SceneInfo;->currentSceneVideoProgress:F

    .line 80
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->progressMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->processListenerMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->inProcessingEditingConfigMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lffmpeg/base/MediaEditingConfig;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p2, v0}, Lcom/narvii/video/services/VideoManager;->abort(Lffmpeg/base/MediaEditingConfig;)V

    .line 85
    sget-object p2, Lcom/narvii/video/services/SceneMediaProcessor;->inProcessingEditingConfigMap:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lffmpeg/base/MediaEditingConfig;

    :cond_0
    return-void
.end method

.method public final terminateAll(Lcom/narvii/video/services/VideoManager;)V
    .locals 2

    const-string v0, "videoManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 735
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->INSTANCE:Lcom/narvii/video/services/SceneMediaProcessor;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/narvii/video/services/SceneMediaProcessor;->terminateAll(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/ISceneVideoGenerator;)V

    return-void
.end method

.method public final terminateAll(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/ISceneVideoGenerator;)V
    .locals 2

    const-string v0, "videoManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 739
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 740
    sget-object v1, Lcom/narvii/video/services/SceneMediaProcessor;->inProcessingEditingConfigMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 741
    invoke-virtual {p1, v0}, Lcom/narvii/video/services/VideoManager;->abortAll(Ljava/util/ArrayList;)V

    .line 742
    sget-object v0, Lcom/narvii/video/services/SceneMediaProcessor;->inProcessingGlobalMusicMixingTask:Lffmpeg/base/MediaEditingConfig;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/narvii/video/services/VideoManager;->abort(Lffmpeg/base/MediaEditingConfig;)V

    .line 743
    :cond_0
    sget-object p1, Lcom/narvii/video/services/SceneMediaProcessor;->inProcessingEditingConfigMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    if-eqz p2, :cond_1

    .line 745
    invoke-virtual {p2}, Lcom/narvii/video/interfaces/ISceneVideoGenerator;->abort()V

    :cond_1
    return-void
.end method
