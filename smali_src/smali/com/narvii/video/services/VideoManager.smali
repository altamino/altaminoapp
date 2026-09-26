.class public final Lcom/narvii/video/services/VideoManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/services/VideoManager$IFetchStreamInfoCallback;,
        Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;,
        Lcom/narvii/video/services/VideoManager$SimpleEditorExecuteCallbackImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoManager.kt\ncom/narvii/video/services/VideoManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,497:1\n1#2:498\n*E\n"
.end annotation


# instance fields
.field private final backgroundTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final ctx:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final delegate:Lg7/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pageInstallStickerCallback:Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final softwareDelegate:Lg7/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tmpFileFolder:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewInstallStickerCallbackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 3
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/video/services/VideoManager;->ctx:Lcom/narvii/app/NVContext;

    .line 11
    .line 12
    sget-object v0, Lg7/e;->Companion:Lg7/e$a;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lg7/e$a;->a(Lcom/narvii/app/NVContext;)Lg7/a;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    iput-object v1, p0, Lcom/narvii/video/services/VideoManager;->delegate:Lg7/a;

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    const-string v2, "getContext(...)"

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lg7/e$a;->b(Landroid/content/Context;)Lg7/a;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    iput-object v0, p0, Lcom/narvii/video/services/VideoManager;->softwareDelegate:Lg7/a;

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/narvii/util/Utils;->getCoreThreadCount()I

    .line 37
    move-result v0

    .line 38
    const/4 v1, 0x1

    .line 39
    sub-int/2addr v0, v1

    .line 40
    const/4 v2, 0x4

    .line 41
    .line 42
    .line 43
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    .line 44
    move-result v0

    .line 45
    .line 46
    const-string v2, "Foreground_encoding"

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->createThreadPoolExecutor(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    iput-object v0, p0, Lcom/narvii/video/services/VideoManager;->foregroundTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 53
    .line 54
    const-string v0, "Background_encoding"

    .line 55
    .line 56
    .line 57
    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->createThreadPoolExecutor(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    iput-object v0, p0, Lcom/narvii/video/services/VideoManager;->backgroundTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 61
    .line 62
    new-instance v0, Ljava/io/File;

    .line 63
    .line 64
    .line 65
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    .line 73
    const-string/jumbo v1, "video_tmp"

    .line 74
    .line 75
    .line 76
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 77
    .line 78
    iput-object v0, p0, Lcom/narvii/video/services/VideoManager;->tmpFileFolder:Ljava/io/File;

    .line 79
    .line 80
    new-instance p1, Ljava/util/HashMap;

    .line 81
    .line 82
    .line 83
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 84
    .line 85
    iput-object p1, p0, Lcom/narvii/video/services/VideoManager;->installedStickerMap:Ljava/util/HashMap;

    .line 86
    .line 87
    new-instance p1, Ljava/util/HashMap;

    .line 88
    .line 89
    .line 90
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 91
    .line 92
    iput-object p1, p0, Lcom/narvii/video/services/VideoManager;->viewInstallStickerCallbackMap:Ljava/util/HashMap;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 96
    return-void
.end method

.method public static synthetic a(Lcom/narvii/video/services/VideoManager$IFetchStreamInfoCallback;Lcom/narvii/video/services/VideoManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/video/services/VideoManager;->fetchStreamInfo$lambda$0(Lcom/narvii/video/services/VideoManager$IFetchStreamInfoCallback;Lcom/narvii/video/services/VideoManager;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getBackgroundTaskExecutor$p(Lcom/narvii/video/services/VideoManager;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/services/VideoManager;->backgroundTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getDelegate$p(Lcom/narvii/video/services/VideoManager;)Lg7/a;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/services/VideoManager;->delegate:Lg7/a;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getInstalledStickerMap$p(Lcom/narvii/video/services/VideoManager;)Ljava/util/HashMap;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/services/VideoManager;->installedStickerMap:Ljava/util/HashMap;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getPageInstallStickerCallback$p(Lcom/narvii/video/services/VideoManager;)Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/services/VideoManager;->pageInstallStickerCallback:Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getViewInstallStickerCallbackMap$p(Lcom/narvii/video/services/VideoManager;)Ljava/util/HashMap;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/services/VideoManager;->viewInstallStickerCallbackMap:Ljava/util/HashMap;

    .line 3
    return-object p0
.end method

.method public static synthetic concatVideo$default(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;Lcom/narvii/video/interfaces/IVideoServiceCallback;ILjava/lang/Object;)Lg7/d;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p4, p4, 0x4

    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    const/4 p3, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/video/services/VideoManager;->concatVideo(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;Lcom/narvii/video/interfaces/IVideoServiceCallback;)Lg7/d;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static synthetic convertImg2Video$default(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;Lcom/narvii/video/interfaces/IVideoServiceCallback;ILjava/lang/Object;)Lg7/d;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p4, p4, 0x4

    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    const/4 p3, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/video/services/VideoManager;->convertImg2Video(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;Lcom/narvii/video/interfaces/IVideoServiceCallback;)Lg7/d;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private final createStickerInstallKey(Lcom/narvii/model/Sticker;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    iget-object v1, p1, Lcom/narvii/model/Sticker;->stickerCollectionId:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const/16 v1, 0x5f

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/narvii/model/Sticker;->stickerId:Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_0
    iget-object p1, p1, Lcom/narvii/model/Sticker;->stickerId:Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 35
    :goto_0
    return-object p1
.end method

.method public static synthetic cropVideo$default(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;IILcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/String;ILjava/lang/Object;)Lg7/d;
    .locals 7

    .line 1
    .line 2
    and-int/lit8 p8, p7, 0x8

    .line 3
    .line 4
    if-eqz p8, :cond_0

    .line 5
    const/4 p4, 0x0

    .line 6
    :cond_0
    move v4, p4

    .line 7
    .line 8
    and-int/lit8 p4, p7, 0x10

    .line 9
    const/4 p8, 0x0

    .line 10
    .line 11
    if-eqz p4, :cond_1

    .line 12
    move-object v5, p8

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    move-object v5, p5

    .line 15
    .line 16
    :goto_0
    and-int/lit8 p4, p7, 0x20

    .line 17
    .line 18
    if-eqz p4, :cond_2

    .line 19
    move-object v6, p8

    .line 20
    goto :goto_1

    .line 21
    :cond_2
    move-object v6, p6

    .line 22
    :goto_1
    move-object v0, p0

    .line 23
    move-object v1, p1

    .line 24
    move-object v2, p2

    .line 25
    move v3, p3

    .line 26
    .line 27
    .line 28
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/video/services/VideoManager;->cropVideo(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;IILcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/String;)Lg7/d;

    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public static synthetic cropVideoByCopy$default(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;IIZLcom/narvii/video/interfaces/IVideoServiceCallback;ZZLjava/lang/String;ILjava/lang/Object;)Lg7/d;
    .locals 12

    .line 1
    .line 2
    move/from16 v0, p10

    .line 3
    .line 4
    and-int/lit8 v1, v0, 0x8

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v6, v1

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    move/from16 v6, p4

    .line 12
    .line 13
    :goto_0
    and-int/lit8 v1, v0, 0x20

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    move-object v8, v2

    .line 18
    goto :goto_1

    .line 19
    .line 20
    :cond_1
    move-object/from16 v8, p6

    .line 21
    .line 22
    :goto_1
    and-int/lit16 v0, v0, 0x100

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    move-object v11, v2

    .line 26
    goto :goto_2

    .line 27
    .line 28
    :cond_2
    move-object/from16 v11, p9

    .line 29
    :goto_2
    move-object v2, p0

    .line 30
    move-object v3, p1

    .line 31
    move-object v4, p2

    .line 32
    move v5, p3

    .line 33
    .line 34
    move/from16 v7, p5

    .line 35
    .line 36
    move/from16 v9, p7

    .line 37
    .line 38
    move/from16 v10, p8

    .line 39
    .line 40
    .line 41
    invoke-virtual/range {v2 .. v11}, Lcom/narvii/video/services/VideoManager;->cropVideoByCopy(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;IIZLcom/narvii/video/interfaces/IVideoServiceCallback;ZZLjava/lang/String;)Lg7/d;

    .line 42
    move-result-object v0

    .line 43
    return-object v0
.end method

.method public static synthetic encodeSceneOutput$default(Lcom/narvii/video/services/VideoManager;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/io/File;ZZLcom/narvii/video/interfaces/IVideoServiceCallback;ILjava/lang/Object;)Lg7/d;
    .locals 7

    .line 1
    .line 2
    and-int/lit8 p8, p7, 0x8

    .line 3
    .line 4
    if-eqz p8, :cond_0

    .line 5
    const/4 p4, 0x1

    .line 6
    :cond_0
    move v4, p4

    .line 7
    .line 8
    and-int/lit8 p4, p7, 0x10

    .line 9
    .line 10
    if-eqz p4, :cond_1

    .line 11
    const/4 p5, 0x0

    .line 12
    :cond_1
    move v5, p5

    .line 13
    .line 14
    and-int/lit8 p4, p7, 0x20

    .line 15
    .line 16
    if-eqz p4, :cond_2

    .line 17
    const/4 p6, 0x0

    .line 18
    :cond_2
    move-object v6, p6

    .line 19
    move-object v0, p0

    .line 20
    move-object v1, p1

    .line 21
    move-object v2, p2

    .line 22
    move-object v3, p3

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/video/services/VideoManager;->encodeSceneOutput(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/io/File;ZZLcom/narvii/video/interfaces/IVideoServiceCallback;)Lg7/d;

    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public static synthetic encodeScenePreview$default(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/model/AVClipInfoPack;Ljava/util/ArrayList;Ljava/io/File;ZLcom/narvii/video/interfaces/IVideoServiceCallback;ILjava/lang/Object;)Lg7/d;
    .locals 6

    .line 1
    .line 2
    and-int/lit8 p7, p6, 0x8

    .line 3
    .line 4
    if-eqz p7, :cond_0

    .line 5
    const/4 p4, 0x0

    .line 6
    :cond_0
    move v4, p4

    .line 7
    .line 8
    and-int/lit8 p4, p6, 0x10

    .line 9
    .line 10
    if-eqz p4, :cond_1

    .line 11
    const/4 p5, 0x0

    .line 12
    :cond_1
    move-object v5, p5

    .line 13
    move-object v0, p0

    .line 14
    move-object v1, p1

    .line 15
    move-object v2, p2

    .line 16
    move-object v3, p3

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/video/services/VideoManager;->encodeScenePreview(Lcom/narvii/video/model/AVClipInfoPack;Ljava/util/ArrayList;Ljava/io/File;ZLcom/narvii/video/interfaces/IVideoServiceCallback;)Lg7/d;

    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method private static final fetchStreamInfo$lambda$0(Lcom/narvii/video/services/VideoManager$IFetchStreamInfoCallback;Lcom/narvii/video/services/VideoManager;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "$callback"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v0, "this$0"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string v0, "$input"

    .line 14
    .line 15
    .line 16
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    iget-object p1, p1, Lcom/narvii/video/services/VideoManager;->delegate:Lg7/a;

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, p2}, Lg7/a;->fetchStreamingInfo(Ljava/lang/String;)Lcom/narvii/video/model/StreamInfo;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-interface {p0, p1}, Lcom/narvii/video/services/VideoManager$IFetchStreamInfoCallback;->onStreamInfoFetched(Lcom/narvii/video/model/StreamInfo;)V

    .line 26
    return-void
.end method

.method public static synthetic getCoverImage$default(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;IIILcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/String;ZILjava/lang/Object;)Lg7/d;
    .locals 12

    .line 1
    .line 2
    move/from16 v0, p9

    .line 3
    .line 4
    and-int/lit8 v1, v0, 0x8

    .line 5
    const/4 v2, -0x2

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    move v7, v2

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    move/from16 v7, p4

    .line 12
    .line 13
    :goto_0
    and-int/lit8 v1, v0, 0x10

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    move v8, v2

    .line 17
    goto :goto_1

    .line 18
    .line 19
    :cond_1
    move/from16 v8, p5

    .line 20
    .line 21
    :goto_1
    and-int/lit8 v1, v0, 0x20

    .line 22
    const/4 v2, 0x0

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    move-object v9, v2

    .line 26
    goto :goto_2

    .line 27
    .line 28
    :cond_2
    move-object/from16 v9, p6

    .line 29
    .line 30
    :goto_2
    and-int/lit8 v1, v0, 0x40

    .line 31
    .line 32
    if-eqz v1, :cond_3

    .line 33
    move-object v10, v2

    .line 34
    goto :goto_3

    .line 35
    .line 36
    :cond_3
    move-object/from16 v10, p7

    .line 37
    .line 38
    :goto_3
    and-int/lit16 v0, v0, 0x80

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    const/4 v0, 0x0

    .line 42
    move v11, v0

    .line 43
    goto :goto_4

    .line 44
    .line 45
    :cond_4
    move/from16 v11, p8

    .line 46
    :goto_4
    move-object v3, p0

    .line 47
    move-object v4, p1

    .line 48
    move-object v5, p2

    .line 49
    move v6, p3

    .line 50
    .line 51
    .line 52
    invoke-virtual/range {v3 .. v11}, Lcom/narvii/video/services/VideoManager;->getCoverImage(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;IIILcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/String;Z)Lg7/d;

    .line 53
    move-result-object v0

    .line 54
    return-object v0
.end method

.method public static synthetic mixBGM_Stage1$default(Lcom/narvii/video/services/VideoManager;Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;Lcom/narvii/video/interfaces/IVideoServiceCallback;ILjava/lang/Object;)Lg7/d;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p5, p5, 0x8

    .line 3
    .line 4
    if-eqz p5, :cond_0

    .line 5
    const/4 p4, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/narvii/video/services/VideoManager;->mixBGM_Stage1(Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;Lcom/narvii/video/interfaces/IVideoServiceCallback;)Lg7/d;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static synthetic mixBGM_Stage2$default(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;ILcom/narvii/video/interfaces/IVideoServiceCallback;ILjava/lang/Object;)Lg7/d;
    .locals 6

    .line 1
    .line 2
    and-int/lit8 p6, p6, 0x10

    .line 3
    .line 4
    if-eqz p6, :cond_0

    .line 5
    const/4 p5, 0x0

    .line 6
    :cond_0
    move-object v5, p5

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v2, p2

    .line 10
    move-object v3, p3

    .line 11
    move v4, p4

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/video/services/VideoManager;->mixBGM_Stage2(Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;ILcom/narvii/video/interfaces/IVideoServiceCallback;)Lg7/d;

    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static synthetic simpleAVMix$default(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/model/AVClipInfoPack;Ljava/util/List;Ljava/io/File;Lcom/narvii/video/interfaces/IVideoServiceCallback;ZILjava/lang/Object;)Lg7/d;
    .locals 6

    .line 1
    .line 2
    and-int/lit8 p7, p6, 0x8

    .line 3
    .line 4
    if-eqz p7, :cond_0

    .line 5
    const/4 p4, 0x0

    .line 6
    :cond_0
    move-object v4, p4

    .line 7
    .line 8
    and-int/lit8 p4, p6, 0x10

    .line 9
    .line 10
    if-eqz p4, :cond_1

    .line 11
    const/4 p5, 0x0

    .line 12
    :cond_1
    move v5, p5

    .line 13
    move-object v0, p0

    .line 14
    move-object v1, p1

    .line 15
    move-object v2, p2

    .line 16
    move-object v3, p3

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/video/services/VideoManager;->simpleAVMix(Lcom/narvii/video/model/AVClipInfoPack;Ljava/util/List;Ljava/io/File;Lcom/narvii/video/interfaces/IVideoServiceCallback;Z)Lg7/d;

    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method


# virtual methods
.method public final abort(Lg7/d;)V
    .locals 1
    .param p1    # Lg7/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "task"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lg7/d;->g()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager;->softwareDelegate:Lg7/a;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p1}, Lg7/a;->abort(Lg7/d;)V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager;->delegate:Lg7/a;

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, p1}, Lg7/a;->abort(Lg7/d;)V

    .line 24
    :goto_0
    return-void
.end method

.method public final abortAll(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lg7/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "tasks"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    check-cast v0, Lg7/d;

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/narvii/video/services/VideoManager;->abort(Lg7/d;)V

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method public final abortAnimatedStickerConvertTask(Lcom/narvii/video/model/StickerInfoPack;)V
    .locals 1
    .param p1    # Lcom/narvii/video/model/StickerInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string/jumbo v0, "stickerInfoPack"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager;->delegate:Lg7/a;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1}, Lg7/a;->abortAnimatedStickerConvertTask(Lcom/narvii/video/model/StickerInfoPack;)V

    .line 11
    return-void
.end method

.method public final abortAnimatedStickerConvertTasks()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager;->delegate:Lg7/a;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lg7/a;->abortAnimatedStickerConvertTasks()V

    .line 6
    return-void
.end method

.method public final addViewInstallStickerCallback(Lcom/narvii/model/Sticker;Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;)V
    .locals 1
    .param p1    # Lcom/narvii/model/Sticker;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string/jumbo v0, "sticker"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v0, "viewInstallStickerCallback"

    .line 9
    .line 10
    .line 11
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1}, Lcom/narvii/video/services/VideoManager;->createStickerInstallKey(Lcom/narvii/model/Sticker;)Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager;->viewInstallStickerCallbackMap:Ljava/util/HashMap;

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    return-void
.end method

.method public final concatVideo(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;Lcom/narvii/video/interfaces/IVideoServiceCallback;)Lg7/d;
    .locals 3
    .param p1    # Lcom/narvii/video/model/AVClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/video/interfaces/IVideoServiceCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "input"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "output"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance v0, Lg7/d$a$a;

    .line 13
    .line 14
    const/16 v1, 0x1000

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p1, p2, v1}, Lg7/d$a$a;-><init>(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;I)V

    .line 18
    const/4 p1, 0x1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lg7/d$a$a;->I(Z)Lg7/d$a$a;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lg7/d$a$a;->c()Lg7/d;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager;->delegate:Lg7/a;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/video/services/VideoManager;->backgroundTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 31
    .line 32
    new-instance v2, Lcom/narvii/video/services/VideoManager$concatVideo$1;

    .line 33
    .line 34
    .line 35
    invoke-direct {v2, p0, p3, p2}, Lcom/narvii/video/services/VideoManager$concatVideo$1;-><init>(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, p1, v1, v2}, Lg7/a;->execute(Lg7/d;Ljava/util/concurrent/ExecutorService;Lg7/c;)V

    .line 39
    return-object p1
.end method

.method public final convertImg2Video(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;Lcom/narvii/video/interfaces/IVideoServiceCallback;)Lg7/d;
    .locals 3
    .param p1    # Lcom/narvii/video/model/AVClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/video/interfaces/IVideoServiceCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "input"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "output"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/util/Utils;->isBMP(Ljava/lang/String;)Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    iget-object v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/narvii/util/Utils;->isJPG(Ljava/lang/String;)Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    iget-object v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lcom/narvii/util/Utils;->isPNG(Ljava/lang/String;)Z

    .line 32
    move-result v0

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_0
    iget-object v0, p1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lcom/narvii/util/Utils;->isGifInData(Ljava/lang/String;)Z

    .line 41
    move-result v0

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    new-instance v0, Lg7/d$a$a;

    .line 46
    .line 47
    const/16 v1, 0x800

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, p1, p2, v1}, Lg7/d$a$a;-><init>(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lg7/d$a$a;->c()Lg7/d;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager;->delegate:Lg7/a;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/narvii/video/services/VideoManager;->backgroundTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 59
    .line 60
    new-instance v2, Lcom/narvii/video/services/VideoManager$convertImg2Video$2;

    .line 61
    .line 62
    .line 63
    invoke-direct {v2, p0, p3, p2}, Lcom/narvii/video/services/VideoManager$convertImg2Video$2;-><init>(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {v0, p1, v1, v2}, Lg7/a;->execute(Lg7/d;Ljava/util/concurrent/ExecutorService;Lg7/c;)V

    .line 67
    return-object p1

    .line 68
    :cond_1
    const/4 p1, 0x0

    .line 69
    return-object p1

    .line 70
    .line 71
    :cond_2
    :goto_0
    new-instance v0, Lg7/d$a$a;

    .line 72
    .line 73
    const/16 v1, 0x400

    .line 74
    .line 75
    .line 76
    invoke-direct {v0, p1, p2, v1}, Lg7/d$a$a;-><init>(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lg7/d$a$a;->c()Lg7/d;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager;->delegate:Lg7/a;

    .line 83
    .line 84
    iget-object v1, p0, Lcom/narvii/video/services/VideoManager;->backgroundTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 85
    .line 86
    new-instance v2, Lcom/narvii/video/services/VideoManager$convertImg2Video$1;

    .line 87
    .line 88
    .line 89
    invoke-direct {v2, p0, p3, p2}, Lcom/narvii/video/services/VideoManager$convertImg2Video$1;-><init>(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;)V

    .line 90
    .line 91
    .line 92
    invoke-interface {v0, p1, v1, v2}, Lg7/a;->execute(Lg7/d;Ljava/util/concurrent/ExecutorService;Lg7/c;)V

    .line 93
    return-object p1
.end method

.method public final cropVideo(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;IILcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/String;)Lg7/d;
    .locals 7
    .param p1    # Lcom/narvii/video/model/AVClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/video/interfaces/IVideoServiceCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "input"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "output"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance v0, Lg7/d$a$a;

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x4

    .line 15
    const/4 v6, 0x0

    .line 16
    move-object v1, v0

    .line 17
    move-object v2, p1

    .line 18
    move-object v3, p2

    .line 19
    .line 20
    .line 21
    invoke-direct/range {v1 .. v6}, Lg7/d$a$a;-><init>(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;IILkotlin/jvm/internal/k;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p3}, Lg7/d$a$a;->e(I)Lg7/d$a$a;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p4}, Lg7/d$a$a;->M(I)Lg7/d$a$a;

    .line 29
    move-result-object p1

    .line 30
    const/4 p3, 0x1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p3}, Lg7/d$a$a;->I(Z)Lg7/d$a$a;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lg7/d$a$a;->c()Lg7/d;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    iget-object p3, p0, Lcom/narvii/video/services/VideoManager;->delegate:Lg7/a;

    .line 41
    .line 42
    iget-object p4, p0, Lcom/narvii/video/services/VideoManager;->backgroundTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 43
    .line 44
    new-instance v0, Lcom/narvii/video/services/VideoManager$cropVideo$1;

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, p0, p5, p2, p6}, Lcom/narvii/video/services/VideoManager$cropVideo$1;-><init>(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {p3, p1, p4, v0}, Lg7/a;->execute(Lg7/d;Ljava/util/concurrent/ExecutorService;Lg7/c;)V

    .line 51
    return-object p1
.end method

.method public final cropVideoByCopy(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;IIZLcom/narvii/video/interfaces/IVideoServiceCallback;ZZLjava/lang/String;)Lg7/d;
    .locals 2
    .param p1    # Lcom/narvii/video/model/AVClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/narvii/video/interfaces/IVideoServiceCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "input"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "output"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance v0, Lg7/d$a$a;

    .line 13
    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p1, p2, v1}, Lg7/d$a$a;-><init>(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p3}, Lg7/d$a$a;->e(I)Lg7/d$a$a;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p4}, Lg7/d$a$a;->M(I)Lg7/d$a$a;

    .line 25
    move-result-object p1

    .line 26
    const/4 p3, 0x1

    .line 27
    .line 28
    if-eqz p7, :cond_0

    .line 29
    .line 30
    if-eqz p8, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p3}, Lg7/d$a$a;->g(Z)Lg7/d$a$a;

    .line 34
    move-result-object p4

    .line 35
    .line 36
    .line 37
    invoke-virtual {p4, p3}, Lg7/d$a$a;->f(Z)Lg7/d$a$a;

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_0
    if-eqz p7, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p3}, Lg7/d$a$a;->g(Z)Lg7/d$a$a;

    .line 44
    move-result-object p4

    .line 45
    .line 46
    .line 47
    invoke-virtual {p4, p3}, Lg7/d$a$a;->N(Z)Lg7/d$a$a;

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_1
    if-eqz p8, :cond_2

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p3}, Lg7/d$a$a;->f(Z)Lg7/d$a$a;

    .line 54
    move-result-object p4

    .line 55
    .line 56
    .line 57
    invoke-virtual {p4, p3}, Lg7/d$a$a;->b(Z)Lg7/d$a$a;

    .line 58
    .line 59
    .line 60
    :cond_2
    :goto_0
    invoke-virtual {p1, p3}, Lg7/d$a$a;->I(Z)Lg7/d$a$a;

    .line 61
    move-result-object p3

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3, p5}, Lg7/d$a$a;->d(Z)Lg7/d$a$a;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lg7/d$a$a;->c()Lg7/d;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    iget-object p3, p0, Lcom/narvii/video/services/VideoManager;->delegate:Lg7/a;

    .line 71
    .line 72
    iget-object p4, p0, Lcom/narvii/video/services/VideoManager;->backgroundTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 73
    .line 74
    new-instance p5, Lcom/narvii/video/services/VideoManager$cropVideoByCopy$1;

    .line 75
    .line 76
    .line 77
    invoke-direct {p5, p0, p6, p2, p9}, Lcom/narvii/video/services/VideoManager$cropVideoByCopy$1;-><init>(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-interface {p3, p1, p4, p5}, Lg7/a;->execute(Lg7/d;Ljava/util/concurrent/ExecutorService;Lg7/c;)V

    .line 81
    return-object p1
.end method

.method public final encodeSceneOutput(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/io/File;ZZLcom/narvii/video/interfaces/IVideoServiceCallback;)Lg7/d;
    .locals 4
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/narvii/video/interfaces/IVideoServiceCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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
            "Lg7/d;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "videoClips"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    const-string v0, "output"

    .line 9
    .line 10
    .line 11
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    const/4 p1, 0x0

    .line 19
    .line 20
    if-eqz p6, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-interface {p6, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onActionFailed(Ljava/lang/Exception;)V

    .line 24
    :cond_0
    return-object p1

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x0

    .line 30
    move v2, v1

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v3

    .line 35
    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    check-cast v3, Lcom/narvii/video/model/AVClipInfoPack;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    .line 46
    move-result v3

    .line 47
    add-int/2addr v2, v3

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_2
    new-instance v0, Lg7/d$a$a;

    .line 51
    .line 52
    const/16 v3, 0x20

    .line 53
    .line 54
    .line 55
    invoke-direct {v0, p1, p3, v3}, Lg7/d$a$a;-><init>(Ljava/util/List;Ljava/io/File;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2}, Lg7/d$a$a;->e(I)Lg7/d$a$a;

    .line 59
    move-result-object v0

    .line 60
    const/4 v2, 0x1

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2}, Lg7/d$a$a;->I(Z)Lg7/d$a$a;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p4}, Lg7/d$a$a;->G(Z)Lg7/d$a$a;

    .line 68
    move-result-object p4

    .line 69
    .line 70
    if-eqz p2, :cond_3

    .line 71
    .line 72
    .line 73
    invoke-virtual {p4, p2}, Lg7/d$a$a;->a(Ljava/util/List;)Lg7/d$a$a;

    .line 74
    .line 75
    .line 76
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 77
    move-result p2

    .line 78
    .line 79
    if-ne p2, v2, :cond_4

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    move-result-object p1

    .line 84
    .line 85
    check-cast p1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs()I

    .line 89
    move-result p1

    .line 90
    .line 91
    .line 92
    invoke-virtual {p4, p1}, Lg7/d$a$a;->M(I)Lg7/d$a$a;

    .line 93
    .line 94
    .line 95
    :cond_4
    invoke-virtual {p4}, Lg7/d$a$a;->c()Lg7/d;

    .line 96
    move-result-object p1

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v2}, Lg7/d;->N(Z)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v2}, Lg7/d;->L(Z)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v2}, Lg7/d;->M(Z)V

    .line 106
    .line 107
    iget-object p2, p0, Lcom/narvii/video/services/VideoManager;->delegate:Lg7/a;

    .line 108
    .line 109
    if-eqz p5, :cond_5

    .line 110
    .line 111
    iget-object p4, p0, Lcom/narvii/video/services/VideoManager;->backgroundTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 112
    goto :goto_1

    .line 113
    .line 114
    :cond_5
    iget-object p4, p0, Lcom/narvii/video/services/VideoManager;->foregroundTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 115
    .line 116
    :goto_1
    new-instance p5, Lcom/narvii/video/services/VideoManager$encodeSceneOutput$2;

    .line 117
    .line 118
    .line 119
    invoke-direct {p5, p0, p6, p3}, Lcom/narvii/video/services/VideoManager$encodeSceneOutput$2;-><init>(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;)V

    .line 120
    .line 121
    .line 122
    invoke-interface {p2, p1, p4, p5}, Lg7/a;->execute(Lg7/d;Ljava/util/concurrent/ExecutorService;Lg7/c;)V

    .line 123
    return-object p1
.end method

.method public final encodeScenePreview(Lcom/narvii/video/model/AVClipInfoPack;Ljava/util/ArrayList;Ljava/io/File;ZLcom/narvii/video/interfaces/IVideoServiceCallback;)Lg7/d;
    .locals 7
    .param p1    # Lcom/narvii/video/model/AVClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/video/interfaces/IVideoServiceCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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
            "Lg7/d;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "videoClip"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    const-string v0, "audioClips"

    .line 9
    .line 10
    .line 11
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string v0, "output"

    .line 14
    .line 15
    .line 16
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/video/model/AVClipInfoPack;->getInputFile()Ljava/io/File;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    const/4 p1, 0x0

    .line 24
    .line 25
    if-eqz p5, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-interface {p5, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onActionFailed(Ljava/lang/Exception;)V

    .line 29
    :cond_0
    return-object p1

    .line 30
    .line 31
    :cond_1
    iget v0, p1, Lcom/narvii/video/model/BaseClipInfoPack;->orgDurationInMs:I

    .line 32
    .line 33
    .line 34
    const v1, 0x41eb0

    .line 35
    const/4 v2, 0x0

    .line 36
    const/4 v3, 0x1

    .line 37
    .line 38
    if-le v0, v1, :cond_2

    .line 39
    move v0, v3

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    move v0, v2

    .line 42
    .line 43
    :goto_0
    if-eqz v0, :cond_3

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    .line 50
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    move-result v4

    .line 52
    .line 53
    if-eqz v4, :cond_3

    .line 54
    .line 55
    .line 56
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    move-result-object v4

    .line 58
    .line 59
    check-cast v4, Lcom/narvii/video/model/AVClipInfoPack;

    .line 60
    .line 61
    iget v5, v4, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 62
    .line 63
    iget v6, p1, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 64
    sub-int/2addr v5, v6

    .line 65
    .line 66
    iput v5, v4, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 67
    goto :goto_1

    .line 68
    .line 69
    :cond_3
    new-instance v1, Lg7/d$a$a;

    .line 70
    .line 71
    const/16 v4, 0x20

    .line 72
    .line 73
    .line 74
    invoke-direct {v1, p1, p3, v4}, Lg7/d$a$a;-><init>(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, p2}, Lg7/d$a$a;->a(Ljava/util/List;)Lg7/d$a$a;

    .line 78
    move-result-object p2

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, p4}, Lg7/d$a$a;->G(Z)Lg7/d$a$a;

    .line 82
    move-result-object p2

    .line 83
    .line 84
    if-eqz v0, :cond_4

    .line 85
    .line 86
    iget p4, p1, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, p4}, Lg7/d$a$a;->M(I)Lg7/d$a$a;

    .line 90
    move-result-object p4

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    .line 94
    move-result v1

    .line 95
    .line 96
    const/16 v4, 0x3a98

    .line 97
    .line 98
    .line 99
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    .line 100
    move-result v1

    .line 101
    .line 102
    .line 103
    invoke-virtual {p4, v1}, Lg7/d$a$a;->e(I)Lg7/d$a$a;

    .line 104
    .line 105
    .line 106
    :cond_4
    invoke-virtual {p2}, Lg7/d$a$a;->c()Lg7/d;

    .line 107
    move-result-object p2

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, v0}, Lg7/d;->N(Z)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, v3}, Lg7/d;->L(Z)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, v0}, Lg7/d;->M(Z)V

    .line 117
    .line 118
    if-eqz v0, :cond_5

    .line 119
    goto :goto_2

    .line 120
    .line 121
    :cond_5
    iget v2, p1, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 122
    .line 123
    :goto_2
    iput v2, p1, Lcom/narvii/video/model/AVClipInfoPack;->previewStartInMs:I

    .line 124
    .line 125
    iget-object p1, p0, Lcom/narvii/video/services/VideoManager;->delegate:Lg7/a;

    .line 126
    .line 127
    iget-object p4, p0, Lcom/narvii/video/services/VideoManager;->backgroundTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 128
    .line 129
    new-instance v0, Lcom/narvii/video/services/VideoManager$encodeScenePreview$1;

    .line 130
    .line 131
    .line 132
    invoke-direct {v0, p0, p5, p3}, Lcom/narvii/video/services/VideoManager$encodeScenePreview$1;-><init>(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;)V

    .line 133
    .line 134
    .line 135
    invoke-interface {p1, p2, p4, v0}, Lg7/a;->execute(Lg7/d;Ljava/util/concurrent/ExecutorService;Lg7/c;)V

    .line 136
    return-object p2
.end method

.method public final fetchStreamInfo(Ljava/lang/String;Lcom/narvii/video/services/VideoManager$IFetchStreamInfoCallback;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/video/services/VideoManager$IFetchStreamInfoCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "input"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "callback"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager;->foregroundTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 13
    .line 14
    new-instance v1, Lcom/narvii/video/services/m;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, p2, p0, p1}, Lcom/narvii/video/services/m;-><init>(Lcom/narvii/video/services/VideoManager$IFetchStreamInfoCallback;Lcom/narvii/video/services/VideoManager;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 21
    return-void
.end method

.method public final fetchStreamInfoSync(Ljava/lang/String;)Lcom/narvii/video/model/StreamInfo;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "input"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager;->delegate:Lg7/a;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1}, Lg7/a;->fetchStreamingInfo(Ljava/lang/String;)Lcom/narvii/video/model/StreamInfo;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final getCoverImage(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;IIILcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/String;Z)Lg7/d;
    .locals 6
    .param p1    # Lcom/narvii/video/model/AVClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/narvii/video/interfaces/IVideoServiceCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "input"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "output"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance v0, Lg7/d$a$a;

    .line 13
    .line 14
    const/16 v1, 0x10

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p1, p2, v1}, Lg7/d$a$a;-><init>(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p3}, Lg7/d$a$a;->M(I)Lg7/d$a$a;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p4, p5}, Lg7/d$a$a;->L(II)Lg7/d$a$a;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p8}, Lg7/d$a$a;->G(Z)Lg7/d$a$a;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lg7/d$a$a;->c()Lg7/d;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    iget-object p4, p0, Lcom/narvii/video/services/VideoManager;->delegate:Lg7/a;

    .line 36
    .line 37
    iget-object p5, p0, Lcom/narvii/video/services/VideoManager;->backgroundTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 38
    .line 39
    new-instance p8, Lcom/narvii/video/services/VideoManager$getCoverImage$1;

    .line 40
    move-object v0, p8

    .line 41
    move-object v1, p0

    .line 42
    move-object v2, p6

    .line 43
    move-object v3, p2

    .line 44
    move-object v4, p7

    .line 45
    move v5, p3

    .line 46
    .line 47
    .line 48
    invoke-direct/range {v0 .. v5}, Lcom/narvii/video/services/VideoManager$getCoverImage$1;-><init>(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    invoke-interface {p4, p1, p5, p8}, Lg7/a;->execute(Lg7/d;Ljava/util/concurrent/ExecutorService;Lg7/c;)V

    .line 52
    return-object p1
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/services/VideoManager;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getTmpFileFolder()Ljava/io/File;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/services/VideoManager;->tmpFileFolder:Ljava/io/File;

    return-object v0
.end method

.method public final installSticker(Lcom/narvii/model/Sticker;Ljava/lang/String;ZLcom/narvii/video/services/VideoManager$IInstallStickerCallback;)V
    .locals 7
    .param p1    # Lcom/narvii/model/Sticker;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string/jumbo v0, "sticker"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, p2

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/narvii/video/services/VideoManager;->obtainInstalledStickerInfo(Lcom/narvii/model/Sticker;Ljava/lang/String;)Lcom/narvii/video/model/StickerInfoPack;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    if-eqz p4, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-interface {p4, v0}, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;->onStickerInstalled(Lcom/narvii/video/model/StickerInfoPack;)V

    .line 23
    .line 24
    :cond_1
    iget-object p1, p0, Lcom/narvii/video/services/VideoManager;->pageInstallStickerCallback:Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;

    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, v0}, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;->onStickerInstalled(Lcom/narvii/video/model/StickerInfoPack;)V

    .line 30
    :cond_2
    return-void

    .line 31
    .line 32
    .line 33
    :cond_3
    invoke-direct {p0, p1}, Lcom/narvii/video/services/VideoManager;->createStickerInstallKey(Lcom/narvii/model/Sticker;)Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lcom/narvii/video/model/StickerInfoPack;->constructFromSticker(Lcom/narvii/model/Sticker;)Lcom/narvii/video/model/StickerInfoPack;

    .line 38
    move-result-object v3

    .line 39
    .line 40
    iput-object p2, v3, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    .line 41
    .line 42
    iget-object p2, p0, Lcom/narvii/video/services/VideoManager;->viewInstallStickerCallbackMap:Ljava/util/HashMap;

    .line 43
    .line 44
    .line 45
    invoke-interface {p2, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    new-instance v6, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;

    .line 48
    .line 49
    .line 50
    invoke-direct {v6, p0, v0, v3, p1}, Lcom/narvii/video/services/VideoManager$installSticker$innerCallback$1;-><init>(Lcom/narvii/video/services/VideoManager;Ljava/lang/String;Lcom/narvii/video/model/StickerInfoPack;Lcom/narvii/model/Sticker;)V

    .line 51
    .line 52
    iget-object p2, v3, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    invoke-static {p2}, Lcom/narvii/util/Utils;->isWebP(Ljava/lang/String;)Z

    .line 56
    move-result p2

    .line 57
    .line 58
    if-eqz p2, :cond_6

    .line 59
    .line 60
    iget-object p2, p0, Lcom/narvii/video/services/VideoManager;->ctx:Lcom/narvii/app/NVContext;

    .line 61
    .line 62
    .line 63
    const-string/jumbo v0, "topActivity"

    .line 64
    .line 65
    .line 66
    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    move-result-object p2

    .line 68
    .line 69
    check-cast p2, Lcom/narvii/util/services/TopActivityService;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Lcom/narvii/util/services/TopActivityService;->getLastResumedActivity()Landroid/app/Activity;

    .line 73
    move-result-object v2

    .line 74
    .line 75
    if-eqz v2, :cond_4

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    .line 79
    move-result p2

    .line 80
    .line 81
    if-nez p2, :cond_4

    .line 82
    .line 83
    iget-object v1, p0, Lcom/narvii/video/services/VideoManager;->delegate:Lg7/a;

    .line 84
    .line 85
    .line 86
    invoke-static {v3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 87
    .line 88
    iget-object v5, p0, Lcom/narvii/video/services/VideoManager;->backgroundTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 89
    move v4, p3

    .line 90
    .line 91
    .line 92
    invoke-interface/range {v1 .. v6}, Lg7/a;->installSticker(Landroid/content/Context;Lcom/narvii/video/model/StickerInfoPack;ZLjava/util/concurrent/ExecutorService;Lg7/b;)V

    .line 93
    goto :goto_1

    .line 94
    .line 95
    :cond_4
    if-eqz p4, :cond_5

    .line 96
    .line 97
    .line 98
    invoke-interface {p4, p1}, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;->onStickerInstallFailed(Lcom/narvii/model/Sticker;)V

    .line 99
    .line 100
    :cond_5
    iget-object p2, p0, Lcom/narvii/video/services/VideoManager;->pageInstallStickerCallback:Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;

    .line 101
    .line 102
    if-eqz p2, :cond_7

    .line 103
    .line 104
    .line 105
    invoke-interface {p2, p1}, Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;->onStickerInstallFailed(Lcom/narvii/model/Sticker;)V

    .line 106
    goto :goto_1

    .line 107
    .line 108
    :cond_6
    iget-object v1, p0, Lcom/narvii/video/services/VideoManager;->delegate:Lg7/a;

    .line 109
    .line 110
    iget-object p1, p0, Lcom/narvii/video/services/VideoManager;->ctx:Lcom/narvii/app/NVContext;

    .line 111
    .line 112
    .line 113
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 114
    move-result-object v2

    .line 115
    .line 116
    const-string p1, "getContext(...)"

    .line 117
    .line 118
    .line 119
    invoke-static {v2, p1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-static {v3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 123
    .line 124
    iget-object v5, p0, Lcom/narvii/video/services/VideoManager;->foregroundTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 125
    move v4, p3

    .line 126
    .line 127
    .line 128
    invoke-interface/range {v1 .. v6}, Lg7/a;->installSticker(Landroid/content/Context;Lcom/narvii/video/model/StickerInfoPack;ZLjava/util/concurrent/ExecutorService;Lg7/b;)V

    .line 129
    :cond_7
    :goto_1
    return-void
.end method

.method public final mixBGM_Stage1(Ljava/util/ArrayList;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;Lcom/narvii/video/interfaces/IVideoServiceCallback;)Lg7/d;
    .locals 10
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/video/model/AVClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/video/interfaces/IVideoServiceCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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
            "Lg7/d;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string/jumbo v0, "sceneVideoList"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "bgm"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "output"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/narvii/video/model/AVClipInfoPack;->getInputFile()Ljava/io/File;

    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    if-eqz p4, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-interface {p4, v1}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onActionFailed(Ljava/lang/Exception;)V

    .line 28
    :cond_0
    return-object v1

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 32
    move-result-object v0

    .line 33
    const/4 v2, 0x0

    .line 34
    move v3, v2

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v4

    .line 39
    .line 40
    if-eqz v4, :cond_4

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v4

    .line 45
    .line 46
    check-cast v4, Lcom/narvii/video/model/AVClipInfoPack;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Lcom/narvii/video/model/AVClipInfoPack;->getInputFile()Ljava/io/File;

    .line 50
    move-result-object v5

    .line 51
    .line 52
    if-nez v5, :cond_3

    .line 53
    .line 54
    if-eqz p4, :cond_2

    .line 55
    .line 56
    .line 57
    invoke-interface {p4, v1}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onActionFailed(Ljava/lang/Exception;)V

    .line 58
    :cond_2
    return-object v1

    .line 59
    .line 60
    .line 61
    :cond_3
    invoke-virtual {v4}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    .line 62
    move-result v4

    .line 63
    add-int/2addr v3, v4

    .line 64
    goto :goto_0

    .line 65
    .line 66
    .line 67
    :cond_4
    invoke-virtual {p1, v2, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 68
    .line 69
    new-instance v6, Ljava/io/File;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p3}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    const-string/jumbo v1, "silent.mp4"

    .line 76
    .line 77
    .line 78
    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    new-instance v0, Lg7/d$a$a;

    .line 81
    .line 82
    const/16 v1, 0x100

    .line 83
    .line 84
    .line 85
    invoke-direct {v0, p2, v6, v1}, Lg7/d$a$a;-><init>(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v3}, Lg7/d$a$a;->e(I)Lg7/d$a$a;

    .line 89
    move-result-object p2

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2}, Lg7/d$a$a;->c()Lg7/d;

    .line 93
    move-result-object p2

    .line 94
    .line 95
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager;->delegate:Lg7/a;

    .line 96
    .line 97
    iget-object v1, p0, Lcom/narvii/video/services/VideoManager;->backgroundTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 98
    .line 99
    new-instance v2, Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1;

    .line 100
    move-object v4, v2

    .line 101
    move-object v5, p4

    .line 102
    move-object v7, p3

    .line 103
    move-object v8, p1

    .line 104
    move-object v9, p0

    .line 105
    .line 106
    .line 107
    invoke-direct/range {v4 .. v9}, Lcom/narvii/video/services/VideoManager$mixBGM_Stage1$1;-><init>(Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;Ljava/io/File;Ljava/util/ArrayList;Lcom/narvii/video/services/VideoManager;)V

    .line 108
    .line 109
    .line 110
    invoke-interface {v0, p2, v1, v2}, Lg7/a;->execute(Lg7/d;Ljava/util/concurrent/ExecutorService;Lg7/c;)V

    .line 111
    return-object p2
.end method

.method public final mixBGM_Stage2(Lcom/narvii/video/model/AVClipInfoPack;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;ILcom/narvii/video/interfaces/IVideoServiceCallback;)Lg7/d;
    .locals 8
    .param p1    # Lcom/narvii/video/model/AVClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/video/model/AVClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/video/interfaces/IVideoServiceCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "video"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    const-string v0, "mixedAudio"

    .line 9
    .line 10
    .line 11
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string v0, "output"

    .line 14
    .line 15
    .line 16
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/video/model/AVClipInfoPack;->getInputFile()Ljava/io/File;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/narvii/video/model/AVClipInfoPack;->getInputFile()Ljava/io/File;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_0
    new-instance v3, Ljava/io/File;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/narvii/video/model/AVClipInfoPack;->getInputFile()Ljava/io/File;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    const-string v2, "audioPiece_"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string p4, ".mp4"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p4

    .line 65
    .line 66
    .line 67
    invoke-direct {v3, v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 71
    move-result p4

    .line 72
    .line 73
    if-eqz p4, :cond_1

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 77
    .line 78
    :cond_1
    new-instance p4, Lg7/d$a$a;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    const-string v1, "getAbsoluteFile(...)"

    .line 85
    .line 86
    .line 87
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    const/16 v1, 0x8

    .line 90
    .line 91
    .line 92
    invoke-direct {p4, p2, v0, v1}, Lg7/d$a$a;-><init>(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;I)V

    .line 93
    const/4 v0, 0x1

    .line 94
    .line 95
    .line 96
    invoke-virtual {p4, v0}, Lg7/d$a$a;->b(Z)Lg7/d$a$a;

    .line 97
    move-result-object p4

    .line 98
    .line 99
    .line 100
    invoke-virtual {p4, v0}, Lg7/d$a$a;->f(Z)Lg7/d$a$a;

    .line 101
    move-result-object p4

    .line 102
    .line 103
    iget v0, p2, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 104
    .line 105
    .line 106
    invoke-virtual {p4, v0}, Lg7/d$a$a;->M(I)Lg7/d$a$a;

    .line 107
    move-result-object p4

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Lcom/narvii/video/model/AVClipInfoPack;->trimmedDurationInMs()I

    .line 111
    move-result p2

    .line 112
    .line 113
    .line 114
    invoke-virtual {p4, p2}, Lg7/d$a$a;->e(I)Lg7/d$a$a;

    .line 115
    move-result-object p2

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2}, Lg7/d$a$a;->c()Lg7/d;

    .line 119
    move-result-object p2

    .line 120
    .line 121
    iget-object p4, p0, Lcom/narvii/video/services/VideoManager;->delegate:Lg7/a;

    .line 122
    .line 123
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager;->backgroundTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 124
    .line 125
    new-instance v7, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;

    .line 126
    move-object v1, v7

    .line 127
    move-object v2, p5

    .line 128
    move-object v4, p1

    .line 129
    move-object v5, p3

    .line 130
    move-object v6, p0

    .line 131
    .line 132
    .line 133
    invoke-direct/range {v1 .. v6}, Lcom/narvii/video/services/VideoManager$mixBGM_Stage2$1;-><init>(Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;Lcom/narvii/video/services/VideoManager;)V

    .line 134
    .line 135
    .line 136
    invoke-interface {p4, p2, v0, v7}, Lg7/a;->execute(Lg7/d;Ljava/util/concurrent/ExecutorService;Lg7/c;)V

    .line 137
    return-object p2

    .line 138
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 139
    .line 140
    if-eqz p5, :cond_3

    .line 141
    .line 142
    .line 143
    invoke-interface {p5, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onActionFailed(Ljava/lang/Exception;)V

    .line 144
    :cond_3
    return-object p1
.end method

.method public final obtainInstalledStickerInfo(Lcom/narvii/model/Sticker;Ljava/lang/String;)Lcom/narvii/video/model/StickerInfoPack;
    .locals 5
    .param p1    # Lcom/narvii/model/Sticker;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string/jumbo v0, "sticker"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    return-object v0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/video/services/VideoManager;->createStickerInstallKey(Lcom/narvii/model/Sticker;)Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    iget-object v2, p0, Lcom/narvii/video/services/VideoManager;->installedStickerMap:Ljava/util/HashMap;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 19
    move-result v2

    .line 20
    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    iget-object v2, p0, Lcom/narvii/video/services/VideoManager;->installedStickerMap:Ljava/util/HashMap;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    check-cast v2, Lcom/narvii/video/model/StickerInfoPack;

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    iget p1, p1, Lcom/narvii/model/Sticker;->sourceType:I

    .line 34
    .line 35
    iput p1, v2, Lcom/narvii/video/model/StickerInfoPack;->sourceType:I

    .line 36
    return-object v2

    .line 37
    .line 38
    :cond_1
    iget-object v2, p0, Lcom/narvii/video/services/VideoManager;->installedStickerMap:Ljava/util/HashMap;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    :cond_2
    invoke-static {p1}, Lcom/narvii/video/model/StickerInfoPack;->constructFromSticker(Lcom/narvii/model/Sticker;)Lcom/narvii/video/model/StickerInfoPack;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    iput-object p2, p1, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    .line 48
    .line 49
    iget-object p2, p0, Lcom/narvii/video/services/VideoManager;->delegate:Lg7/a;

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {p2, p1}, Lg7/a;->getStickerCopiedSrcFile(Lcom/narvii/video/model/StickerInfoPack;)Ljava/io/File;

    .line 56
    move-result-object p2

    .line 57
    .line 58
    iget-object v2, p0, Lcom/narvii/video/services/VideoManager;->delegate:Lg7/a;

    .line 59
    .line 60
    .line 61
    invoke-interface {v2, p1}, Lg7/a;->getTargetStickerInstallFile(Lcom/narvii/video/model/StickerInfoPack;)Ljava/io/File;

    .line 62
    move-result-object v2

    .line 63
    .line 64
    if-eqz p2, :cond_3

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 68
    move-result v3

    .line 69
    const/4 v4, 0x1

    .line 70
    .line 71
    if-ne v3, v4, :cond_3

    .line 72
    .line 73
    if-eqz v2, :cond_3

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 77
    move-result v3

    .line 78
    .line 79
    if-ne v3, v4, :cond_3

    .line 80
    .line 81
    iget-object v3, p0, Lcom/narvii/video/services/VideoManager;->delegate:Lg7/a;

    .line 82
    .line 83
    .line 84
    invoke-interface {v3, p1}, Lg7/a;->hasStickerTemplatedInstalled(Lcom/narvii/video/model/StickerInfoPack;)Z

    .line 85
    move-result v3

    .line 86
    .line 87
    if-eqz v3, :cond_3

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 91
    move-result-object p2

    .line 92
    .line 93
    iput-object p2, p1, Lcom/narvii/video/model/StickerInfoPack;->srcImagePath:Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 97
    move-result-object p2

    .line 98
    .line 99
    iput-object p2, p1, Lcom/narvii/video/model/StickerInfoPack;->installedPath:Ljava/lang/String;

    .line 100
    .line 101
    iget-object p2, p0, Lcom/narvii/video/services/VideoManager;->installedStickerMap:Ljava/util/HashMap;

    .line 102
    .line 103
    .line 104
    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-object p1

    .line 106
    :cond_3
    return-object v0
.end method

.method public final onLocalStickerCacheCleared()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager;->installedStickerMap:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager;->delegate:Lg7/a;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Lg7/a;->onLocalStickerCacheCleared()V

    .line 11
    return-void
.end method

.method public final registerStickerInstallCallback(Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;)V
    .locals 1
    .param p1    # Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/video/services/VideoManager;->pageInstallStickerCallback:Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;

    return-void
.end method

.method public final removeAllViewInstallStickerCallback()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager;->viewInstallStickerCallbackMap:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 6
    return-void
.end method

.method public final removeViewInstallCollectionCallbacks(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "collectionId"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager;->viewInstallStickerCallbackMap:Ljava/util/HashMap;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v1

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    check-cast v1, Ljava/util/Map$Entry;

    .line 28
    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    check-cast v1, Ljava/lang/CharSequence;

    .line 34
    const/4 v2, 0x1

    .line 35
    .line 36
    .line 37
    invoke-static {v1, p1, v2}, Lkotlin/text/k;->N(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 38
    move-result v1

    .line 39
    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return-void
.end method

.method public final removeViewInstallStickerCallback(Lcom/narvii/model/Sticker;)V
    .locals 1
    .param p1    # Lcom/narvii/model/Sticker;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string/jumbo v0, "sticker"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/narvii/video/services/VideoManager;->createStickerInstallKey(Lcom/narvii/model/Sticker;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager;->viewInstallStickerCallbackMap:Ljava/util/HashMap;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    return-void
.end method

.method public final simpleAVMix(Lcom/narvii/video/model/AVClipInfoPack;Ljava/util/List;Ljava/io/File;Lcom/narvii/video/interfaces/IVideoServiceCallback;Z)Lg7/d;
    .locals 2
    .param p1    # Lcom/narvii/video/model/AVClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/video/interfaces/IVideoServiceCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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
            "Lg7/d;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "videoTrackClip"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    const-string v0, "audioTrackClips"

    .line 9
    .line 10
    .line 11
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string v0, "output"

    .line 14
    .line 15
    .line 16
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/video/model/AVClipInfoPack;->getInputFile()Ljava/io/File;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    const/4 p1, 0x0

    .line 24
    .line 25
    if-eqz p4, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-interface {p4, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onActionFailed(Ljava/lang/Exception;)V

    .line 29
    :cond_0
    return-object p1

    .line 30
    .line 31
    :cond_1
    new-instance v0, Lg7/d$a$a;

    .line 32
    .line 33
    const/16 v1, 0x80

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, p1, p3, v1}, Lg7/d$a$a;-><init>(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p2}, Lg7/d$a$a;->a(Ljava/util/List;)Lg7/d$a$a;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lg7/d$a$a;->c()Lg7/d;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p5}, Lg7/d;->J(Z)V

    .line 48
    .line 49
    if-eqz p5, :cond_2

    .line 50
    .line 51
    iget-object p2, p0, Lcom/narvii/video/services/VideoManager;->softwareDelegate:Lg7/a;

    .line 52
    .line 53
    iget-object p5, p0, Lcom/narvii/video/services/VideoManager;->backgroundTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 54
    .line 55
    new-instance v0, Lcom/narvii/video/services/VideoManager$simpleAVMix$1;

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, p0, p4, p3}, Lcom/narvii/video/services/VideoManager$simpleAVMix$1;-><init>(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {p2, p1, p5, v0}, Lg7/a;->execute(Lg7/d;Ljava/util/concurrent/ExecutorService;Lg7/c;)V

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :cond_2
    iget-object p2, p0, Lcom/narvii/video/services/VideoManager;->delegate:Lg7/a;

    .line 65
    .line 66
    iget-object p5, p0, Lcom/narvii/video/services/VideoManager;->backgroundTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 67
    .line 68
    new-instance v0, Lcom/narvii/video/services/VideoManager$simpleAVMix$2;

    .line 69
    .line 70
    .line 71
    invoke-direct {v0, p0, p4, p3}, Lcom/narvii/video/services/VideoManager$simpleAVMix$2;-><init>(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/io/File;)V

    .line 72
    .line 73
    .line 74
    invoke-interface {p2, p1, p5, v0}, Lg7/a;->execute(Lg7/d;Ljava/util/concurrent/ExecutorService;Lg7/c;)V

    .line 75
    :goto_0
    return-object p1
.end method

.method public final unregisterStickerInstallCallback()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/narvii/video/services/VideoManager;->pageInstallStickerCallback:Lcom/narvii/video/services/VideoManager$IInstallStickerCallback;

    return-void
.end method
