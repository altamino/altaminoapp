.class public final Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;
.super Lcom/narvii/video/interfaces/ISceneVideoGenerator;
.source "MeisheSceneVideoGenerator.kt"

# interfaces
.implements Lcom/meicam/sdk/NvsStreamingContext$CompileCallback;
.implements Lcom/meicam/sdk/NvsStreamingContext$CompileCallback2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;,
        Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;,
        Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMeisheSceneVideoGenerator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MeisheSceneVideoGenerator.kt\ncom/narvii/editor/generator/MeisheSceneVideoGenerator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,325:1\n1587#2,2:326\n*E\n*S KotlinDebug\n*F\n+ 1 MeisheSceneVideoGenerator.kt\ncom/narvii/editor/generator/MeisheSceneVideoGenerator\n*L\n55#1,2:326\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$Companion;

# The value of this static final field might be set in the static constructor
.field private static final TAG:Ljava/lang/String; = "MeisheSceneVideoGenerator"

.field private static final instance$delegate:Lkotlin/Lazy;


# instance fields
.field private compileCancel:Z

.field private currentTask:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;

.field private grabCoverImageTask:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;

.field private final sceneMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/meicam/sdk/NvsTimeline;",
            ">;"
        }
    .end annotation
.end field

.field private final singleThreadExecutor$delegate:Lkotlin/Lazy;

.field private final streamingContext$delegate:Lkotlin/Lazy;

.field private final taskQueue$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "streamingContext"

    const-string v5, "getStreamingContext()Lcom/meicam/sdk/NvsStreamingContext;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "taskQueue"

    const-string v5, "getTaskQueue()Ljava/util/LinkedList;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v3, "singleThreadExecutor"

    const-string v4, "getSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->Companion:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$Companion;

    .line 27
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$Companion$instance$2;->INSTANCE:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$Companion$instance$2;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->instance$delegate:Lkotlin/Lazy;

    const-string v0, "MeisheSceneVideoGenerator"

    .line 30
    sput-object v0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/narvii/video/interfaces/ISceneVideoGenerator;-><init>()V

    .line 33
    sget-object v0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$streamingContext$2;->INSTANCE:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$streamingContext$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->streamingContext$delegate:Lkotlin/Lazy;

    .line 34
    sget-object v0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$taskQueue$2;->INSTANCE:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$taskQueue$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->taskQueue$delegate:Lkotlin/Lazy;

    .line 38
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->sceneMap:Ljava/util/Map;

    .line 42
    sget-object v0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$singleThreadExecutor$2;->INSTANCE:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$singleThreadExecutor$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->singleThreadExecutor$delegate:Lkotlin/Lazy;

    .line 45
    invoke-direct {p0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->setListener()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;-><init>()V

    return-void
.end method

.method private final abortCompile()V
    .locals 2

    .line 170
    invoke-virtual {p0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->getStreamingContext()Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsStreamingContext;->getStreamingEngineState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->getStreamingContext()Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsStreamingContext;->stop()V

    :cond_0
    return-void
.end method

.method public static final synthetic access$clearCoverImageTask(Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->clearCoverImageTask()V

    return-void
.end method

.method public static final synthetic access$execute(Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->execute()V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lkotlin/Lazy;
    .locals 1

    .line 23
    sget-object v0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->instance$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final clearCoverImageTask()V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->grabCoverImageTask:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;->getTimeline()Lcom/meicam/sdk/NvsTimeline;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->getStreamingContext()Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/meicam/sdk/NvsStreamingContext;->removeTimeline(Lcom/meicam/sdk/NvsTimeline;)Z

    :cond_0
    const/4 v0, 0x0

    .line 223
    iput-object v0, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->grabCoverImageTask:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;

    return-void
.end method

.method private final execute()V
    .locals 1

    const/4 v0, 0x0

    .line 141
    iput-boolean v0, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->compileCancel:Z

    .line 143
    iget-object v0, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->currentTask:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;->execute()V

    :cond_0
    return-void
.end method

.method private final generate(Lcom/narvii/scene/model/SceneDraft;Ljava/lang/String;Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;)V
    .locals 8

    .line 67
    invoke-direct {p0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->pauseCurrentTask()V

    .line 68
    new-instance v6, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;

    iget-object v2, p1, Lcom/narvii/scene/model/SceneDraft;->draftId:Ljava/lang/String;

    const-string v0, "sceneDraft.draftId"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/narvii/editor/utils/TimelineUtils;->INSTANCE:Lcom/narvii/editor/utils/TimelineUtils;

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x2

    invoke-static {v0, p1, v1, v3, v7}, Lcom/narvii/editor/utils/TimelineUtils;->createTimeline$default(Lcom/narvii/editor/utils/TimelineUtils;Lcom/narvii/scene/model/SceneDraft;ZILjava/lang/Object;)Lcom/meicam/sdk/NvsTimeline;

    move-result-object v3

    move-object v0, v6

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;-><init>(Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;Ljava/lang/String;Lcom/meicam/sdk/NvsTimeline;Ljava/lang/String;Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;)V

    invoke-direct {p0, v6}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->safeSetCurrentTask(Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;)V

    .line 69
    invoke-direct {p0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->execute()V

    .line 71
    sget-object p1, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "generateStoryVideo >>> generator = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "   task id = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->currentTask:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/video/interfaces/ISceneVideoGenerator$Task;->getId()Ljava/lang/String;

    move-result-object v7

    :cond_0
    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    outputPath = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final generate(Lcom/narvii/scene/model/SceneInfo;Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;Ljava/lang/String;Z)V
    .locals 7

    .line 79
    iget-object v0, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->sceneMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meicam/sdk/NvsTimeline;

    if-nez v0, :cond_0

    .line 81
    invoke-interface {p2}, Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;->onCancel()V

    return-void

    .line 85
    :cond_0
    new-instance v0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;

    iget-object v3, p1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    const-string v1, "sceneInfo.id"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->sceneMap:Ljava/util/Map;

    iget-object p1, p1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/meicam/sdk/NvsTimeline;

    move-object v1, v0

    move-object v2, p0

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;-><init>(Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;Ljava/lang/String;Lcom/meicam/sdk/NvsTimeline;Ljava/lang/String;Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;)V

    .line 86
    invoke-virtual {p0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->getTaskQueue()Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string p2, "taskQueue.iterator()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 88
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    const-string v1, "iterator.next()"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/narvii/video/interfaces/ISceneVideoGenerator$Task;

    .line 89
    invoke-virtual {v0}, Lcom/narvii/video/interfaces/ISceneVideoGenerator$Task;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/narvii/video/interfaces/ISceneVideoGenerator$Task;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 90
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 94
    :cond_2
    sget-object p1, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateSceneVideo >>>  generator = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  task id = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/narvii/video/interfaces/ISceneVideoGenerator$Task;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    outputPath = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "  immediately = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p3, 0x20

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_3

    .line 97
    invoke-direct {p0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->pauseCurrentTask()V

    .line 98
    invoke-direct {p0, v0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->safeSetCurrentTask(Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;)V

    .line 99
    invoke-direct {p0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->execute()V

    goto :goto_1

    .line 101
    :cond_3
    iget-object p1, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->currentTask:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;

    if-nez p1, :cond_4

    .line 102
    invoke-direct {p0, v0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->safeSetCurrentTask(Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;)V

    .line 103
    invoke-direct {p0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->execute()V

    goto :goto_1

    .line 105
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->getTaskQueue()Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private final pauseCurrentTask()V
    .locals 3

    .line 121
    sget-object v0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseCurrentTask >>> task Id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->currentTask:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/narvii/video/interfaces/ISceneVideoGenerator$Task;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->currentTask:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;

    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {v0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;->pause()V

    .line 124
    invoke-virtual {p0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->getTaskQueue()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private final safeSetCurrentTask(Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->currentTask:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;

    return-void
.end method

.method private final setListener()V
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->getStreamingContext()Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/meicam/sdk/NvsStreamingContext;->setCompileCallback(Lcom/meicam/sdk/NvsStreamingContext$CompileCallback;)V

    .line 50
    invoke-virtual {p0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->getStreamingContext()Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/meicam/sdk/NvsStreamingContext;->setCompileCallback2(Lcom/meicam/sdk/NvsStreamingContext$CompileCallback2;)V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 2

    .line 151
    sget-object v0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->TAG:Ljava/lang/String;

    const-string v1, "abort >>>"

    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->compileCancel:Z

    .line 165
    invoke-direct {p0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->abortCompile()V

    .line 166
    iget-object v0, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->grabCoverImageTask:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;->abort()V

    :cond_0
    return-void
.end method

.method public generateSceneVideo(Lcom/narvii/scene/model/SceneInfo;Ljava/lang/String;Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;Z)V
    .locals 1

    const-string v0, "sceneInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onGenerateCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0, p1, p3, p2, p4}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->generate(Lcom/narvii/scene/model/SceneInfo;Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;Ljava/lang/String;Z)V

    return-void
.end method

.method public generateStoryVideo(Lcom/narvii/scene/model/SceneDraft;Ljava/lang/String;Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;)V
    .locals 1

    const-string v0, "sceneDraft"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onGenerateCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->generate(Lcom/narvii/scene/model/SceneDraft;Ljava/lang/String;Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;)V

    return-void
.end method

.method public final getCompileCancel()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->compileCancel:Z

    return v0
.end method

.method public final getCurrentTask()Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->currentTask:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;

    return-object v0
.end method

.method public final getGrabCoverImageTask()Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->grabCoverImageTask:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;

    return-object v0
.end method

.method public getLastFrameSnapShot(Lcom/narvii/scene/model/SceneInfo;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 132
    :cond_0
    sget-object v1, Lcom/narvii/editor/utils/TimelineUtils;->INSTANCE:Lcom/narvii/editor/utils/TimelineUtils;

    invoke-virtual {v1, p1}, Lcom/narvii/editor/utils/TimelineUtils;->createTimelineWithoutDurationLimit(Lcom/narvii/scene/model/SceneInfo;)Lcom/meicam/sdk/NvsTimeline;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->getStreamingContext()Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/meicam/sdk/NvsTimeline;->getDuration()J

    move-result-wide v2

    const/16 v0, 0xa

    int-to-long v4, v0

    sub-long/2addr v2, v4

    new-instance v0, Lcom/meicam/sdk/NvsRational;

    const/4 v4, 0x1

    invoke-direct {v0, v4, v4}, Lcom/meicam/sdk/NvsRational;-><init>(II)V

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/meicam/sdk/NvsStreamingContext;->grabImageFromTimeline(Lcom/meicam/sdk/NvsTimeline;JLcom/meicam/sdk/NvsRational;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getSceneMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/meicam/sdk/NvsTimeline;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->sceneMap:Ljava/util/Map;

    return-object v0
.end method

.method public final getSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 3

    iget-object v0, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->singleThreadExecutor$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public final getStreamingContext()Lcom/meicam/sdk/NvsStreamingContext;
    .locals 3

    iget-object v0, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->streamingContext$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meicam/sdk/NvsStreamingContext;

    return-object v0
.end method

.method public final getTaskQueue()Ljava/util/LinkedList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lcom/narvii/video/interfaces/ISceneVideoGenerator$Task;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->taskQueue$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    return-object v0
.end method

.method public grabSceneCoverImage(Lcom/narvii/scene/model/SceneInfo;Ljava/lang/String;Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;)V
    .locals 10

    const-string v0, "sceneInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    new-instance v0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;

    iget-object v3, p1, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    const-string v1, "sceneInfo.id"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/narvii/editor/utils/TimelineUtils;->INSTANCE:Lcom/narvii/editor/utils/TimelineUtils;

    invoke-virtual {v1, p1}, Lcom/narvii/editor/utils/TimelineUtils;->createTimeline(Lcom/narvii/scene/model/SceneInfo;)Lcom/meicam/sdk/NvsTimeline;

    move-result-object v4

    const/4 v6, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v5, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v9}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;-><init>(Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;Ljava/lang/String;Lcom/meicam/sdk/NvsTimeline;Ljava/lang/String;ILcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->grabCoverImageTask:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;

    .line 112
    iget-object p1, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->grabCoverImageTask:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;->execute()V

    :cond_0
    return-void
.end method

.method public grabStoryCoverImage(Lcom/narvii/scene/model/SceneDraft;Ljava/lang/String;ILcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;)V
    .locals 8

    const-string v0, "sceneDraft"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onGenerateCallback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    new-instance v0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;

    iget-object v3, p1, Lcom/narvii/scene/model/SceneDraft;->draftId:Ljava/lang/String;

    const-string v1, "sceneDraft.draftId"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/narvii/editor/utils/TimelineUtils;->INSTANCE:Lcom/narvii/editor/utils/TimelineUtils;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/narvii/editor/utils/TimelineUtils;->createTimeline(Lcom/narvii/scene/model/SceneDraft;Z)Lcom/meicam/sdk/NvsTimeline;

    move-result-object v4

    move-object v1, v0

    move-object v2, p0

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;-><init>(Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;Ljava/lang/String;Lcom/meicam/sdk/NvsTimeline;Ljava/lang/String;ILcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;)V

    iput-object v0, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->grabCoverImageTask:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;

    .line 117
    iget-object p1, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->grabCoverImageTask:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;->execute()V

    :cond_0
    return-void
.end method

.method public onCompileCompleted(Lcom/meicam/sdk/NvsTimeline;Z)V
    .locals 4

    .line 189
    sget-object v0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCompileCompleted >>> taskId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->currentTask:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/narvii/video/interfaces/ISceneVideoGenerator$Task;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  isCanceled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->sceneMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->currentTask:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/narvii/video/interfaces/ISceneVideoGenerator$Task;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    if-eqz v0, :cond_c

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-virtual {p0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->getStreamingContext()Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->removeTimeline(Lcom/meicam/sdk/NvsTimeline;)Z

    if-nez p2, :cond_8

    .line 192
    iget-boolean p1, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->compileCancel:Z

    if-eqz p1, :cond_2

    goto :goto_5

    .line 203
    :cond_2
    iget-object p1, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->currentTask:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;

    if-eqz p1, :cond_6

    .line 204
    invoke-virtual {p1}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;->getOutputPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;->getOutputPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/narvii/util/FileUtils;->isEmpty(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_2

    .line 207
    :cond_3
    invoke-virtual {p1}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;->getOnGenerateCallback()Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;->getOutputPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p2, p1}, Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;->onSuccess(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 205
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;->getOnGenerateCallback()Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance p2, Ljava/lang/Exception;

    const-string v0, "output file is not exist"

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;->onError(Ljava/lang/Exception;)V

    .line 210
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->getTaskQueue()Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 211
    invoke-virtual {p0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->getTaskQueue()Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;

    invoke-direct {p0, p1}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->safeSetCurrentTask(Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;)V

    goto :goto_4

    .line 213
    :cond_7
    invoke-direct {p0, v3}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->safeSetCurrentTask(Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;)V

    .line 215
    :goto_4
    new-instance p1, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$onCompileCompleted$3;

    invoke-direct {p1, p0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$onCompileCompleted$3;-><init>(Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    goto :goto_7

    .line 193
    :cond_8
    :goto_5
    iget-object p1, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->currentTask:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;->getOnGenerateCallback()Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-interface {p1}, Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;->onCancel()V

    .line 194
    :cond_9
    :goto_6
    invoke-virtual {p0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->getTaskQueue()Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b

    .line 195
    invoke-virtual {p0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->getTaskQueue()Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;

    if-eqz p1, :cond_a

    .line 196
    invoke-virtual {p1}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;->getOnGenerateCallback()Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-interface {p2}, Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;->onCancel()V

    :cond_a
    if-eqz p1, :cond_9

    .line 197
    invoke-virtual {p1}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;->getTimeline()Lcom/meicam/sdk/NvsTimeline;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->getStreamingContext()Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/meicam/sdk/NvsStreamingContext;->removeTimeline(Lcom/meicam/sdk/NvsTimeline;)Z

    goto :goto_6

    .line 199
    :cond_b
    invoke-direct {p0, v3}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->safeSetCurrentTask(Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;)V

    .line 200
    iget-object p1, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->sceneMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    const/4 p1, 0x0

    .line 201
    iput-boolean p1, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->compileCancel:Z

    :goto_7
    return-void

    .line 190
    :cond_c
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.collections.MutableMap<K, V>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :goto_8
    throw p1

    :goto_9
    goto :goto_8
.end method

.method public onCompileFailed(Lcom/meicam/sdk/NvsTimeline;)V
    .locals 3

    .line 176
    sget-object p1, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCompileFailed >>> taskId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->currentTask:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/narvii/video/interfaces/ISceneVideoGenerator$Task;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object p1, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->currentTask:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;->getOnGenerateCallback()Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;->onError(Ljava/lang/Exception;)V

    .line 178
    :cond_1
    iget-object p1, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->sceneMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->currentTask:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/narvii/video/interfaces/ISceneVideoGenerator$Task;->getId()Ljava/lang/String;

    move-result-object v2

    :cond_2
    if-eqz p1, :cond_3

    invoke-static {p1}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.MutableMap<K, V>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCompileFinished(Lcom/meicam/sdk/NvsTimeline;)V
    .locals 0

    return-void
.end method

.method public onCompileProgress(Lcom/meicam/sdk/NvsTimeline;I)V
    .locals 0

    .line 182
    iget-object p1, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->currentTask:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;->getOnGenerateCallback()Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/narvii/video/interfaces/ISceneVideoGenerator$OnGenerateCallback;->onProgress(I)V

    :cond_0
    return-void
.end method

.method public prepareSceneList(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/scene/model/SceneInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "sceneList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->sceneMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 326
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/scene/model/SceneInfo;

    .line 56
    iget-object v1, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->sceneMap:Ljava/util/Map;

    iget-object v2, v0, Lcom/narvii/scene/model/SceneInfo;->id:Ljava/lang/String;

    const-string v3, "it.id"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/narvii/editor/utils/TimelineUtils;->INSTANCE:Lcom/narvii/editor/utils/TimelineUtils;

    invoke-virtual {v3, v0}, Lcom/narvii/editor/utils/TimelineUtils;->createTimeline(Lcom/narvii/scene/model/SceneInfo;)Lcom/meicam/sdk/NvsTimeline;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 58
    :cond_0
    iget-object p1, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->currentTask:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;->pause()V

    :cond_1
    const/4 p1, 0x0

    .line 59
    invoke-direct {p0, p1}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->safeSetCurrentTask(Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;)V

    return-void
.end method

.method public final setCompileCancel(Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->compileCancel:Z

    return-void
.end method

.method public final setCurrentTask(Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->currentTask:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$MeisheTask;

    return-void
.end method

.method public final setGrabCoverImageTask(Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->grabCoverImageTask:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$CoverImageTask;

    return-void
.end method
