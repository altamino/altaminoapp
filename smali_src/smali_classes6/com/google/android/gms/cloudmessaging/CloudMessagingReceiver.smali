.class public abstract Lcom/google/android/gms/cloudmessaging/CloudMessagingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cloudmessaging/CloudMessagingReceiver$IntentKeys;,
        Lcom/google/android/gms/cloudmessaging/CloudMessagingReceiver$IntentActionKeys;
    }
.end annotation


# instance fields
.field private final zza:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/cloudmessaging/zze;->zza()Lcom/google/android/gms/internal/cloudmessaging/zzb;

    .line 7
    .line 8
    new-instance v7, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;

    .line 9
    .line 10
    const-string v0, "firebase-iid-executor"

    .line 11
    .line 12
    .line 13
    invoke-direct {v7, v0}, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 16
    .line 17
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 18
    .line 19
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 20
    .line 21
    .line 22
    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 23
    const/4 v1, 0x1

    .line 24
    const/4 v2, 0x1

    .line 25
    .line 26
    const-wide/16 v3, 0x3c

    .line 27
    move-object v0, v8

    .line 28
    .line 29
    .line 30
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 31
    const/4 v0, 0x1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 35
    .line 36
    .line 37
    invoke-static {v8}, Ljava/util/concurrent/Executors;->unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    iput-object v0, p0, Lcom/google/android/gms/cloudmessaging/CloudMessagingReceiver;->zza:Ljava/util/concurrent/ExecutorService;

    .line 41
    return-void
.end method

.method private final zzb(Landroid/content/Context;Landroid/content/Intent;)I
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/16 p1, 0x1f4

    .line 9
    return p1

    .line 10
    .line 11
    :cond_0
    const-string v0, "google.message_id"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    move-result v2

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    const/4 v0, 0x0

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    .line 30
    .line 31
    .line 32
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcom/google/android/gms/cloudmessaging/zzs;->zzb(Landroid/content/Context;)Lcom/google/android/gms/cloudmessaging/zzs;

    .line 39
    move-result-object v0

    .line 40
    const/4 v1, 0x2

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cloudmessaging/zzs;->zzc(ILandroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    :goto_0
    new-instance v1, Lcom/google/android/gms/cloudmessaging/CloudMessage;

    .line 47
    .line 48
    .line 49
    invoke-direct {v1, p2}, Lcom/google/android/gms/cloudmessaging/CloudMessage;-><init>(Landroid/content/Intent;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/cloudmessaging/CloudMessagingReceiver;->onMessageReceive(Landroid/content/Context;Lcom/google/android/gms/cloudmessaging/CloudMessage;)I

    .line 53
    move-result p1

    .line 54
    .line 55
    :try_start_0
    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 56
    .line 57
    const-wide/16 v1, 0x1

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 61
    move-result-wide v1

    .line 62
    .line 63
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 64
    .line 65
    .line 66
    invoke-static {v0, v1, v2, p2}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_2

    .line 68
    :catch_0
    move-exception p2

    .line 69
    goto :goto_1

    .line 70
    :catch_1
    move-exception p2

    .line 71
    goto :goto_1

    .line 72
    :catch_2
    move-exception p2

    .line 73
    .line 74
    .line 75
    :goto_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    move-result-object p2

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 80
    move-result v0

    .line 81
    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    add-int/lit8 v0, v0, 0x14

    .line 85
    .line 86
    .line 87
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 88
    .line 89
    const-string v0, "Message ack failed: "

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string p2, "CloudMessagingReceiver"

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object v0

    .line 102
    .line 103
    .line 104
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :goto_2
    return p1
.end method

.method private final zzc(Landroid/content/Context;Landroid/content/Intent;)I
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    .line 2
    const-string v0, "pending_intent"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    check-cast v1, Landroid/app/PendingIntent;

    .line 9
    .line 10
    const-string v2, "CloudMessagingReceiver"

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    :try_start_0
    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :catch_0
    const-string v1, "Notification pending intent canceled"

    .line 19
    .line 20
    .line 21
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 31
    goto :goto_1

    .line 32
    .line 33
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    .line 34
    .line 35
    .line 36
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 37
    .line 38
    :goto_1
    const-string v0, "com.google.firebase.messaging.NOTIFICATION_DISMISS"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result p2

    .line 47
    .line 48
    if-eqz p2, :cond_2

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/cloudmessaging/CloudMessagingReceiver;->onNotificationDismissed(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 52
    const/4 p1, -0x1

    .line 53
    return p1

    .line 54
    .line 55
    :cond_2
    const-string p1, "Unknown notification action"

    .line 56
    .line 57
    .line 58
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    const/16 p1, 0x1f4

    .line 61
    return p1
.end method


# virtual methods
.method protected getBroadcastExecutor()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/CloudMessagingReceiver;->zza:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method protected abstract onMessageReceive(Landroid/content/Context;Lcom/google/android/gms/cloudmessaging/CloudMessage;)I
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/cloudmessaging/CloudMessage;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method

.method protected onNotificationDismissed(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isOrderedBroadcast()Z

    .line 7
    move-result v4

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    .line 11
    move-result-object v5

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/cloudmessaging/CloudMessagingReceiver;->getBroadcastExecutor()Ljava/util/concurrent/Executor;

    .line 15
    move-result-object v6

    .line 16
    .line 17
    new-instance v7, Lcom/google/android/gms/cloudmessaging/zze;

    .line 18
    move-object v0, v7

    .line 19
    move-object v1, p0

    .line 20
    move-object v2, p2

    .line 21
    move-object v3, p1

    .line 22
    .line 23
    .line 24
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/cloudmessaging/zze;-><init>(Lcom/google/android/gms/cloudmessaging/CloudMessagingReceiver;Landroid/content/Intent;Landroid/content/Context;ZLandroid/content/BroadcastReceiver$PendingResult;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 28
    return-void
.end method

.method public final synthetic zza(Landroid/content/Intent;Landroid/content/Context;ZLandroid/content/BroadcastReceiver$PendingResult;)V
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/BroadcastReceiver$PendingResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    :try_start_0
    const-string v0, "wrapped_intent"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    instance-of v1, v0, Landroid/content/Intent;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Landroid/content/Intent;

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto :goto_2

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    .line 18
    :goto_0
    if-eqz v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/cloudmessaging/CloudMessagingReceiver;->zzc(Landroid/content/Context;Landroid/content/Intent;)I

    .line 22
    move-result p1

    .line 23
    goto :goto_1

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/cloudmessaging/CloudMessagingReceiver;->zzb(Landroid/content/Context;Landroid/content/Intent;)I

    .line 27
    move-result p1

    .line 28
    .line 29
    :goto_1
    if-eqz p3, :cond_2

    .line 30
    .line 31
    .line 32
    invoke-virtual {p4, p1}, Landroid/content/BroadcastReceiver$PendingResult;->setResultCode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-virtual {p4}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 36
    return-void

    .line 37
    .line 38
    .line 39
    :goto_2
    invoke-virtual {p4}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 40
    throw p1
.end method
