.class final Landroidx/media3/common/util/SystemHandlerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/HandlerWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;
    }
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0x32

.field private static final messagePool:Ljava/util/List;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    const/16 v1, 0x32

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    sput-object v0, Landroidx/media3/common/util/SystemHandlerWrapper;->messagePool:Ljava/util/List;

    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    .line 6
    return-void
.end method

.method static synthetic d(Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/media3/common/util/SystemHandlerWrapper;->f(Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;)V

    .line 4
    return-void
.end method

.method private static e()Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;
    .locals 3

    .line 1
    .line 2
    sget-object v0, Landroidx/media3/common/util/SystemHandlerWrapper;->messagePool:Ljava/util/List;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 7
    move-result v1

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    .line 12
    const/4 v2, 0x0

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;-><init>(Landroidx/media3/common/util/SystemHandlerWrapper$1;)V

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    goto :goto_1

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 22
    move-result v1

    .line 23
    .line 24
    add-int/lit8 v1, v1, -0x1

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    check-cast v1, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    .line 31
    :goto_0
    monitor-exit v0

    .line 32
    return-object v1

    .line 33
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw v1
.end method

.method private static f(Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;)V
    .locals 3

    .line 1
    .line 2
    sget-object v0, Landroidx/media3/common/util/SystemHandlerWrapper;->messagePool:Ljava/util/List;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 7
    move-result v1

    .line 8
    .line 9
    const/16 v2, 0x32

    .line 10
    .line 11
    if-ge v1, v2, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public b(II)Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    .line 3
    int-to-long v1, p2

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 7
    move-result p1

    .line 8
    return p1
.end method

.method public c(Landroidx/media3/common/util/HandlerWrapper$Message;)Z
    .locals 1

    .line 1
    .line 2
    check-cast p1, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->c(Landroid/os/Handler;)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public obtainMessage(I)Landroidx/media3/common/util/HandlerWrapper$Message;
    .locals 2

    .line 1
    invoke-static {}, Landroidx/media3/common/util/SystemHandlerWrapper;->e()Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->d(Landroid/os/Message;Landroidx/media3/common/util/SystemHandlerWrapper;)Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object p1

    return-object p1
.end method

.method public obtainMessage(III)Landroidx/media3/common/util/HandlerWrapper$Message;
    .locals 2

    .line 3
    invoke-static {}, Landroidx/media3/common/util/SystemHandlerWrapper;->e()Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    .line 4
    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->d(Landroid/os/Message;Landroidx/media3/common/util/SystemHandlerWrapper;)Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object p1

    return-object p1
.end method

.method public obtainMessage(IIILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;
    .locals 2
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-static {}, Landroidx/media3/common/util/SystemHandlerWrapper;->e()Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    .line 6
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->d(Landroid/os/Message;Landroidx/media3/common/util/SystemHandlerWrapper;)Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object p1

    return-object p1
.end method

.method public obtainMessage(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-static {}, Landroidx/media3/common/util/SystemHandlerWrapper;->e()Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;->d(Landroid/os/Message;Landroidx/media3/common/util/SystemHandlerWrapper;)Landroidx/media3/common/util/SystemHandlerWrapper$SystemMessage;

    move-result-object p1

    return-object p1
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public removeCallbacksAndMessages(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public removeMessages(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    return-void
.end method

.method public sendEmptyMessage(I)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public sendEmptyMessageAtTime(IJ)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/common/util/SystemHandlerWrapper;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method
