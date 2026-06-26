.class public final Lcom/narvii/video/services/VideoManager;
.super Ljava/lang/Object;
.source "VideoManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/services/VideoManager$IFetchStreamInfoCallback;,
        Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;,
        Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoManager.kt\ncom/narvii/video/services/VideoManager\n*L\n1#1,497:1\n*E\n"
.end annotation


# instance fields
.field private final backgroundTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final ctx:Lcom/narvii/app/NVContext;

.field private final delegate:Lffmpeg/base/IEditor;

.field private final foregroundTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final installedStickerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/video/model/StickerInfoPack;",
            ">;"
        }
    .end annotation
.end field

.field private pageInstallStickerCallback:Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;

.field private final softwareDelegate:Lffmpeg/base/IEditor;

.field private final tmpFileFolder:Ljava/io/File;

.field private final viewInstallStickerCallbackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 3

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/services/VideoManager;->ctx:Lcom/narvii/app/NVContext;

    .line 23
    sget-object p1, Lffmpeg/base/NVEditor;->Companion:Lffmpeg/base/NVEditor$Companion;

    iget-object v0, p0, Lcom/narvii/video/services/VideoManager;->ctx:Lcom/narvii/app/NVContext;

    invoke-virtual {p1, v0}, Lffmpeg/base/NVEditor$Companion;->getNVEditor(Lcom/narvii/app/NVContext;)Lffmpeg/base/IEditor;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/video/services/VideoManager;->delegate:Lffmpeg/base/IEditor;

    .line 24
    sget-object p1, Lffmpeg/base/NVEditor;->Companion:Lffmpeg/base/NVEditor$Companion;

    iget-object v0, p0, Lcom/narvii/video/services/VideoManager;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ctx.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lffmpeg/base/NVEditor$Companion;->getSoftwareNVEditor(Landroid/content/Context;)Lffmpeg/base/IEditor;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/video/services/VideoManager;->softwareDelegate:Lffmpeg/base/IEditor;

    .line 25
    invoke-static {}, Lcom/narvii/util/Utils;->getCoreThreadCount()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    const/4 v2, 0x4

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const-string v2, "Foreground_encoding"

    invoke-static {p1, v2}, Lcom/narvii/util/Utils;->createThreadPoolExecutor(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/video/services/VideoManager;->foregroundTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const-string p1, "Background_encoding"

    .line 26
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->createThreadPoolExecutor(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/video/services/VideoManager;->backgroundTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 27
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/narvii/video/services/VideoManager;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "video_tmp"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/services/VideoManager;->tmpFileFolder:Ljava/io/File;

    .line 29
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/services/VideoManager;->installedStickerMap:Ljava/util/HashMap;

    .line 30
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/services/VideoManager;->viewInstallStickerCallbackMap:Ljava/util/HashMap;

    .line 45
    iget-object p1, p0, Lcom/narvii/video/services/VideoManager;->tmpFileFolder:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    return-void
.end method

.method public static final synthetic access$getBackgroundTaskExecutor$p(Lcom/narvii/video/services/VideoManager;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/narvii/video/services/VideoManager;->backgroundTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method public static final synthetic access$getDelegate$p(Lcom/narvii/video/services/VideoManager;)Lffmpeg/base/IEditor;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/narvii/video/services/VideoManager;->delegate:Lffmpeg/base/IEditor;

    return-object p0
.end method

.method public static final synthetic access$getInstalledStickerMap$p(Lcom/narvii/video/services/VideoManager;)Ljava/util/HashMap;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/narvii/video/services/VideoManager;->installedStickerMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$getPageInstallStickerCallback$p(Lcom/narvii/video/services/VideoManager;)Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/narvii/video/services/VideoManager;->pageInstallStickerCallback:Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;

    return-object p0
.end method

.method public static final synthetic access$getViewInstallStickerCallbackMap$p(Lcom/narvii/video/services/VideoManager;)Ljava/util/HashMap;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/narvii/video/services/VideoManager;->viewInstallStickerCallbackMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$setPageInstallStickerCallback$p(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/narvii/video/services/VideoManager;->pageInstallStickerCallback:Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;

    return-void
.end method

.method public static synthetic concatVideo$default(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;Lcom/narvii/video/interfaces/IVideoServiceCallback;ILjava/lang/Object;)Lffmpeg/base/MediaEditingConfig;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 80
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/video/services/VideoManager;->concatVideo(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;Lcom/narvii/video/interfaces/IVideoServiceCallback;)Lffmpeg/base/MediaEditingConfig;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic convertImg2Video$default(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;Lcom/narvii/video/interfaces/IVideoServiceCallback;ILjava/lang/Object;)Lffmpeg/base/MediaEditingConfig;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 103
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/video/services/VideoManager;->convertImg2Video(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;Lcom/narvii/video/interfaces/IVideoServiceCallback;)Lffmpeg/base/MediaEditingConfig;

    move-result-object p0

    return-object p0
.end method

.method private final createStickerInstallKey(Lcom/narvii/model/Sticker;)Ljava/lang/String;
    .locals 2

    .line 371
    iget-object v0, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/narvii/model/Sticker;->stickerId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 374
    :cond_0
    iget-object p1, p1, Lcom/narvii/model/Sticker;->stickerId:Ljava/lang/String;

    const-string v0, "stickerId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public static synthetic cropVideo$default(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;IILcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/String;ILjava/lang/Object;)Lffmpeg/base/MediaEditingConfig;
    .locals 7

    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_0

    const/4 p4, 0x0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    move v4, p4

    :goto_0
    and-int/lit8 p4, p7, 0x10

    const/4 p8, 0x0

    if-eqz p4, :cond_1

    move-object v5, p8

    goto :goto_1

    :cond_1
    move-object v5, p5

    :goto_1
    and-int/lit8 p4, p7, 0x20

    if-eqz p4, :cond_2

    move-object v6, p8

    goto :goto_2

    :cond_2
    move-object v6, p6

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 74
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/video/services/VideoManager;->cropVideo(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;IILcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/String;)Lffmpeg/base/MediaEditingConfig;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic cropVideoByCopy$default(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;IIZLcom/narvii/video/interfaces/IVideoServiceCallback;ZZLjava/lang/String;ILjava/lang/Object;)Lffmpeg/base/MediaEditingConfig;
    .locals 12

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    move/from16 v6, p4

    :goto_0
    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v8, v2

    goto :goto_1

    :cond_1
    move-object/from16 v8, p6

    :goto_1
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2

    move-object v11, v2

    goto :goto_2

    :cond_2
    move-object/from16 v11, p9

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move/from16 v7, p5

    move/from16 v9, p7

    move/from16 v10, p8

    .line 87
    invoke-virtual/range {v2 .. v11}, Lcom/narvii/video/services/VideoManager;->cropVideoByCopy(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;IIZLcom/narvii/video/interfaces/IVideoServiceCallback;ZZLjava/lang/String;)Lffmpeg/base/MediaEditingConfig;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic encodeSceneOutput$default(Lcom/narvii/video/services/VideoManager;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/io/File;ZZLcom/narvii/video/interfaces/IVideoServiceCallback;ILjava/lang/Object;)Lffmpeg/base/MediaEditingConfig;
    .locals 7

    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_0

    const/4 p4, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, p4

    :goto_0
    and-int/lit8 p4, p7, 0x10

    if-eqz p4, :cond_1

    const/4 p5, 0x0

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    move v5, p5

    :goto_1
    and-int/lit8 p4, p7, 0x20

    if-eqz p4, :cond_2

    const/4 p6, 0x0

    :cond_2
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 141
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/video/services/VideoManager;->encodeSceneOutput(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/io/File;ZZLcom/narvii/video/interfaces/IVideoServiceCallback;)Lffmpeg/base/MediaEditingConfig;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic encodeScenePreview$default(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/model/AVClipInfoPack;Ljava/util/ArrayList;Ljava/io/File;ZLcom/narvii/video/interfaces/IVideoServiceCallback;ILjava/lang/Object;)Lffmpeg/base/MediaEditingConfig;
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    move v4, p4

    :goto_0
    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const/4 p5, 0x0

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 116
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/video/services/VideoManager;->encodeScenePreview(Lcom/narvii/video/model/AVClipInfoPack;Ljava/util/ArrayList;Ljava/io/File;ZLcom/narvii/video/interfaces/IVideoServiceCallback;)Lffmpeg/base/MediaEditingConfig;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getCoverImage$default(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;IIILcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/String;ZILjava/lang/Object;)Lffmpeg/base/MediaEditingConfig;
    .locals 12

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x8

    const/4 v2, -0x2

    if-eqz v1, :cond_0

    const/4 v7, -0x2

    goto :goto_0

    :cond_0
    move/from16 v7, p4

    :goto_0
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    const/4 v8, -0x2

    goto :goto_1

    :cond_1
    move/from16 v8, p5

    :goto_1
    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v9, v2

    goto :goto_2

    :cond_2
    move-object/from16 v9, p6

    :goto_2
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_3

    move-object v10, v2

    goto :goto_3

    :cond_3
    move-object/from16 v10, p7

    :goto_3
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    const/4 v11, 0x0

    goto :goto_4

    :cond_4
    move/from16 v11, p8

    :goto_4
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    .line 298
    invoke-virtual/range {v3 .. v11}, Lcom/narvii/video/services/VideoManager;->getCoverImage(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;IIILcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/String;Z)Lffmpeg/base/MediaEditingConfig;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic mixBGM_Stage1$default(Lcom/narvii/video/services/VideoManager;Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;Lcom/narvii/video/interfaces/IVideoServiceCallback;ILjava/lang/Object;)Lffmpeg/base/MediaEditingConfig;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 164
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/narvii/video/services/VideoManager;->mixBGM_Stage1(Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;Lcom/narvii/video/interfaces/IVideoServiceCallback;)Lffmpeg/base/MediaEditingConfig;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic mixBGM_Stage2$default(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;ILcom/narvii/video/interfaces/IVideoServiceCallback;ILjava/lang/Object;)Lffmpeg/base/MediaEditingConfig;
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

    move v4, p4

    .line 233
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/video/services/VideoManager;->mixBGM_Stage2(Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;ILcom/narvii/video/interfaces/IVideoServiceCallback;)Lffmpeg/base/MediaEditingConfig;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic simpleAVMix$default(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/model/AVClipInfoPack;Ljava/util/List;Ljava/io/File;Lcom/narvii/video/interfaces/IVideoServiceCallback;ZILjava/lang/Object;)Lffmpeg/base/MediaEditingConfig;
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const/4 p5, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    move v5, p5

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 58
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/video/services/VideoManager;->simpleAVMix(Lcom/narvii/video/model/AVClipInfoPack;Ljava/util/List;Ljava/io/File;Lcom/narvii/video/interfaces/IVideoServiceCallback;Z)Lffmpeg/base/MediaEditingConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final abort(Lffmpeg/base/MediaEditingConfig;)V
    .locals 1

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    invoke-virtual {p1}, Lffmpeg/base/MediaEditingConfig;->getForceSoftware()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager;->softwareDelegate:Lffmpeg/base/IEditor;

    invoke-interface {v0, p1}, Lffmpeg/base/IEditor;->abort(Lffmpeg/base/MediaEditingConfig;)V

    goto :goto_0

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager;->delegate:Lffmpeg/base/IEditor;

    invoke-interface {v0, p1}, Lffmpeg/base/IEditor;->abort(Lffmpeg/base/MediaEditingConfig;)V

    :goto_0
    return-void
.end method

.method public final abortAll(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lffmpeg/base/MediaEditingConfig;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tasks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lffmpeg/base/MediaEditingConfig;

    const-string v1, "task"

    .line 326
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/narvii/video/services/VideoManager;->abort(Lffmpeg/base/MediaEditingConfig;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final abortAnimatedStickerConvertTask(Lcom/narvii/video/model/StickerInfoPack;)V
    .locals 1

    const-string v0, "stickerInfoPack"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager;->delegate:Lffmpeg/base/IEditor;

    invoke-interface {v0, p1}, Lffmpeg/base/IEditor;->abortAnimatedStickerConvertTask(Lcom/narvii/video/model/StickerInfoPack;)V

    return-void
.end method

.method public final abortAnimatedStickerConvertTasks()V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager;->delegate:Lffmpeg/base/IEditor;

    invoke-interface {v0}, Lffmpeg/base/IEditor;->abortAnimatedStickerConvertTasks()V

    return-void
.end method

.method public final addViewInstallStickerCallback(Lcom/narvii/model/Sticker;Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;)V
    .locals 1

    const-string v0, "sticker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewInstallStickerCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    invoke-direct {p0, p1}, Lcom/narvii/video/services/VideoManager;->createStickerInstallKey(Lcom/narvii/model/Sticker;)Ljava/lang/String;

    move-result-object p1

    .line 348
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager;->viewInstallStickerCallbackMap:Ljava/util/HashMap;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final concatVideo(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;Lcom/narvii/video/interfaces/IVideoServiceCallback;)Lffmpeg/base/MediaEditingConfig;
    .locals 9

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    new-instance v0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    const/16 v1, 0x1000

    invoke-direct {v0, p1, p2, v1}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;-><init>(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;I)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->needProgressCallback(Z)Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->build()Lffmpeg/base/MediaEditingConfig;

    move-result-object p1

    .line 82
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager;->delegate:Lffmpeg/base/IEditor;

    iget-object v1, p0, Lcom/narvii/video/services/VideoManager;->backgroundTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v8, Lcom/narvii/video/services/VideoManager$concatVideo$1;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p3

    move-object v5, p2

    move-object v6, p3

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/narvii/video/services/VideoManager$concatVideo$1;-><init>(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;)V

    invoke-interface {v0, p1, v1, v8}, Lffmpeg/base/IEditor;->execute(Lffmpeg/base/MediaEditingConfig;Ljava/util/concurrent/ExecutorService;Lffmpeg/base/IEditorExecuteCallback;)V

    return-object p1
.end method

.method public final convertImg2Video(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;Lcom/narvii/video/interfaces/IVideoServiceCallback;)Lffmpeg/base/MediaEditingConfig;
    .locals 9

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/Utils;->isBMP(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/Utils;->isJPG(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/Utils;->isPNG(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/Utils;->isGifInData(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    new-instance v0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    const/16 v1, 0x800

    invoke-direct {v0, p1, p2, v1}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;-><init>(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;I)V

    invoke-virtual {v0}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->build()Lffmpeg/base/MediaEditingConfig;

    move-result-object p1

    .line 110
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager;->delegate:Lffmpeg/base/IEditor;

    iget-object v1, p0, Lcom/narvii/video/services/VideoManager;->backgroundTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v8, Lcom/narvii/video/services/VideoManager$convertImg2Video$2;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p3

    move-object v5, p2

    move-object v6, p3

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/narvii/video/services/VideoManager$convertImg2Video$2;-><init>(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;)V

    invoke-interface {v0, p1, v1, v8}, Lffmpeg/base/IEditor;->execute(Lffmpeg/base/MediaEditingConfig;Ljava/util/concurrent/ExecutorService;Lffmpeg/base/IEditorExecuteCallback;)V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 105
    :cond_2
    :goto_0
    new-instance v0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    const/16 v1, 0x400

    invoke-direct {v0, p1, p2, v1}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;-><init>(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;I)V

    invoke-virtual {v0}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->build()Lffmpeg/base/MediaEditingConfig;

    move-result-object p1

    .line 106
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager;->delegate:Lffmpeg/base/IEditor;

    iget-object v1, p0, Lcom/narvii/video/services/VideoManager;->backgroundTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v8, Lcom/narvii/video/services/VideoManager$convertImg2Video$1;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p3

    move-object v5, p2

    move-object v6, p3

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/narvii/video/services/VideoManager$convertImg2Video$1;-><init>(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;)V

    invoke-interface {v0, p1, v1, v8}, Lffmpeg/base/IEditor;->execute(Lffmpeg/base/MediaEditingConfig;Ljava/util/concurrent/ExecutorService;Lffmpeg/base/IEditorExecuteCallback;)V

    return-object p1
.end method

.method public final cropVideo(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;IILcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/String;)Lffmpeg/base/MediaEditingConfig;
    .locals 9

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    new-instance v0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;-><init>(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, p3}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->duration(I)Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    move-result-object p1

    invoke-virtual {p1, p4}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->startTime(I)Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->needProgressCallback(Z)Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->build()Lffmpeg/base/MediaEditingConfig;

    move-result-object p1

    .line 76
    iget-object p3, p0, Lcom/narvii/video/services/VideoManager;->delegate:Lffmpeg/base/IEditor;

    iget-object p4, p0, Lcom/narvii/video/services/VideoManager;->backgroundTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v8, Lcom/narvii/video/services/VideoManager$cropVideo$1;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p5

    move-object v4, p6

    move-object v5, p5

    move-object v6, p2

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/narvii/video/services/VideoManager$cropVideo$1;-><init>(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;Ljava/lang/String;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {p3, p1, p4, v8}, Lffmpeg/base/IEditor;->execute(Lffmpeg/base/MediaEditingConfig;Ljava/util/concurrent/ExecutorService;Lffmpeg/base/IEditorExecuteCallback;)V

    return-object p1
.end method

.method public final cropVideoByCopy(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;IIZLcom/narvii/video/interfaces/IVideoServiceCallback;ZZLjava/lang/String;)Lffmpeg/base/MediaEditingConfig;
    .locals 13

    move-object v8, p0

    move-object v0, p1

    move-object v6, p2

    const-string v1, "input"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "output"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    new-instance v1, Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    const/16 v2, 0x8

    invoke-direct {v1, p1, p2, v2}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;-><init>(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;I)V

    move/from16 v0, p3

    .line 89
    invoke-virtual {v1, v0}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->duration(I)Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    move-result-object v0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->startTime(I)Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p7, :cond_0

    if-eqz p8, :cond_0

    .line 91
    invoke-virtual {v0, v1}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->forceVideoCodecCopy(Z)Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->forceAudioCodecCopy(Z)Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    goto :goto_0

    :cond_0
    if-eqz p7, :cond_1

    .line 93
    invoke-virtual {v0, v1}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->forceVideoCodecCopy(Z)Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->videoOnly(Z)Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    goto :goto_0

    :cond_1
    if-eqz p8, :cond_2

    .line 95
    invoke-virtual {v0, v1}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->forceAudioCodecCopy(Z)Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->audioOnly(Z)Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    .line 97
    :cond_2
    :goto_0
    invoke-virtual {v0, v1}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->needProgressCallback(Z)Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    move-result-object v1

    move/from16 v2, p5

    invoke-virtual {v1, v2}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->dropNegativeTs(Z)Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    .line 98
    invoke-virtual {v0}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->build()Lffmpeg/base/MediaEditingConfig;

    move-result-object v9

    .line 99
    iget-object v10, v8, Lcom/narvii/video/services/VideoManager;->delegate:Lffmpeg/base/IEditor;

    iget-object v11, v8, Lcom/narvii/video/services/VideoManager;->backgroundTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v12, Lcom/narvii/video/services/VideoManager$cropVideoByCopy$1;

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v2, p6

    move-object v3, p2

    move-object/from16 v4, p9

    move-object/from16 v5, p6

    move-object v6, p2

    move-object/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lcom/narvii/video/services/VideoManager$cropVideoByCopy$1;-><init>(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;Ljava/lang/String;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v10, v9, v11, v12}, Lffmpeg/base/IEditor;->execute(Lffmpeg/base/MediaEditingConfig;Ljava/util/concurrent/ExecutorService;Lffmpeg/base/IEditorExecuteCallback;)V

    return-object v9
.end method

.method public final encodeSceneOutput(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/io/File;ZZLcom/narvii/video/interfaces/IVideoServiceCallback;)Lffmpeg/base/MediaEditingConfig;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;",
            "Ljava/io/File;",
            "ZZ",
            "Lcom/narvii/video/interfaces/IVideoServiceCallback;",
            ")",
            "Lffmpeg/base/MediaEditingConfig;"
        }
    .end annotation

    const-string v0, "videoClips"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    if-eqz p6, :cond_0

    .line 143
    invoke-interface {p6, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onActionFailed(Ljava/lang/Exception;)V

    :cond_0
    return-object p1

    .line 147
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/video/model/AVClipInfoPack;

    .line 148
    invoke-virtual {v3}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 150
    :cond_2
    new-instance v0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    const/16 v3, 0x20

    invoke-direct {v0, p1, p3, v3}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;-><init>(Ljava/util/List;Ljava/io/File;I)V

    .line 151
    invoke-virtual {v0, v2}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->duration(I)Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->needProgressCallback(Z)Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->keepFixedDimension(Z)Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    move-result-object p4

    if-eqz p2, :cond_3

    .line 152
    invoke-virtual {p4, p2}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->additionalAudioInputList(Ljava/util/List;)Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    .line 153
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne p2, v2, :cond_4

    .line 154
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-virtual {p1}, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs()I

    move-result p1

    invoke-virtual {p4, p1}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->startTime(I)Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    .line 156
    :cond_4
    invoke-virtual {p4}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->build()Lffmpeg/base/MediaEditingConfig;

    move-result-object p1

    .line 157
    invoke-virtual {p1, v2}, Lffmpeg/base/MediaEditingConfig;->setTrim(Z)V

    .line 158
    invoke-virtual {p1, v2}, Lffmpeg/base/MediaEditingConfig;->setTranscodeAudio(Z)V

    .line 159
    invoke-virtual {p1, v2}, Lffmpeg/base/MediaEditingConfig;->setTranscodeVideo(Z)V

    .line 160
    iget-object p2, p0, Lcom/narvii/video/services/VideoManager;->delegate:Lffmpeg/base/IEditor;

    if-eqz p5, :cond_5

    iget-object p4, p0, Lcom/narvii/video/services/VideoManager;->backgroundTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    goto :goto_1

    :cond_5
    iget-object p4, p0, Lcom/narvii/video/services/VideoManager;->foregroundTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    :goto_1
    new-instance p5, Lcom/narvii/video/services/VideoManager$encodeSceneOutput$2;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p6

    move-object v3, p3

    move-object v4, p6

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/narvii/video/services/VideoManager$encodeSceneOutput$2;-><init>(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;)V

    invoke-interface {p2, p1, p4, p5}, Lffmpeg/base/IEditor;->execute(Lffmpeg/base/MediaEditingConfig;Ljava/util/concurrent/ExecutorService;Lffmpeg/base/IEditorExecuteCallback;)V

    return-object p1
.end method

.method public final encodeScenePreview(Lcom/narvii/video/model/AVClipInfoPack;Ljava/util/ArrayList;Ljava/io/File;ZLcom/narvii/video/interfaces/IVideoServiceCallback;)Lffmpeg/base/MediaEditingConfig;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;",
            "Ljava/io/File;",
            "Z",
            "Lcom/narvii/video/interfaces/IVideoServiceCallback;",
            ")",
            "Lffmpeg/base/MediaEditingConfig;"
        }
    .end annotation

    const-string v0, "videoClip"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioClips"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1}, Lcom/narvii/video/model/AVClipInfoPack;->getInputFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    if-eqz p5, :cond_0

    .line 118
    invoke-interface {p5, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onActionFailed(Ljava/lang/Exception;)V

    :cond_0
    return-object p1

    .line 121
    :cond_1
    iget v0, p1, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    const v1, 0x41eb0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 123
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/video/model/AVClipInfoPack;

    .line 124
    iget v5, v4, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    iget v6, p1, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    goto :goto_1

    .line 127
    :cond_3
    new-instance v1, Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    const/16 v4, 0x20

    invoke-direct {v1, p1, p3, v4}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;-><init>(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;I)V

    .line 128
    invoke-virtual {v1, p2}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->additionalAudioInputList(Ljava/util/List;)Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    move-result-object p2

    invoke-virtual {p2, p4}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->keepFixedDimension(Z)Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    move-result-object p2

    if-eqz v0, :cond_4

    .line 130
    iget p4, p1, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    invoke-virtual {p2, p4}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->startTime(I)Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    move-result-object p4

    invoke-virtual {p1}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    move-result v1

    const/16 v4, 0x3a98

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p4, v1}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->duration(I)Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    .line 132
    :cond_4
    invoke-virtual {p2}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->build()Lffmpeg/base/MediaEditingConfig;

    move-result-object p2

    .line 133
    invoke-virtual {p2, v0}, Lffmpeg/base/MediaEditingConfig;->setTrim(Z)V

    .line 134
    invoke-virtual {p2, v2}, Lffmpeg/base/MediaEditingConfig;->setTranscodeAudio(Z)V

    .line 135
    invoke-virtual {p2, v0}, Lffmpeg/base/MediaEditingConfig;->setTranscodeVideo(Z)V

    if-eqz v0, :cond_5

    goto :goto_2

    .line 136
    :cond_5
    iget v3, p1, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    :goto_2
    iput v3, p1, Lcom/narvii/video/model/AVClipInfoPack;->previewStartInMs:I

    .line 137
    iget-object p1, p0, Lcom/narvii/video/services/VideoManager;->delegate:Lffmpeg/base/IEditor;

    iget-object p4, p0, Lcom/narvii/video/services/VideoManager;->backgroundTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v6, Lcom/narvii/video/services/VideoManager$encodeScenePreview$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p5

    move-object v3, p3

    move-object v4, p5

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/narvii/video/services/VideoManager$encodeScenePreview$1;-><init>(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;)V

    invoke-interface {p1, p2, p4, v6}, Lffmpeg/base/IEditor;->execute(Lffmpeg/base/MediaEditingConfig;Ljava/util/concurrent/ExecutorService;Lffmpeg/base/IEditorExecuteCallback;)V

    return-object p2
.end method

.method public final fetchStreamInfo(Ljava/lang/String;Lcom/narvii/video/services/VideoManager$IFetchStreamInfoCallback;)V
    .locals 2

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager;->foregroundTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/narvii/video/services/VideoManager$fetchStreamInfo$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/narvii/video/services/VideoManager$fetchStreamInfo$1;-><init>(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/VideoManager$IFetchStreamInfoCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final fetchStreamInfoSync(Ljava/lang/String;)Lcom/narvii/video/model/StreamInfo;
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager;->delegate:Lffmpeg/base/IEditor;

    invoke-interface {v0, p1}, Lffmpeg/base/IEditor;->fetchStreamingInfo(Ljava/lang/String;)Lcom/narvii/video/model/StreamInfo;

    move-result-object p1

    return-object p1
.end method

.method public final getCoverImage(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;IIILcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/String;Z)Lffmpeg/base/MediaEditingConfig;
    .locals 14

    move-object v9, p0

    move-object v0, p1

    move-object/from16 v7, p2

    const-string v1, "input"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "output"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    new-instance v1, Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    const/16 v2, 0x10

    invoke-direct {v1, p1, v7, v2}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;-><init>(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;I)V

    move/from16 v3, p3

    .line 307
    invoke-virtual {v1, v3}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->startTime(I)Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    move-result-object v0

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->screenshotScaleToSize(II)Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    move-result-object v0

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->keepFixedDimension(Z)Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->build()Lffmpeg/base/MediaEditingConfig;

    move-result-object v10

    .line 308
    iget-object v11, v9, Lcom/narvii/video/services/VideoManager;->delegate:Lffmpeg/base/IEditor;

    iget-object v12, v9, Lcom/narvii/video/services/VideoManager;->backgroundTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v13, Lcom/narvii/video/services/VideoManager$getCoverImage$1;

    move-object v0, v13

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v4, p2

    move-object/from16 v5, p7

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/narvii/video/services/VideoManager$getCoverImage$1;-><init>(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/IVideoServiceCallback;ILjava/io/File;Ljava/lang/String;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v11, v10, v12, v13}, Lffmpeg/base/IEditor;->execute(Lffmpeg/base/MediaEditingConfig;Ljava/util/concurrent/ExecutorService;Lffmpeg/base/IEditorExecuteCallback;)V

    return-object v10
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getTmpFileFolder()Ljava/io/File;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager;->tmpFileFolder:Ljava/io/File;

    return-object v0
.end method

.method public final installSticker(Lcom/narvii/model/Sticker;Ljava/lang/String;ZLcom/narvii/video/services/VideoManager$IInstallStickerCallback;)V
    .locals 7

    const-string v0, "sticker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 405
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/narvii/video/services/VideoManager;->obtainInstalledStickerInfo(Lcom/narvii/model/Sticker;Ljava/lang/String;)Lcom/narvii/video/model/StickerInfoPack;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p4, :cond_1

    .line 407
    invoke-interface {p4, v0}, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;->onStickerInstalled(Lcom/narvii/video/model/StickerInfoPack;)V

    .line 408
    :cond_1
    iget-object p1, p0, Lcom/narvii/video/services/VideoManager;->pageInstallStickerCallback:Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;

    if-eqz p1, :cond_2

    invoke-interface {p1, v0}, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;->onStickerInstalled(Lcom/narvii/video/model/StickerInfoPack;)V

    :cond_2
    return-void

    .line 411
    :cond_3
    invoke-direct {p0, p1}, Lcom/narvii/video/services/VideoManager;->createStickerInstallKey(Lcom/narvii/model/Sticker;)Ljava/lang/String;

    move-result-object v0

    .line 412
    invoke-static {p1}, Lcom/narvii/video/model/StickerInfoPack;->constructFromSticker(Lcom/narvii/model/Sticker;)Lcom/narvii/video/model/StickerInfoPack;

    move-result-object v3

    .line 413
    iput-object p2, v3, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    .line 414
    iget-object p2, p0, Lcom/narvii/video/services/VideoManager;->viewInstallStickerCallbackMap:Ljava/util/HashMap;

    invoke-interface {p2, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    new-instance v6, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;

    invoke-direct {v6, p0, v0, v3, p1}, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;-><init>(Lcom/narvii/video/services/VideoManager;Ljava/lang/String;Lcom/narvii/video/model/StickerInfoPack;Lcom/narvii/model/Sticker;)V

    .line 440
    iget-object p2, v3, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    invoke-static {p2}, Lcom/narvii/util/Utils;->isWebP(Ljava/lang/String;)Z

    move-result p2

    const-string v0, "stickerInfoPack"

    if-eqz p2, :cond_6

    .line 443
    iget-object p2, p0, Lcom/narvii/video/services/VideoManager;->ctx:Lcom/narvii/app/NVContext;

    const-string v1, "topActivity"

    invoke-interface {p2, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/util/services/TopActivityService;

    const-string v1, "activityService"

    .line 444
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/narvii/util/services/TopActivityService;->getLastResumedActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 445
    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_4

    .line 446
    iget-object v1, p0, Lcom/narvii/video/services/VideoManager;->delegate:Lffmpeg/base/IEditor;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/narvii/video/services/VideoManager;->backgroundTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    move v4, p3

    invoke-interface/range {v1 .. v6}, Lffmpeg/base/IEditor;->installSticker(Landroid/content/Context;Lcom/narvii/video/model/StickerInfoPack;ZLjava/util/concurrent/ExecutorService;Lffmpeg/base/IEditorBaseCallback;)V

    goto :goto_1

    :cond_4
    if-eqz p4, :cond_5

    .line 448
    invoke-interface {p4, p1}, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;->onStickerInstallFailed(Lcom/narvii/model/Sticker;)V

    .line 449
    :cond_5
    iget-object p2, p0, Lcom/narvii/video/services/VideoManager;->pageInstallStickerCallback:Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;

    if-eqz p2, :cond_7

    invoke-interface {p2, p1}, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;->onStickerInstallFailed(Lcom/narvii/model/Sticker;)V

    goto :goto_1

    .line 452
    :cond_6
    iget-object v1, p0, Lcom/narvii/video/services/VideoManager;->delegate:Lffmpeg/base/IEditor;

    iget-object p1, p0, Lcom/narvii/video/services/VideoManager;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string p1, "ctx.context"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/narvii/video/services/VideoManager;->foregroundTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    move v4, p3

    invoke-interface/range {v1 .. v6}, Lffmpeg/base/IEditor;->installSticker(Landroid/content/Context;Lcom/narvii/video/model/StickerInfoPack;ZLjava/util/concurrent/ExecutorService;Lffmpeg/base/IEditorBaseCallback;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public final mixBGM_Stage1(Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;Lcom/narvii/video/interfaces/IVideoServiceCallback;)Lffmpeg/base/MediaEditingConfig;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            "Ljava/io/File;",
            "Lcom/narvii/video/interfaces/IVideoServiceCallback;",
            ")",
            "Lffmpeg/base/MediaEditingConfig;"
        }
    .end annotation

    const-string v0, "sceneVideoList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bgm"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Lcom/narvii/video/model/AVClipInfoPack;->getInputFile()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    .line 166
    invoke-interface {p4, v1}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onActionFailed(Ljava/lang/Exception;)V

    :cond_0
    return-object v1

    .line 170
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/video/model/AVClipInfoPack;

    const-string v5, "clip"

    .line 171
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/narvii/video/model/AVClipInfoPack;->getInputFile()Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_3

    if-eqz p4, :cond_2

    .line 172
    invoke-interface {p4, v1}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onActionFailed(Ljava/lang/Exception;)V

    :cond_2
    return-object v1

    .line 175
    :cond_3
    invoke-virtual {v4}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    .line 177
    :cond_4
    invoke-virtual {p1, v2, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 178
    new-instance v7, Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "silent.mp4"

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    const/16 v1, 0x100

    invoke-direct {v0, p2, v7, v1}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;-><init>(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;I)V

    invoke-virtual {v0, v3}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->duration(I)Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->build()Lffmpeg/base/MediaEditingConfig;

    move-result-object p2

    .line 180
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager;->delegate:Lffmpeg/base/IEditor;

    iget-object v1, p0, Lcom/narvii/video/services/VideoManager;->backgroundTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1;

    move-object v4, v2

    move-object v5, p0

    move-object v6, p4

    move-object v8, p3

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1;-><init>(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;Ljava/io/File;Ljava/util/ArrayList;)V

    invoke-interface {v0, p2, v1, v2}, Lffmpeg/base/IEditor;->execute(Lffmpeg/base/MediaEditingConfig;Ljava/util/concurrent/ExecutorService;Lffmpeg/base/IEditorExecuteCallback;)V

    return-object p2
.end method

.method public final mixBGM_Stage2(Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;ILcom/narvii/video/interfaces/IVideoServiceCallback;)Lffmpeg/base/MediaEditingConfig;
    .locals 8

    const-string v0, "video"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mixedAudio"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    invoke-virtual {p1}, Lcom/narvii/video/model/AVClipInfoPack;->getInputFile()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/narvii/video/model/AVClipInfoPack;->getInputFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 238
    :cond_0
    new-instance v5, Ljava/io/File;

    invoke-virtual {p2}, Lcom/narvii/video/model/AVClipInfoPack;->getInputFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "mixedAudio.inputFile!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioPiece_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ".mp4"

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {v5, v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 240
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 242
    :cond_1
    new-instance p4, Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    invoke-virtual {v5}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    const-string v1, "tmpAudioPieceFile.absoluteFile"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-direct {p4, p2, v0, v1}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;-><init>(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;I)V

    const/4 v0, 0x1

    .line 243
    invoke-virtual {p4, v0}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->audioOnly(Z)Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    move-result-object p4

    invoke-virtual {p4, v0}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->forceAudioCodecCopy(Z)Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    move-result-object p4

    iget v0, p2, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    invoke-virtual {p4, v0}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->startTime(I)Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    move-result-object p4

    invoke-virtual {p2}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    move-result p2

    invoke-virtual {p4, p2}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->duration(I)Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->build()Lffmpeg/base/MediaEditingConfig;

    move-result-object p2

    .line 244
    iget-object p4, p0, Lcom/narvii/video/services/VideoManager;->delegate:Lffmpeg/base/IEditor;

    iget-object v0, p0, Lcom/narvii/video/services/VideoManager;->backgroundTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p5

    move-object v6, p1

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;-><init>(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;)V

    invoke-interface {p4, p2, v0, v1}, Lffmpeg/base/IEditor;->execute(Lffmpeg/base/MediaEditingConfig;Ljava/util/concurrent/ExecutorService;Lffmpeg/base/IEditorExecuteCallback;)V

    return-object p2

    .line 238
    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    :cond_3
    :goto_0
    if-eqz p5, :cond_4

    .line 235
    invoke-interface {p5, v1}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onActionFailed(Ljava/lang/Exception;)V

    :cond_4
    return-object v1
.end method

.method public final obtainInstalledStickerInfo(Lcom/narvii/model/Sticker;Ljava/lang/String;)Lcom/narvii/video/model/StickerInfoPack;
    .locals 5

    const-string v0, "sticker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 382
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/video/services/VideoManager;->createStickerInstallKey(Lcom/narvii/model/Sticker;)Ljava/lang/String;

    move-result-object v1

    .line 383
    iget-object v2, p0, Lcom/narvii/video/services/VideoManager;->installedStickerMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 384
    iget-object v2, p0, Lcom/narvii/video/services/VideoManager;->installedStickerMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/video/model/StickerInfoPack;

    if-eqz v2, :cond_1

    .line 386
    iget p1, p1, Lcom/narvii/model/Sticker;->sourceType:I

    iput p1, v2, Lcom/narvii/video/model/StickerInfoPack;->sourceType:I

    return-object v2

    .line 389
    :cond_1
    iget-object v2, p0, Lcom/narvii/video/services/VideoManager;->installedStickerMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    :cond_2
    invoke-static {p1}, Lcom/narvii/video/model/StickerInfoPack;->constructFromSticker(Lcom/narvii/model/Sticker;)Lcom/narvii/video/model/StickerInfoPack;

    move-result-object p1

    .line 392
    iput-object p2, p1, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    .line 393
    iget-object p2, p0, Lcom/narvii/video/services/VideoManager;->delegate:Lffmpeg/base/IEditor;

    const-string v2, "stickerInfoPack"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lffmpeg/base/IEditor;->getStickerCopiedSrcFile(Lcom/narvii/video/model/StickerInfoPack;)Ljava/io/File;

    move-result-object p2

    .line 394
    iget-object v2, p0, Lcom/narvii/video/services/VideoManager;->delegate:Lffmpeg/base/IEditor;

    invoke-interface {v2, p1}, Lffmpeg/base/IEditor;->getTargetStickerInstallFile(Lcom/narvii/video/model/StickerInfoPack;)Ljava/io/File;

    move-result-object v2

    if-eqz p2, :cond_3

    .line 395
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/narvii/video/services/VideoManager;->delegate:Lffmpeg/base/IEditor;

    invoke-interface {v3, p1}, Lffmpeg/base/IEditor;->hasStickerTemplatedInstalled(Lcom/narvii/video/model/StickerInfoPack;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 396
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    .line 397
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/video/model/StickerInfoPack;->installedPath:Ljava/lang/String;

    .line 398
    iget-object p2, p0, Lcom/narvii/video/services/VideoManager;->installedStickerMap:Ljava/util/HashMap;

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_3
    return-object v0
.end method

.method public final onLocalStickerCacheCleared()V
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager;->installedStickerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 458
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager;->delegate:Lffmpeg/base/IEditor;

    invoke-interface {v0}, Lffmpeg/base/IEditor;->onLocalStickerCacheCleared()V

    return-void
.end method

.method public final registerStickerInstallCallback(Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    iput-object p1, p0, Lcom/narvii/video/services/VideoManager;->pageInstallStickerCallback:Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;

    return-void
.end method

.method public final removeAllViewInstallStickerCallback()V
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager;->viewInstallStickerCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final removeViewInstallCollectionCallbacks(Ljava/lang/String;)V
    .locals 3

    const-string v0, "collectionId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager;->viewInstallStickerCallbackMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 358
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 359
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 360
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final removeViewInstallStickerCallback(Lcom/narvii/model/Sticker;)V
    .locals 1

    const-string v0, "sticker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    invoke-direct {p0, p1}, Lcom/narvii/video/services/VideoManager;->createStickerInstallKey(Lcom/narvii/model/Sticker;)Ljava/lang/String;

    move-result-object p1

    .line 353
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager;->viewInstallStickerCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final simpleAVMix(Lcom/narvii/video/model/AVClipInfoPack;Ljava/util/List;Ljava/io/File;Lcom/narvii/video/interfaces/IVideoServiceCallback;Z)Lffmpeg/base/MediaEditingConfig;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/video/model/AVClipInfoPack;",
            ">;",
            "Ljava/io/File;",
            "Lcom/narvii/video/interfaces/IVideoServiceCallback;",
            "Z)",
            "Lffmpeg/base/MediaEditingConfig;"
        }
    .end annotation

    const-string v0, "videoTrackClip"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioTrackClips"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Lcom/narvii/video/model/AVClipInfoPack;->getInputFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    if-eqz p4, :cond_0

    .line 60
    invoke-interface {p4, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onActionFailed(Ljava/lang/Exception;)V

    :cond_0
    return-object p1

    .line 63
    :cond_1
    new-instance v0, Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    const/16 v1, 0x80

    invoke-direct {v0, p1, p3, v1}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;-><init>(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;I)V

    .line 64
    invoke-virtual {v0, p2}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->additionalAudioInputList(Ljava/util/List;)Lffmpeg/base/MediaEditingConfig$Companion$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lffmpeg/base/MediaEditingConfig$Companion$Builder;->build()Lffmpeg/base/MediaEditingConfig;

    move-result-object p1

    .line 65
    invoke-virtual {p1, p5}, Lffmpeg/base/MediaEditingConfig;->setForceSoftware(Z)V

    if-eqz p5, :cond_2

    .line 67
    iget-object p2, p0, Lcom/narvii/video/services/VideoManager;->softwareDelegate:Lffmpeg/base/IEditor;

    iget-object p5, p0, Lcom/narvii/video/services/VideoManager;->backgroundTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v6, Lcom/narvii/video/services/VideoManager$simpleAVMix$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/narvii/video/services/VideoManager$simpleAVMix$1;-><init>(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;)V

    invoke-interface {p2, p1, p5, v6}, Lffmpeg/base/IEditor;->execute(Lffmpeg/base/MediaEditingConfig;Ljava/util/concurrent/ExecutorService;Lffmpeg/base/IEditorExecuteCallback;)V

    goto :goto_0

    .line 69
    :cond_2
    iget-object p2, p0, Lcom/narvii/video/services/VideoManager;->delegate:Lffmpeg/base/IEditor;

    iget-object p5, p0, Lcom/narvii/video/services/VideoManager;->backgroundTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v6, Lcom/narvii/video/services/VideoManager$simpleAVMix$2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/narvii/video/services/VideoManager$simpleAVMix$2;-><init>(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;)V

    invoke-interface {p2, p1, p5, v6}, Lffmpeg/base/IEditor;->execute(Lffmpeg/base/MediaEditingConfig;Ljava/util/concurrent/ExecutorService;Lffmpeg/base/IEditorExecuteCallback;)V

    :goto_0
    return-object p1
.end method

.method public final unregisterStickerInstallCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 343
    iput-object v0, p0, Lcom/narvii/video/services/VideoManager;->pageInstallStickerCallback:Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;

    return-void
.end method
