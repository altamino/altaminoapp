.class final Lcom/google/android/gms/internal/ads/zzakq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzdcl:Lcom/google/android/gms/internal/ads/zzala;

.field private final synthetic zzdcm:Lcom/google/android/gms/internal/ads/zzajw;

.field private final synthetic zzdcn:Lcom/google/android/gms/internal/ads/zzakh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzakh;Lcom/google/android/gms/internal/ads/zzala;Lcom/google/android/gms/internal/ads/zzajw;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakq;->zzdcn:Lcom/google/android/gms/internal/ads/zzakh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzakq;->zzdcl:Lcom/google/android/gms/internal/ads/zzala;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzakq;->zzdcm:Lcom/google/android/gms/internal/ads/zzajw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakq;->zzdcn:Lcom/google/android/gms/internal/ads/zzakh;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakh;->zza(Lcom/google/android/gms/internal/ads/zzakh;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakq;->zzdcl:Lcom/google/android/gms/internal/ads/zzala;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbbw;->getStatus()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakq;->zzdcl:Lcom/google/android/gms/internal/ads/zzala;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbbw;->getStatus()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakq;->zzdcl:Lcom/google/android/gms/internal/ads/zzala;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbbw;->reject()V

    .line 7
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbbm;->zzeae:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzakq;->zzdcm:Lcom/google/android/gms/internal/ads/zzajw;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzakr;->zzb(Lcom/google/android/gms/internal/ads/zzajw;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string v1, "Could not receive loaded message in a timely manner. Rejecting."

    .line 8
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzawz;->zzds(Ljava/lang/String;)V

    .line 9
    monitor-exit v0

    return-void

    .line 5
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
