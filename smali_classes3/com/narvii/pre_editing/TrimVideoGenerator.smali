.class public final Lcom/narvii/pre_editing/TrimVideoGenerator;
.super Ljava/lang/Object;
.source "TrimVideoGenerator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/pre_editing/TrimVideoGenerator$BaseTrimVideoTask;,
        Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;,
        Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;,
        Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;,
        Lcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;,
        Lcom/narvii/pre_editing/TrimVideoGenerator$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTrimVideoGenerator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrimVideoGenerator.kt\ncom/narvii/pre_editing/TrimVideoGenerator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,496:1\n1587#2,2:497\n1587#2,2:499\n1587#2,2:501\n*E\n*S KotlinDebug\n*F\n+ 1 TrimVideoGenerator.kt\ncom/narvii/pre_editing/TrimVideoGenerator\n*L\n56#1,2:497\n79#1,2:499\n86#1,2:501\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/narvii/pre_editing/TrimVideoGenerator$Companion;

.field public static final TAG:Ljava/lang/String; = "TrimVideoGenerator"


# instance fields
.field private final ctx:Lcom/narvii/app/NVContext;

.field private dropNegativeTs:Z

.field private final preloadService$delegate:Lkotlin/Lazy;

.field private singleTask:Z

.field private final trimExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private trimTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/pre_editing/TrimVideoGenerator$BaseTrimVideoTask<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final videoManager$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/narvii/pre_editing/TrimVideoGenerator;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "videoManager"

    const-string v5, "getVideoManager()Lcom/narvii/video/services/VideoManager;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v3, "preloadService"

    const-string v4, "getPreloadService()Lcom/narvii/video/MediaPreloadService;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/narvii/pre_editing/TrimVideoGenerator;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/narvii/pre_editing/TrimVideoGenerator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/pre_editing/TrimVideoGenerator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/pre_editing/TrimVideoGenerator;->Companion:Lcom/narvii/pre_editing/TrimVideoGenerator$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator;->ctx:Lcom/narvii/app/NVContext;

    const/4 p1, 0x1

    const-string v0, "pre_trim"

    .line 37
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->createThreadPoolExecutor(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/pre_editing/TrimVideoGenerator;->trimExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/pre_editing/TrimVideoGenerator;->trimTasks:Ljava/util/List;

    .line 40
    new-instance v0, Lcom/narvii/pre_editing/TrimVideoGenerator$videoManager$2;

    invoke-direct {v0, p0}, Lcom/narvii/pre_editing/TrimVideoGenerator$videoManager$2;-><init>(Lcom/narvii/pre_editing/TrimVideoGenerator;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/pre_editing/TrimVideoGenerator;->videoManager$delegate:Lkotlin/Lazy;

    .line 41
    new-instance v0, Lcom/narvii/pre_editing/TrimVideoGenerator$preloadService$2;

    invoke-direct {v0, p0}, Lcom/narvii/pre_editing/TrimVideoGenerator$preloadService$2;-><init>(Lcom/narvii/pre_editing/TrimVideoGenerator;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/pre_editing/TrimVideoGenerator;->preloadService$delegate:Lkotlin/Lazy;

    .line 43
    iput-boolean p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator;->singleTask:Z

    .line 44
    iput-boolean p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator;->dropNegativeTs:Z

    return-void
.end method

.method private final getPreloadService()Lcom/narvii/video/MediaPreloadService;
    .locals 3

    iget-object v0, p0, Lcom/narvii/pre_editing/TrimVideoGenerator;->preloadService$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/pre_editing/TrimVideoGenerator;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/MediaPreloadService;

    return-object v0
.end method

.method private final getVideoManager()Lcom/narvii/video/services/VideoManager;
    .locals 3

    iget-object v0, p0, Lcom/narvii/pre_editing/TrimVideoGenerator;->videoManager$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/pre_editing/TrimVideoGenerator;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/video/services/VideoManager;

    return-object v0
.end method


# virtual methods
.method public final cancel()V
    .locals 3

    .line 79
    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/narvii/pre_editing/TrimVideoGenerator;->trimTasks:Ljava/util/List;

    .line 499
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/pre_editing/TrimVideoGenerator$BaseTrimVideoTask;

    const/4 v2, 0x1

    .line 80
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/narvii/pre_editing/TrimVideoGenerator;->trimTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 82
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/narvii/pre_editing/TrimVideoGenerator;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getDropNegativeTs()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/narvii/pre_editing/TrimVideoGenerator;->dropNegativeTs:Z

    return v0
.end method

.method public final getSingleTask()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/narvii/pre_editing/TrimVideoGenerator;->singleTask:Z

    return v0
.end method

.method public final release()V
    .locals 3

    .line 86
    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/narvii/pre_editing/TrimVideoGenerator;->trimTasks:Ljava/util/List;

    .line 501
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/pre_editing/TrimVideoGenerator$BaseTrimVideoTask;

    const/4 v2, 0x1

    .line 87
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/narvii/pre_editing/TrimVideoGenerator;->trimTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 89
    iget-object v0, p0, Lcom/narvii/pre_editing/TrimVideoGenerator;->trimExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 90
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final setDropNegativeTs(Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator;->dropNegativeTs:Z

    return-void
.end method

.method public final setSingleTask(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator;->singleTask:Z

    return-void
.end method

.method public final startTrimVideo(Lkotlin/Pair;Ljava/lang/String;Ljava/lang/String;JJLcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Lcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;",
            ")V"
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    const-string v3, "srcPath"

    move-object/from16 v7, p1

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "dstPath"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "fileName"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "callback"

    move-object/from16 v14, p8

    invoke-static {v14, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-ge v3, v4, :cond_0

    return-void

    .line 51
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 53
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 55
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 56
    monitor-enter p0

    .line 57
    :try_start_0
    iget-boolean v0, v1, Lcom/narvii/pre_editing/TrimVideoGenerator;->singleTask:Z

    if-eqz v0, :cond_3

    .line 58
    iget-object v0, v1, Lcom/narvii/pre_editing/TrimVideoGenerator;->trimTasks:Ljava/util/List;

    .line 497
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/pre_editing/TrimVideoGenerator$BaseTrimVideoTask;

    const/4 v3, 0x1

    .line 58
    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0

    .line 59
    :cond_2
    iget-object v0, v1, Lcom/narvii/pre_editing/TrimVideoGenerator;->trimTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 61
    :cond_3
    iget-object v0, v1, Lcom/narvii/pre_editing/TrimVideoGenerator;->trimTasks:Ljava/util/List;

    sget-object v2, Lcom/narvii/pre_editing/TrimVideoGenerator$startTrimVideo$1$2;->INSTANCE:Lcom/narvii/pre_editing/TrimVideoGenerator$startTrimVideo$1$2;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 70
    :goto_1
    new-instance v0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;

    invoke-direct {p0}, Lcom/narvii/pre_editing/TrimVideoGenerator;->getVideoManager()Lcom/narvii/video/services/VideoManager;

    move-result-object v5

    invoke-direct {p0}, Lcom/narvii/pre_editing/TrimVideoGenerator;->getPreloadService()Lcom/narvii/video/MediaPreloadService;

    move-result-object v6

    iget-boolean v13, v1, Lcom/narvii/pre_editing/TrimVideoGenerator;->dropNegativeTs:Z

    move-object v4, v0

    move-object/from16 v7, p1

    move-wide/from16 v9, p4

    move-wide/from16 v11, p6

    move-object/from16 v14, p8

    invoke-direct/range {v4 .. v14}, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;-><init>(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/MediaPreloadService;Lkotlin/Pair;Ljava/lang/String;JJZLcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;)V

    .line 71
    iget-object v2, v1, Lcom/narvii/pre_editing/TrimVideoGenerator;->trimTasks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v2, v1, Lcom/narvii/pre_editing/TrimVideoGenerator;->trimExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const-string v3, "trimExecutor"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v2

    if-nez v2, :cond_4

    .line 73
    iget-object v2, v1, Lcom/narvii/pre_editing/TrimVideoGenerator;->trimExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 75
    :cond_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method
