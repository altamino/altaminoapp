.class public Lcom/narvii/paging/source/ShareDataSourceHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private concurrentLinkedQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/narvii/app/NVContext;",
            ">;"
        }
    .end annotation
.end field

.field public shareDataSource:Lcom/narvii/paging/source/DataSource;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/paging/source/ShareDataSourceHolder;->concurrentLinkedQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 11
    return-void
.end method


# virtual methods
.method public addHost(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/paging/source/ShareDataSourceHolder;->concurrentLinkedQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 9
    return-void
.end method

.method public removeHost(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/paging/source/ShareDataSourceHolder;->concurrentLinkedQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 9
    return-void
.end method
