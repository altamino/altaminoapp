.class final Lcom/google/android/gms/internal/ads/zzvr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;


# instance fields
.field private final synthetic zzbwq:Lcom/google/android/gms/internal/ads/zzvn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzvn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvr;->zzbwq:Lcom/google/android/gms/internal/ads/zzvn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvr;->zzbwq:Lcom/google/android/gms/internal/ads/zzvn;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzvn;->zzc(Lcom/google/android/gms/internal/ads/zzvn;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvr;->zzbwq:Lcom/google/android/gms/internal/ads/zzvn;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzvn;->zza(Lcom/google/android/gms/internal/ads/zzvn;Lcom/google/android/gms/internal/ads/zzvy;)Lcom/google/android/gms/internal/ads/zzvy;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvr;->zzbwq:Lcom/google/android/gms/internal/ads/zzvn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzvn;->zzd(Lcom/google/android/gms/internal/ads/zzvn;)Lcom/google/android/gms/internal/ads/zzvu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvr;->zzbwq:Lcom/google/android/gms/internal/ads/zzvn;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzvn;->zza(Lcom/google/android/gms/internal/ads/zzvn;Lcom/google/android/gms/internal/ads/zzvu;)Lcom/google/android/gms/internal/ads/zzvu;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvr;->zzbwq:Lcom/google/android/gms/internal/ads/zzvn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzvn;->zzc(Lcom/google/android/gms/internal/ads/zzvn;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 7
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
