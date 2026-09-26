.class final Lcom/google/android/gms/measurement/internal/zzku;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Ljava/util/concurrent/atomic/AtomicReference;

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzo;

.field private final synthetic zzc:Z

.field private final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzkp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzkp;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzo;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzku;->zzd:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzku;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzku;->zzb:Lcom/google/android/gms/measurement/internal/zzo;

    .line 7
    .line 8
    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/zzku;->zzc:Z

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzku;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzku;->zzd:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkp;->zza(Lcom/google/android/gms/measurement/internal/zzkp;)Lcom/google/android/gms/measurement/internal/zzfk;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzku;->zzd:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    const-string v2, "Failed to get all user properties; not connected to service"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    .line 28
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzku;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 32
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    goto :goto_3

    .line 36
    :catchall_1
    move-exception v1

    .line 37
    goto :goto_2

    .line 38
    :catch_0
    move-exception v1

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzku;->zzb:Lcom/google/android/gms/measurement/internal/zzo;

    .line 42
    .line 43
    .line 44
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzku;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 47
    .line 48
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzku;->zzb:Lcom/google/android/gms/measurement/internal/zzo;

    .line 49
    .line 50
    iget-boolean v4, p0, Lcom/google/android/gms/measurement/internal/zzku;->zzc:Z

    .line 51
    .line 52
    .line 53
    invoke-interface {v1, v3, v4}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(Lcom/google/android/gms/measurement/internal/zzo;Z)Ljava/util/List;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 58
    .line 59
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzku;->zzd:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 60
    .line 61
    .line 62
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkp;->zze(Lcom/google/android/gms/measurement/internal/zzkp;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 63
    .line 64
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzku;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 68
    goto :goto_1

    .line 69
    .line 70
    :goto_0
    :try_start_4
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzku;->zzd:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 74
    move-result-object v2

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    .line 78
    move-result-object v2

    .line 79
    .line 80
    const-string v3, "Failed to get all user properties; remote exception"

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 84
    .line 85
    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzku;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 89
    :goto_1
    monitor-exit v0

    .line 90
    return-void

    .line 91
    .line 92
    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzku;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 96
    throw v1

    .line 97
    :goto_3
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 98
    throw v1
.end method
