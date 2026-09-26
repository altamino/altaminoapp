.class public Lcom/google/firebase/messaging/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field private static final EXTRA_BINARY_DATA:Ljava/lang/String; = "rawData"

.field private static final EXTRA_BINARY_DATA_BASE_64:Ljava/lang/String; = "gcm.rawData64"

.field private static fcmServiceConn:Lcom/google/firebase/messaging/i1;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field

.field private static final lock:Ljava/lang/Object;


# instance fields
.field private final context:Landroid/content/Context;

.field private final executor:Ljava/util/concurrent/Executor;


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
    sput-object v0, Lcom/google/firebase/messaging/n;->lock:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/n;->context:Landroid/content/Context;

    .line 2
    new-instance p1, Landroidx/media3/exoplayer/dash/offline/a;

    invoke-direct {p1}, Landroidx/media3/exoplayer/dash/offline/a;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/n;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/n;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/firebase/messaging/n;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Landroid/content/Intent;ZLcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/google/firebase/messaging/n;->j(Landroid/content/Context;Landroid/content/Intent;ZLcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/firebase/messaging/n;->h(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/messaging/n;->g(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/messaging/n;->i(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static e(Landroid/content/Context;Landroid/content/Intent;Z)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    .line 3
    const-string v1, "FirebaseMessaging"

    .line 4
    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v0, "Binding to service"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    :cond_0
    const-string v0, "com.google.firebase.MESSAGING_EVENT"

    .line 17
    .line 18
    .line 19
    invoke-static {p0, v0}, Lcom/google/firebase/messaging/n;->f(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/messaging/i1;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    if-eqz p2, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/google/firebase/messaging/s0;->b()Lcom/google/firebase/messaging/s0;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p0}, Lcom/google/firebase/messaging/s0;->e(Landroid/content/Context;)Z

    .line 30
    move-result p2

    .line 31
    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-static {p0, v0, p1}, Lcom/google/firebase/messaging/d1;->f(Landroid/content/Context;Lcom/google/firebase/messaging/i1;Landroid/content/Intent;)V

    .line 36
    goto :goto_0

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/firebase/messaging/i1;->o(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    .line 40
    :goto_0
    const/4 p0, -0x1

    .line 41
    .line 42
    .line 43
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object p0

    .line 45
    .line 46
    .line 47
    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-virtual {v0, p1}, Lcom/google/firebase/messaging/i1;->o(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    .line 53
    move-result-object p0

    .line 54
    .line 55
    new-instance p1, Landroidx/media3/exoplayer/dash/offline/a;

    .line 56
    .line 57
    .line 58
    invoke-direct {p1}, Landroidx/media3/exoplayer/dash/offline/a;-><init>()V

    .line 59
    .line 60
    new-instance p2, Lcom/google/firebase/messaging/m;

    .line 61
    .line 62
    .line 63
    invoke-direct {p2}, Lcom/google/firebase/messaging/m;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 67
    move-result-object p0

    .line 68
    return-object p0
.end method

.method private static f(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/messaging/i1;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/google/firebase/messaging/n;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    sget-object v1, Lcom/google/firebase/messaging/n;->fcmServiceConn:Lcom/google/firebase/messaging/i1;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Lcom/google/firebase/messaging/i1;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, p0, p1}, Lcom/google/firebase/messaging/i1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    .line 14
    sput-object v1, Lcom/google/firebase/messaging/n;->fcmServiceConn:Lcom/google/firebase/messaging/i1;

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    .line 19
    :cond_0
    :goto_0
    sget-object p0, Lcom/google/firebase/messaging/n;->fcmServiceConn:Lcom/google/firebase/messaging/i1;

    .line 20
    monitor-exit v0

    .line 21
    return-object p0

    .line 22
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method

.method private static synthetic g(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const/4 p0, -0x1

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method private static synthetic h(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/messaging/s0;->b()Lcom/google/firebase/messaging/s0;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/messaging/s0;->g(Landroid/content/Context;Landroid/content/Intent;)I

    .line 8
    move-result p0

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method private static synthetic i(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    const/16 p0, 0x193

    .line 3
    .line 4
    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static synthetic j(Landroid/content/Context;Landroid/content/Intent;ZLcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 16
    move-result v0

    .line 17
    .line 18
    const/16 v1, 0x192

    .line 19
    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/firebase/messaging/n;->e(Landroid/content/Context;Landroid/content/Intent;Z)Lcom/google/android/gms/tasks/Task;

    .line 25
    move-result-object p0

    .line 26
    .line 27
    new-instance p1, Landroidx/media3/exoplayer/dash/offline/a;

    .line 28
    .line 29
    .line 30
    invoke-direct {p1}, Landroidx/media3/exoplayer/dash/offline/a;-><init>()V

    .line 31
    .line 32
    new-instance p2, Lcom/google/firebase/messaging/l;

    .line 33
    .line 34
    .line 35
    invoke-direct {p2}, Lcom/google/firebase/messaging/l;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_1
    :goto_0
    return-object p3
.end method


# virtual methods
.method public k(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "gcm.rawData64"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 13
    move-result-object v1

    .line 14
    .line 15
    const-string v2, "rawData"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/messaging/n;->context:Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/messaging/n;->l(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method public l(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 15
    .line 16
    const/16 v3, 0x1a

    .line 17
    .line 18
    if-lt v0, v3, :cond_0

    .line 19
    move v0, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v1

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    .line 25
    move-result v3

    .line 26
    .line 27
    const/high16 v4, 0x10000000

    .line 28
    and-int/2addr v3, v4

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    move v1, v2

    .line 32
    .line 33
    :cond_1
    if-eqz v0, :cond_2

    .line 34
    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-static {p1, p2, v1}, Lcom/google/firebase/messaging/n;->e(Landroid/content/Context;Landroid/content/Intent;Z)Lcom/google/android/gms/tasks/Task;

    .line 39
    move-result-object p1

    .line 40
    return-object p1

    .line 41
    .line 42
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/messaging/n;->executor:Ljava/util/concurrent/Executor;

    .line 43
    .line 44
    new-instance v2, Lcom/google/firebase/messaging/j;

    .line 45
    .line 46
    .line 47
    invoke-direct {v2, p1, p2}, Lcom/google/firebase/messaging/j;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v2}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    iget-object v2, p0, Lcom/google/firebase/messaging/n;->executor:Ljava/util/concurrent/Executor;

    .line 54
    .line 55
    new-instance v3, Lcom/google/firebase/messaging/k;

    .line 56
    .line 57
    .line 58
    invoke-direct {v3, p1, p2, v1}, Lcom/google/firebase/messaging/k;-><init>(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 62
    move-result-object p1

    .line 63
    return-object p1
.end method
