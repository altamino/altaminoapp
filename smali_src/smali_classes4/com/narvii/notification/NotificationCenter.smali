.class public Lcom/narvii/notification/NotificationCenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/notification/NotificationCenter$Client;
    }
.end annotation


# static fields
.field private static final MAX:I = 0xff

.field private static prevTime:J


# instance fields
.field private final clients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/notification/NotificationCenter$Client;",
            ">;"
        }
    .end annotation
.end field

.field private final notifications:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/narvii/notification/Notification;",
            ">;"
        }
    .end annotation
.end field

.field private final timeMap:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroidx/collection/LongSparseArray;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/notification/NotificationCenter;->timeMap:Landroidx/collection/LongSparseArray;

    .line 11
    .line 12
    new-instance v0, Ljava/util/LinkedList;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/notification/NotificationCenter;->notifications:Ljava/util/LinkedList;

    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/notification/NotificationCenter;->clients:Ljava/util/ArrayList;

    .line 25
    return-void
.end method

.method static time()J
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    sget-wide v2, Lcom/narvii/notification/NotificationCenter;->prevTime:J

    .line 7
    .line 8
    cmp-long v4, v0, v2

    .line 9
    .line 10
    if-lez v4, :cond_0

    .line 11
    .line 12
    sput-wide v0, Lcom/narvii/notification/NotificationCenter;->prevTime:J

    .line 13
    return-wide v0

    .line 14
    .line 15
    :cond_0
    const-wide/16 v0, 0x1

    .line 16
    add-long/2addr v2, v0

    .line 17
    .line 18
    sput-wide v2, Lcom/narvii/notification/NotificationCenter;->prevTime:J

    .line 19
    return-wide v2
.end method


# virtual methods
.method protected broadcast(Lcom/narvii/notification/NotificationCenter$Client;)V
    .locals 11

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/notification/NotificationCenter;->time()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/notification/NotificationCenter;->clients:Ljava/util/ArrayList;

    .line 7
    monitor-enter p1

    .line 8
    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/narvii/notification/NotificationCenter;->clients:Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v3

    .line 18
    .line 19
    if-eqz v3, :cond_4

    .line 20
    .line 21
    .line 22
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    check-cast v3, Lcom/narvii/notification/NotificationCenter$Client;

    .line 26
    .line 27
    iget-object v4, v3, Lcom/narvii/notification/NotificationCenter$Client;->listener:Ljava/lang/ref/WeakReference;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 31
    move-result-object v4

    .line 32
    .line 33
    check-cast v4, Lcom/narvii/notification/NotificationListener;

    .line 34
    .line 35
    if-nez v4, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto :goto_2

    .line 42
    .line 43
    :cond_0
    iget-object v5, p0, Lcom/narvii/notification/NotificationCenter;->notifications:Ljava/util/LinkedList;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 47
    move-result-object v5

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    move-result v6

    .line 52
    .line 53
    if-eqz v6, :cond_3

    .line 54
    .line 55
    .line 56
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    move-result-object v6

    .line 58
    .line 59
    check-cast v6, Lcom/narvii/notification/Notification;

    .line 60
    .line 61
    iget-wide v7, v6, Lcom/narvii/notification/Notification;->time:J

    .line 62
    .line 63
    iget-wide v9, v3, Lcom/narvii/notification/NotificationCenter$Client;->time:J

    .line 64
    .line 65
    cmp-long v7, v7, v9

    .line 66
    .line 67
    if-ltz v7, :cond_1

    .line 68
    .line 69
    sget-boolean v7, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 70
    .line 71
    if-eqz v7, :cond_2

    .line 72
    .line 73
    .line 74
    invoke-interface {v4, v6}, Lcom/narvii/notification/NotificationListener;->onNotification(Lcom/narvii/notification/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    goto :goto_1

    .line 76
    .line 77
    .line 78
    :cond_2
    :try_start_1
    invoke-interface {v4, v6}, Lcom/narvii/notification/NotificationListener;->onNotification(Lcom/narvii/notification/Notification;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    goto :goto_1

    .line 80
    :catch_0
    move-exception v6

    .line 81
    .line 82
    :try_start_2
    const-string v7, "onNotification() error"

    .line 83
    .line 84
    .line 85
    invoke-static {v7, v6}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    goto :goto_1

    .line 87
    .line 88
    :cond_3
    iput-wide v0, v3, Lcom/narvii/notification/NotificationCenter$Client;->time:J

    .line 89
    goto :goto_0

    .line 90
    :cond_4
    monitor-exit p1

    .line 91
    return-void

    .line 92
    :goto_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    throw v0
.end method

.method public registerListener(Lcom/narvii/app/NVContext;Lcom/narvii/notification/NotificationListener;)V
    .locals 5

    .line 1
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContextId()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    shl-int/lit8 p1, p1, 0x20

    int-to-long v2, p1

    xor-long/2addr v0, v2

    iget-object p1, p0, Lcom/narvii/notification/NotificationCenter;->timeMap:Landroidx/collection/LongSparseArray;

    .line 2
    invoke-virtual {p1, v0, v1}, Landroidx/collection/LongSparseArray;->h(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Lcom/narvii/notification/NotificationCenter;->time()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 4
    :goto_0
    new-instance p1, Lcom/narvii/notification/NotificationCenter$Client;

    const/4 v4, 0x0

    invoke-direct {p1, v4}, Lcom/narvii/notification/NotificationCenter$Client;-><init>(Lcom/narvii/notification/a;)V

    iput-wide v0, p1, Lcom/narvii/notification/NotificationCenter$Client;->contextId:J

    .line 5
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p1, Lcom/narvii/notification/NotificationCenter$Client;->listener:Ljava/lang/ref/WeakReference;

    iput-wide v2, p1, Lcom/narvii/notification/NotificationCenter$Client;->time:J

    iget-object p2, p0, Lcom/narvii/notification/NotificationCenter;->clients:Ljava/util/ArrayList;

    .line 6
    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/narvii/notification/NotificationCenter;->clients:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/notification/NotificationCenter;->broadcast(Lcom/narvii/notification/NotificationCenter$Client;)V

    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public registerListener(Lcom/narvii/notification/NotificationListener;)V
    .locals 3

    .line 11
    new-instance v0, Lcom/narvii/notification/NotificationCenter$Client;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/notification/NotificationCenter$Client;-><init>(Lcom/narvii/notification/a;)V

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/narvii/notification/NotificationCenter$Client;->contextId:J

    .line 12
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/narvii/notification/NotificationCenter$Client;->listener:Ljava/lang/ref/WeakReference;

    .line 13
    invoke-static {}, Lcom/narvii/notification/NotificationCenter;->time()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/narvii/notification/NotificationCenter$Client;->time:J

    iget-object p1, p0, Lcom/narvii/notification/NotificationCenter;->clients:Ljava/util/ArrayList;

    .line 14
    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lcom/narvii/notification/NotificationCenter;->clients:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/notification/NotificationCenter;->time()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iput-wide v0, p1, Lcom/narvii/notification/Notification;->time:J

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/notification/NotificationCenter;->notifications:Ljava/util/LinkedList;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/notification/NotificationCenter;->notifications:Ljava/util/LinkedList;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 17
    move-result p1

    .line 18
    .line 19
    :goto_0
    const/16 v0, 0xff

    .line 20
    .line 21
    if-le p1, v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/notification/NotificationCenter;->notifications:Ljava/util/LinkedList;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 27
    .line 28
    add-int/lit8 p1, p1, -0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/narvii/notification/NotificationCenter;->broadcast(Lcom/narvii/notification/NotificationCenter$Client;)V

    .line 34
    return-void
.end method

.method public unregisterListener(Lcom/narvii/app/NVContext;Z)V
    .locals 11

    .line 1
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContextId()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    shl-int/lit8 p1, p1, 0x20

    int-to-long v2, p1

    xor-long/2addr v0, v2

    iget-object p1, p0, Lcom/narvii/notification/NotificationCenter;->clients:Ljava/util/ArrayList;

    .line 2
    monitor-enter p1

    :try_start_0
    iget-object v2, p0, Lcom/narvii/notification/NotificationCenter;->clients:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide/16 v3, 0x0

    move-wide v5, v3

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/narvii/notification/NotificationCenter$Client;

    .line 6
    iget-wide v8, v7, Lcom/narvii/notification/NotificationCenter$Client;->contextId:J

    cmp-long v10, v8, v3

    if-eqz v10, :cond_0

    cmp-long v8, v8, v0

    if-nez v8, :cond_0

    .line 7
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 8
    iget-wide v5, v7, Lcom/narvii/notification/NotificationCenter$Client;->time:J

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_2

    .line 9
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/narvii/notification/NotificationCenter;->timeMap:Landroidx/collection/LongSparseArray;

    .line 10
    invoke-virtual {p1, v0, v1}, Landroidx/collection/LongSparseArray;->n(J)V

    goto :goto_1

    :cond_2
    cmp-long p1, v5, v3

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/narvii/notification/NotificationCenter;->timeMap:Landroidx/collection/LongSparseArray;

    .line 11
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, v0, v1, p2}, Landroidx/collection/LongSparseArray;->m(JLjava/lang/Object;)V

    :cond_3
    :goto_1
    return-void

    .line 12
    :goto_2
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public unregisterListener(Lcom/narvii/notification/NotificationListener;)V
    .locals 3

    iget-object v0, p0, Lcom/narvii/notification/NotificationCenter;->clients:Ljava/util/ArrayList;

    .line 13
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/narvii/notification/NotificationCenter;->clients:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/notification/NotificationCenter$Client;

    .line 17
    iget-object v2, v2, Lcom/narvii/notification/NotificationCenter$Client;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/notification/NotificationListener;

    if-eqz v2, :cond_1

    if-ne v2, p1, :cond_0

    .line 18
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 19
    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
