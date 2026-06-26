.class final Lcom/google/android/gms/internal/ads/zzwd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;


# instance fields
.field final synthetic zzbxa:Lcom/google/android/gms/internal/ads/zzwb;

.field private final synthetic zzbxb:Lcom/google/android/gms/internal/ads/zzvv;

.field private final synthetic zzbxc:Lcom/google/android/gms/internal/ads/zzbbr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/zzvv;Lcom/google/android/gms/internal/ads/zzbbr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwd;->zzbxa:Lcom/google/android/gms/internal/ads/zzwb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwd;->zzbxb:Lcom/google/android/gms/internal/ads/zzvv;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzwd;->zzbxc:Lcom/google/android/gms/internal/ads/zzbbr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 4

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwd;->zzbxa:Lcom/google/android/gms/internal/ads/zzwb;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzwb;->zzb(Lcom/google/android/gms/internal/ads/zzwb;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwd;->zzbxa:Lcom/google/android/gms/internal/ads/zzwb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzwb;->zzc(Lcom/google/android/gms/internal/ads/zzwb;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    monitor-exit p1

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwd;->zzbxa:Lcom/google/android/gms/internal/ads/zzwb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzwb;->zza(Lcom/google/android/gms/internal/ads/zzwb;Z)Z

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwd;->zzbxa:Lcom/google/android/gms/internal/ads/zzwb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzwb;->zzd(Lcom/google/android/gms/internal/ads/zzwb;)Lcom/google/android/gms/internal/ads/zzvu;

    move-result-object v0

    if-nez v0, :cond_1

    .line 8
    monitor-exit p1

    return-void

    .line 9
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzwe;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzwd;->zzbxb:Lcom/google/android/gms/internal/ads/zzvv;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwd;->zzbxc:Lcom/google/android/gms/internal/ads/zzbbr;

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzwe;-><init>(Lcom/google/android/gms/internal/ads/zzwd;Lcom/google/android/gms/internal/ads/zzvu;Lcom/google/android/gms/internal/ads/zzvv;Lcom/google/android/gms/internal/ads/zzbbr;)V

    .line 10
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaxg;->zzc(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwd;->zzbxc:Lcom/google/android/gms/internal/ads/zzbbr;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzwf;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwd;->zzbxc:Lcom/google/android/gms/internal/ads/zzbbr;

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzwf;-><init>(Lcom/google/android/gms/internal/ads/zzbbr;Ljava/util/concurrent/Future;)V

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbm;->zzeaf:Ljava/util/concurrent/Executor;

    .line 13
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbbr;->zza(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 14
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    return-void
.end method
