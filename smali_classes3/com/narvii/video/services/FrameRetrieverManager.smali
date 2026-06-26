.class public final Lcom/narvii/video/services/FrameRetrieverManager;
.super Ljava/lang/Object;
.source "FrameRetrieverManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;,
        Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;,
        Lcom/narvii/video/services/FrameRetrieverManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFrameRetrieverManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FrameRetrieverManager.kt\ncom/narvii/video/services/FrameRetrieverManager\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,466:1\n12675#2,5:467\n12675#2,5:472\n*E\n*S KotlinDebug\n*F\n+ 1 FrameRetrieverManager.kt\ncom/narvii/video/services/FrameRetrieverManager\n*L\n275#1,5:467\n281#1,5:472\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/narvii/video/services/FrameRetrieverManager$Companion;

.field private static frameRetrieverManagerInstance:Lcom/narvii/video/services/FrameRetrieverManager;


# instance fields
.field private final audioWaveExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final audioWaveHunterExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final cachedBitmapForFrames$delegate:Lkotlin/Lazy;

.field private final cachedBitmapForStaticImages$delegate:Lkotlin/Lazy;

.field private final callbackList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;",
            "Lcom/narvii/video/interfaces/IVideoServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final ctx:Lcom/narvii/app/NVContext;

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
.end field

.field private initialized:Z

.field private isForAudioWave:Z

.field private keyframeOnly:Z

.field private final maxCacheFileCount:I

.field private maxCacheFrameCount:I

.field private final maxThreadCountForSingleInput:I

.field private final mediaRetriever:Lffmpeg/base/IEditor;

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
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/narvii/video/services/FrameRetrieverManager;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "cachedBitmapForStaticImages"

    const-string v5, "getCachedBitmapForStaticImages()Ljava/util/HashMap;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v3, "cachedBitmapForFrames"

    const-string v4, "getCachedBitmapForFrames()Ljava/util/LinkedHashMap;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/narvii/video/services/FrameRetrieverManager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/narvii/video/services/FrameRetrieverManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/video/services/FrameRetrieverManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/video/services/FrameRetrieverManager;->Companion:Lcom/narvii/video/services/FrameRetrieverManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 3

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->ctx:Lcom/narvii/app/NVContext;

    .line 38
    invoke-static {}, Lcom/narvii/util/Utils;->getCoreThreadCount()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    const/4 v1, 0x4

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->maxThreadCountForSingleInput:I

    const/16 p1, 0xd2

    .line 39
    iput p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->maxCacheFileCount:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 44
    iput p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameRetrieveIntervalInMs:F

    .line 46
    sget-object p1, Lffmpeg/base/NVEditor;->Companion:Lffmpeg/base/NVEditor$Companion;

    iget-object v1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ctx.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lffmpeg/base/NVEditor$Companion;->getSoftwareNVEditor(Landroid/content/Context;)Lffmpeg/base/IEditor;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->mediaRetriever:Lffmpeg/base/IEditor;

    .line 48
    invoke-static {}, Lcom/narvii/util/Utils;->getCoreThreadCount()I

    move-result p1

    sub-int/2addr p1, v0

    const-string v1, "Frame hunter thread"

    invoke-static {p1, v1}, Lcom/narvii/util/Utils;->createThreadPoolExecutor(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameHunterExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const-string p1, "Audio frame hunter thread"

    .line 49
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->createThreadPoolExecutor(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->audioWaveHunterExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const-string p1, "Audio wave retriever thread"

    .line 50
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->createThreadPoolExecutor(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->audioWaveExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 51
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->requestList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 52
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->callbackList:Ljava/util/HashMap;

    .line 53
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->inProcessFiles:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 55
    sget-object p1, Lcom/narvii/video/services/FrameRetrieverManager$cachedBitmapForStaticImages$2;->INSTANCE:Lcom/narvii/video/services/FrameRetrieverManager$cachedBitmapForStaticImages$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->cachedBitmapForStaticImages$delegate:Lkotlin/Lazy;

    .line 56
    sget-object p1, Lcom/narvii/video/services/FrameRetrieverManager$cachedBitmapForFrames$2;->INSTANCE:Lcom/narvii/video/services/FrameRetrieverManager$cachedBitmapForFrames$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->cachedBitmapForFrames$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getAudioWaveExecutor$p(Lcom/narvii/video/services/FrameRetrieverManager;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->audioWaveExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method public static final synthetic access$getCachedBitmapForStaticImages$p(Lcom/narvii/video/services/FrameRetrieverManager;)Ljava/util/HashMap;
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/narvii/video/services/FrameRetrieverManager;->getCachedBitmapForStaticImages()Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getFrameFilePathByTime(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/lang/String;IF)Ljava/io/File;
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/video/services/FrameRetrieverManager;->getFrameFilePathByTime(Ljava/lang/String;IF)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getFrameRetrieveIntervalInMs$p(Lcom/narvii/video/services/FrameRetrieverManager;)F
    .locals 0

    .line 36
    iget p0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameRetrieveIntervalInMs:F

    return p0
.end method

.method public static final synthetic access$getFrameRetrieverManagerInstance$cp()Lcom/narvii/video/services/FrameRetrieverManager;
    .locals 1

    .line 36
    sget-object v0, Lcom/narvii/video/services/FrameRetrieverManager;->frameRetrieverManagerInstance:Lcom/narvii/video/services/FrameRetrieverManager;

    return-object v0
.end method

.method public static final synthetic access$getFrameSectionLoadFlags$p(Lcom/narvii/video/services/FrameRetrieverManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameSectionLoadFlags:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "frameSectionLoadFlags"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getFrameSectionSize$p(Lcom/narvii/video/services/FrameRetrieverManager;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameSectionSize:I

    return p0
.end method

.method public static final synthetic access$getInProcessFiles$p(Lcom/narvii/video/services/FrameRetrieverManager;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->inProcessFiles:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method public static final synthetic access$getKeyframeOnly$p(Lcom/narvii/video/services/FrameRetrieverManager;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->keyframeOnly:Z

    return p0
.end method

.method public static final synthetic access$getMediaRetriever$p(Lcom/narvii/video/services/FrameRetrieverManager;)Lffmpeg/base/IEditor;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->mediaRetriever:Lffmpeg/base/IEditor;

    return-object p0
.end method

.method public static final synthetic access$getOutputFolder$p(Lcom/narvii/video/services/FrameRetrieverManager;)Ljava/io/File;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->outputFolder:Ljava/io/File;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "outputFolder"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$isForAudioWave$p(Lcom/narvii/video/services/FrameRetrieverManager;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->isForAudioWave:Z

    return p0
.end method

.method public static final synthetic access$isFrameProcessed(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/lang/String;IF)Z
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/video/services/FrameRetrieverManager;->isFrameProcessed(Ljava/lang/String;IF)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setForAudioWave$p(Lcom/narvii/video/services/FrameRetrieverManager;Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->isForAudioWave:Z

    return-void
.end method

.method public static final synthetic access$setFrameRetrieveIntervalInMs$p(Lcom/narvii/video/services/FrameRetrieverManager;F)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameRetrieveIntervalInMs:F

    return-void
.end method

.method public static final synthetic access$setFrameRetrieverManagerInstance$cp(Lcom/narvii/video/services/FrameRetrieverManager;)V
    .locals 0

    .line 36
    sput-object p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameRetrieverManagerInstance:Lcom/narvii/video/services/FrameRetrieverManager;

    return-void
.end method

.method public static final synthetic access$setFrameSectionLoadFlags$p(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameSectionLoadFlags:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static final synthetic access$setFrameSectionSize$p(Lcom/narvii/video/services/FrameRetrieverManager;I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameSectionSize:I

    return-void
.end method

.method public static final synthetic access$setKeyframeOnly$p(Lcom/narvii/video/services/FrameRetrieverManager;Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->keyframeOnly:Z

    return-void
.end method

.method public static final synthetic access$setOutputFolder$p(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/io/File;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->outputFolder:Ljava/io/File;

    return-void
.end method

.method public static final synthetic access$tryTrimCachedFrames(Lcom/narvii/video/services/FrameRetrieverManager;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/narvii/video/services/FrameRetrieverManager;->tryTrimCachedFrames()V

    return-void
.end method

.method private final deleteFiles(Ljava/io/File;Z)V
    .locals 7

    .line 251
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 254
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 258
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 259
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    const-string v5, "file"

    .line 260
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {p0, v4, v2, v5, v6}, Lcom/narvii/video/services/FrameRetrieverManager;->deleteFiles$default(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/io/File;ZILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 263
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_3
    return-void

    .line 255
    :cond_4
    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 266
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method static synthetic deleteFiles$default(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/io/File;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 249
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/video/services/FrameRetrieverManager;->deleteFiles(Ljava/io/File;Z)V

    return-void
.end method

.method public static synthetic doClean$default(Lcom/narvii/video/services/FrameRetrieverManager;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 214
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/video/services/FrameRetrieverManager;->doClean(Z)V

    return-void
.end method

.method private final getCachedBitmapForFrames()Ljava/util/LinkedHashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->cachedBitmapForFrames$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/video/services/FrameRetrieverManager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method private final getCachedBitmapForStaticImages()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->cachedBitmapForStaticImages$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/video/services/FrameRetrieverManager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method private final getFrameFilePathByTime(Ljava/lang/String;IF)Ljava/io/File;
    .locals 8

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float p1, p2

    iget p2, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameSectionSize:I

    int-to-float p2, p2

    mul-float p2, p2, p3

    div-float p2, p1, p2

    float-to-int p2, p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 417
    iget-boolean v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->isForAudioWave:Z

    if-eqz v0, :cond_0

    .line 418
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/wave.jpg"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 420
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "frame_"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Locale.US"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    div-float/2addr p1, p3

    float-to-double v4, p1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v6

    double-to-int p1, v4

    iget p3, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameSectionSize:I

    rem-int/2addr p1, p3

    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    array-length p1, v2

    invoke-static {v2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p3, "%05d"

    invoke-static {p2, p3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "java.lang.String.format(locale, format, *args)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".jpg"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 422
    :goto_0
    new-instance p2, Ljava/io/File;

    iget-object p3, p0, Lcom/narvii/video/services/FrameRetrieverManager;->outputFolder:Ljava/io/File;

    if-eqz p3, :cond_1

    invoke-direct {p2, p3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p2

    :cond_1
    const-string p1, "outputFolder"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public static synthetic initRetriever$default(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 163
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/narvii/video/services/FrameRetrieverManager;->initRetriever(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static synthetic initRetriever$default(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/lang/String;ZZILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 176
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/video/services/FrameRetrieverManager;->initRetriever(Ljava/lang/String;ZZ)V

    return-void
.end method

.method private final innerInit()V
    .locals 3

    .line 238
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    const/high16 v1, 0x100000

    mul-int v0, v0, v1

    .line 241
    div-int/lit8 v0, v0, 0xa

    .line 242
    iget-object v1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ctx.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/narvii/mediaeditor/R$dimen;->scene_editor_time_line_item_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int v1, v1, v1

    mul-int/lit8 v1, v1, 0x8

    .line 243
    div-int/2addr v0, v1

    iput v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->maxCacheFrameCount:I

    .line 244
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameHunterExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->prestartAllCoreThreads()I

    const/4 v0, 0x1

    .line 245
    iput-boolean v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->initialized:Z

    .line 246
    sput-object p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameRetrieverManagerInstance:Lcom/narvii/video/services/FrameRetrieverManager;

    return-void

    .line 238
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final isFrameProcessed(Ljava/lang/String;IF)Z
    .locals 3

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v1, p2

    iget v2, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameSectionSize:I

    int-to-float v2, v2

    mul-float v2, v2, p3

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 411
    iget-object v1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameSectionLoadFlags:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    const-string v2, "frameSectionLoadFlags[sectionFlagKey] ?: false"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 412
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/video/services/FrameRetrieverManager;->getFrameFilePathByTime(Ljava/lang/String;IF)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    const-string p1, "frameSectionLoadFlags"

    .line 411
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method static synthetic isFrameProcessed$default(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/lang/String;IFILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 409
    iget p3, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameRetrieveIntervalInMs:F

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/video/services/FrameRetrieverManager;->isFrameProcessed(Ljava/lang/String;IF)Z

    move-result p0

    return p0
.end method

.method private final offerRetrieveTask(Lcom/narvii/video/interfaces/IAVClipInfoPack;IIILcom/narvii/video/interfaces/IVideoServiceCallback;)V
    .locals 5

    .line 93
    new-instance v0, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;

    invoke-direct {v0}, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;-><init>()V

    .line 94
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->inputPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->setInput(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0, p2}, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->setFrameTimeInMs(I)V

    int-to-double v1, p2

    .line 96
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->speed()D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->setRealFrameTimeInMs(I)V

    .line 97
    invoke-virtual {p5}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->setCallbackId(I)V

    .line 98
    invoke-direct {p0}, Lcom/narvii/video/services/FrameRetrieverManager;->getCachedBitmapForFrames()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-interface {p1}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->inputPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->getRealFrameTimeInMs()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 100
    invoke-interface {p5, p2, v1}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onFrameBitmapLoaded(ILandroid/graphics/Bitmap;)V

    return-void

    .line 103
    :cond_0
    iget-object p2, p0, Lcom/narvii/video/services/FrameRetrieverManager;->requestList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->inputPath()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_7

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/narvii/video/services/FrameRetrieverManager;->requestList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->inputPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 104
    iget-object p2, p0, Lcom/narvii/video/services/FrameRetrieverManager;->requestList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->inputPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    check-cast p2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1

    .line 106
    :cond_2
    new-instance p2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 107
    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->inputPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 109
    iget-object v2, p0, Lcom/narvii/video/services/FrameRetrieverManager;->requestList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/narvii/video/services/FrameRetrieverManager;->callbackList:Ljava/util/HashMap;

    invoke-interface {p2, v0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    .line 114
    iget-object p5, p0, Lcom/narvii/video/services/FrameRetrieverManager;->inProcessFiles:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_4
    :goto_1
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->inputPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 119
    :cond_5
    iget p5, p0, Lcom/narvii/video/services/FrameRetrieverManager;->maxThreadCountForSingleInput:I

    if-ge p2, p5, :cond_6

    .line 120
    iget-object p2, p0, Lcom/narvii/video/services/FrameRetrieverManager;->inProcessFiles:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-interface {p1}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->inputPath()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object p2, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameHunterExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance p5, Lcom/narvii/video/services/FrameRetrieverManager$offerRetrieveTask$2;

    invoke-direct {p5, p0, p1, p3, p4}, Lcom/narvii/video/services/FrameRetrieverManager$offerRetrieveTask$2;-><init>(Lcom/narvii/video/services/FrameRetrieverManager;Lcom/narvii/video/interfaces/IAVClipInfoPack;II)V

    invoke-virtual {p2, p5}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_6
    return-void

    .line 103
    :cond_7
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.collections.Map<K, *>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public static synthetic release$default(Lcom/narvii/video/services/FrameRetrieverManager;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 232
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/video/services/FrameRetrieverManager;->release(Z)V

    return-void
.end method

.method public static synthetic retrieveFrame$default(Lcom/narvii/video/services/FrameRetrieverManager;Lcom/narvii/video/interfaces/IAVClipInfoPack;IZLcom/narvii/video/interfaces/IVideoServiceCallback;IIILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_0

    const/4 p3, 0x1

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, p3

    :goto_0
    and-int/lit8 p3, p7, 0x10

    const/4 p8, -0x1

    if-eqz p3, :cond_1

    const/4 v5, -0x1

    goto :goto_1

    :cond_1
    move v5, p5

    :goto_1
    and-int/lit8 p3, p7, 0x20

    if-eqz p3, :cond_2

    const/4 v6, -0x1

    goto :goto_2

    :cond_2
    move v6, p6

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p4

    .line 313
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/video/services/FrameRetrieverManager;->retrieveFrame(Lcom/narvii/video/interfaces/IAVClipInfoPack;IZLcom/narvii/video/interfaces/IVideoServiceCallback;II)V

    return-void
.end method

.method private final tryTrimCachedFrames()V
    .locals 9

    .line 272
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->outputFolder:Ljava/io/File;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->outputFolder:Ljava/io/File;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 468
    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v6, v0, v4

    .line 277
    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    array-length v6, v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 280
    :cond_3
    iget v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->maxCacheFileCount:I

    if-lt v5, v0, :cond_14

    .line 281
    monitor-enter p0

    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->outputFolder:Ljava/io/File;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 473
    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    if-ge v4, v3, :cond_6

    aget-object v6, v0, v4

    .line 284
    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    array-length v6, v6

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    .line 287
    :cond_6
    iget v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->maxCacheFileCount:I

    if-lt v5, v0, :cond_12

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 289
    iget-object v3, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameSectionLoadFlags:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;

    move-result-object v3

    const-string v4, "frameSectionLoadFlags.keys()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->iterator(Ljava/util/Enumeration;)Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 290
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/narvii/video/services/FrameRetrieverManager;->outputFolder:Ljava/io/File;

    if-eqz v7, :cond_b

    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 291
    iget-object v7, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameSectionLoadFlags:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v7, :cond_a

    invoke-virtual {v7, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    array-length v7, v7

    goto :goto_4

    :cond_8
    const/4 v7, 0x0

    :goto_4
    iget v8, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameSectionSize:I

    if-lt v7, v8, :cond_7

    .line 292
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    array-length v4, v4

    goto :goto_5

    :cond_9
    const/4 v4, 0x0

    :goto_5
    sub-int/2addr v5, v4

    .line 294
    iget v4, p0, Lcom/narvii/video/services/FrameRetrieverManager;->maxCacheFileCount:I

    if-ge v5, v4, :cond_7

    goto :goto_6

    :cond_a
    const-string v0, "frameSectionLoadFlags"

    .line 291
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_b
    :try_start_1
    const-string v0, "outputFolder"

    .line 290
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 299
    :cond_c
    :goto_6
    :try_start_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 300
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->outputFolder:Ljava/io/File;

    if-eqz v0, :cond_d

    invoke-direct {p0, v0, v2}, Lcom/narvii/video/services/FrameRetrieverManager;->deleteFiles(Ljava/io/File;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 301
    monitor-exit p0

    return-void

    :cond_d
    :try_start_3
    const-string v0, "outputFolder"

    .line 300
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 303
    :cond_e
    :try_start_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 304
    iget-object v4, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameSectionLoadFlags:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v4, :cond_10

    const-string v5, "sectionKey"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/narvii/video/services/FrameRetrieverManager;->outputFolder:Ljava/io/File;

    if-eqz v5, :cond_f

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v4, v2}, Lcom/narvii/video/services/FrameRetrieverManager;->deleteFiles(Ljava/io/File;Z)V

    goto :goto_7

    :cond_f
    const-string v0, "outputFolder"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    :cond_10
    :try_start_5
    const-string v0, "frameSectionLoadFlags"

    .line 304
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    :cond_11
    :try_start_6
    const-string v0, "frameSectionLoadFlags"

    .line 289
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1

    .line 308
    :cond_12
    :try_start_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 281
    monitor-exit p0

    goto :goto_8

    :cond_13
    :try_start_8
    const-string v0, "outputFolder"

    .line 282
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v1

    :catchall_0
    move-exception v0

    .line 281
    monitor-exit p0

    throw v0

    :cond_14
    :goto_8
    return-void

    :cond_15
    const-string v0, "outputFolder"

    .line 275
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_16
    const-string v0, "outputFolder"

    .line 272
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_a

    :goto_9
    throw v1

    :goto_a
    goto :goto_9
.end method


# virtual methods
.method public final abortFlyingFrameRetrievers()V
    .locals 2

    .line 202
    iget-boolean v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->initialized:Z

    if-nez v0, :cond_0

    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->callbackList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 206
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->requestList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 207
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameSectionLoadFlags:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 208
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameHunterExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const-string v1, "frameHunterExecutor"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->audioWaveExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const-string v1, "audioWaveExecutor"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->audioWaveHunterExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const-string v1, "audioWaveHunterExecutor"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 211
    :cond_3
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->mediaRetriever:Lffmpeg/base/IEditor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lffmpeg/base/IEditor;->abortAll(Z)V

    return-void

    :cond_4
    const-string v0, "frameSectionLoadFlags"

    .line 207
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final dispatchBitmapResult(Ljava/lang/String;ILandroid/graphics/Bitmap;)V
    .locals 4

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-direct {p0}, Lcom/narvii/video/services/FrameRetrieverManager;->getCachedBitmapForFrames()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p3, :cond_1

    .line 132
    invoke-direct {p0}, Lcom/narvii/video/services/FrameRetrieverManager;->getCachedBitmapForFrames()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    iget v2, p0, Lcom/narvii/video/services/FrameRetrieverManager;->maxCacheFrameCount:I

    sub-int/2addr v1, v2

    .line 133
    invoke-direct {p0}, Lcom/narvii/video/services/FrameRetrieverManager;->getCachedBitmapForFrames()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    if-ltz v1, :cond_0

    .line 134
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 139
    :cond_0
    invoke-direct {p0}, Lcom/narvii/video/services/FrameRetrieverManager;->getCachedBitmapForFrames()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->callbackList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;

    .line 144
    invoke-virtual {v1}, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->getInput()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->getRealFrameTimeInMs()I

    move-result v3

    if-ne v3, p2, :cond_2

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_5

    .line 150
    iget-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->callbackList:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/interfaces/IVideoServiceCallback;

    if-nez p3, :cond_4

    if-eqz p1, :cond_5

    .line 152
    invoke-interface {p1, v2}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onActionFailed(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_5

    .line 154
    invoke-virtual {v1}, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;->getFrameTimeInMs()I

    move-result p2

    invoke-interface {p1, p2, p3}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onFrameBitmapLoaded(ILandroid/graphics/Bitmap;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final doClean(Z)V
    .locals 3

    .line 215
    iget-boolean v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->initialized:Z

    if-nez v0, :cond_0

    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->inProcessFiles:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 219
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->callbackList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 220
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->requestList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 221
    invoke-direct {p0}, Lcom/narvii/video/services/FrameRetrieverManager;->getCachedBitmapForFrames()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 222
    invoke-direct {p0}, Lcom/narvii/video/services/FrameRetrieverManager;->getCachedBitmapForStaticImages()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    if-eqz p1, :cond_3

    .line 223
    iget-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->outputFolder:Ljava/io/File;

    const-string v0, "outputFolder"

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 224
    iget-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->outputFolder:Ljava/io/File;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-static {p0, p1, v0, v2, v1}, Lcom/narvii/video/services/FrameRetrieverManager;->deleteFiles$default(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/io/File;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 223
    :cond_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    return-void
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getOutputFolderPath()Ljava/lang/String;
    .locals 2

    .line 198
    iget-boolean v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->initialized:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->outputFolder:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v0, "outputFolder"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public final initRetriever(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "folderSuffix"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    iput-boolean p3, p0, Lcom/narvii/video/services/FrameRetrieverManager;->keyframeOnly:Z

    .line 165
    iput-boolean p4, p0, Lcom/narvii/video/services/FrameRetrieverManager;->isForAudioWave:Z

    .line 166
    new-instance p3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p3, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameSectionLoadFlags:Ljava/util/concurrent/ConcurrentHashMap;

    .line 167
    new-instance p3, Ljava/io/File;

    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ctx.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz p4, :cond_0

    const-string p4, "audio_wave_tmp"

    goto :goto_0

    :cond_0
    const-string p4, "video_frame_tmp"

    :goto_0
    invoke-direct {p3, v0, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 168
    new-instance p4, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/narvii/video/services/FrameRetrieverManager;->outputFolder:Ljava/io/File;

    .line 169
    iget-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->outputFolder:Ljava/io/File;

    const-string p2, "outputFolder"

    const/4 p3, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 170
    iget-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->outputFolder:Ljava/io/File;

    if-eqz p1, :cond_1

    const/4 p4, 0x0

    const/4 v0, 0x2

    invoke-static {p0, p1, p4, v0, p3}, Lcom/narvii/video/services/FrameRetrieverManager;->deleteFiles$default(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/io/File;ZILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p3

    .line 172
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->outputFolder:Ljava/io/File;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 173
    invoke-direct {p0}, Lcom/narvii/video/services/FrameRetrieverManager;->innerInit()V

    return-void

    .line 172
    :cond_3
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p3

    .line 169
    :cond_4
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p3
.end method

.method public final initRetriever(Ljava/lang/String;ZZ)V
    .locals 1

    const-string v0, "outputFolderPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    iput-boolean p2, p0, Lcom/narvii/video/services/FrameRetrieverManager;->keyframeOnly:Z

    .line 178
    iput-boolean p3, p0, Lcom/narvii/video/services/FrameRetrieverManager;->isForAudioWave:Z

    .line 179
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameSectionLoadFlags:Ljava/util/concurrent/ConcurrentHashMap;

    .line 180
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/narvii/video/services/FrameRetrieverManager;->outputFolder:Ljava/io/File;

    .line 181
    iget-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->outputFolder:Ljava/io/File;

    const/4 p2, 0x0

    const-string p3, "outputFolder"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 182
    iget-object p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->outputFolder:Ljava/io/File;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2

    .line 184
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/narvii/video/services/FrameRetrieverManager;->innerInit()V

    return-void

    .line 181
    :cond_2
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p2
.end method

.method public final onResume()V
    .locals 0

    .line 229
    sput-object p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameRetrieverManagerInstance:Lcom/narvii/video/services/FrameRetrieverManager;

    return-void
.end method

.method public final pollNextRetrieveTask(Ljava/lang/String;)Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/narvii/video/services/FrameRetrieverManager;->requestList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/video/services/FrameRetrieverManager$FrameRetrieveConfig;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final release(Z)V
    .locals 0

    .line 233
    invoke-virtual {p0}, Lcom/narvii/video/services/FrameRetrieverManager;->abortFlyingFrameRetrievers()V

    .line 234
    invoke-virtual {p0, p1}, Lcom/narvii/video/services/FrameRetrieverManager;->doClean(Z)V

    return-void
.end method

.method public final retrieveFrame(Lcom/narvii/video/interfaces/IAVClipInfoPack;IZLcom/narvii/video/interfaces/IVideoServiceCallback;II)V
    .locals 14

    move-object v8, p0

    move-object v7, p1

    move/from16 v9, p2

    move-object/from16 v6, p4

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->inputPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->isPNG(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->inputPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->isJPG(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->inputPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->isBMP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 348
    :cond_0
    iget-boolean v0, v8, Lcom/narvii/video/services/FrameRetrieverManager;->isForAudioWave:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 349
    invoke-static {p1, v0, v1, v2}, Lcom/narvii/video/interfaces/IAVClipInfoPack$DefaultImpls;->getClipInputName$default(Lcom/narvii/video/interfaces/IAVClipInfoPack;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 350
    new-instance v11, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;

    iget v4, v8, Lcom/narvii/video/services/FrameRetrieverManager;->frameRetrieveIntervalInMs:F

    move-object v0, v11

    move-object v1, p0

    move-object v2, v10

    move/from16 v3, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;-><init>(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/lang/String;IFZLcom/narvii/video/interfaces/IVideoServiceCallback;)V

    .line 351
    iget v0, v8, Lcom/narvii/video/services/FrameRetrieverManager;->frameRetrieveIntervalInMs:F

    invoke-direct {p0, v10, v9, v0}, Lcom/narvii/video/services/FrameRetrieverManager;->isFrameProcessed(Ljava/lang/String;IF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    invoke-virtual {v11}, Lcom/narvii/video/services/FrameRetrieverManager$FrameHunter;->run()V

    return-void

    .line 356
    :cond_1
    iget-object v12, v8, Lcom/narvii/video/services/FrameRetrieverManager;->audioWaveHunterExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v13, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3;

    move-object v0, v13

    move-object v1, p0

    move-object v2, v10

    move/from16 v3, p2

    move-object v4, p1

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v11

    invoke-direct/range {v0 .. v7}, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$3;-><init>(Lcom/narvii/video/services/FrameRetrieverManager;Ljava/lang/String;ILcom/narvii/video/interfaces/IAVClipInfoPack;IILcom/narvii/video/services/FrameRetrieverManager$FrameHunter;)V

    invoke-virtual {v12, v13}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p4

    .line 405
    invoke-direct/range {v0 .. v5}, Lcom/narvii/video/services/FrameRetrieverManager;->offerRetrieveTask(Lcom/narvii/video/interfaces/IAVClipInfoPack;IIILcom/narvii/video/interfaces/IVideoServiceCallback;)V

    goto :goto_1

    :cond_3
    :goto_0
    if-eqz p3, :cond_6

    .line 316
    invoke-direct {p0}, Lcom/narvii/video/services/FrameRetrieverManager;->getCachedBitmapForStaticImages()Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->inputPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_5

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 317
    invoke-direct {p0}, Lcom/narvii/video/services/FrameRetrieverManager;->getCachedBitmapForStaticImages()Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->inputPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-interface {v6, v9, v0}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onFrameBitmapLoaded(ILandroid/graphics/Bitmap;)V

    return-void

    .line 320
    :cond_4
    iget-object v10, v8, Lcom/narvii/video/services/FrameRetrieverManager;->frameHunterExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v11, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$1;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p4

    move/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/narvii/video/services/FrameRetrieverManager$retrieveFrame$1;-><init>(Lcom/narvii/video/services/FrameRetrieverManager;Lcom/narvii/video/interfaces/IAVClipInfoPack;IILcom/narvii/video/interfaces/IVideoServiceCallback;I)V

    invoke-virtual {v10, v11}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 316
    :cond_5
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.Map<K, *>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_6
    invoke-interface {p1}, Lcom/narvii/video/interfaces/IAVClipInfoPack;->inputPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 345
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v9, v1}, Lcom/narvii/video/interfaces/IVideoServiceCallback;->onFramePicturesLoaded(ILjava/io/File;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public final setFrameRetrieveInterval(F)V
    .locals 2

    .line 188
    iput p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameRetrieveIntervalInMs:F

    .line 189
    iget p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameRetrieveIntervalInMs:F

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr v0, p1

    .line 191
    iget-boolean p1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->isForAudioWave:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p1, v1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_1

    const/4 v1, 0x6

    .line 190
    :cond_1
    :goto_0
    iput v1, p0, Lcom/narvii/video/services/FrameRetrieverManager;->frameSectionSize:I

    return-void
.end method
