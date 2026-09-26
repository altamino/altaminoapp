.class public final Lcom/narvii/pre_editing/TrimVideoGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/pre_editing/TrimVideoGenerator$BaseTrimVideoTask;,
        Lcom/narvii/pre_editing/TrimVideoGenerator$Companion;,
        Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;,
        Lcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;,
        Lcom/narvii/pre_editing/TrimVideoGenerator$TrimProgressRecorder;,
        Lcom/narvii/pre_editing/TrimVideoGenerator$TrimVideoTask;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTrimVideoGenerator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrimVideoGenerator.kt\ncom/narvii/pre_editing/TrimVideoGenerator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,495:1\n1855#2,2:496\n1855#2,2:498\n1855#2,2:500\n*S KotlinDebug\n*F\n+ 1 TrimVideoGenerator.kt\ncom/narvii/pre_editing/TrimVideoGenerator\n*L\n55#1:496,2\n77#1:498,2\n84#1:500,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/pre_editing/TrimVideoGenerator$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "TrimVideoGenerator"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final ctx:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private dropNegativeTs:Z

.field private final preloadService$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final videoManager$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/pre_editing/TrimVideoGenerator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/pre_editing/TrimVideoGenerator$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/pre_editing/TrimVideoGenerator;->Companion:Lcom/narvii/pre_editing/TrimVideoGenerator$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1
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
    iput-object p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator;->ctx:Lcom/narvii/app/NVContext;

    .line 11
    .line 12
    const-string p1, "pre_trim"

    .line 13
    const/4 v0, 0x1

    .line 14
    .line 15
    .line 16
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->createThreadPoolExecutor(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator;->trimExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 20
    .line 21
    new-instance p1, Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    iput-object p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator;->trimTasks:Ljava/util/List;

    .line 27
    .line 28
    new-instance p1, Lcom/narvii/pre_editing/TrimVideoGenerator$videoManager$2;

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, p0}, Lcom/narvii/pre_editing/TrimVideoGenerator$videoManager$2;-><init>(Lcom/narvii/pre_editing/TrimVideoGenerator;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    iput-object p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator;->videoManager$delegate:Lw7/m;

    .line 38
    .line 39
    new-instance p1, Lcom/narvii/pre_editing/TrimVideoGenerator$preloadService$2;

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, p0}, Lcom/narvii/pre_editing/TrimVideoGenerator$preloadService$2;-><init>(Lcom/narvii/pre_editing/TrimVideoGenerator;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    iput-object p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator;->preloadService$delegate:Lw7/m;

    .line 49
    .line 50
    iput-boolean v0, p0, Lcom/narvii/pre_editing/TrimVideoGenerator;->singleTask:Z

    .line 51
    .line 52
    iput-boolean v0, p0, Lcom/narvii/pre_editing/TrimVideoGenerator;->dropNegativeTs:Z

    .line 53
    return-void
.end method

.method private final getPreloadService()Lcom/narvii/video/MediaPreloadService;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pre_editing/TrimVideoGenerator;->preloadService$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/video/MediaPreloadService;

    .line 9
    return-object v0
.end method

.method private final getVideoManager()Lcom/narvii/video/services/VideoManager;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pre_editing/TrimVideoGenerator;->videoManager$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/video/services/VideoManager;

    .line 9
    return-object v0
.end method


# virtual methods
.method public final cancel()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/narvii/pre_editing/TrimVideoGenerator;->trimTasks:Ljava/util/List;

    .line 4
    .line 5
    check-cast v0, Ljava/lang/Iterable;

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Lcom/narvii/pre_editing/TrimVideoGenerator$BaseTrimVideoTask;

    .line 22
    const/4 v2, 0x1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    goto :goto_1

    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/narvii/pre_editing/TrimVideoGenerator;->trimTasks:Ljava/util/List;

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 34
    .line 35
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit p0

    .line 37
    return-void

    .line 38
    :goto_1
    monitor-exit p0

    .line 39
    throw v0
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/pre_editing/TrimVideoGenerator;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getDropNegativeTs()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/pre_editing/TrimVideoGenerator;->dropNegativeTs:Z

    return v0
.end method

.method public final getSingleTask()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/pre_editing/TrimVideoGenerator;->singleTask:Z

    return v0
.end method

.method public final release()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/narvii/pre_editing/TrimVideoGenerator;->trimTasks:Ljava/util/List;

    .line 4
    .line 5
    check-cast v0, Ljava/lang/Iterable;

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Lcom/narvii/pre_editing/TrimVideoGenerator$BaseTrimVideoTask;

    .line 22
    const/4 v2, 0x1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    goto :goto_1

    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/narvii/pre_editing/TrimVideoGenerator;->trimTasks:Ljava/util/List;

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/pre_editing/TrimVideoGenerator;->trimExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 39
    .line 40
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    .line 42
    return-void

    .line 43
    :goto_1
    monitor-exit p0

    .line 44
    throw v0
.end method

.method public final setDropNegativeTs(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator;->dropNegativeTs:Z

    return-void
.end method

.method public final setSingleTask(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/pre_editing/TrimVideoGenerator;->singleTask:Z

    return-void
.end method

.method public final startTrimVideo(Lw7/u;Ljava/lang/String;Ljava/lang/String;JJLcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;)V
    .locals 15
    .param p1    # Lw7/u;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw7/u<",
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

    .line 1
    move-object v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const-string/jumbo v3, "srcPath"

    .line 8
    .line 9
    move-object/from16 v7, p1

    .line 10
    .line 11
    .line 12
    invoke-static {v7, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    const-string v3, "dstPath"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    const-string v3, "fileName"

    .line 20
    .line 21
    .line 22
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    const-string v3, "callback"

    .line 25
    .line 26
    move-object/from16 v14, p8

    .line 27
    .line 28
    .line 29
    invoke-static {v14, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    new-instance v3, Ljava/io/File;

    .line 32
    .line 33
    .line 34
    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 38
    move-result v4

    .line 39
    .line 40
    if-nez v4, :cond_0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 44
    .line 45
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v8

    .line 59
    monitor-enter p0

    .line 60
    .line 61
    :try_start_0
    iget-boolean v0, v1, Lcom/narvii/pre_editing/TrimVideoGenerator;->singleTask:Z

    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    iget-object v0, v1, Lcom/narvii/pre_editing/TrimVideoGenerator;->trimTasks:Ljava/util/List;

    .line 66
    .line 67
    check-cast v0, Ljava/lang/Iterable;

    .line 68
    .line 69
    .line 70
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    .line 74
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    move-result v2

    .line 76
    .line 77
    if-eqz v2, :cond_1

    .line 78
    .line 79
    .line 80
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    move-result-object v2

    .line 82
    .line 83
    check-cast v2, Lcom/narvii/pre_editing/TrimVideoGenerator$BaseTrimVideoTask;

    .line 84
    const/4 v3, 0x1

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 88
    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    .line 90
    goto :goto_2

    .line 91
    .line 92
    :cond_1
    iget-object v0, v1, Lcom/narvii/pre_editing/TrimVideoGenerator;->trimTasks:Ljava/util/List;

    .line 93
    .line 94
    .line 95
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 96
    goto :goto_1

    .line 97
    .line 98
    :cond_2
    iget-object v0, v1, Lcom/narvii/pre_editing/TrimVideoGenerator;->trimTasks:Ljava/util/List;

    .line 99
    .line 100
    sget-object v2, Lcom/narvii/pre_editing/TrimVideoGenerator$startTrimVideo$1$2;->INSTANCE:Lcom/narvii/pre_editing/TrimVideoGenerator$startTrimVideo$1$2;

    .line 101
    .line 102
    .line 103
    invoke-static {v0, v2}, Lkotlin/collections/t;->J(Ljava/util/List;Le8/l;)Z

    .line 104
    .line 105
    :goto_1
    new-instance v0, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;

    .line 106
    .line 107
    .line 108
    invoke-direct {p0}, Lcom/narvii/pre_editing/TrimVideoGenerator;->getVideoManager()Lcom/narvii/video/services/VideoManager;

    .line 109
    move-result-object v5

    .line 110
    .line 111
    .line 112
    invoke-direct {p0}, Lcom/narvii/pre_editing/TrimVideoGenerator;->getPreloadService()Lcom/narvii/video/MediaPreloadService;

    .line 113
    move-result-object v6

    .line 114
    .line 115
    iget-boolean v13, v1, Lcom/narvii/pre_editing/TrimVideoGenerator;->dropNegativeTs:Z

    .line 116
    move-object v4, v0

    .line 117
    .line 118
    move-object/from16 v7, p1

    .line 119
    .line 120
    move-wide/from16 v9, p4

    .line 121
    .line 122
    move-wide/from16 v11, p6

    .line 123
    .line 124
    move-object/from16 v14, p8

    .line 125
    .line 126
    .line 127
    invoke-direct/range {v4 .. v14}, Lcom/narvii/pre_editing/TrimVideoGenerator$FFTrimVideoTask;-><init>(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/MediaPreloadService;Lw7/u;Ljava/lang/String;JJZLcom/narvii/pre_editing/TrimVideoGenerator$TrimCallback;)V

    .line 128
    .line 129
    iget-object v2, v1, Lcom/narvii/pre_editing/TrimVideoGenerator;->trimTasks:Ljava/util/List;

    .line 130
    .line 131
    .line 132
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    iget-object v2, v1, Lcom/narvii/pre_editing/TrimVideoGenerator;->trimExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    .line 138
    move-result v2

    .line 139
    .line 140
    if-nez v2, :cond_3

    .line 141
    .line 142
    iget-object v2, v1, Lcom/narvii/pre_editing/TrimVideoGenerator;->trimExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 143
    const/4 v3, 0x0

    .line 144
    .line 145
    new-array v3, v3, [Ljava/lang/Void;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 149
    .line 150
    :cond_3
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    monitor-exit p0

    .line 152
    return-void

    .line 153
    :goto_2
    monitor-exit p0

    .line 154
    throw v0
.end method
