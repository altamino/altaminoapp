.class public abstract Lcom/narvii/util/fileloader/FileLoader;
.super Ljava/lang/Object;
.source "FileLoader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/fileloader/FileLoader$Session;,
        Lcom/narvii/util/fileloader/FileLoader$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileLoader.kt\ncom/narvii/util/fileloader/FileLoader\n*L\n1#1,365:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/narvii/util/fileloader/FileLoader$Companion;

.field public static final LOAD_STATUS_DOWNLOADING:I = 0x1

.field public static final LOAD_STATUS_FAILED:I = -0x1

.field public static final LOAD_STATUS_FINISHED:I = 0x2

.field public static final LOAD_STATUS_IDLE:I


# instance fields
.field private final cache$delegate:Lkotlin/Lazy;

.field private final ctx:Lcom/narvii/app/NVContext;

.field public dir:Ljava/io/File;

.field private final downloader$delegate:Lkotlin/Lazy;

.field private final executorService:Ljava/util/concurrent/ThreadPoolExecutor;

.field private maxSize:I

.field private final path:Ljava/lang/String;

.field private final sessionMap$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/narvii/util/fileloader/FileLoader;

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "cache"

    const-string v5, "getCache()Lcom/narvii/util/fileloader/INVFileCache;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "downloader"

    const-string v5, "getDownloader()Lcom/narvii/util/fileloader/FileDownloader;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string/jumbo v3, "sessionMap"

    const-string v4, "getSessionMap()Ljava/util/concurrent/ConcurrentHashMap;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/narvii/util/fileloader/FileLoader;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/narvii/util/fileloader/FileLoader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/util/fileloader/FileLoader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/util/fileloader/FileLoader;->Companion:Lcom/narvii/util/fileloader/FileLoader$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V
    .locals 8

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/util/fileloader/FileLoader;->ctx:Lcom/narvii/app/NVContext;

    iput-object p2, p0, Lcom/narvii/util/fileloader/FileLoader;->path:Ljava/lang/String;

    .line 19
    new-instance p1, Lcom/narvii/util/fileloader/FileLoader$cache$2;

    invoke-direct {p1, p0}, Lcom/narvii/util/fileloader/FileLoader$cache$2;-><init>(Lcom/narvii/util/fileloader/FileLoader;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/util/fileloader/FileLoader;->cache$delegate:Lkotlin/Lazy;

    .line 20
    new-instance p1, Lcom/narvii/util/fileloader/FileLoader$downloader$2;

    invoke-direct {p1, p0}, Lcom/narvii/util/fileloader/FileLoader$downloader$2;-><init>(Lcom/narvii/util/fileloader/FileLoader;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/util/fileloader/FileLoader;->downloader$delegate:Lkotlin/Lazy;

    .line 21
    sget-object p1, Lcom/narvii/util/fileloader/FileLoader$sessionMap$2;->INSTANCE:Lcom/narvii/util/fileloader/FileLoader$sessionMap$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/util/fileloader/FileLoader;->sessionMap$delegate:Lkotlin/Lazy;

    .line 22
    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 23
    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    sget-object v7, Lcom/narvii/util/fileloader/FileLoader$executorService$1;->INSTANCE:Lcom/narvii/util/fileloader/FileLoader$executorService$1;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    move-object v0, p1

    .line 22
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object p1, p0, Lcom/narvii/util/fileloader/FileLoader;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 245
    invoke-direct {p0}, Lcom/narvii/util/fileloader/FileLoader;->initLoader()V

    return-void
.end method

.method public static final synthetic access$getDownloader$p(Lcom/narvii/util/fileloader/FileLoader;)Lcom/narvii/util/fileloader/FileDownloader;
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/narvii/util/fileloader/FileLoader;->getDownloader()Lcom/narvii/util/fileloader/FileDownloader;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSessionMap$p(Lcom/narvii/util/fileloader/FileLoader;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/narvii/util/fileloader/FileLoader;->getSessionMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    return-object p0
.end method

.method private final getDownloader()Lcom/narvii/util/fileloader/FileDownloader;
    .locals 3

    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader;->downloader$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/util/fileloader/FileLoader;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/fileloader/FileDownloader;

    return-object v0
.end method

.method private final getSessionMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/util/fileloader/FileLoader$Session;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader;->sessionMap$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/util/fileloader/FileLoader;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private final initLoader()V
    .locals 8

    .line 261
    invoke-virtual {p0}, Lcom/narvii/util/fileloader/FileLoader;->initCacheDir()Lkotlin/Pair;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    iput-object v1, p0, Lcom/narvii/util/fileloader/FileLoader;->dir:Ljava/io/File;

    .line 263
    iget-object v1, p0, Lcom/narvii/util/fileloader/FileLoader;->dir:Ljava/io/File;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 264
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/high16 v1, 0x400000

    const/16 v2, 0x64

    const/4 v3, 0x3

    if-eqz v0, :cond_0

    .line 267
    invoke-static {}, Lcom/narvii/util/StorageUtils;->getAvailableInternalMemorySize()J

    move-result-wide v4

    int-to-long v6, v3

    mul-long v4, v4, v6

    int-to-long v2, v2

    div-long/2addr v4, v2

    int-to-long v0, v1

    const/high16 v2, 0x1000000

    int-to-long v2, v2

    .line 268
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0

    .line 272
    :cond_0
    invoke-static {}, Lcom/narvii/util/StorageUtils;->getAvailableInternalMemorySize()J

    move-result-wide v4

    int-to-long v6, v3

    mul-long v4, v4, v6

    int-to-long v2, v2

    div-long/2addr v4, v2

    int-to-long v0, v1

    const/high16 v2, 0x2000000

    int-to-long v2, v2

    .line 273
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    long-to-int v1, v0

    .line 264
    iput v1, p0, Lcom/narvii/util/fileloader/FileLoader;->maxSize:I

    return-void

    :cond_1
    const-string v0, "dir"

    .line 263
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method public final abort(Ljava/lang/String;Lcom/narvii/util/fileloader/IFileDownloadCallback;)V
    .locals 1

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    invoke-direct {p0}, Lcom/narvii/util/fileloader/FileLoader;->getSessionMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/fileloader/FileLoader$Session;

    if-eqz p1, :cond_0

    .line 329
    invoke-virtual {p1, p2}, Lcom/narvii/util/fileloader/FileLoader$Session;->abort(Lcom/narvii/util/fileloader/IFileDownloadCallback;)V

    :cond_0
    return-void
.end method

.method public final abortAll()V
    .locals 3

    .line 333
    invoke-direct {p0}, Lcom/narvii/util/fileloader/FileLoader;->getSessionMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 334
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/fileloader/FileLoader$Session;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/narvii/util/fileloader/FileLoader$Session;->setAborted(Z)V

    goto :goto_0

    .line 336
    :cond_0
    invoke-direct {p0}, Lcom/narvii/util/fileloader/FileLoader;->getSessionMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public clearCache()V
    .locals 1

    .line 356
    invoke-virtual {p0}, Lcom/narvii/util/fileloader/FileLoader;->abortAll()V

    .line 357
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader;->dir:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/narvii/util/Utils;->deleteDir(Ljava/io/File;)Z

    return-void

    :cond_0
    const-string v0, "dir"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final containsRealCallback(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    const-string/jumbo v0, "sessionKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    invoke-direct {p0}, Lcom/narvii/util/fileloader/FileLoader;->getSessionMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/fileloader/FileLoader$Session;

    if-eqz p1, :cond_0

    .line 293
    invoke-virtual {p1, p2}, Lcom/narvii/util/fileloader/FileLoader$Session;->containsRealCallback(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract dispatchToMainThread()Z
.end method

.method protected final getCache()Lcom/narvii/util/fileloader/INVFileCache;
    .locals 3

    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader;->cache$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/util/fileloader/FileLoader;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/fileloader/INVFileCache;

    return-object v0
.end method

.method public getCacheSize()J
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader;->dir:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getFolderSize(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-string v0, "dir"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getDir()Ljava/io/File;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader;->dir:Ljava/io/File;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "dir"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getFileName(Lcom/narvii/util/fileloader/FileLoaderRequest;)Ljava/lang/String;
    .locals 8

    const-string/jumbo v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoaderRequest;->getBuilder()Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;

    move-result-object p1

    .line 301
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    .line 302
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 303
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move v3, v0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    if-eqz v7, :cond_3

    invoke-virtual {v7, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x80

    if-ge v3, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lcom/narvii/util/Utils;->safeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-r"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoaderRequest$Companion$Builder;->getRev()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 303
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final getMaxSize()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/narvii/util/fileloader/FileLoader;->maxSize:I

    return v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSession(Ljava/lang/String;)Lcom/narvii/util/fileloader/FileLoader$Session;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 314
    :cond_0
    invoke-direct {p0}, Lcom/narvii/util/fileloader/FileLoader;->getSessionMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/fileloader/FileLoader$Session;

    return-object p1
.end method

.method public getSessionKey(Lcom/narvii/util/fileloader/FileLoaderRequest;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    invoke-virtual {p1}, Lcom/narvii/util/fileloader/FileLoaderRequest;->getUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected initCacheDir()Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/io/File;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ctx.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "fail to get external cache dir, using internal cache instead"

    .line 252
    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    .line 256
    :goto_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/narvii/util/fileloader/FileLoader;->path:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 257
    new-instance v0, Lkotlin/Pair;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 352
    invoke-virtual {p0}, Lcom/narvii/util/fileloader/FileLoader;->abortAll()V

    return-void
.end method

.method public abstract provideCache(Ljava/io/File;)Lcom/narvii/util/fileloader/INVFileCache;
.end method

.method public final removeCallbackByTag(Ljava/lang/Object;)V
    .locals 2

    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    invoke-direct {p0}, Lcom/narvii/util/fileloader/FileLoader;->getSessionMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/fileloader/FileLoader$Session;

    .line 319
    invoke-virtual {v1, p1}, Lcom/narvii/util/fileloader/FileLoader$Session;->removeCallbackByTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final requireFile(Lcom/narvii/util/fileloader/FileLoaderRequest;Lcom/narvii/util/fileloader/IFileDownloadCallback;)V
    .locals 2

    const-string/jumbo v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/narvii/util/fileloader/FileLoader;->dir:Ljava/io/File;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    invoke-direct {p0}, Lcom/narvii/util/fileloader/FileLoader;->initLoader()V

    .line 281
    :cond_0
    invoke-direct {p0}, Lcom/narvii/util/fileloader/FileLoader;->getSessionMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/narvii/util/fileloader/FileLoader;->getSessionKey(Lcom/narvii/util/fileloader/FileLoaderRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/fileloader/FileLoader$Session;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 283
    invoke-virtual {v0, p2}, Lcom/narvii/util/fileloader/FileLoader$Session;->addCallback(Lcom/narvii/util/fileloader/IFileDownloadCallback;)V

    goto :goto_0

    .line 285
    :cond_1
    new-instance v0, Lcom/narvii/util/fileloader/FileLoader$Session;

    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/util/fileloader/FileLoader$Session;-><init>(Lcom/narvii/util/fileloader/FileLoader;Lcom/narvii/util/fileloader/FileLoaderRequest;Lcom/narvii/util/fileloader/IFileDownloadCallback;)V

    .line 286
    iget-object p1, p0, Lcom/narvii/util/fileloader/FileLoader;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_2
    const-string p1, "dir"

    .line 278
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final setDir(Ljava/io/File;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lcom/narvii/util/fileloader/FileLoader;->dir:Ljava/io/File;

    return-void
.end method

.method protected final setMaxSize(I)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/narvii/util/fileloader/FileLoader;->maxSize:I

    return-void
.end method

.method public final trimAndFlush(J)V
    .locals 2

    .line 324
    invoke-virtual {p0}, Lcom/narvii/util/fileloader/FileLoader;->getCache()Lcom/narvii/util/fileloader/INVFileCache;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/narvii/util/fileloader/FileLoader;->maxSize:I

    invoke-interface {v0, v1, p1, p2}, Lcom/narvii/util/fileloader/INVFileCache;->trimAndFlush(IJ)V

    :cond_0
    return-void
.end method

.method public abstract validateCacheFile(Ljava/io/File;)Z
.end method
