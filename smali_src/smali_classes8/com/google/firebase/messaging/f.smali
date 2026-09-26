.class Lcom/google/firebase/messaging/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final IMAGE_DOWNLOAD_TIMEOUT_SECONDS:I = 0x5


# instance fields
.field private final context:Landroid/content/Context;

.field private final networkIoExecutor:Ljava/util/concurrent/ExecutorService;

.field private final params:Lcom/google/firebase/messaging/h0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/messaging/h0;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p3, p0, Lcom/google/firebase/messaging/f;->networkIoExecutor:Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/firebase/messaging/f;->context:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/google/firebase/messaging/f;->params:Lcom/google/firebase/messaging/h0;

    .line 10
    return-void
.end method

.method private b()Z
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/messaging/f;->context:Landroid/content/Context;

    .line 3
    .line 4
    const-string v1, "keyguard"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Landroid/app/KeyguardManager;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    return v1

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastLollipop()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    const-wide/16 v2, 0xa

    .line 27
    .line 28
    .line 29
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 33
    move-result v0

    .line 34
    .line 35
    iget-object v2, p0, Lcom/google/firebase/messaging/f;->context:Landroid/content/Context;

    .line 36
    .line 37
    const-string v3, "activity"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    check-cast v2, Landroid/app/ActivityManager;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    .line 52
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 53
    move-result-object v2

    .line 54
    .line 55
    .line 56
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    move-result v3

    .line 58
    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    .line 62
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    move-result-object v3

    .line 64
    .line 65
    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 66
    .line 67
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 68
    .line 69
    if-ne v4, v0, :cond_2

    .line 70
    .line 71
    iget v0, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 72
    .line 73
    const/16 v2, 0x64

    .line 74
    .line 75
    if-ne v0, v2, :cond_3

    .line 76
    const/4 v1, 0x1

    .line 77
    :cond_3
    return v1
.end method

.method private c(Lcom/google/firebase/messaging/d$a;)V
    .locals 3

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
    const-string v0, "Showing notification"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/messaging/f;->context:Landroid/content/Context;

    .line 17
    .line 18
    const-string v1, "notification"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Landroid/app/NotificationManager;

    .line 25
    .line 26
    iget-object v1, p1, Lcom/google/firebase/messaging/d$a;->tag:Ljava/lang/String;

    .line 27
    .line 28
    iget v2, p1, Lcom/google/firebase/messaging/d$a;->id:I

    .line 29
    .line 30
    iget-object p1, p1, Lcom/google/firebase/messaging/d$a;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->g()Landroid/app/Notification;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1, v2, p1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 38
    return-void
.end method

.method private d()Lcom/google/firebase/messaging/d0;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/messaging/f;->params:Lcom/google/firebase/messaging/h0;

    .line 3
    .line 4
    const-string v1, "gcm.n.image"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/h0;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/firebase/messaging/d0;->i(Ljava/lang/String;)Lcom/google/firebase/messaging/d0;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/firebase/messaging/f;->networkIoExecutor:Ljava/util/concurrent/ExecutorService;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/d0;->m(Ljava/util/concurrent/ExecutorService;)V

    .line 20
    :cond_0
    return-object v0
.end method

.method private e(Landroidx/core/app/NotificationCompat$Builder;Lcom/google/firebase/messaging/d0;)V
    .locals 5
    .param p2    # Lcom/google/firebase/messaging/d0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "FirebaseMessaging"

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/google/firebase/messaging/d0;->k()Lcom/google/android/gms/tasks/Task;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 12
    .line 13
    const-wide/16 v3, 0x5

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v3, v4, v2}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    check-cast v1, Landroid/graphics/Bitmap;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->N(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 23
    .line 24
    new-instance v2, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    .line 25
    .line 26
    .line 27
    invoke-direct {v2}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->z(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    .line 31
    move-result-object v1

    .line 32
    const/4 v2, 0x0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->y(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->f0(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    .line 40
    goto :goto_1

    .line 41
    :catch_0
    move-exception p1

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :catch_1
    const-string p1, "Failed to download image in time, showing notification without it"

    .line 45
    .line 46
    .line 47
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Lcom/google/firebase/messaging/d0;->close()V

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :catch_2
    const-string p1, "Interrupted while downloading image, showing notification without it"

    .line 54
    .line 55
    .line 56
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Lcom/google/firebase/messaging/d0;->close()V

    .line 60
    .line 61
    .line 62
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 67
    goto :goto_1

    .line 68
    .line 69
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    const-string v1, "Failed to download image: "

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    .line 91
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :goto_1
    return-void
.end method


# virtual methods
.method a()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/messaging/f;->params:Lcom/google/firebase/messaging/h0;

    .line 3
    .line 4
    const-string v1, "gcm.n.noui"

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/h0;->a(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    return v1

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/messaging/f;->b()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    const/4 v0, 0x0

    .line 20
    return v0

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-direct {p0}, Lcom/google/firebase/messaging/f;->d()Lcom/google/firebase/messaging/d0;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    iget-object v2, p0, Lcom/google/firebase/messaging/f;->context:Landroid/content/Context;

    .line 27
    .line 28
    iget-object v3, p0, Lcom/google/firebase/messaging/f;->params:Lcom/google/firebase/messaging/h0;

    .line 29
    .line 30
    .line 31
    invoke-static {v2, v3}, Lcom/google/firebase/messaging/d;->e(Landroid/content/Context;Lcom/google/firebase/messaging/h0;)Lcom/google/firebase/messaging/d$a;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    iget-object v3, v2, Lcom/google/firebase/messaging/d$a;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, v3, v0}, Lcom/google/firebase/messaging/f;->e(Landroidx/core/app/NotificationCompat$Builder;Lcom/google/firebase/messaging/d0;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v2}, Lcom/google/firebase/messaging/f;->c(Lcom/google/firebase/messaging/d$a;)V

    .line 41
    return v1
.end method
