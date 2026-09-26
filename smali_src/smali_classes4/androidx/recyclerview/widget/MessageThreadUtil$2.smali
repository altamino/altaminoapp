.class Landroidx/recyclerview/widget/MessageThreadUtil$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/MessageThreadUtil;->b(Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;)Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final LOAD_TILE:I = 0x3

.field static final RECYCLE_TILE:I = 0x4

.field static final REFRESH:I = 0x1

.field static final UPDATE_RANGE:I = 0x2


# instance fields
.field private mBackgroundRunnable:Ljava/lang/Runnable;

.field mBackgroundRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field final mQueue:Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

.field final synthetic this$0:Landroidx/recyclerview/widget/MessageThreadUtil;

.field final synthetic val$callback:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/MessageThreadUtil;Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$2;->this$0:Landroidx/recyclerview/widget/MessageThreadUtil;

    .line 3
    .line 4
    iput-object p2, p0, Landroidx/recyclerview/widget/MessageThreadUtil$2;->val$callback:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    new-instance p1, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1}, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;-><init>()V

    .line 13
    .line 14
    iput-object p1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$2;->mQueue:Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

    .line 15
    .line 16
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 17
    .line 18
    iput-object p1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$2;->mExecutor:Ljava/util/concurrent/Executor;

    .line 19
    .line 20
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    const/4 p2, 0x0

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 25
    .line 26
    iput-object p1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$2;->mBackgroundRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    new-instance p1, Landroidx/recyclerview/widget/MessageThreadUtil$2$1;

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/MessageThreadUtil$2$1;-><init>(Landroidx/recyclerview/widget/MessageThreadUtil$2;)V

    .line 32
    .line 33
    iput-object p1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$2;->mBackgroundRunnable:Ljava/lang/Runnable;

    .line 34
    return-void
.end method

.method private e()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$2;->mBackgroundRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$2;->mExecutor:Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$2;->mBackgroundRunnable:Ljava/lang/Runnable;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18
    :cond_0
    return-void
.end method

.method private f(Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$2;->mQueue:Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->c(Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/recyclerview/widget/MessageThreadUtil$2;->e()V

    .line 9
    return-void
.end method

.method private g(Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$2;->mQueue:Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->d(Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/recyclerview/widget/MessageThreadUtil$2;->e()V

    .line 9
    return-void
.end method


# virtual methods
.method public a(IIIII)V
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v6, 0x0

    .line 3
    move v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move v5, p5

    .line 8
    .line 9
    .line 10
    invoke-static/range {v0 .. v6}, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->b(IIIIIILjava/lang/Object;)Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/MessageThreadUtil$2;->g(Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V

    .line 15
    return-void
.end method

.method public b(II)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    .line 3
    .line 4
    invoke-static {v0, p1, p2}, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->a(III)Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 5
    move-result-object p1

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/MessageThreadUtil$2;->f(Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V

    .line 9
    return-void
.end method

.method public c(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->c(IILjava/lang/Object;)Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/MessageThreadUtil$2;->g(Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V

    .line 10
    return-void
.end method

.method public d(Landroidx/recyclerview/widget/TileList$Tile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/TileList$Tile<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->c(IILjava/lang/Object;)Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/MessageThreadUtil$2;->f(Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V

    .line 10
    return-void
.end method
