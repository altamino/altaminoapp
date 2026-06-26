.class public Lcom/narvii/util/BlockingItem;
.super Ljava/lang/Object;
.source "BlockingItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private volatile item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final lock:Ljava/util/concurrent/locks/Lock;

.field final notEmpty:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/narvii/util/BlockingItem;->lock:Ljava/util/concurrent/locks/Lock;

    .line 10
    iget-object v0, p0, Lcom/narvii/util/BlockingItem;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/util/BlockingItem;->notEmpty:Ljava/util/concurrent/locks/Condition;

    return-void
.end method


# virtual methods
.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/narvii/util/BlockingItem;->item:Ljava/lang/Object;

    return-object v0
.end method

.method public put(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/narvii/util/BlockingItem;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 17
    :try_start_0
    iput-object p1, p0, Lcom/narvii/util/BlockingItem;->item:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 19
    iget-object p1, p0, Lcom/narvii/util/BlockingItem;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/narvii/util/BlockingItem;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/narvii/util/BlockingItem;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 22
    throw p1
.end method

.method public take()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/narvii/util/BlockingItem;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 28
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/BlockingItem;->item:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/narvii/util/BlockingItem;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/BlockingItem;->item:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 31
    iput-object v1, p0, Lcom/narvii/util/BlockingItem;->item:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    iget-object v1, p0, Lcom/narvii/util/BlockingItem;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/narvii/util/BlockingItem;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 35
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public tryTake(J)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/narvii/util/BlockingItem;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 41
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/BlockingItem;->item:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/narvii/util/BlockingItem;->notEmpty:Ljava/util/concurrent/locks/Condition;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p1, p2, v2}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 48
    iget-object p1, p0, Lcom/narvii/util/BlockingItem;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    .line 44
    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/narvii/util/BlockingItem;->item:Ljava/lang/Object;

    .line 45
    iput-object v1, p0, Lcom/narvii/util/BlockingItem;->item:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    iget-object p2, p0, Lcom/narvii/util/BlockingItem;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/narvii/util/BlockingItem;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 49
    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method
