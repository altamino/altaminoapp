.class public Lcom/narvii/paging/source/ShareDataSourceHolder;
.super Ljava/lang/Object;
.source "ShareDataSourceHolder.java"


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

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/narvii/paging/source/ShareDataSourceHolder;->concurrentLinkedQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method


# virtual methods
.method public addHost(Lcom/narvii/app/NVContext;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/paging/source/ShareDataSourceHolder;->concurrentLinkedQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeHost(Lcom/narvii/app/NVContext;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/narvii/paging/source/ShareDataSourceHolder;->concurrentLinkedQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    return-void
.end method
