.class public final Lcom/google/android/gms/internal/ads/zzccb;
.super Lcom/google/android/gms/internal/ads/zzafb;


# instance fields
.field private final zzfis:Ljava/lang/String;

.field private final zzfmq:Lcom/google/android/gms/internal/ads/zzbyt;

.field private final zzfpj:Lcom/google/android/gms/internal/ads/zzbyn;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbyn;Lcom/google/android/gms/internal/ads/zzbyt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzafb;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccb;->zzfis:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzccb;->zzfpj:Lcom/google/android/gms/internal/ads/zzbyn;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzccb;->zzfmq:Lcom/google/android/gms/internal/ads/zzbyt;

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccb;->zzfpj:Lcom/google/android/gms/internal/ads/zzbyn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyn;->destroy()V

    return-void
.end method

.method public final getAdvertiser()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccb;->zzfmq:Lcom/google/android/gms/internal/ads/zzbyt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyt;->getAdvertiser()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getBody()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccb;->zzfmq:Lcom/google/android/gms/internal/ads/zzbyt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyt;->getBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCallToAction()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccb;->zzfmq:Lcom/google/android/gms/internal/ads/zzbyt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyt;->getCallToAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccb;->zzfmq:Lcom/google/android/gms/internal/ads/zzbyt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyt;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final getHeadline()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccb;->zzfmq:Lcom/google/android/gms/internal/ads/zzbyt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyt;->getHeadline()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccb;->zzfmq:Lcom/google/android/gms/internal/ads/zzbyt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyt;->getImages()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccb;->zzfis:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/internal/ads/zzaar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccb;->zzfmq:Lcom/google/android/gms/internal/ads/zzbyt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyt;->getVideoController()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v0

    return-object v0
.end method

.method public final performClick(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccb;->zzfpj:Lcom/google/android/gms/internal/ads/zzbyn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbyn;->zzf(Landroid/os/Bundle;)V

    return-void
.end method

.method public final recordImpression(Landroid/os/Bundle;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccb;->zzfpj:Lcom/google/android/gms/internal/ads/zzbyn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbyn;->zzh(Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final reportTouchEvent(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccb;->zzfpj:Lcom/google/android/gms/internal/ads/zzbyn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbyn;->zzg(Landroid/os/Bundle;)V

    return-void
.end method

.method public final zzrh()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccb;->zzfpj:Lcom/google/android/gms/internal/ads/zzbyn;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzrj()Lcom/google/android/gms/internal/ads/zzaea;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccb;->zzfmq:Lcom/google/android/gms/internal/ads/zzbyt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyt;->zzrj()Lcom/google/android/gms/internal/ads/zzaea;

    move-result-object v0

    return-object v0
.end method

.method public final zzrk()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccb;->zzfmq:Lcom/google/android/gms/internal/ads/zzbyt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyt;->zzrk()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzrl()Lcom/google/android/gms/internal/ads/zzaei;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccb;->zzfmq:Lcom/google/android/gms/internal/ads/zzbyt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyt;->zzrl()Lcom/google/android/gms/internal/ads/zzaei;

    move-result-object v0

    return-object v0
.end method
