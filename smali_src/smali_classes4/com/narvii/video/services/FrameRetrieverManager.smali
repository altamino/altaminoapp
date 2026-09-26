.class public final Lcom/narvii/video/services/FrameRetrieverManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/services/FrameRetrieverManager$Companion;,
        Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;,
        Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFrameRetrieverManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FrameRetrieverManager.kt\ncom/narvii/video/services/FrameRetrieverManager\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,466:1\n21778#2,5:467\n21778#2,5:472\n*S KotlinDebug\n*F\n+ 1 FrameRetrieverManager.kt\ncom/narvii/video/services/FrameRetrieverManager\n*L\n276#1:467,5\n283#1:472,5\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/video/services/FrameRetrieverManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static frameRetrieverManagerInstance:Lcom/narvii/video/services/FrameRetrieverManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field private final audioWaveExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final audioWaveHunterExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final cachedBitmapForFrames$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final cachedBitmapForStaticImages$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final callbackList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;",
            "Lcom/narvii/video/interfaces/IVideoServiceCallback;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ctx:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final frameHunterExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private frameRetrieveIntervalInMs:F

.field private frameSectionLoadFlags:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private frameSectionSize:I

.field private final inProcessFiles:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private initialized:Z

.field private isForAudioWave:Z

.field private keyframeOnly:Z

.field private final maxCacheFileCount:I

.field private maxCacheFrameCount:I

.field private final maxThreadCountForSingleInput:I

.field private final mediaRetriever:Lg7/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private outputFolder:Ljava/io/File;

.field private final requestList:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/video/services/FrameRetrieverManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/video/services/FrameRetrieverManager$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/video/services/FrameRetrieverManager;->Companion:Lcom/narvii/video/services/FrameRetrieverManager$Companion;

    return-void
.end method

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
    iput-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->ctx:Lcom/narvii/app/NVContext;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/narvii/util/Utils;->getCoreThreadCount()I

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    sub-int/2addr v0, v1

    .line 17
    const/4 v2, 0x4

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 21
    move-result v0

    .line 22
    .line 23
    iput v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->maxThreadCountForSingleInput:I

    .line 24
    .line 25
    const/16 v0, 0xd2

    .line 26
    .line 27
    iput v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->maxCacheFileCount:I

    .line 28
    .line 29
    const/high16 v0, 0x3f800000    # 1.0f

    .line 30
    .line 31
    iput v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameRetrieveIntervalInMs:F

    .line 32
    .line 33
    sget-object v0, Lg7/e;->Companion:Lg7/e$a;

    .line 34
    .line 35
    .line 36
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    const-string v2, "getContext(...)"

    .line 40
    .line 41
    .line 42
    invoke-static {p1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1}, Lg7/e$a;->b(Landroid/content/Context;)Lg7/a;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    iput-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->mediaRetriever:Lg7/a;

    .line 49
    .line 50
    .line 51
    invoke-static {}, Lcom/narvii/util/Utils;->getCoreThreadCount()I

    .line 52
    move-result p1

    .line 53
    sub-int/2addr p1, v1

    .line 54
    .line 55
    const-string v0, "Frame hunter thread"

    .line 56
    .line 57
    .line 58
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->createThreadPoolExecutor(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    iput-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameHunterExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 62
    .line 63
    const-string p1, "Audio frame hunter thread"

    .line 64
    .line 65
    .line 66
    invoke-static {v1, p1}, Lcom/narvii/util/Utils;->createThreadPoolExecutor(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    iput-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->audioWaveHunterExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 70
    .line 71
    const-string p1, "Audio wave retriever thread"

    .line 72
    .line 73
    .line 74
    invoke-static {v1, p1}, Lcom/narvii/util/Utils;->createThreadPoolExecutor(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    iput-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->audioWaveExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 78
    .line 79
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 80
    .line 81
    .line 82
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 83
    .line 84
    iput-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->requestList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 85
    .line 86
    new-instance p1, Ljava/util/HashMap;

    .line 87
    .line 88
    .line 89
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 90
    .line 91
    iput-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->callbackList:Ljava/util/HashMap;

    .line 92
    .line 93
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 94
    .line 95
    .line 96
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 97
    .line 98
    iput-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->inProcessFiles:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 99
    .line 100
    sget-object p1, Lcom/narvii/video/services/FrameRetrieverManager$cachedBitmapForStaticImages$2;->INSTANCE:Lcom/narvii/video/services/FrameRetrieverManager$cachedBitmapForStaticImages$2;

    .line 101
    .line 102
    .line 103
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 104
    move-result-object p1

    .line 105
    .line 106
    iput-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->cachedBitmapForStaticImages$delegate:Lw7/m;

    .line 107
    .line 108
    sget-object p1, Lcom/narvii/video/services/FrameRetrieverManager$cachedBitmapForFrames$2;->INSTANCE:Lcom/narvii/video/services/FrameRetrieverManager$cachedBitmapForFrames$2;

    .line 109
    .line 110
    .line 111
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 112
    move-result-object p1

    .line 113
    .line 114
    iput-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->cachedBitmapForFrames$delegate:Lw7/m;

    .line 115
    return-void
.end method

.method public static synthetic a(Lcom/narvii/video/interfaces/IVideoServiceCallback;ILandroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/video/services/FrameRetrieverManager;->retrieveFrame$lambda$12$lambda$11(Lcom/narvii/video/interfaces/IVideoServiceCallback;ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public static final synthetic access$getAudioWaveExecutor$p(Lcom/narvii/video/services/FrameRetrieverManager;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->audioWaveExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getFrameFilePathByTime(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/lang/String;IF)Ljava/io/File;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/video/services/FrameRetrieverManager;->getFrameFilePathByTime(Ljava/lang/String;IF)Ljava/io/File;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getFrameRetrieverManagerInstance$cp()Lcom/narvii/video/services/FrameRetrieverManager;
    .locals 1

    sget-object v0, Lcom/narvii/video/services/FrameRetrieverManager;->frameRetrieverManagerInstance:Lcom/narvii/video/services/FrameRetrieverManager;

    return-object v0
.end method

.method public static final synthetic access$getFrameSectionLoadFlags$p(Lcom/narvii/video/services/FrameRetrieverManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameSectionLoadFlags:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getFrameSectionSize$p(Lcom/narvii/video/services/FrameRetrieverManager;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameSectionSize:I

    .line 3
    return p0
.end method

.method public static final synthetic access$getMediaRetriever$p(Lcom/narvii/video/services/FrameRetrieverManager;)Lg7/a;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->mediaRetriever:Lg7/a;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$setFrameRetrieverManagerInstance$cp(Lcom/narvii/video/services/FrameRetrieverManager;)V
    .locals 0

    sput-object p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameRetrieverManagerInstance:Lcom/narvii/video/services/FrameRetrieverManager;

    return-void
.end method

.method public static synthetic b(Lcom/narvii/video/interfaces/IAVClipInfoPack;IILcom/narvii/video/services/FrameRetrieverManager;Lcom/narvii/video/interfaces/IVideoServiceCallback;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/narvii/video/services/FrameRetrieverManager;->retrieveFrame$lambda$12(Lcom/narvii/video/interfaces/IAVClipInfoPack;IILcom/narvii/video/services/FrameRetrieverManager;Lcom/narvii/video/interfaces/IVideoServiceCallback;I)V

    return-void
.end method

.method public static synthetic c(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/lang/String;ILcom/narvii/video/interfaces/IAVClipInfoPack;IILcom/narvii/video/services/FrameRetrieverManager$FrameHunter;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/narvii/video/services/FrameRetrieverManager;->retrieveFrame$lambda$14(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/lang/String;ILcom/narvii/video/interfaces/IAVClipInfoPack;IILcom/narvii/video/services/FrameRetrieverManager$FrameHunter;)V

    return-void
.end method

.method public static synthetic d(Lcom/narvii/video/interfaces/IAVClipInfoPack;IILcom/narvii/video/services/FrameRetrieverManager;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/narvii/video/services/FrameRetrieverManager;->offerRetrieveTask$lambda$1(Lcom/narvii/video/interfaces/IAVClipInfoPack;IILcom/narvii/video/services/FrameRetrieverManager;)V

    return-void
.end method

.method private final deleteFiles(Ljava/io/File;Z)V
    .locals 7

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_4

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    goto :goto_1

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 28
    array-length v1, v0

    .line 29
    const/4 v2, 0x0

    .line 30
    move v3, v2

    .line 31
    .line 32
    :goto_0
    if-ge v3, v1, :cond_2

    .line 33
    .line 34
    aget-object v4, v0, v3

    .line 35
    .line 36
    .line 37
    invoke-static {v4}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 38
    const/4 v5, 0x2

    .line 39
    const/4 v6, 0x0

    .line 40
    .line 41
    .line 42
    invoke-static {p0, v4, v2, v5, v6}, Lcom/narvii/video/services/FrameRetrieverManager;->deleteFiles$default(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/io/File;ZILjava/lang/Object;)V

    .line 43
    .line 44
    add-int/lit8 v3, v3, 0x1

    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception p1

    .line 47
    goto :goto_2

    .line 48
    .line 49
    :cond_2
    if-eqz p2, :cond_3

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 53
    :cond_3
    return-void

    .line 54
    .line 55
    .line 56
    :cond_4
    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    return-void

    .line 58
    .line 59
    .line 60
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    return-void
.end method

.method static synthetic deleteFiles$default(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/io/File;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p3, p3, 0x2

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    const/4 p2, 0x1

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/video/services/FrameRetrieverManager;->deleteFiles(Ljava/io/File;Z)V

    .line 9
    return-void
.end method

.method public static synthetic doClean$default(Lcom/narvii/video/services/FrameRetrieverManager;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    const/4 p3, 0x1

    .line 2
    and-int/2addr p2, p3

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    move p1, p3

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/video/services/FrameRetrieverManager;->doClean(Z)V

    .line 9
    return-void
.end method

.method private final getCachedBitmapForFrames()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->cachedBitmapForFrames$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 9
    return-object v0
.end method

.method private final getCachedBitmapForStaticImages()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->cachedBitmapForStaticImages$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/util/HashMap;

    .line 9
    return-object v0
.end method

.method private final getFrameFilePathByTime(Ljava/lang/String;IF)Ljava/io/File;
    .locals 7

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    int-to-float p1, p2

    .line 10
    .line 11
    iget p2, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameSectionSize:I

    .line 12
    int-to-float p2, p2

    .line 13
    mul-float/2addr p2, p3

    .line 14
    .line 15
    div-float p2, p1, p2

    .line 16
    float-to-int p2, p2

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->isForAudioWave:Z

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string p2, "/wave.jpg"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string p2, "/frame_"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    sget-object p2, Lkotlin/jvm/internal/u0;->INSTANCE:Lkotlin/jvm/internal/u0;

    .line 61
    .line 62
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 63
    const/4 v1, 0x1

    .line 64
    .line 65
    new-array v2, v1, [Ljava/lang/Object;

    .line 66
    div-float/2addr p1, p3

    .line 67
    float-to-double v3, p1

    .line 68
    .line 69
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    .line 70
    add-double/2addr v3, v5

    .line 71
    double-to-int p1, v3

    .line 72
    .line 73
    iget p3, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameSectionSize:I

    .line 74
    rem-int/2addr p1, p3

    .line 75
    add-int/2addr p1, v1

    .line 76
    .line 77
    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    move-result-object p1

    .line 80
    const/4 p3, 0x0

    .line 81
    .line 82
    aput-object p1, v2, p3

    .line 83
    .line 84
    .line 85
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    const-string p3, "%05d"

    .line 89
    .line 90
    .line 91
    invoke-static {p2, p3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    const-string p2, "format(...)"

    .line 95
    .line 96
    .line 97
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string p1, ".jpg"

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object p1

    .line 110
    .line 111
    :goto_0
    new-instance p2, Ljava/io/File;

    .line 112
    .line 113
    iget-object p3, p0, Lcom/narvii/video/services/FrameRetrieverManager;->outputFolder:Ljava/io/File;

    .line 114
    .line 115
    if-nez p3, :cond_1

    .line 116
    .line 117
    const-string p3, "outputFolder"

    .line 118
    .line 119
    .line 120
    invoke-static {p3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 121
    const/4 p3, 0x0

    .line 122
    .line 123
    .line 124
    :cond_1
    invoke-direct {p2, p3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 125
    return-object p2
.end method

.method public static synthetic initRetriever$default(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move p4, v0

    .line 1
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/narvii/video/services/FrameRetrieverManager;->initRetriever(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static synthetic initRetriever$default(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/lang/String;ZZILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v0

    .line 2
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/video/services/FrameRetrieverManager;->initRetriever(Ljava/lang/String;ZZ)V

    return-void
.end method

.method private final innerInit()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->ctx:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "activity"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const-string v1, "null cannot be cast to non-null type android.app.ActivityManager"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    check-cast v0, Landroid/app/ActivityManager;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    .line 23
    move-result v0

    .line 24
    .line 25
    const/high16 v1, 0x100000

    .line 26
    mul-int/2addr v0, v1

    .line 27
    .line 28
    div-int/lit8 v0, v0, 0xa

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->ctx:Lcom/narvii/app/NVContext;

    .line 31
    .line 32
    .line 33
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    sget v2, Lcom/narvii/mediaeditor/R$dimen;->scene_editor_time_line_item_height:I

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 44
    move-result v1

    .line 45
    mul-int/2addr v1, v1

    .line 46
    .line 47
    mul-int/lit8 v1, v1, 0x8

    .line 48
    div-int/2addr v0, v1

    .line 49
    .line 50
    iput v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->maxCacheFrameCount:I

    .line 51
    .line 52
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameHunterExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->prestartAllCoreThreads()I

    .line 56
    const/4 v0, 0x1

    .line 57
    .line 58
    iput-boolean v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->initialized:Z

    .line 59
    .line 60
    sput-object p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameRetrieverManagerInstance:Lcom/narvii/video/services/FrameRetrieverManager;

    .line 61
    return-void
.end method

.method private final isFrameProcessed(Ljava/lang/String;IF)Z
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
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    int-to-float v1, p2

    .line 10
    .line 11
    iget v2, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameSectionSize:I

    .line 12
    int-to-float v2, v2

    .line 13
    mul-float/2addr v2, p3

    .line 14
    div-float/2addr v1, v2

    .line 15
    float-to-int v1, v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameSectionLoadFlags:Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    const-string v1, "frameSectionLoadFlags"

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 32
    const/4 v1, 0x0

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    check-cast v0, Ljava/lang/Boolean;

    .line 39
    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 46
    move-result v0

    .line 47
    .line 48
    if-nez v0, :cond_3

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/video/services/FrameRetrieverManager;->getFrameFilePathByTime(Ljava/lang/String;IF)Ljava/io/File;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 56
    move-result p1

    .line 57
    .line 58
    if-eqz p1, :cond_2

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    const/4 p1, 0x0

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 63
    :goto_1
    return p1
.end method

.method static synthetic isFrameProcessed$default(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/lang/String;IFILjava/lang/Object;)Z
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p4, p4, 0x4

    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    iget p3, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameRetrieveIntervalInMs:F

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/video/services/FrameRetrieverManager;->isFrameProcessed(Ljava/lang/String;IF)Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private final offerRetrieveTask(Lcom/narvii/video/interfaces/IAVClipInfoPack;IIILcom/narvii/video/interfaces/IVideoServiceCallback;)V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->inputPath()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->setInput(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p2}, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->setFrameTimeInMs(I)V

    .line 16
    int-to-double v1, p2

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->speed()D

    .line 20
    move-result-wide v3

    .line 21
    mul-double/2addr v1, v3

    .line 22
    double-to-int v1, v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->setRealFrameTimeInMs(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p5}, Ljava/lang/Object;->hashCode()I

    .line 29
    move-result v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->setCallbackId(I)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/narvii/video/services/FrameRetrieverManager;->getCachedBitmapForFrames()Ljava/util/LinkedHashMap;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->inputPath()Ljava/lang/String;

    .line 45
    move-result-object v3

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->getRealFrameTimeInMs()I

    .line 52
    move-result v3

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v2

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    check-cast v1, Landroid/graphics/Bitmap;

    .line 66
    .line 67
    if-eqz v1, :cond_0

    .line 68
    .line 69
    .line 70
    invoke-interface {p5, p2, v1}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onFrameBitmapLoaded(ILandroid/graphics/Bitmap;)V

    .line 71
    return-void

    .line 72
    .line 73
    :cond_0
    iget-object p2, p0, Lcom/narvii/video/services/FrameRetrieverManager;->requestList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 74
    .line 75
    .line 76
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->inputPath()Ljava/lang/String;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    .line 80
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 81
    move-result p2

    .line 82
    .line 83
    if-eqz p2, :cond_1

    .line 84
    .line 85
    iget-object p2, p0, Lcom/narvii/video/services/FrameRetrieverManager;->requestList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 86
    .line 87
    .line 88
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->inputPath()Ljava/lang/String;

    .line 89
    move-result-object v1

    .line 90
    .line 91
    .line 92
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    move-result-object p2

    .line 94
    .line 95
    if-eqz p2, :cond_1

    .line 96
    .line 97
    iget-object p2, p0, Lcom/narvii/video/services/FrameRetrieverManager;->requestList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 98
    .line 99
    .line 100
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->inputPath()Ljava/lang/String;

    .line 101
    move-result-object v1

    .line 102
    .line 103
    .line 104
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    move-result-object p2

    .line 106
    .line 107
    .line 108
    invoke-static {p2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 109
    .line 110
    check-cast p2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 114
    goto :goto_0

    .line 115
    .line 116
    :cond_1
    new-instance p2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 117
    .line 118
    .line 119
    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->inputPath()Ljava/lang/String;

    .line 126
    move-result-object v1

    .line 127
    .line 128
    if-eqz v1, :cond_2

    .line 129
    .line 130
    iget-object v2, p0, Lcom/narvii/video/services/FrameRetrieverManager;->requestList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 131
    .line 132
    .line 133
    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/narvii/video/services/FrameRetrieverManager;->callbackList:Ljava/util/HashMap;

    .line 136
    .line 137
    .line 138
    invoke-interface {p2, v0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    iget-object p2, p0, Lcom/narvii/video/services/FrameRetrieverManager;->inProcessFiles:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    .line 144
    move-result-object p2

    .line 145
    const/4 p5, 0x0

    .line 146
    .line 147
    .line 148
    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    move-result v0

    .line 150
    .line 151
    if-eqz v0, :cond_4

    .line 152
    .line 153
    .line 154
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    move-result-object v0

    .line 156
    .line 157
    check-cast v0, Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->inputPath()Ljava/lang/String;

    .line 161
    move-result-object v1

    .line 162
    .line 163
    .line 164
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 165
    move-result v0

    .line 166
    .line 167
    if-eqz v0, :cond_3

    .line 168
    .line 169
    add-int/lit8 p5, p5, 0x1

    .line 170
    goto :goto_1

    .line 171
    .line 172
    :cond_4
    iget p2, p0, Lcom/narvii/video/services/FrameRetrieverManager;->maxThreadCountForSingleInput:I

    .line 173
    .line 174
    if-ge p5, p2, :cond_5

    .line 175
    .line 176
    iget-object p2, p0, Lcom/narvii/video/services/FrameRetrieverManager;->inProcessFiles:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 177
    .line 178
    .line 179
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->inputPath()Ljava/lang/String;

    .line 180
    move-result-object p5

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2, p5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    iget-object p2, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameHunterExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 186
    .line 187
    new-instance p5, Lcom/narvii/video/services/a;

    .line 188
    .line 189
    .line 190
    invoke-direct {p5, p1, p3, p4, p0}, Lcom/narvii/video/services/a;-><init>(Lcom/narvii/video/interfaces/IAVClipInfoPack;IILcom/narvii/video/services/FrameRetrieverManager;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p2, p5}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 194
    :cond_5
    return-void
.end method

.method private static final offerRetrieveTask$lambda$1(Lcom/narvii/video/interfaces/IAVClipInfoPack;IILcom/narvii/video/services/FrameRetrieverManager;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "$input"

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
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p0}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->inputPath()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-static {v0, p1, p2}, Lcom/narvii/editors/ffmpeg/FFmpegJni;->executeFrameRetrieving(Ljava/lang/String;II)V

    .line 19
    .line 20
    iget-object p1, p3, Lcom/narvii/video/services/FrameRetrieverManager;->inProcessFiles:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 21
    .line 22
    .line 23
    invoke-interface {p0}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->inputPath()Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method

.method public static synthetic release$default(Lcom/narvii/video/services/FrameRetrieverManager;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    const/4 p3, 0x1

    .line 2
    and-int/2addr p2, p3

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    move p1, p3

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/video/services/FrameRetrieverManager;->release(Z)V

    .line 9
    return-void
.end method

.method public static synthetic retrieveFrame$default(Lcom/narvii/video/services/FrameRetrieverManager;Lcom/narvii/video/interfaces/IAVClipInfoPack;IZLcom/narvii/video/interfaces/IVideoServiceCallback;IIILjava/lang/Object;)V
    .locals 7

    .line 1
    .line 2
    and-int/lit8 p8, p7, 0x4

    .line 3
    .line 4
    if-eqz p8, :cond_0

    .line 5
    const/4 p3, 0x1

    .line 6
    :cond_0
    move v3, p3

    .line 7
    .line 8
    and-int/lit8 p3, p7, 0x10

    .line 9
    const/4 p8, -0x1

    .line 10
    .line 11
    if-eqz p3, :cond_1

    .line 12
    move v5, p8

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    move v5, p5

    .line 15
    .line 16
    :goto_0
    and-int/lit8 p3, p7, 0x20

    .line 17
    .line 18
    if-eqz p3, :cond_2

    .line 19
    move v6, p8

    .line 20
    goto :goto_1

    .line 21
    :cond_2
    move v6, p6

    .line 22
    :goto_1
    move-object v0, p0

    .line 23
    move-object v1, p1

    .line 24
    move v2, p2

    .line 25
    move-object v4, p4

    .line 26
    .line 27
    .line 28
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/video/services/FrameRetrieverManager;->retrieveFrame(Lcom/narvii/video/interfaces/IAVClipInfoPack;IZLcom/narvii/video/interfaces/IVideoServiceCallback;II)V

    .line 29
    return-void
.end method

.method private static final retrieveFrame$lambda$12(Lcom/narvii/video/interfaces/IAVClipInfoPack;IILcom/narvii/video/services/FrameRetrieverManager;Lcom/narvii/video/interfaces/IVideoServiceCallback;I)V
    .locals 8

    .line 1
    .line 2
    const-string v0, "$input"

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
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string v0, "$callback"

    .line 14
    .line 15
    .line 16
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 22
    const/4 v1, 0x1

    .line 23
    .line 24
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 25
    .line 26
    .line 27
    invoke-interface {p0}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->inputPath()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 32
    .line 33
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 34
    .line 35
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v2, p1, p2}, Lcom/narvii/util/image/BitmapUtils;->findBestSampleSize(IIII)I

    .line 39
    move-result p1

    .line 40
    .line 41
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 42
    const/4 p1, 0x0

    .line 43
    .line 44
    iput-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 45
    .line 46
    .line 47
    invoke-interface {p0}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->inputPath()Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    .line 55
    invoke-interface {p0}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->inputPath()Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    .line 59
    invoke-static {p1}, Lcom/narvii/util/image/BitmapUtils;->readImageRotation(Ljava/lang/String;)I

    .line 60
    move-result p1

    .line 61
    .line 62
    if-eqz p1, :cond_0

    .line 63
    .line 64
    new-instance v6, Landroid/graphics/Matrix;

    .line 65
    .line 66
    .line 67
    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 68
    int-to-float p1, p1

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 72
    const/4 v2, 0x0

    .line 73
    const/4 v3, 0x0

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 77
    move-result v4

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 81
    move-result v5

    .line 82
    const/4 v7, 0x0

    .line 83
    .line 84
    .line 85
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 86
    move-result-object v1

    .line 87
    .line 88
    .line 89
    :cond_0
    invoke-interface {p0}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->inputPath()Ljava/lang/String;

    .line 90
    move-result-object p0

    .line 91
    .line 92
    if-eqz p0, :cond_1

    .line 93
    .line 94
    .line 95
    invoke-direct {p3}, Lcom/narvii/video/services/FrameRetrieverManager;->getCachedBitmapForStaticImages()Ljava/util/HashMap;

    .line 96
    move-result-object p1

    .line 97
    .line 98
    .line 99
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    :cond_1
    new-instance p0, Lcom/narvii/video/services/b;

    .line 105
    .line 106
    .line 107
    invoke-direct {p0, p4, p5, v1}, Lcom/narvii/video/services/b;-><init>(Lcom/narvii/video/interfaces/IVideoServiceCallback;ILandroid/graphics/Bitmap;)V

    .line 108
    .line 109
    .line 110
    invoke-static {p0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 111
    return-void
.end method

.method private static final retrieveFrame$lambda$12$lambda$11(Lcom/narvii/video/interfaces/IVideoServiceCallback;ILandroid/graphics/Bitmap;)V
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
    invoke-interface {p0, p1, p2}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onFrameBitmapLoaded(ILandroid/graphics/Bitmap;)V

    .line 9
    return-void
.end method

.method private static final retrieveFrame$lambda$14(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/lang/String;ILcom/narvii/video/interfaces/IAVClipInfoPack;IILcom/narvii/video/services/FrameRetrieverManager$FrameHunter;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    const-string v0, "$prefix"

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
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    const-string v0, "$frameHunter"

    .line 19
    .line 20
    .line 21
    invoke-static {p6, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    iget v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameRetrieveIntervalInMs:F

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/video/services/FrameRetrieverManager;->isFrameProcessed(Ljava/lang/String;IF)Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-nez v0, :cond_9

    .line 30
    int-to-float v0, p2

    .line 31
    .line 32
    iget v1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameSectionSize:I

    .line 33
    int-to-float v1, v1

    .line 34
    .line 35
    iget v2, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameRetrieveIntervalInMs:F

    .line 36
    mul-float/2addr v1, v2

    .line 37
    div-float/2addr v0, v1

    .line 38
    float-to-int v0, v0

    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    iget-object v1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameSectionLoadFlags:Ljava/util/concurrent/ConcurrentHashMap;

    .line 56
    const/4 v2, 0x0

    .line 57
    .line 58
    if-nez v1, :cond_0

    .line 59
    .line 60
    const-string v1, "frameSectionLoadFlags"

    .line 61
    .line 62
    .line 63
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 64
    move-object v1, v2

    .line 65
    .line 66
    :cond_0
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 67
    .line 68
    .line 69
    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    invoke-direct {p0}, Lcom/narvii/video/services/FrameRetrieverManager;->tryTrimCachedFrames()V

    .line 73
    .line 74
    new-instance v1, Ljava/io/File;

    .line 75
    .line 76
    iget-object v3, p0, Lcom/narvii/video/services/FrameRetrieverManager;->outputFolder:Ljava/io/File;

    .line 77
    .line 78
    if-nez v3, :cond_1

    .line 79
    .line 80
    const-string v3, "outputFolder"

    .line 81
    .line 82
    .line 83
    invoke-static {v3}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 84
    move-object v3, v2

    .line 85
    .line 86
    .line 87
    :cond_1
    invoke-direct {v1, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 91
    move-result p1

    .line 92
    .line 93
    if-nez p1, :cond_2

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 97
    .line 98
    .line 99
    :cond_2
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 100
    move-result p1

    .line 101
    .line 102
    if-eqz p1, :cond_3

    .line 103
    .line 104
    iget-boolean p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->isForAudioWave:Z

    .line 105
    .line 106
    if-eqz p1, :cond_3

    .line 107
    .line 108
    .line 109
    const-string/jumbo p1, "wave_tmp.jpg"

    .line 110
    goto :goto_0

    .line 111
    .line 112
    :cond_3
    iget-boolean p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->isForAudioWave:Z

    .line 113
    .line 114
    if-eqz p1, :cond_4

    .line 115
    .line 116
    .line 117
    const-string/jumbo p1, "wave.jpg"

    .line 118
    goto :goto_0

    .line 119
    .line 120
    :cond_4
    const-string p1, "frame_%05d.jpg"

    .line 121
    .line 122
    :goto_0
    new-instance v3, Ljava/io/File;

    .line 123
    .line 124
    .line 125
    invoke-direct {v3, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 126
    .line 127
    iget-boolean p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->isForAudioWave:Z

    .line 128
    .line 129
    if-eqz p1, :cond_5

    .line 130
    .line 131
    new-instance p1, Lg7/d$a$a;

    .line 132
    .line 133
    check-cast p3, Lcom/narvii/video/model/AVClipInfoPack;

    .line 134
    .line 135
    const/16 v4, 0x40

    .line 136
    .line 137
    .line 138
    invoke-direct {p1, p3, v3, v4}, Lg7/d$a$a;-><init>(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;I)V

    .line 139
    .line 140
    iget p3, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameRetrieveIntervalInMs:F

    .line 141
    float-to-int p3, p3

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, p3}, Lg7/d$a$a;->e(I)Lg7/d$a$a;

    .line 145
    move-result-object p1

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, p4}, Lg7/d$a$a;->i(I)Lg7/d$a$a;

    .line 149
    move-result-object p1

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, p5}, Lg7/d$a$a;->h(I)Lg7/d$a$a;

    .line 153
    move-result-object p1

    .line 154
    goto :goto_2

    .line 155
    .line 156
    :cond_5
    new-instance p1, Lg7/d$a$a;

    .line 157
    .line 158
    check-cast p3, Lcom/narvii/video/model/AVClipInfoPack;

    .line 159
    .line 160
    const/16 p4, 0x10

    .line 161
    .line 162
    .line 163
    invoke-direct {p1, p3, v3, p4}, Lg7/d$a$a;-><init>(Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;I)V

    .line 164
    .line 165
    iget-boolean p3, p0, Lcom/narvii/video/services/FrameRetrieverManager;->keyframeOnly:Z

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, p3}, Lg7/d$a$a;->H(Z)Lg7/d$a$a;

    .line 169
    move-result-object p1

    .line 170
    .line 171
    iget p3, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameSectionSize:I

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, p3}, Lg7/d$a$a;->J(I)Lg7/d$a$a;

    .line 175
    move-result-object p1

    .line 176
    .line 177
    iget p3, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameSectionSize:I

    .line 178
    const/4 p4, 0x1

    .line 179
    .line 180
    if-ne p3, p4, :cond_6

    .line 181
    .line 182
    const/high16 p3, 0x3f800000    # 1.0f

    .line 183
    goto :goto_1

    .line 184
    .line 185
    :cond_6
    const/high16 p3, 0x447a0000    # 1000.0f

    .line 186
    .line 187
    iget p4, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameRetrieveIntervalInMs:F

    .line 188
    div-float/2addr p3, p4

    .line 189
    .line 190
    .line 191
    :goto_1
    invoke-virtual {p1, p3}, Lg7/d$a$a;->K(F)Lg7/d$a$a;

    .line 192
    move-result-object p1

    .line 193
    .line 194
    :goto_2
    if-lez v0, :cond_7

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, p2}, Lg7/d$a$a;->M(I)Lg7/d$a$a;

    .line 198
    .line 199
    :cond_7
    iget-boolean p2, p0, Lcom/narvii/video/services/FrameRetrieverManager;->isForAudioWave:Z

    .line 200
    .line 201
    if-eqz p2, :cond_8

    .line 202
    .line 203
    .line 204
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 205
    move-result p2

    .line 206
    .line 207
    if-eqz p2, :cond_8

    .line 208
    .line 209
    iget-object p2, p0, Lcom/narvii/video/services/FrameRetrieverManager;->mediaRetriever:Lg7/a;

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1}, Lg7/d$a$a;->c()Lg7/d;

    .line 213
    move-result-object p1

    .line 214
    .line 215
    iget-object p3, p0, Lcom/narvii/video/services/FrameRetrieverManager;->audioWaveExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 216
    .line 217
    new-instance p4, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3$1;

    .line 218
    .line 219
    .line 220
    invoke-direct {p4, v3, v1, p0}, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3$1;-><init>(Ljava/io/File;Ljava/io/File;Lcom/narvii/video/services/FrameRetrieverManager;)V

    .line 221
    .line 222
    .line 223
    invoke-interface {p2, p1, p3, p4}, Lg7/a;->execute(Lg7/d;Ljava/util/concurrent/ExecutorService;Lg7/c;)V

    .line 224
    goto :goto_3

    .line 225
    .line 226
    :cond_8
    iget-object p2, p0, Lcom/narvii/video/services/FrameRetrieverManager;->mediaRetriever:Lg7/a;

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1}, Lg7/d$a$a;->c()Lg7/d;

    .line 230
    move-result-object p1

    .line 231
    .line 232
    iget-object p0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->audioWaveExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 233
    .line 234
    .line 235
    invoke-interface {p2, p1, p0, v2}, Lg7/a;->execute(Lg7/d;Ljava/util/concurrent/ExecutorService;Lg7/c;)V

    .line 236
    .line 237
    .line 238
    :cond_9
    :goto_3
    invoke-virtual {p6}, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->run()V

    .line 239
    return-void
.end method

.method private final tryTrimCachedFrames()V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->outputFolder:Ljava/io/File;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "outputFolder"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    move-object v0, v1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    return-void

    .line 19
    .line 20
    :cond_1
    new-instance v0, Lkotlin/jvm/internal/n0;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0}, Lkotlin/jvm/internal/n0;-><init>()V

    .line 24
    .line 25
    iget-object v2, p0, Lcom/narvii/video/services/FrameRetrieverManager;->outputFolder:Ljava/io/File;

    .line 26
    .line 27
    if-nez v2, :cond_2

    .line 28
    .line 29
    const-string v2, "outputFolder"

    .line 30
    .line 31
    .line 32
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 33
    move-object v2, v1

    .line 34
    .line 35
    .line 36
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 37
    move-result-object v2

    .line 38
    const/4 v3, 0x0

    .line 39
    .line 40
    if-eqz v2, :cond_4

    .line 41
    array-length v4, v2

    .line 42
    move v5, v3

    .line 43
    move v6, v5

    .line 44
    .line 45
    :goto_0
    if-ge v5, v4, :cond_5

    .line 46
    .line 47
    aget-object v7, v2, v5

    .line 48
    .line 49
    .line 50
    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 51
    move-result-object v7

    .line 52
    .line 53
    if-eqz v7, :cond_3

    .line 54
    array-length v7, v7

    .line 55
    goto :goto_1

    .line 56
    :cond_3
    move v7, v3

    .line 57
    :goto_1
    add-int/2addr v6, v7

    .line 58
    .line 59
    add-int/lit8 v5, v5, 0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_4
    move v6, v3

    .line 62
    .line 63
    :cond_5
    iput v6, v0, Lkotlin/jvm/internal/n0;->element:I

    .line 64
    .line 65
    iget v2, p0, Lcom/narvii/video/services/FrameRetrieverManager;->maxCacheFileCount:I

    .line 66
    .line 67
    if-lt v6, v2, :cond_16

    .line 68
    monitor-enter p0

    .line 69
    .line 70
    :try_start_0
    iget-object v2, p0, Lcom/narvii/video/services/FrameRetrieverManager;->outputFolder:Ljava/io/File;

    .line 71
    .line 72
    if-nez v2, :cond_6

    .line 73
    .line 74
    const-string v2, "outputFolder"

    .line 75
    .line 76
    .line 77
    invoke-static {v2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 78
    move-object v2, v1

    .line 79
    goto :goto_2

    .line 80
    :catchall_0
    move-exception v0

    .line 81
    .line 82
    goto/16 :goto_a

    .line 83
    .line 84
    .line 85
    :cond_6
    :goto_2
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 86
    move-result-object v2

    .line 87
    .line 88
    if-eqz v2, :cond_9

    .line 89
    .line 90
    .line 91
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 92
    array-length v4, v2

    .line 93
    move v5, v3

    .line 94
    move v6, v5

    .line 95
    .line 96
    :goto_3
    if-ge v5, v4, :cond_8

    .line 97
    .line 98
    aget-object v7, v2, v5

    .line 99
    .line 100
    .line 101
    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 102
    move-result-object v7

    .line 103
    .line 104
    if-eqz v7, :cond_7

    .line 105
    array-length v7, v7

    .line 106
    goto :goto_4

    .line 107
    :cond_7
    move v7, v3

    .line 108
    :goto_4
    add-int/2addr v6, v7

    .line 109
    .line 110
    add-int/lit8 v5, v5, 0x1

    .line 111
    goto :goto_3

    .line 112
    .line 113
    .line 114
    :cond_8
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    move-result-object v2

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 119
    move-result v2

    .line 120
    goto :goto_5

    .line 121
    :cond_9
    move v2, v3

    .line 122
    .line 123
    :goto_5
    iput v2, v0, Lkotlin/jvm/internal/n0;->element:I

    .line 124
    .line 125
    iget v4, p0, Lcom/narvii/video/services/FrameRetrieverManager;->maxCacheFileCount:I

    .line 126
    .line 127
    if-lt v2, v4, :cond_15

    .line 128
    .line 129
    new-instance v2, Ljava/util/ArrayList;

    .line 130
    .line 131
    .line 132
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .line 134
    iget-object v4, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameSectionLoadFlags:Ljava/util/concurrent/ConcurrentHashMap;

    .line 135
    .line 136
    if-nez v4, :cond_a

    .line 137
    .line 138
    const-string v4, "frameSectionLoadFlags"

    .line 139
    .line 140
    .line 141
    invoke-static {v4}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 142
    move-object v4, v1

    .line 143
    .line 144
    .line 145
    :cond_a
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;

    .line 146
    move-result-object v4

    .line 147
    .line 148
    const-string v5, "keys(...)"

    .line 149
    .line 150
    .line 151
    invoke-static {v4, v5}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-static {v4}, Lkotlin/collections/t;->A(Ljava/util/Enumeration;)Ljava/util/Iterator;

    .line 155
    move-result-object v4

    .line 156
    .line 157
    .line 158
    :cond_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    move-result v5

    .line 160
    .line 161
    if-eqz v5, :cond_10

    .line 162
    .line 163
    .line 164
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    move-result-object v5

    .line 166
    .line 167
    check-cast v5, Ljava/lang/String;

    .line 168
    .line 169
    new-instance v6, Ljava/io/File;

    .line 170
    .line 171
    iget-object v7, p0, Lcom/narvii/video/services/FrameRetrieverManager;->outputFolder:Ljava/io/File;

    .line 172
    .line 173
    if-nez v7, :cond_c

    .line 174
    .line 175
    const-string v7, "outputFolder"

    .line 176
    .line 177
    .line 178
    invoke-static {v7}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 179
    move-object v7, v1

    .line 180
    .line 181
    .line 182
    :cond_c
    invoke-direct {v6, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 183
    .line 184
    iget-object v7, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameSectionLoadFlags:Ljava/util/concurrent/ConcurrentHashMap;

    .line 185
    .line 186
    if-nez v7, :cond_d

    .line 187
    .line 188
    const-string v7, "frameSectionLoadFlags"

    .line 189
    .line 190
    .line 191
    invoke-static {v7}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 192
    move-object v7, v1

    .line 193
    .line 194
    .line 195
    :cond_d
    invoke-virtual {v7, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    move-result-object v7

    .line 197
    .line 198
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 199
    .line 200
    .line 201
    invoke-static {v7, v8}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 202
    move-result v7

    .line 203
    .line 204
    if-eqz v7, :cond_b

    .line 205
    .line 206
    .line 207
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 208
    move-result v7

    .line 209
    .line 210
    if-eqz v7, :cond_b

    .line 211
    .line 212
    .line 213
    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 214
    move-result-object v7

    .line 215
    .line 216
    if-eqz v7, :cond_e

    .line 217
    array-length v7, v7

    .line 218
    goto :goto_6

    .line 219
    :cond_e
    move v7, v3

    .line 220
    .line 221
    :goto_6
    iget v8, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameSectionSize:I

    .line 222
    .line 223
    if-lt v7, v8, :cond_b

    .line 224
    .line 225
    .line 226
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    .line 228
    iget v5, v0, Lkotlin/jvm/internal/n0;->element:I

    .line 229
    .line 230
    .line 231
    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 232
    move-result-object v6

    .line 233
    .line 234
    if-eqz v6, :cond_f

    .line 235
    array-length v6, v6

    .line 236
    goto :goto_7

    .line 237
    :cond_f
    move v6, v3

    .line 238
    :goto_7
    sub-int/2addr v5, v6

    .line 239
    .line 240
    iput v5, v0, Lkotlin/jvm/internal/n0;->element:I

    .line 241
    .line 242
    iget v6, p0, Lcom/narvii/video/services/FrameRetrieverManager;->maxCacheFileCount:I

    .line 243
    .line 244
    if-ge v5, v6, :cond_b

    .line 245
    .line 246
    .line 247
    :cond_10
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 248
    move-result v0

    .line 249
    .line 250
    if-eqz v0, :cond_12

    .line 251
    .line 252
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->outputFolder:Ljava/io/File;

    .line 253
    .line 254
    if-nez v0, :cond_11

    .line 255
    .line 256
    const-string v0, "outputFolder"

    .line 257
    .line 258
    .line 259
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 260
    goto :goto_8

    .line 261
    :cond_11
    move-object v1, v0

    .line 262
    .line 263
    .line 264
    :goto_8
    invoke-direct {p0, v1, v3}, Lcom/narvii/video/services/FrameRetrieverManager;->deleteFiles(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    monitor-exit p0

    .line 266
    return-void

    .line 267
    .line 268
    .line 269
    :cond_12
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 270
    move-result-object v0

    .line 271
    .line 272
    .line 273
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 274
    move-result v2

    .line 275
    .line 276
    if-eqz v2, :cond_15

    .line 277
    .line 278
    .line 279
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 280
    move-result-object v2

    .line 281
    .line 282
    check-cast v2, Ljava/lang/String;

    .line 283
    .line 284
    iget-object v4, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameSectionLoadFlags:Ljava/util/concurrent/ConcurrentHashMap;

    .line 285
    .line 286
    if-nez v4, :cond_13

    .line 287
    .line 288
    const-string v4, "frameSectionLoadFlags"

    .line 289
    .line 290
    .line 291
    invoke-static {v4}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 292
    move-object v4, v1

    .line 293
    .line 294
    .line 295
    :cond_13
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 296
    .line 297
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 298
    .line 299
    .line 300
    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .line 302
    new-instance v4, Ljava/io/File;

    .line 303
    .line 304
    iget-object v5, p0, Lcom/narvii/video/services/FrameRetrieverManager;->outputFolder:Ljava/io/File;

    .line 305
    .line 306
    if-nez v5, :cond_14

    .line 307
    .line 308
    const-string v5, "outputFolder"

    .line 309
    .line 310
    .line 311
    invoke-static {v5}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 312
    move-object v5, v1

    .line 313
    .line 314
    .line 315
    :cond_14
    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    invoke-direct {p0, v4, v3}, Lcom/narvii/video/services/FrameRetrieverManager;->deleteFiles(Ljava/io/File;Z)V

    .line 319
    goto :goto_9

    .line 320
    .line 321
    :cond_15
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    monitor-exit p0

    .line 323
    goto :goto_b

    .line 324
    :goto_a
    monitor-exit p0

    .line 325
    throw v0

    .line 326
    :cond_16
    :goto_b
    return-void
.end method


# virtual methods
.method public final abortFlyingFrameRetrievers()V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->initialized:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->callbackList:Ljava/util/HashMap;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->requestList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameSectionLoadFlags:Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    const-string v0, "frameSectionLoadFlags"

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 25
    const/4 v0, 0x0

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameHunterExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 40
    .line 41
    :cond_2
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->audioWaveExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 51
    .line 52
    :cond_3
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->audioWaveHunterExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 62
    .line 63
    :cond_4
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->mediaRetriever:Lg7/a;

    .line 64
    const/4 v1, 0x0

    .line 65
    .line 66
    .line 67
    invoke-interface {v0, v1}, Lg7/a;->abortAll(Z)V

    .line 68
    return-void
.end method

.method public final dispatchBitmapResult(Ljava/lang/String;ILandroid/graphics/Bitmap;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/narvii/video/services/FrameRetrieverManager;->getCachedBitmapForFrames()Ljava/util/LinkedHashMap;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 28
    move-result v1

    .line 29
    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    if-eqz p3, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/narvii/video/services/FrameRetrieverManager;->getCachedBitmapForFrames()Ljava/util/LinkedHashMap;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    .line 40
    move-result v1

    .line 41
    .line 42
    iget v2, p0, Lcom/narvii/video/services/FrameRetrieverManager;->maxCacheFrameCount:I

    .line 43
    sub-int/2addr v1, v2

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lcom/narvii/video/services/FrameRetrieverManager;->getCachedBitmapForFrames()Ljava/util/LinkedHashMap;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    .line 50
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    .line 54
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 55
    move-result-object v2

    .line 56
    .line 57
    :goto_0
    if-ltz v1, :cond_0

    .line 58
    .line 59
    .line 60
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    move-result v3

    .line 62
    .line 63
    if-eqz v3, :cond_0

    .line 64
    .line 65
    .line 66
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 70
    .line 71
    add-int/lit8 v1, v1, -0x1

    .line 72
    goto :goto_0

    .line 73
    .line 74
    .line 75
    :cond_0
    invoke-direct {p0}, Lcom/narvii/video/services/FrameRetrieverManager;->getCachedBitmapForFrames()Ljava/util/LinkedHashMap;

    .line 76
    move-result-object v1

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v0, p3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    check-cast v0, Landroid/graphics/Bitmap;

    .line 83
    .line 84
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->callbackList:Ljava/util/HashMap;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    .line 91
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    .line 95
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    move-result v1

    .line 97
    const/4 v2, 0x0

    .line 98
    .line 99
    if-eqz v1, :cond_3

    .line 100
    .line 101
    .line 102
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    move-result-object v1

    .line 104
    .line 105
    check-cast v1, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->getInput()Ljava/lang/String;

    .line 109
    move-result-object v3

    .line 110
    .line 111
    .line 112
    invoke-static {v3, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    move-result v3

    .line 114
    .line 115
    if-eqz v3, :cond_2

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->getRealFrameTimeInMs()I

    .line 119
    move-result v3

    .line 120
    .line 121
    if-ne v3, p2, :cond_2

    .line 122
    goto :goto_1

    .line 123
    :cond_3
    move-object v1, v2

    .line 124
    .line 125
    :goto_1
    if-eqz v1, :cond_5

    .line 126
    .line 127
    iget-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->callbackList:Ljava/util/HashMap;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    move-result-object p1

    .line 132
    .line 133
    check-cast p1, Lcom/narvii/video/interfaces/IVideoServiceCallback;

    .line 134
    .line 135
    if-nez p3, :cond_4

    .line 136
    .line 137
    if-eqz p1, :cond_5

    .line 138
    .line 139
    .line 140
    invoke-interface {p1, v2}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onActionFailed(Ljava/lang/Exception;)V

    .line 141
    goto :goto_2

    .line 142
    .line 143
    :cond_4
    if-eqz p1, :cond_5

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1}, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->getFrameTimeInMs()I

    .line 147
    move-result p2

    .line 148
    .line 149
    .line 150
    invoke-interface {p1, p2, p3}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onFrameBitmapLoaded(ILandroid/graphics/Bitmap;)V

    .line 151
    :cond_5
    :goto_2
    return-void
.end method

.method public final doClean(Z)V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->initialized:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->inProcessFiles:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->callbackList:Ljava/util/HashMap;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->requestList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/narvii/video/services/FrameRetrieverManager;->getCachedBitmapForFrames()Ljava/util/LinkedHashMap;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/narvii/video/services/FrameRetrieverManager;->getCachedBitmapForStaticImages()Ljava/util/HashMap;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 35
    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    iget-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->outputFolder:Ljava/io/File;

    .line 39
    .line 40
    const-string v0, "outputFolder"

    .line 41
    const/4 v1, 0x0

    .line 42
    .line 43
    if-nez p1, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 47
    move-object p1, v1

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 51
    move-result p1

    .line 52
    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    iget-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->outputFolder:Ljava/io/File;

    .line 56
    .line 57
    if-nez p1, :cond_2

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 61
    move-object p1, v1

    .line 62
    :cond_2
    const/4 v0, 0x0

    .line 63
    const/4 v2, 0x2

    .line 64
    .line 65
    .line 66
    invoke-static {p0, p1, v0, v2, v1}, Lcom/narvii/video/services/FrameRetrieverManager;->deleteFiles$default(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/io/File;ZILjava/lang/Object;)V

    .line 67
    :cond_3
    return-void
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getOutputFolderPath()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->initialized:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->outputFolder:Ljava/io/File;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string v0, "outputFolder"

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v1, v0

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    :cond_1
    return-object v1
.end method

.method public final initRetriever(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "folderSuffix"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean p3, p0, Lcom/narvii/video/services/FrameRetrieverManager;->keyframeOnly:Z

    iput-boolean p4, p0, Lcom/narvii/video/services/FrameRetrieverManager;->isForAudioWave:Z

    .line 1
    new-instance p3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p3, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameSectionLoadFlags:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    new-instance p3, Ljava/io/File;

    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz p4, :cond_0

    const-string p4, "audio_wave_tmp"

    goto :goto_0

    :cond_0
    const-string/jumbo p4, "video_frame_tmp"

    :goto_0
    invoke-direct {p3, v0, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    new-instance p4, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5f

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/narvii/video/services/FrameRetrieverManager;->outputFolder:Ljava/io/File;

    .line 4
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result p1

    const-string p2, "outputFolder"

    const/4 p3, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->outputFolder:Ljava/io/File;

    if-nez p1, :cond_1

    .line 5
    invoke-static {p2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    move-object p1, p3

    :cond_1
    const/4 p4, 0x0

    const/4 v0, 0x2

    invoke-static {p0, p1, p4, v0, p3}, Lcom/narvii/video/services/FrameRetrieverManager;->deleteFiles$default(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/io/File;ZILjava/lang/Object;)V

    :cond_2
    iget-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->outputFolder:Ljava/io/File;

    if-nez p1, :cond_3

    .line 6
    invoke-static {p2}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object p3, p1

    :goto_1
    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    .line 7
    invoke-direct {p0}, Lcom/narvii/video/services/FrameRetrieverManager;->innerInit()V

    return-void
.end method

.method public final initRetriever(Ljava/lang/String;ZZ)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "outputFolderPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean p2, p0, Lcom/narvii/video/services/FrameRetrieverManager;->keyframeOnly:Z

    iput-boolean p3, p0, Lcom/narvii/video/services/FrameRetrieverManager;->isForAudioWave:Z

    .line 8
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameSectionLoadFlags:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/narvii/video/services/FrameRetrieverManager;->outputFolder:Ljava/io/File;

    .line 10
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->outputFolder:Ljava/io/File;

    if-nez p1, :cond_0

    const-string p1, "outputFolder"

    .line 11
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 12
    :cond_1
    invoke-direct {p0}, Lcom/narvii/video/services/FrameRetrieverManager;->innerInit()V

    return-void
.end method

.method public final onResume()V
    .locals 0

    sput-object p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameRetrieverManagerInstance:Lcom/narvii/video/services/FrameRetrieverManager;

    return-void
.end method

.method public final pollNextRetrieveTask(Ljava/lang/String;)Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->requestList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    return-object p1
.end method

.method public final release(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/video/services/FrameRetrieverManager;->abortFlyingFrameRetrievers()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/narvii/video/services/FrameRetrieverManager;->doClean(Z)V

    .line 7
    return-void
.end method

.method public final retrieveFrame(Lcom/narvii/video/interfaces/IAVClipInfoPack;IZLcom/narvii/video/interfaces/IVideoServiceCallback;II)V
    .locals 14
    .param p1    # Lcom/narvii/video/interfaces/IAVClipInfoPack;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/video/interfaces/IVideoServiceCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object v8, p0

    .line 2
    move-object v7, p1

    .line 3
    .line 4
    move/from16 v9, p2

    .line 5
    .line 6
    move-object/from16 v6, p4

    .line 7
    .line 8
    const-string v0, "input"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string v0, "callback"

    .line 14
    .line 15
    .line 16
    invoke-static {v6, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->inputPath()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/narvii/util/Utils;->isPNG(Ljava/lang/String;)Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-nez v0, :cond_3

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->inputPath()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lcom/narvii/util/Utils;->isJPG(Ljava/lang/String;)Z

    .line 34
    move-result v0

    .line 35
    .line 36
    if-nez v0, :cond_3

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->inputPath()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Lcom/narvii/util/Utils;->isBMP(Ljava/lang/String;)Z

    .line 44
    move-result v0

    .line 45
    .line 46
    if-eqz v0, :cond_0

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_0
    iget-boolean v0, v8, Lcom/narvii/video/services/FrameRetrieverManager;->isForAudioWave:Z

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    const/4 v0, 0x1

    .line 53
    const/4 v1, 0x0

    .line 54
    const/4 v2, 0x0

    .line 55
    .line 56
    .line 57
    invoke-static {p1, v2, v0, v1}, Lcom/narvii/video/interfaces/IAVClipInfoPack$DefaultImpls;->getClipInputName$default(Lcom/narvii/video/interfaces/IAVClipInfoPack;ZILjava/lang/Object;)Ljava/lang/String;

    .line 58
    move-result-object v10

    .line 59
    .line 60
    new-instance v11, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;

    .line 61
    .line 62
    iget v4, v8, Lcom/narvii/video/services/FrameRetrieverManager;->frameRetrieveIntervalInMs:F

    .line 63
    move-object v0, v11

    .line 64
    move-object v1, p0

    .line 65
    move-object v2, v10

    .line 66
    .line 67
    move/from16 v3, p2

    .line 68
    .line 69
    move/from16 v5, p3

    .line 70
    .line 71
    move-object/from16 v6, p4

    .line 72
    .line 73
    .line 74
    invoke-direct/range {v0 .. v6}, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;-><init>(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/lang/String;IFZLcom/narvii/video/interfaces/IVideoServiceCallback;)V

    .line 75
    .line 76
    iget v0, v8, Lcom/narvii/video/services/FrameRetrieverManager;->frameRetrieveIntervalInMs:F

    .line 77
    .line 78
    .line 79
    invoke-direct {p0, v10, v9, v0}, Lcom/narvii/video/services/FrameRetrieverManager;->isFrameProcessed(Ljava/lang/String;IF)Z

    .line 80
    move-result v0

    .line 81
    .line 82
    if-eqz v0, :cond_1

    .line 83
    .line 84
    .line 85
    invoke-virtual {v11}, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->run()V

    .line 86
    return-void

    .line 87
    .line 88
    :cond_1
    iget-object v12, v8, Lcom/narvii/video/services/FrameRetrieverManager;->audioWaveHunterExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 89
    .line 90
    new-instance v13, Lcom/narvii/video/services/d;

    .line 91
    move-object v0, v13

    .line 92
    move-object v1, p0

    .line 93
    move-object v2, v10

    .line 94
    .line 95
    move/from16 v3, p2

    .line 96
    move-object v4, p1

    .line 97
    .line 98
    move/from16 v5, p5

    .line 99
    .line 100
    move/from16 v6, p6

    .line 101
    move-object v7, v11

    .line 102
    .line 103
    .line 104
    invoke-direct/range {v0 .. v7}, Lcom/narvii/video/services/d;-><init>(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/lang/String;ILcom/narvii/video/interfaces/IAVClipInfoPack;IILcom/narvii/video/services/FrameRetrieverManager$FrameHunter;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v12, v13}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 108
    goto :goto_1

    .line 109
    :cond_2
    move-object v0, p0

    .line 110
    move-object v1, p1

    .line 111
    .line 112
    move/from16 v2, p2

    .line 113
    .line 114
    move/from16 v3, p5

    .line 115
    .line 116
    move/from16 v4, p6

    .line 117
    .line 118
    move-object/from16 v5, p4

    .line 119
    .line 120
    .line 121
    invoke-direct/range {v0 .. v5}, Lcom/narvii/video/services/FrameRetrieverManager;->offerRetrieveTask(Lcom/narvii/video/interfaces/IAVClipInfoPack;IIILcom/narvii/video/interfaces/IVideoServiceCallback;)V

    .line 122
    goto :goto_1

    .line 123
    .line 124
    :cond_3
    :goto_0
    if-eqz p3, :cond_5

    .line 125
    .line 126
    .line 127
    invoke-direct {p0}, Lcom/narvii/video/services/FrameRetrieverManager;->getCachedBitmapForStaticImages()Ljava/util/HashMap;

    .line 128
    move-result-object v0

    .line 129
    .line 130
    .line 131
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->inputPath()Ljava/lang/String;

    .line 132
    move-result-object v1

    .line 133
    .line 134
    .line 135
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 136
    move-result v0

    .line 137
    .line 138
    if-eqz v0, :cond_4

    .line 139
    .line 140
    .line 141
    invoke-direct {p0}, Lcom/narvii/video/services/FrameRetrieverManager;->getCachedBitmapForStaticImages()Ljava/util/HashMap;

    .line 142
    move-result-object v0

    .line 143
    .line 144
    .line 145
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->inputPath()Ljava/lang/String;

    .line 146
    move-result-object v1

    .line 147
    .line 148
    .line 149
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    move-result-object v0

    .line 151
    .line 152
    check-cast v0, Landroid/graphics/Bitmap;

    .line 153
    .line 154
    .line 155
    invoke-interface {v6, v9, v0}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onFrameBitmapLoaded(ILandroid/graphics/Bitmap;)V

    .line 156
    return-void

    .line 157
    .line 158
    :cond_4
    iget-object v10, v8, Lcom/narvii/video/services/FrameRetrieverManager;->frameHunterExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 159
    .line 160
    new-instance v11, Lcom/narvii/video/services/c;

    .line 161
    move-object v0, v11

    .line 162
    move-object v1, p1

    .line 163
    .line 164
    move/from16 v2, p5

    .line 165
    .line 166
    move/from16 v3, p6

    .line 167
    move-object v4, p0

    .line 168
    .line 169
    move-object/from16 v5, p4

    .line 170
    .line 171
    move/from16 v6, p2

    .line 172
    .line 173
    .line 174
    invoke-direct/range {v0 .. v6}, Lcom/narvii/video/services/c;-><init>(Lcom/narvii/video/interfaces/IAVClipInfoPack;IILcom/narvii/video/services/FrameRetrieverManager;Lcom/narvii/video/interfaces/IVideoServiceCallback;I)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v10, v11}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 178
    goto :goto_1

    .line 179
    .line 180
    .line 181
    :cond_5
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->inputPath()Ljava/lang/String;

    .line 182
    move-result-object v0

    .line 183
    .line 184
    if-eqz v0, :cond_6

    .line 185
    .line 186
    new-instance v1, Ljava/io/File;

    .line 187
    .line 188
    .line 189
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-interface {v6, v9, v1}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onFramePicturesLoaded(ILjava/io/File;)V

    .line 193
    :cond_6
    :goto_1
    return-void
.end method

.method public final setFrameRetrieveInterval(F)V
    .locals 2

    iput p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameRetrieveIntervalInMs:F

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr v0, p1

    iget-boolean p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->isForAudioWave:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, v0, p1

    if-lez p1, :cond_1

    const/4 v1, 0x6

    :cond_1
    :goto_0
    iput v1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameSectionSize:I

    return-void
.end method
