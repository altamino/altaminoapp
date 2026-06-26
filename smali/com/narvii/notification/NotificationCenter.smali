.class public Lcom/narvii/notification/NotificationCenter;
.super Ljava/lang/Object;
.source "NotificationCenter.java"


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

.field private final timeMap:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/narvii/notification/NotificationCenter;->timeMap:Landroid/support/v4/util/LongSparseArray;

    .line 47
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/narvii/notification/NotificationCenter;->notifications:Ljava/util/LinkedList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/notification/NotificationCenter;->clients:Ljava/util/ArrayList;

    return-void
.end method

.method static time()J
    .locals 5

    .line 34
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 35
    sget-wide v2, Lcom/narvii/notification/NotificationCenter;->prevTime:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 36
    sput-wide v0, Lcom/narvii/notification/NotificationCenter;->prevTime:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    .line 39
    sput-wide v2, Lcom/narvii/notification/NotificationCenter;->prevTime:J

    return-wide v2
.end method


# virtual methods
.method protected broadcast(Lcom/narvii/notification/NotificationCenter$Client;)V
    .locals 12

    .line 64
    invoke-static {}, Lcom/narvii/notification/NotificationCenter;->time()J

    move-result-wide v0

    .line 65
    iget-object p1, p0, Lcom/narvii/notification/NotificationCenter;->clients:Ljava/util/ArrayList;

    monitor-enter p1

    .line 66
    :try_start_0
    iget-object v2, p0, Lcom/narvii/notification/NotificationCenter;->clients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 67
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 68
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/notification/NotificationCenter$Client;

    .line 69
    iget-object v4, v3, Lcom/narvii/notification/NotificationCenter$Client;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/notification/NotificationListener;

    if-nez v4, :cond_0

    .line 71
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 73
    :cond_0
    iget-object v5, p0, Lcom/narvii/notification/NotificationCenter;->notifications:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/notification/Notification;

    .line 74
    iget-wide v7, v6, Lcom/narvii/notification/Notification;->time:J

    iget-wide v9, v3, Lcom/narvii/notification/NotificationCenter$Client;->time:J

    cmp-long v11, v7, v9

    if-ltz v11, :cond_1

    .line 75
    sget-boolean v7, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz v7, :cond_2

    .line 76
    invoke-interface {v4, v6}, Lcom/narvii/notification/NotificationListener;->onNotification(Lcom/narvii/notification/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 79
    :cond_2
    :try_start_1
    invoke-interface {v4, v6}, Lcom/narvii/notification/NotificationListener;->onNotification(Lcom/narvii/notification/Notification;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v6

    :try_start_2
    const-string v7, "onNotification() error"

    .line 81
    invoke-static {v7, v6}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 86
    :cond_3
    iput-wide v0, v3, Lcom/narvii/notification/NotificationCenter$Client;->time:J

    goto :goto_0

    .line 89
    :cond_4
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public registerListener(Lcom/narvii/app/NVContext;Lcom/narvii/notification/NotificationListener;)V
    .locals 5

    .line 93
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContextId()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    shl-int/lit8 p1, p1, 0x20

    int-to-long v2, p1

    xor-long/2addr v0, v2

    .line 94
    iget-object p1, p0, Lcom/narvii/notification/NotificationCenter;->timeMap:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_0

    .line 95
    invoke-static {}, Lcom/narvii/notification/NotificationCenter;->time()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 97
    :goto_0
    new-instance p1, Lcom/narvii/notification/NotificationCenter$Client;

    const/4 v4, 0x0

    invoke-direct {p1, v4}, Lcom/narvii/notification/NotificationCenter$Client;-><init>(Lcom/narvii/notification/NotificationCenter$1;)V

    .line 98
    iput-wide v0, p1, Lcom/narvii/notification/NotificationCenter$Client;->contextId:J

    .line 99
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p1, Lcom/narvii/notification/NotificationCenter$Client;->listener:Ljava/lang/ref/WeakReference;

    .line 100
    iput-wide v2, p1, Lcom/narvii/notification/NotificationCenter$Client;->time:J

    .line 101
    iget-object p2, p0, Lcom/narvii/notification/NotificationCenter;->clients:Ljava/util/ArrayList;

    monitor-enter p2

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/narvii/notification/NotificationCenter;->clients:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    invoke-virtual {p0, p1}, Lcom/narvii/notification/NotificationCenter;->broadcast(Lcom/narvii/notification/NotificationCenter$Client;)V

    return-void

    :catchall_0
    move-exception p1

    .line 103
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public registerListener(Lcom/narvii/notification/NotificationListener;)V
    .locals 3

    .line 132
    new-instance v0, Lcom/narvii/notification/NotificationCenter$Client;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/notification/NotificationCenter$Client;-><init>(Lcom/narvii/notification/NotificationCenter$1;)V

    const-wide/16 v1, 0x0

    .line 133
    iput-wide v1, v0, Lcom/narvii/notification/NotificationCenter$Client;->contextId:J

    .line 134
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/narvii/notification/NotificationCenter$Client;->listener:Ljava/lang/ref/WeakReference;

    .line 135
    invoke-static {}, Lcom/narvii/notification/NotificationCenter;->time()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/narvii/notification/NotificationCenter$Client;->time:J

    .line 136
    iget-object p1, p0, Lcom/narvii/notification/NotificationCenter;->clients:Ljava/util/ArrayList;

    monitor-enter p1

    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/narvii/notification/NotificationCenter;->clients:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
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

    .line 52
    invoke-static {}, Lcom/narvii/notification/NotificationCenter;->time()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/narvii/notification/Notification;->time:J

    .line 53
    iget-object v0, p0, Lcom/narvii/notification/NotificationCenter;->notifications:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 54
    iget-object p1, p0, Lcom/narvii/notification/NotificationCenter;->notifications:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    :goto_0
    const/16 v0, 0xff

    if-le p1, v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/narvii/notification/NotificationCenter;->notifications:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 60
    invoke-virtual {p0, p1}, Lcom/narvii/notification/NotificationCenter;->broadcast(Lcom/narvii/notification/NotificationCenter$Client;)V

    return-void
.end method

.method public unregisterListener(Lcom/narvii/app/NVContext;Z)V
    .locals 11

    .line 109
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContextId()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    shl-int/lit8 p1, p1, 0x20

    int-to-long v2, p1

    xor-long/2addr v0, v2

    .line 112
    iget-object p1, p0, Lcom/narvii/notification/NotificationCenter;->clients:Ljava/util/ArrayList;

    monitor-enter p1

    .line 113
    :try_start_0
    iget-object v2, p0, Lcom/narvii/notification/NotificationCenter;->clients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide/16 v3, 0x0

    move-wide v5, v3

    .line 114
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 115
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/narvii/notification/NotificationCenter$Client;

    .line 116
    iget-wide v8, v7, Lcom/narvii/notification/NotificationCenter$Client;->contextId:J

    cmp-long v10, v8, v3

    if-eqz v10, :cond_0

    iget-wide v8, v7, Lcom/narvii/notification/NotificationCenter$Client;->contextId:J

    cmp-long v10, v8, v0

    if-nez v10, :cond_0

    .line 117
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 118
    iget-wide v5, v7, Lcom/narvii/notification/NotificationCenter$Client;->time:J

    goto :goto_0

    .line 121
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    .line 124
    iget-object p1, p0, Lcom/narvii/notification/NotificationCenter;->timeMap:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/util/LongSparseArray;->remove(J)V

    goto :goto_1

    :cond_2
    cmp-long p1, v5, v3

    if-eqz p1, :cond_3

    .line 126
    iget-object p1, p0, Lcom/narvii/notification/NotificationCenter;->timeMap:Landroid/support/v4/util/LongSparseArray;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, v0, v1, p2}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception p2

    .line 121
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method

.method public unregisterListener(Lcom/narvii/notification/NotificationListener;)V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/narvii/notification/NotificationCenter;->clients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/narvii/notification/NotificationCenter;->clients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 144
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 145
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/notification/NotificationCenter$Client;

    .line 146
    iget-object v2, v2, Lcom/narvii/notification/NotificationCenter$Client;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/notification/NotificationListener;

    if-eqz v2, :cond_1

    if-ne v2, p1, :cond_0

    .line 148
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 151
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
