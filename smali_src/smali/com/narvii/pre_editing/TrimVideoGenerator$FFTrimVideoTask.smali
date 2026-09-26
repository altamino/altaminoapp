.class final Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;
.super Lcom/narvii/pre_editing/TrimVideoGenerator$BaseTrimVideoTask;
.source "SourceFile"


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
    value = "SMAP\nTrimVideoGenerator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrimVideoGenerator.kt\ncom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,495:1\n1#2:496\n*E\n"
.end annotation


# instance fields
.field private final callback:Lcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final condition:Ljava/util/concurrent/locks/Condition;

.field private curRunningConfig:Lg7/d;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final dropNegativeTs:Z

.field private final dstPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final endMs:J

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final preloadService:Lcom/narvii/video/MediaPreloadService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final srcPath:Lw7/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw7/u<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final startMs:J

.field private final videoManager:Lcom/narvii/video/services/VideoManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/MediaPreloadService;Lw7/u;Ljava/lang/String;JJZLcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;)V
    .locals 1
    .param p1    # Lcom/narvii/video/services/VideoManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/video/MediaPreloadService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lw7/u;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Lcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/video/services/VideoManager;",
            "Lcom/narvii/video/MediaPreloadService;",
            "Lw7/u<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "JJZ",
            "Lcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string/jumbo v0, "videoManager"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "preloadService"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string/jumbo v0, "srcPath"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v0, "dstPath"

    .line 18
    .line 19
    .line 20
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    const-string v0, "callback"

    .line 23
    .line 24
    .line 25
    invoke-static {p10, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p4, p10}, Lcom/narvii/pre_editing/TrimVideoGenerator$BaseTrimVideoTask;-><init>(Ljava/lang/String;Lcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;)V

    .line 29
    .line 30
    iput-object p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->videoManager:Lcom/narvii/video/services/VideoManager;

    .line 31
    .line 32
    iput-object p2, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->preloadService:Lcom/narvii/video/MediaPreloadService;

    .line 33
    .line 34
    iput-object p3, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->srcPath:Lw7/u;

    .line 35
    .line 36
    iput-object p4, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->dstPath:Ljava/lang/String;

    .line 37
    .line 38
    iput-wide p5, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->startMs:J

    .line 39
    .line 40
    iput-wide p7, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->endMs:J

    .line 41
    .line 42
    iput-boolean p9, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->dropNegativeTs:Z

    .line 43
    .line 44
    iput-object p10, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->callback:Lcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;

    .line 45
    .line 46
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 47
    .line 48
    .line 49
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 50
    .line 51
    iput-object p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    iput-object p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->condition:Ljava/util/concurrent/locks/Condition;

    .line 58
    return-void
.end method

.method public static final synthetic access$getCondition$p(Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;)Ljava/util/concurrent/locks/Condition;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->condition:Ljava/util/concurrent/locks/Condition;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$getLock$p(Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    return-object p0
.end method

.method public static final varargs synthetic access$publishProgress(Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;[Ljava/lang/Float;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 4
    return-void
.end method

.method private final muxAVFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le8/l;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Le8/l<",
            "-",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    .line 10
    :cond_0
    new-instance v0, Lkotlin/jvm/internal/k0;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Lkotlin/jvm/internal/k0;-><init>()V

    .line 14
    .line 15
    new-instance v2, Lcom/narvii/video/model/AVClipInfoPack;

    .line 16
    .line 17
    .line 18
    invoke-direct {v2}, Lcom/narvii/video/model/AVClipInfoPack;-><init>()V

    .line 19
    .line 20
    iput-object p1, v2, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 21
    .line 22
    new-instance p1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 23
    .line 24
    .line 25
    invoke-direct {p1}, Lcom/narvii/video/model/AVClipInfoPack;-><init>()V

    .line 26
    .line 27
    iput-object p2, p1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->videoManager:Lcom/narvii/video/services/VideoManager;

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lkotlin/collections/t;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 33
    move-result-object v3

    .line 34
    .line 35
    new-instance v4, Ljava/io/File;

    .line 36
    .line 37
    .line 38
    invoke-direct {v4, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    new-instance v5, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$muxAVFile$1;

    .line 41
    .line 42
    .line 43
    invoke-direct {v5, v0, p0, p4}, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$muxAVFile$1;-><init>(Lkotlin/jvm/internal/k0;Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;Le8/l;)V

    .line 44
    const/4 v6, 0x1

    .line 45
    .line 46
    .line 47
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/video/services/VideoManager;->simpleAVMix(Lcom/narvii/video/model/AVClipInfoPack;Ljava/util/List;Ljava/io/File;Lcom/narvii/video/interfaces/IVideoServiceCallback;Z)Lg7/d;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    iput-object p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->curRunningConfig:Lg7/d;

    .line 51
    .line 52
    iget-object p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 53
    .line 54
    .line 55
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 56
    .line 57
    :try_start_0
    iget-object p2, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->condition:Ljava/util/concurrent/locks/Condition;

    .line 58
    .line 59
    .line 60
    invoke-interface {p2}, Ljava/util/concurrent/locks/Condition;->await()V

    .line 61
    .line 62
    sget-object p2, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 66
    .line 67
    iget-boolean p1, v0, Lkotlin/jvm/internal/k0;->element:Z

    .line 68
    return p1

    .line 69
    :catchall_0
    move-exception p2

    .line 70
    .line 71
    .line 72
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 73
    throw p2
.end method

.method private final trimMedia(Ljava/lang/String;Ljava/lang/String;IIZZLe8/l;)Z
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZZ",
            "Le8/l<",
            "-",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)Z"
        }
    .end annotation

    .line 1
    move-object v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move/from16 v6, p3

    .line 6
    .line 7
    move/from16 v2, p4

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    .line 11
    move-result v3

    .line 12
    const/4 v4, 0x0

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    return v4

    .line 16
    .line 17
    :cond_0
    new-instance v14, Lkotlin/jvm/internal/k0;

    .line 18
    .line 19
    .line 20
    invoke-direct {v14}, Lkotlin/jvm/internal/k0;-><init>()V

    .line 21
    .line 22
    new-instance v3, Lcom/narvii/video/model/AVClipInfoPack;

    .line 23
    .line 24
    .line 25
    invoke-direct {v3}, Lcom/narvii/video/model/AVClipInfoPack;-><init>()V

    .line 26
    const/4 v5, 0x2

    .line 27
    const/4 v7, 0x0

    .line 28
    .line 29
    const-string v8, "http"

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v8, v4, v5, v7}, Lkotlin/text/k;->K(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 33
    move-result v4

    .line 34
    .line 35
    if-eqz v4, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    .line 39
    move-result v4

    .line 40
    .line 41
    .line 42
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 43
    move-result v4

    .line 44
    .line 45
    .line 46
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 47
    move-result-object v4

    .line 48
    .line 49
    iget-object v5, v1, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->preloadService:Lcom/narvii/video/MediaPreloadService;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5, v4, v0}, Lcom/narvii/video/MediaPreloadService;->translateUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    :cond_1
    iput-object v0, v3, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 56
    .line 57
    iput v6, v3, Lcom/narvii/video/model/AVClipInfoPack;->trimStartInMs:I

    .line 58
    .line 59
    iput v2, v3, Lcom/narvii/video/model/AVClipInfoPack;->trimEndInMs:I

    .line 60
    .line 61
    iget-object v0, v1, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->videoManager:Lcom/narvii/video/services/VideoManager;

    .line 62
    .line 63
    new-instance v4, Ljava/io/File;

    .line 64
    .line 65
    move-object/from16 v5, p2

    .line 66
    .line 67
    .line 68
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    sub-int v5, v2, v6

    .line 71
    .line 72
    iget-boolean v7, v1, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->dropNegativeTs:Z

    .line 73
    .line 74
    new-instance v8, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$trimMedia$2;

    .line 75
    .line 76
    move-object/from16 v2, p7

    .line 77
    .line 78
    .line 79
    invoke-direct {v8, v14, p0, v2}, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$trimMedia$2;-><init>(Lkotlin/jvm/internal/k0;Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;Le8/l;)V

    .line 80
    const/4 v11, 0x0

    .line 81
    .line 82
    const/16 v12, 0x100

    .line 83
    const/4 v13, 0x0

    .line 84
    move-object v2, v0

    .line 85
    .line 86
    move/from16 v6, p3

    .line 87
    .line 88
    move/from16 v9, p5

    .line 89
    .line 90
    move/from16 v10, p6

    .line 91
    .line 92
    .line 93
    invoke-static/range {v2 .. v13}, Lcom/narvii/video/services/VideoManager;->cropVideoByCopy$default(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/model/AVClipInfoPack;Ljava/io/File;IIZLcom/narvii/video/interfaces/IVideoServiceCallback;ZZLjava/lang/String;ILjava/lang/Object;)Lg7/d;

    .line 94
    move-result-object v0

    .line 95
    .line 96
    iput-object v0, v1, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->curRunningConfig:Lg7/d;

    .line 97
    .line 98
    iget-object v2, v1, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 99
    .line 100
    .line 101
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 102
    .line 103
    :try_start_0
    iget-object v0, v1, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->condition:Ljava/util/concurrent/locks/Condition;

    .line 104
    .line 105
    .line 106
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    .line 107
    .line 108
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .line 110
    .line 111
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 112
    .line 113
    iget-boolean v0, v14, Lkotlin/jvm/internal/k0;->element:Z

    .line 114
    return v0

    .line 115
    :catchall_0
    move-exception v0

    .line 116
    .line 117
    .line 118
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 119
    throw v0
.end method

.method static synthetic trimMedia$default(Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;Ljava/lang/String;Ljava/lang/String;IIZZLe8/l;ILjava/lang/Object;)Z
    .locals 9

    .line 1
    .line 2
    and-int/lit8 v0, p8, 0x40

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$trimMedia$1;->INSTANCE:Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$trimMedia$1;

    .line 7
    move-object v8, v0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    move-object/from16 v8, p7

    .line 11
    :goto_0
    move-object v1, p0

    .line 12
    move-object v2, p1

    .line 13
    move-object v3, p2

    .line 14
    move v4, p3

    .line 15
    move v5, p4

    .line 16
    move v6, p5

    .line 17
    move v7, p6

    .line 18
    .line 19
    .line 20
    invoke-direct/range {v1 .. v8}, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->trimMedia(Ljava/lang/String;Ljava/lang/String;IIZZLe8/l;)Z

    .line 21
    move-result v0

    .line 22
    return v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 14
    .param p1    # [Ljava/lang/Void;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->srcPath:Lw7/u;

    .line 2
    invoke-virtual {p1}, Lw7/u;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->srcPath:Lw7/u;

    invoke-virtual {v0}, Lw7/u;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->srcPath:Lw7/u;

    .line 4
    invoke-virtual {p1}, Lw7/u;->c()Ljava/lang/Object;

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

    invoke-static/range {v2 .. v11}, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->trimMedia$default(Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;Ljava/lang/String;Ljava/lang/String;IIZZLe8/l;ILjava/lang/Object;)Z

    move-result p1

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->dstPath:Ljava/lang/String;

    const-string v4, "."

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, p1

    .line 5
    invoke-static/range {v3 .. v8}, Lkotlin/text/k;->i0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v3

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v3, "substring(...)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_v_0.mp4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->srcPath:Lw7/u;

    .line 7
    invoke-virtual {v4}, Lw7/u;->c()Ljava/lang/Object;

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

    invoke-direct/range {v5 .. v12}, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->trimMedia(Ljava/lang/String;Ljava/lang/String;IIZZLe8/l;)Z

    move-result v4

    if-nez v4, :cond_1

    return-object v2

    :cond_1
    iget-object v4, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->videoManager:Lcom/narvii/video/services/VideoManager;

    .line 8
    invoke-virtual {v4, v3}, Lcom/narvii/video/services/VideoManager;->fetchStreamInfoSync(Ljava/lang/String;)Lcom/narvii/video/model/StreamInfo;

    move-result-object v4

    .line 9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_a_0.mp4"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-wide v5, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->endMs:J

    long-to-int v5, v5

    .line 10
    iget v6, v4, Lcom/narvii/video/model/StreamInfo;->durationInMs:I

    sub-int/2addr v5, v6

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget-object v5, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->srcPath:Lw7/u;

    .line 11
    invoke-virtual {v5}, Lw7/u;->d()Ljava/lang/Object;

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

    invoke-direct/range {v6 .. v13}, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->trimMedia(Ljava/lang/String;Ljava/lang/String;IIZZLe8/l;)Z

    move-result v4

    if-nez v4, :cond_2

    return-object v2

    :cond_2
    iget-object v4, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->dstPath:Ljava/lang/String;

    sget-object v5, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$doInBackground$trimSuccess$5;->INSTANCE:Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask$doInBackground$trimSuccess$5;

    .line 12
    invoke-direct {p0, v3, p1, v4, v5}, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->muxAVFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le8/l;)Z

    move-result v4

    if-nez v4, :cond_3

    return-object v2

    .line 13
    :cond_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 14
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move p1, v1

    .line 15
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
    move v0, v1

    .line 16
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->curRunningConfig:Lg7/d;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->videoManager:Lcom/narvii/video/services/VideoManager;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lcom/narvii/video/services/VideoManager;->abort(Lg7/d;)V

    .line 13
    :cond_0
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Float;)V
    .locals 1
    .param p1    # [Ljava/lang/Float;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    aget-object p1, p1, v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->callback:Lcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;

    .line 3
    invoke-interface {v0, p1}, Lcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;->onProgress(F)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;->onProgressUpdate([Ljava/lang/Float;)V

    return-void
.end method
