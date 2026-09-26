.class public final Lcom/narvii/pre_editing/PreEditFrameRetriever;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/pre_editing/PreEditFrameRetriever$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPreEditFrameRetriever.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PreEditFrameRetriever.kt\ncom/narvii/pre_editing/PreEditFrameRetriever\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,59:1\n1549#2:60\n1620#2,3:61\n1#3:64\n*S KotlinDebug\n*F\n+ 1 PreEditFrameRetriever.kt\ncom/narvii/pre_editing/PreEditFrameRetriever\n*L\n36#1:60\n36#1:61,3\n*E\n"
.end annotation


# static fields
.field private static final Companion:Lcom/narvii/pre_editing/PreEditFrameRetriever$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MAX_READER_COUNT:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private active:Z

.field private final frameRetrieveEx:Ljava/util/concurrent/ThreadPoolExecutor;

.field private readerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/pre_editing/frame/VideoFrameReader;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/pre_editing/PreEditFrameRetriever$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/pre_editing/PreEditFrameRetriever$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/pre_editing/PreEditFrameRetriever;->Companion:Lcom/narvii/pre_editing/PreEditFrameRetriever$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    const-string v1, "frame_retrieve"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->createThreadPoolExecutor(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/pre_editing/PreEditFrameRetriever;->frameRetrieveEx:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/pre_editing/PreEditFrameRetriever;->readerList:Ljava/util/List;

    .line 20
    return-void
.end method

.method public static synthetic a(Lcom/narvii/pre_editing/PreEditFrameRetriever;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/pre_editing/PreEditFrameRetriever;->initRetriever$lambda$0(Lcom/narvii/pre_editing/PreEditFrameRetriever;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/narvii/pre_editing/PreEditFrameRetriever;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/pre_editing/PreEditFrameRetriever;->releaseExecutor$lambda$2(Lcom/narvii/pre_editing/PreEditFrameRetriever;)V

    return-void
.end method

.method public static synthetic c(Lcom/narvii/pre_editing/PreEditFrameRetriever;Ljava/util/List;Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameCallback;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/pre_editing/PreEditFrameRetriever;->retrieveFrameInternal$lambda$5(Lcom/narvii/pre_editing/PreEditFrameRetriever;Ljava/util/List;Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameCallback;)V

    return-void
.end method

.method private static final initRetriever$lambda$0(Lcom/narvii/pre_editing/PreEditFrameRetriever;Ljava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    const-string v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "$outputFolderPath"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object p0, p0, Lcom/narvii/pre_editing/PreEditFrameRetriever;->readerList:Ljava/util/List;

    .line 13
    .line 14
    new-instance v0, Lcom/narvii/pre_editing/frame/VideoFrameReader;

    .line 15
    const/4 v1, 0x2

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, p1, v3, v1, v2}, Lcom/narvii/pre_editing/frame/VideoFrameReader;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/k;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method

.method private static final releaseExecutor$lambda$2(Lcom/narvii/pre_editing/PreEditFrameRetriever;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p0, p0, Lcom/narvii/pre_editing/PreEditFrameRetriever;->readerList:Ljava/util/List;

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p0

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/pre_editing/frame/VideoFrameReader;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/narvii/pre_editing/frame/VideoFrameReader;->clear()V

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method

.method private final retrieveFrameInternal(Ljava/util/List;Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameCallback;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pre_editing/PreEditFrameRetriever;->frameRetrieveEx:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/pre_editing/e;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/pre_editing/e;-><init>(Lcom/narvii/pre_editing/PreEditFrameRetriever;Ljava/util/List;Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameCallback;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 11
    return-void
.end method

.method private static final retrieveFrameInternal$lambda$5(Lcom/narvii/pre_editing/PreEditFrameRetriever;Ljava/util/List;Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameCallback;)V
    .locals 4

    .line 1
    .line 2
    const-string v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "$timeMsList"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "$callback"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    new-instance v0, Lkotlin/jvm/internal/p0;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Lkotlin/jvm/internal/p0;-><init>()V

    .line 21
    monitor-enter p0

    .line 22
    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/narvii/pre_editing/PreEditFrameRetriever;->readerList:Ljava/util/List;

    .line 24
    .line 25
    check-cast v1, Ljava/lang/Iterable;

    .line 26
    .line 27
    .line 28
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v2

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v2

    .line 40
    move-object v3, v2

    .line 41
    .line 42
    check-cast v3, Lcom/narvii/pre_editing/frame/VideoFrameReader;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Lcom/narvii/pre_editing/frame/VideoFrameReader;->isWorking()Z

    .line 46
    move-result v3

    .line 47
    .line 48
    xor-int/lit8 v3, v3, 0x1

    .line 49
    .line 50
    if-eqz v3, :cond_0

    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    const/4 v2, 0x0

    .line 55
    .line 56
    :goto_0
    iput-object v2, v0, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 57
    .line 58
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    .line 60
    .line 61
    check-cast v2, Lcom/narvii/pre_editing/frame/VideoFrameReader;

    .line 62
    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, p1, p2}, Lcom/narvii/pre_editing/frame/VideoFrameReader;->start(Ljava/util/List;Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameCallback;)V

    .line 67
    :cond_2
    return-void

    .line 68
    :goto_1
    monitor-exit p0

    .line 69
    throw p1
.end method


# virtual methods
.method public final initRetriever(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "outputFolderPath"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/pre_editing/PreEditFrameRetriever;->frameRetrieveEx:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    .line 24
    :goto_0
    iput-boolean v0, p0, Lcom/narvii/pre_editing/PreEditFrameRetriever;->active:Z

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    return-void

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/narvii/pre_editing/PreEditFrameRetriever;->frameRetrieveEx:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 30
    .line 31
    new-instance v1, Lcom/narvii/pre_editing/d;

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, p0, p1}, Lcom/narvii/pre_editing/d;-><init>(Lcom/narvii/pre_editing/PreEditFrameRetriever;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 38
    return-void
.end method

.method public final releaseExecutor()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/pre_editing/PreEditFrameRetriever;->active:Z

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/pre_editing/PreEditFrameRetriever;->frameRetrieveEx:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 6
    .line 7
    new-instance v1, Lcom/narvii/pre_editing/c;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/narvii/pre_editing/c;-><init>(Lcom/narvii/pre_editing/PreEditFrameRetriever;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/pre_editing/PreEditFrameRetriever;->frameRetrieveEx:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 19
    return-void
.end method

.method public final retrieveFrame(JILcom/narvii/pre_editing/frame/VideoFrameReader$FrameCallback;)V
    .locals 3
    .param p4    # Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "callback"

    .line 3
    .line 4
    .line 5
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/narvii/pre_editing/PreEditFrameRetriever;->active:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    int-to-long v0, p3

    .line 11
    div-long/2addr p1, v0

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    .line 15
    invoke-static {v0, p3}, Lj8/m;->v(II)Lj8/i;

    .line 16
    move-result-object p3

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    const/16 v1, 0xa

    .line 21
    .line 22
    .line 23
    invoke-static {p3, v1}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    .line 24
    move-result v1

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object p3

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v1

    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    move-object v1, p3

    .line 39
    .line 40
    check-cast v1, Lkotlin/collections/m0;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Lkotlin/collections/m0;->nextInt()I

    .line 44
    move-result v1

    .line 45
    int-to-long v1, v1

    .line 46
    mul-long/2addr v1, p1

    .line 47
    .line 48
    .line 49
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 54
    goto :goto_0

    .line 55
    .line 56
    .line 57
    :cond_0
    invoke-direct {p0, v0, p4}, Lcom/narvii/pre_editing/PreEditFrameRetriever;->retrieveFrameInternal(Ljava/util/List;Lcom/narvii/pre_editing/frame/VideoFrameReader$FrameCallback;)V

    .line 58
    :cond_1
    return-void
.end method
