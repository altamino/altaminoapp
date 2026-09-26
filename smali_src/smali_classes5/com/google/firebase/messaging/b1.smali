.class Lcom/google/firebase/messaging/b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/messaging/b1$a;
    }
.end annotation


# static fields
.field private static final TOPIC_SYNC_TASK_LOCK:Ljava/lang/Object;

.field private static hasAccessNetworkStatePermission:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field

.field private static hasWakeLockPermission:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;

.field private final metadata:Lcom/google/firebase/messaging/g0;

.field private final nextDelaySeconds:J

.field private final syncWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final topicsSubscriber:Lcom/google/firebase/messaging/a1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/firebase/messaging/b1;->TOPIC_SYNC_TASK_LOCK:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method constructor <init>(Lcom/google/firebase/messaging/a1;Landroid/content/Context;Lcom/google/firebase/messaging/g0;J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/firebase/messaging/b1;->topicsSubscriber:Lcom/google/firebase/messaging/a1;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/firebase/messaging/b1;->context:Landroid/content/Context;

    .line 8
    .line 9
    iput-wide p4, p0, Lcom/google/firebase/messaging/b1;->nextDelaySeconds:J

    .line 10
    .line 11
    iput-object p3, p0, Lcom/google/firebase/messaging/b1;->metadata:Lcom/google/firebase/messaging/g0;

    .line 12
    .line 13
    const-string p1, "power"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    check-cast p1, Landroid/os/PowerManager;

    .line 20
    const/4 p2, 0x1

    .line 21
    .line 22
    const-string p3, "wake:com.google.firebase.messaging"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    iput-object p1, p0, Lcom/google/firebase/messaging/b1;->syncWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/google/firebase/messaging/b1;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/firebase/messaging/b1;->i()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic b()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/messaging/b1;->j()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method static synthetic c(Lcom/google/firebase/messaging/b1;)Lcom/google/firebase/messaging/a1;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/firebase/messaging/b1;->topicsSubscriber:Lcom/google/firebase/messaging/a1;

    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/google/firebase/messaging/b1;)Landroid/content/Context;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/firebase/messaging/b1;->context:Landroid/content/Context;

    .line 3
    return-object p0
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "Missing Permission: "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string p0, ". This permission should normally be included by the manifest merger, but may needed to be manually added to your manifest"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method private static f(Landroid/content/Context;)Z
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/google/firebase/messaging/b1;->TOPIC_SYNC_TASK_LOCK:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    sget-object v1, Lcom/google/firebase/messaging/b1;->hasAccessNetworkStatePermission:Ljava/lang/Boolean;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v2, v1}, Lcom/google/firebase/messaging/b1;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    .line 13
    move-result p0

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_1

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    move-result p0

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 24
    move-result-object p0

    .line 25
    .line 26
    sput-object p0, Lcom/google/firebase/messaging/b1;->hasAccessNetworkStatePermission:Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    move-result p0

    .line 31
    monitor-exit v0

    .line 32
    return p0

    .line 33
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method private static g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 1

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    move-result p0

    .line 7
    return p0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 11
    move-result p0

    .line 12
    .line 13
    if-nez p0, :cond_1

    .line 14
    const/4 p0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 p0, 0x0

    .line 17
    .line 18
    :goto_0
    if-nez p0, :cond_2

    .line 19
    const/4 p2, 0x3

    .line 20
    .line 21
    const-string v0, "FirebaseMessaging"

    .line 22
    .line 23
    .line 24
    invoke-static {v0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 25
    move-result p2

    .line 26
    .line 27
    if-eqz p2, :cond_2

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/google/firebase/messaging/b1;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_2
    return p0
.end method

.method private static h(Landroid/content/Context;)Z
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/google/firebase/messaging/b1;->TOPIC_SYNC_TASK_LOCK:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    sget-object v1, Lcom/google/firebase/messaging/b1;->hasWakeLockPermission:Ljava/lang/Boolean;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const-string v2, "android.permission.WAKE_LOCK"

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v2, v1}, Lcom/google/firebase/messaging/b1;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    .line 13
    move-result p0

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_1

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    move-result p0

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 24
    move-result-object p0

    .line 25
    .line 26
    sput-object p0, Lcom/google/firebase/messaging/b1;->hasWakeLockPermission:Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    move-result p0

    .line 31
    monitor-exit v0

    .line 32
    return p0

    .line 33
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method private declared-synchronized i()Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/messaging/b1;->context:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "connectivity"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_2

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    .line 23
    :goto_0
    if-eqz v0, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 27
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    const/4 v0, 0x1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 v0, 0x0

    .line 33
    :goto_1
    monitor-exit p0

    .line 34
    return v0

    .line 35
    :goto_2
    monitor-exit p0

    .line 36
    throw v0
.end method

.method private static j()Z
    .locals 4

    .line 1
    .line 2
    const-string v0, "FirebaseMessaging"

    .line 3
    const/4 v1, 0x3

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v2

    .line 8
    .line 9
    if-nez v2, :cond_1

    .line 10
    .line 11
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v3, 0x17

    .line 14
    .line 15
    if-ne v2, v3, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 26
    :goto_1
    return v0
.end method


# virtual methods
.method public run()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "TopicsSyncTask\'s wakelock was already released due to timeout."

    .line 3
    .line 4
    const-string v1, "FirebaseMessaging"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/google/firebase/messaging/b1;->context:Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    invoke-static {v2}, Lcom/google/firebase/messaging/b1;->h(Landroid/content/Context;)Z

    .line 10
    move-result v2

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iget-object v2, p0, Lcom/google/firebase/messaging/b1;->syncWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 15
    .line 16
    sget-wide v3, Lcom/google/firebase/messaging/e;->WAKE_LOCK_ACQUIRE_TIMEOUT_MILLIS:J

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 20
    :cond_0
    const/4 v2, 0x0

    .line 21
    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/google/firebase/messaging/b1;->topicsSubscriber:Lcom/google/firebase/messaging/a1;

    .line 23
    const/4 v4, 0x1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v4}, Lcom/google/firebase/messaging/a1;->m(Z)V

    .line 27
    .line 28
    iget-object v3, p0, Lcom/google/firebase/messaging/b1;->metadata:Lcom/google/firebase/messaging/g0;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/google/firebase/messaging/g0;->g()Z

    .line 32
    move-result v3

    .line 33
    .line 34
    if-nez v3, :cond_2

    .line 35
    .line 36
    iget-object v3, p0, Lcom/google/firebase/messaging/b1;->topicsSubscriber:Lcom/google/firebase/messaging/a1;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v2}, Lcom/google/firebase/messaging/a1;->m(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    iget-object v2, p0, Lcom/google/firebase/messaging/b1;->context:Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    invoke-static {v2}, Lcom/google/firebase/messaging/b1;->h(Landroid/content/Context;)Z

    .line 45
    move-result v2

    .line 46
    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    :try_start_1
    iget-object v2, p0, Lcom/google/firebase/messaging/b1;->syncWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 53
    goto :goto_0

    .line 54
    .line 55
    .line 56
    :catch_0
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_1
    :goto_0
    return-void

    .line 58
    :catchall_0
    move-exception v2

    .line 59
    .line 60
    goto/16 :goto_6

    .line 61
    :catch_1
    move-exception v3

    .line 62
    goto :goto_4

    .line 63
    .line 64
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/google/firebase/messaging/b1;->context:Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    invoke-static {v3}, Lcom/google/firebase/messaging/b1;->f(Landroid/content/Context;)Z

    .line 68
    move-result v3

    .line 69
    .line 70
    if-eqz v3, :cond_4

    .line 71
    .line 72
    .line 73
    invoke-direct {p0}, Lcom/google/firebase/messaging/b1;->i()Z

    .line 74
    move-result v3

    .line 75
    .line 76
    if-nez v3, :cond_4

    .line 77
    .line 78
    new-instance v3, Lcom/google/firebase/messaging/b1$a;

    .line 79
    .line 80
    .line 81
    invoke-direct {v3, p0, p0}, Lcom/google/firebase/messaging/b1$a;-><init>(Lcom/google/firebase/messaging/b1;Lcom/google/firebase/messaging/b1;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3}, Lcom/google/firebase/messaging/b1$a;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    .line 86
    iget-object v2, p0, Lcom/google/firebase/messaging/b1;->context:Landroid/content/Context;

    .line 87
    .line 88
    .line 89
    invoke-static {v2}, Lcom/google/firebase/messaging/b1;->h(Landroid/content/Context;)Z

    .line 90
    move-result v2

    .line 91
    .line 92
    if-eqz v2, :cond_3

    .line 93
    .line 94
    :try_start_3
    iget-object v2, p0, Lcom/google/firebase/messaging/b1;->syncWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 98
    goto :goto_1

    .line 99
    .line 100
    .line 101
    :catch_2
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_3
    :goto_1
    return-void

    .line 103
    .line 104
    :cond_4
    :try_start_4
    iget-object v3, p0, Lcom/google/firebase/messaging/b1;->topicsSubscriber:Lcom/google/firebase/messaging/a1;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3}, Lcom/google/firebase/messaging/a1;->p()Z

    .line 108
    move-result v3

    .line 109
    .line 110
    if-eqz v3, :cond_5

    .line 111
    .line 112
    iget-object v3, p0, Lcom/google/firebase/messaging/b1;->topicsSubscriber:Lcom/google/firebase/messaging/a1;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3, v2}, Lcom/google/firebase/messaging/a1;->m(Z)V

    .line 116
    goto :goto_2

    .line 117
    .line 118
    :cond_5
    iget-object v3, p0, Lcom/google/firebase/messaging/b1;->topicsSubscriber:Lcom/google/firebase/messaging/a1;

    .line 119
    .line 120
    iget-wide v4, p0, Lcom/google/firebase/messaging/b1;->nextDelaySeconds:J

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/messaging/a1;->q(J)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 124
    .line 125
    :goto_2
    iget-object v2, p0, Lcom/google/firebase/messaging/b1;->context:Landroid/content/Context;

    .line 126
    .line 127
    .line 128
    invoke-static {v2}, Lcom/google/firebase/messaging/b1;->h(Landroid/content/Context;)Z

    .line 129
    move-result v2

    .line 130
    .line 131
    if-eqz v2, :cond_6

    .line 132
    .line 133
    :try_start_5
    iget-object v2, p0, Lcom/google/firebase/messaging/b1;->syncWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 134
    .line 135
    .line 136
    :goto_3
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    .line 137
    goto :goto_5

    .line 138
    .line 139
    .line 140
    :catch_3
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    goto :goto_5

    .line 142
    .line 143
    :goto_4
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    const-string v5, "Failed to sync topics. Won\'t retry sync. "

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 155
    move-result-object v3

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    move-result-object v3

    .line 163
    .line 164
    .line 165
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    iget-object v3, p0, Lcom/google/firebase/messaging/b1;->topicsSubscriber:Lcom/google/firebase/messaging/a1;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3, v2}, Lcom/google/firebase/messaging/a1;->m(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 171
    .line 172
    iget-object v2, p0, Lcom/google/firebase/messaging/b1;->context:Landroid/content/Context;

    .line 173
    .line 174
    .line 175
    invoke-static {v2}, Lcom/google/firebase/messaging/b1;->h(Landroid/content/Context;)Z

    .line 176
    move-result v2

    .line 177
    .line 178
    if-eqz v2, :cond_6

    .line 179
    .line 180
    :try_start_7
    iget-object v2, p0, Lcom/google/firebase/messaging/b1;->syncWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3

    .line 181
    goto :goto_3

    .line 182
    :cond_6
    :goto_5
    return-void

    .line 183
    .line 184
    :goto_6
    iget-object v3, p0, Lcom/google/firebase/messaging/b1;->context:Landroid/content/Context;

    .line 185
    .line 186
    .line 187
    invoke-static {v3}, Lcom/google/firebase/messaging/b1;->h(Landroid/content/Context;)Z

    .line 188
    move-result v3

    .line 189
    .line 190
    if-eqz v3, :cond_7

    .line 191
    .line 192
    :try_start_8
    iget-object v3, p0, Lcom/google/firebase/messaging/b1;->syncWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_4

    .line 196
    goto :goto_7

    .line 197
    .line 198
    .line 199
    :catch_4
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_7
    :goto_7
    throw v2
.end method
