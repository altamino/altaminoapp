.class final Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;
.super Lcom/narvii/pre_editing/TrimVideoGenerator$BaseTrimVideoTask;
.source "TrimVideoGenerator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/pre_editing/TrimVideoGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FFTrimVideoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/pre_editing/TrimVideoGenerator$BaseTrimVideoTask<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTrimVideoGenerator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrimVideoGenerator.kt\ncom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask\n*L\n1#1,496:1\n*E\n"
.end annotation


# instance fields
.field private final callback:Lcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;

.field private final condition:Ljava/util/concurrent/locks/Condition;

.field private curRunningConfig:Lffmpeg/base/MediaEditingConfig;

.field private final dropNegativeTs:Z

.field private final dstPath:Ljava/lang/String;

.field private final endMs:J

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final preloadService:Lcom/narvii/video/MediaPreloadService;

.field private final srcPath:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final startMs:J

.field private final videoManager:Lcom/narvii/video/services/VideoManager;


# direct methods
.method public constructor <init>(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/MediaPreloadService;Lkotlin/Pair;Ljava/lang/String;JJZLcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/video/services/VideoManager;",
            "Lcom/narvii/video/MediaPreloadService;",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "JJZ",
            "Lcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "videoManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preloadService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "srcPath"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dstPath"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    invoke-direct {p0, p4, p10}, Lcom/narvii/pre_editing/TrimVideoGenerator$BaseTrimVideoTask;-><init>(Ljava/lang/String;Lcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;)V

    iput-object p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->videoManager:Lcom/narvii/video/services/VideoManager;

    iput-object p2, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->preloadService:Lcom/narvii/video/MediaPreloadService;

    iput-object p3, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->srcPath:Lkotlin/Pair;

    iput-object p4, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->dstPath:Ljava/lang/String;

    iput-wide p5, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->startMs:J

    iput-wide p7, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->endMs:J

    iput-boolean p9, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->dropNegativeTs:Z

    iput-object p10, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->callback:Lcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;

    .line 314
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 315
    iget-object p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->condition:Ljava/util/concurrent/locks/Condition;

    return-void
.end method

.method public static final synthetic access$getCondition$p(Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;)Ljava/util/concurrent/locks/Condition;
    .locals 0

    .line 309
    iget-object p0, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->condition:Ljava/util/concurrent/locks/Condition;

    return-object p0
.end method

.method public static final synthetic access$getLock$p(Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 309
    iget-object p0, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method public static final varargs synthetic access$publishProgress(Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;[Ljava/lang/Float;)V
    .locals 0

    .line 309
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method private final muxAVFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)Z"
        }
    .end annotation

    .line 406
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 407
    :cond_0
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 408
    new-instance v3, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-direct {v3}, Lcom/narvii/video/model/AVClipInfoPack;-><init>()V

    .line 409
    iput-object p1, v3, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 410
    new-instance p1, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-direct {p1}, Lcom/narvii/video/model/AVClipInfoPack;-><init>()V

    .line 411
    iput-object p2, p1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 412
    iget-object v2, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->videoManager:Lcom/narvii/video/services/VideoManager;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$muxAVFile$1;

    invoke-direct {v6, p0, v0, p4}, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$muxAVFile$1;-><init>(Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function1;)V

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/narvii/video/services/VideoManager;->simpleAVMix(Lcom/narvii/video/model/AVClipInfoPack;Ljava/util/List;Ljava/io/File;Lcom/narvii/video/interfaces/IVideoServiceCallback;Z)Lffmpeg/base/MediaEditingConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->curRunningConfig:Lffmpeg/base/MediaEditingConfig;

    .line 433
    iget-object p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 434
    :try_start_0
    iget-object p2, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Condition;->await()V

    .line 435
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 436
    iget-boolean p1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return p1

    :catchall_0
    move-exception p2

    .line 433
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p2
.end method

.method private final trimMedia(Ljava/lang/String;Ljava/lang/String;IIZZLkotlin/jvm/functions/Function1;)Z
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)Z"
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v0, p1

    move/from16 v6, p3

    move/from16 v2, p4

    .line 364
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return v4

    .line 365
    :cond_0
    new-instance v14, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean v4, v14, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 367
    new-instance v3, Lcom/narvii/video/model/AVClipInfoPack;

    invoke-direct {v3}, Lcom/narvii/video/model/AVClipInfoPack;-><init>()V

    const/4 v5, 0x2

    const/4 v7, 0x0

    const-string v8, "http"

    .line 368
    invoke-static {v0, v8, v4, v5, v7}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 369
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 370
    iget-object v5, v1, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->preloadService:Lcom/narvii/video/MediaPreloadService;

    invoke-virtual {v5, v4, v0}, Lcom/narvii/video/MediaPreloadService;->translateUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    :cond_1
    iput-object v0, v3, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 374
    iput v6, v3, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 375
    iput v2, v3, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 377
    iget-object v0, v1, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->videoManager:Lcom/narvii/video/services/VideoManager;

    new-instance v4, Ljava/io/File;

    move-object/from16 v5, p2

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sub-int v5, v2, v6

    iget-boolean v7, v1, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->dropNegativeTs:Z

    new-instance v8, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$trimMedia$2;

    move-object/from16 v2, p7

    invoke-direct {v8, p0, v14, v2}, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$trimMedia$2;-><init>(Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function1;)V

    const/4 v11, 0x0

    const/16 v12, 0x100

    const/4 v13, 0x0

    move-object v2, v0

    move/from16 v6, p3

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v2 .. v13}, Lcom/narvii/video/services/VideoManager;->cropVideoByCopy$default(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;IIZLcom/narvii/video/interfaces/IVideoServiceCallback;ZZLjava/lang/String;ILjava/lang/Object;)Lffmpeg/base/MediaEditingConfig;

    move-result-object v0

    iput-object v0, v1, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->curRunningConfig:Lffmpeg/base/MediaEditingConfig;

    .line 399
    iget-object v2, v1, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 400
    :try_start_0
    iget-object v0, v1, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    .line 401
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 402
    iget-boolean v0, v14, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return v0

    :catchall_0
    move-exception v0

    .line 399
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static synthetic trimMedia$default(Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;Ljava/lang/String;Ljava/lang/String;IIZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z
    .locals 9

    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_0

    .line 363
    sget-object v0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$trimMedia$1;->INSTANCE:Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$trimMedia$1;

    move-object v8, v0

    goto :goto_0

    :cond_0
    move-object/from16 v8, p7

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->trimMedia(Ljava/lang/String;Ljava/lang/String;IIZZLkotlin/jvm/functions/Function1;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 14

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    iget-object p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->srcPath:Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->srcPath:Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz p1, :cond_0

    .line 320
    iget-object p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->srcPath:Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->dstPath:Ljava/lang/String;

    iget-wide v5, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->startMs:J

    long-to-int v5, v5

    iget-wide v6, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->endMs:J

    long-to-int v6, v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v10, 0x40

    const/4 v11, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v11}, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->trimMedia$default(Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;Ljava/lang/String;Ljava/lang/String;IIZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z

    move-result p1

    goto/16 :goto_0

    .line 323
    :cond_0
    iget-object p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->dstPath:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    const-string v4, "."

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v3

    if-eqz p1, :cond_6

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v3, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_v_0.mp4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 325
    iget-object v4, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->srcPath:Lkotlin/Pair;

    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    iget-wide v4, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->startMs:J

    long-to-int v8, v4

    iget-wide v4, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->endMs:J

    long-to-int v9, v4

    const/4 v10, 0x1

    const/4 v11, 0x0

    sget-object v12, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$doInBackground$trimSuccess$1;->INSTANCE:Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$doInBackground$trimSuccess$1;

    move-object v5, p0

    move-object v7, v3

    invoke-direct/range {v5 .. v12}, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->trimMedia(Ljava/lang/String;Ljava/lang/String;IIZZLkotlin/jvm/functions/Function1;)Z

    move-result v4

    if-nez v4, :cond_1

    return-object v2

    .line 328
    :cond_1
    iget-object v4, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->videoManager:Lcom/narvii/video/services/VideoManager;

    invoke-virtual {v4, v3}, Lcom/narvii/video/services/VideoManager;->fetchStreamInfoSync(Ljava/lang/String;)Lcom/narvii/video/model/StreamInfo;

    move-result-object v4

    .line 330
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_a_0.mp4"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 331
    iget-wide v5, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->endMs:J

    long-to-int v6, v5

    iget v5, v4, Lcom/narvii/video/model/StreamInfo;->durationInMs:I

    sub-int/2addr v6, v5

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 332
    iget-object v5, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->srcPath:Lkotlin/Pair;

    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    iget v4, v4, Lcom/narvii/video/model/StreamInfo;->durationInMs:I

    add-int v10, v9, v4

    const/4 v11, 0x0

    const/4 v12, 0x1

    sget-object v13, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$doInBackground$trimSuccess$3;->INSTANCE:Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$doInBackground$trimSuccess$3;

    move-object v6, p0

    move-object v8, p1

    invoke-direct/range {v6 .. v13}, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->trimMedia(Ljava/lang/String;Ljava/lang/String;IIZZLkotlin/jvm/functions/Function1;)Z

    move-result v4

    if-nez v4, :cond_2

    return-object v2

    .line 335
    :cond_2
    iget-object v4, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->dstPath:Ljava/lang/String;

    sget-object v5, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$doInBackground$trimSuccess$5;->INSTANCE:Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$doInBackground$trimSuccess$5;

    invoke-direct {p0, v3, p1, v4, v5}, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->muxAVFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Z

    move-result v4

    if-nez v4, :cond_3

    return-object v2

    .line 338
    :cond_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 339
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const/4 p1, 0x1

    .line 343
    :goto_0
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    .line 342
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 323
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 309
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .locals 2

    .line 356
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 357
    iget-object v0, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->curRunningConfig:Lffmpeg/base/MediaEditingConfig;

    if-eqz v0, :cond_0

    .line 358
    iget-object v1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->videoManager:Lcom/narvii/video/services/VideoManager;

    invoke-virtual {v1, v0}, Lcom/narvii/video/services/VideoManager;->abort(Lffmpeg/base/MediaEditingConfig;)V

    :cond_0
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Float;)V
    .locals 1

    const-string v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 350
    aget-object p1, p1, v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 351
    iget-object v0, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->callback:Lcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;

    invoke-interface {v0, p1}, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;->onProgress(F)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 309
    check-cast p1, [Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->onProgressUpdate([Ljava/lang/Float;)V

    return-void
.end method
