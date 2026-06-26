.class final Lcom/google/android/gms/internal/ads/zzaim;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;


# instance fields
.field private final synthetic zzbxc:Lcom/google/android/gms/internal/ads/zzbbr;

.field private final synthetic zzdaz:Lcom/google/android/gms/internal/ads/zzaii;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaii;Lcom/google/android/gms/internal/ads/zzbbr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaim;->zzdaz:Lcom/google/android/gms/internal/ads/zzaii;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaim;->zzbxc:Lcom/google/android/gms/internal/ads/zzbbr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 1

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaim;->zzbxc:Lcom/google/android/gms/internal/ads/zzbbr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaim;->zzdaz:Lcom/google/android/gms/internal/ads/zzaii;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaii;->zzb(Lcom/google/android/gms/internal/ads/zzaii;)Lcom/google/android/gms/internal/ads/zzahz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzahz;->zzrs()Lcom/google/android/gms/internal/ads/zzaig;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbbr;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaim;->zzbxc:Lcom/google/android/gms/internal/ads/zzbbr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbr;->setException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 4

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaim;->zzbxc:Lcom/google/android/gms/internal/ads/zzbbr;

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x22

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "onConnectionSuspended: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbr;->setException(Ljava/lang/Throwable;)V

    return-void
.end method
