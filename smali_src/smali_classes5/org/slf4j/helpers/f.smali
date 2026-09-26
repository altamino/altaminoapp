.class public Lorg/slf4j/helpers/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/slf4j/ILoggerFactory;


# instance fields
.field final eventQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lorg/slf4j/event/d;",
            ">;"
        }
    .end annotation
.end field

.field final loggers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/slf4j/helpers/e;",
            ">;"
        }
    .end annotation
.end field

.field postInitialization:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lorg/slf4j/helpers/f;->postInitialization:Z

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    iput-object v0, p0, Lorg/slf4j/helpers/f;->loggers:Ljava/util/Map;

    .line 14
    .line 15
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 19
    .line 20
    iput-object v0, p0, Lorg/slf4j/helpers/f;->eventQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 21
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lorg/slf4j/a;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lorg/slf4j/helpers/f;->loggers:Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Lorg/slf4j/helpers/e;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lorg/slf4j/helpers/e;

    .line 14
    .line 15
    iget-object v1, p0, Lorg/slf4j/helpers/f;->eventQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 16
    .line 17
    iget-boolean v2, p0, Lorg/slf4j/helpers/f;->postInitialization:Z

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, p1, v1, v2}, Lorg/slf4j/helpers/e;-><init>(Ljava/lang/String;Ljava/util/Queue;Z)V

    .line 21
    .line 22
    iget-object v1, p0, Lorg/slf4j/helpers/f;->loggers:Ljava/util/Map;

    .line 23
    .line 24
    .line 25
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    monitor-exit p0

    .line 30
    return-object v0

    .line 31
    :goto_1
    monitor-exit p0

    .line 32
    throw p1
.end method

.method public b()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lorg/slf4j/helpers/f;->loggers:Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 6
    .line 7
    iget-object v0, p0, Lorg/slf4j/helpers/f;->eventQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 11
    return-void
.end method

.method public c()Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lorg/slf4j/event/d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/slf4j/helpers/f;->eventQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/slf4j/helpers/e;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    iget-object v1, p0, Lorg/slf4j/helpers/f;->loggers:Ljava/util/Map;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    return-object v0
.end method

.method public e()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/slf4j/helpers/f;->postInitialization:Z

    return-void
.end method
