.class public final Lcom/google/android/gms/cloudmessaging/zzs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static zza:Lcom/google/android/gms/cloudmessaging/zzs;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final zzb:Landroid/content/Context;

.field private final zzc:Ljava/util/concurrent/ScheduledExecutorService;

.field private zzd:Lcom/google/android/gms/cloudmessaging/zzm;

.field private zze:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/gms/cloudmessaging/zzm;

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/cloudmessaging/zzm;-><init>(Lcom/google/android/gms/cloudmessaging/zzs;Lcom/google/android/gms/cloudmessaging/zzl;)V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/gms/cloudmessaging/zzs;->zzd:Lcom/google/android/gms/cloudmessaging/zzm;

    .line 12
    const/4 v0, 0x1

    .line 13
    .line 14
    iput v0, p0, Lcom/google/android/gms/cloudmessaging/zzs;->zze:I

    .line 15
    .line 16
    iput-object p2, p0, Lcom/google/android/gms/cloudmessaging/zzs;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/zzs;->zzb:Landroid/content/Context;

    .line 23
    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/cloudmessaging/zzs;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/cloudmessaging/zzs;->zzb:Landroid/content/Context;

    return-object p0
.end method

.method public static declared-synchronized zzb(Landroid/content/Context;)Lcom/google/android/gms/cloudmessaging/zzs;
    .locals 4

    .line 1
    .line 2
    const-class v0, Lcom/google/android/gms/cloudmessaging/zzs;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    sget-object v1, Lcom/google/android/gms/cloudmessaging/zzs;->zza:Lcom/google/android/gms/cloudmessaging/zzs;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Lcom/google/android/gms/cloudmessaging/zzs;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/cloudmessaging/zze;->zza()Lcom/google/android/gms/internal/cloudmessaging/zzb;

    .line 13
    .line 14
    new-instance v2, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;

    .line 15
    .line 16
    const-string v3, "MessengerIpcClient"

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, v3}, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    .line 20
    const/4 v3, 0x1

    .line 21
    .line 22
    .line 23
    invoke-static {v3, v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    .line 27
    invoke-static {v2}, Ljava/util/concurrent/Executors;->unconfigurableScheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/cloudmessaging/zzs;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 32
    .line 33
    sput-object v1, Lcom/google/android/gms/cloudmessaging/zzs;->zza:Lcom/google/android/gms/cloudmessaging/zzs;

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    .line 38
    :cond_0
    :goto_0
    sget-object p0, Lcom/google/android/gms/cloudmessaging/zzs;->zza:Lcom/google/android/gms/cloudmessaging/zzs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit v0

    .line 40
    return-object p0

    .line 41
    :goto_1
    monitor-exit v0

    .line 42
    throw p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/cloudmessaging/zzs;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/cloudmessaging/zzs;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method private final declared-synchronized zzf()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/cloudmessaging/zzs;->zze:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/cloudmessaging/zzs;->zze:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized zzg(Lcom/google/android/gms/cloudmessaging/zzp;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/cloudmessaging/zzp<",
            "TT;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    const-string v0, "MessengerIpcClient"

    .line 4
    const/4 v1, 0x3

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 18
    move-result v1

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x9

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 26
    .line 27
    const-string v1, "Queueing "

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v0, "MessengerIpcClient"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/zzs;->zzd:Lcom/google/android/gms/cloudmessaging/zzm;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1}, Lcom/google/android/gms/cloudmessaging/zzm;->zzg(Lcom/google/android/gms/cloudmessaging/zzp;)Z

    .line 51
    move-result v0

    .line 52
    .line 53
    if-nez v0, :cond_1

    .line 54
    .line 55
    new-instance v0, Lcom/google/android/gms/cloudmessaging/zzm;

    .line 56
    const/4 v1, 0x0

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/cloudmessaging/zzm;-><init>(Lcom/google/android/gms/cloudmessaging/zzs;Lcom/google/android/gms/cloudmessaging/zzl;)V

    .line 60
    .line 61
    iput-object v0, p0, Lcom/google/android/gms/cloudmessaging/zzs;->zzd:Lcom/google/android/gms/cloudmessaging/zzm;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1}, Lcom/google/android/gms/cloudmessaging/zzm;->zzg(Lcom/google/android/gms/cloudmessaging/zzp;)Z

    .line 65
    .line 66
    :cond_1
    iget-object p1, p1, Lcom/google/android/gms/cloudmessaging/zzp;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 70
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    .line 72
    return-object p1

    .line 73
    :goto_1
    monitor-exit p0

    .line 74
    throw p1
.end method


# virtual methods
.method public final zzc(ILandroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance p1, Lcom/google/android/gms/cloudmessaging/zzo;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/cloudmessaging/zzs;->zzf()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    .line 9
    .line 10
    invoke-direct {p1, v0, v1, p2}, Lcom/google/android/gms/cloudmessaging/zzo;-><init>(IILandroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/google/android/gms/cloudmessaging/zzs;->zzg(Lcom/google/android/gms/cloudmessaging/zzp;)Lcom/google/android/gms/tasks/Task;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final zzd(ILandroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance p1, Lcom/google/android/gms/cloudmessaging/zzr;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/cloudmessaging/zzs;->zzf()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    .line 10
    invoke-direct {p1, v0, v1, p2}, Lcom/google/android/gms/cloudmessaging/zzr;-><init>(IILandroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/google/android/gms/cloudmessaging/zzs;->zzg(Lcom/google/android/gms/cloudmessaging/zzp;)Lcom/google/android/gms/tasks/Task;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
