.class public final Lcom/google/android/gms/internal/ads/zzccg;
.super Lcom/google/android/gms/internal/ads/zzagh;


# instance fields
.field private final zzfis:Ljava/lang/String;

.field private final zzfmq:Lcom/google/android/gms/internal/ads/zzbyt;

.field private final zzfpj:Lcom/google/android/gms/internal/ads/zzbyn;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbyn;Lcom/google/android/gms/internal/ads/zzbyt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzagh;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccg;->zzfis:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzccg;->zzfpj:Lcom/google/android/gms/internal/ads/zzbyn;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzccg;->zzfmq:Lcom/google/android/gms/internal/ads/zzbyt;

    return-void
.end method


# virtual methods
.method public final cancelUnconfirmedClick()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccg;->zzfpj:Lcom/google/android/gms/internal/ads/zzbyn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyn;->cancelUnconfirmedClick()V

    return-void
.end method

.method public final destroy()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccg;->zzfpj:Lcom/google/android/gms/internal/ads/zzbyn;

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

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccg;->zzfmq:Lcom/google/android/gms/internal/ads/zzbyt;

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

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccg;->zzfmq:Lcom/google/android/gms/internal/ads/zzbyt;

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

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccg;->zzfmq:Lcom/google/android/gms/internal/ads/zzbyt;

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

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccg;->zzfmq:Lcom/google/android/gms/internal/ads/zzbyt;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccg;->zzfmq:Lcom/google/android/gms/internal/ads/zzbyt;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccg;->zzfmq:Lcom/google/android/gms/internal/ads/zzbyt;

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

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccg;->zzfis:Ljava/lang/String;

    return-object v0
.end method

.method public final getMuteThisAdReasons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzccg;->isCustomMuteThisAdEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccg;->zzfmq:Lcom/google/android/gms/internal/ads/zzbyt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyt;->getMuteThisAdReasons()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 11
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getPrice()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccg;->zzfmq:Lcom/google/android/gms/internal/ads/zzbyt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyt;->getPrice()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStarRating()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccg;->zzfmq:Lcom/google/android/gms/internal/ads/zzbyt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyt;->getStarRating()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getStore()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccg;->zzfmq:Lcom/google/android/gms/internal/ads/zzbyt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyt;->getStore()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/internal/ads/zzaar;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccg;->zzfmq:Lcom/google/android/gms/internal/ads/zzbyt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyt;->getVideoController()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v0

    return-object v0
.end method

.method public final isCustomMuteThisAdEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccg;->zzfmq:Lcom/google/android/gms/internal/ads/zzbyt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyt;->getMuteThisAdReasons()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccg;->zzfmq:Lcom/google/android/gms/internal/ads/zzbyt;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyt;->zzahx()Lcom/google/android/gms/internal/ads/zzabj;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final performClick(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccg;->zzfpj:Lcom/google/android/gms/internal/ads/zzbyn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbyn;->zzf(Landroid/os/Bundle;)V

    return-void
.end method

.method public final recordCustomClickGesture()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccg;->zzfpj:Lcom/google/android/gms/internal/ads/zzbyn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyn;->recordCustomClickGesture()V

    return-void
.end method

.method public final recordImpression(Landroid/os/Bundle;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccg;->zzfpj:Lcom/google/android/gms/internal/ads/zzbyn;

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

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccg;->zzfpj:Lcom/google/android/gms/internal/ads/zzbyn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbyn;->zzg(Landroid/os/Bundle;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaag;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccg;->zzfpj:Lcom/google/android/gms/internal/ads/zzbyn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbyn;->zza(Lcom/google/android/gms/internal/ads/zzaag;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaak;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccg;->zzfpj:Lcom/google/android/gms/internal/ads/zzbyn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbyn;->zza(Lcom/google/android/gms/internal/ads/zzaak;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzagd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccg;->zzfpj:Lcom/google/android/gms/internal/ads/zzbyn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbyn;->zza(Lcom/google/android/gms/internal/ads/zzagd;)V

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccg;->zzfpj:Lcom/google/android/gms/internal/ads/zzbyn;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzri()Lcom/google/android/gms/internal/ads/zzaei;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccg;->zzfmq:Lcom/google/android/gms/internal/ads/zzbyt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyt;->zzri()Lcom/google/android/gms/internal/ads/zzaei;

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

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccg;->zzfmq:Lcom/google/android/gms/internal/ads/zzbyt;

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

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccg;->zzfmq:Lcom/google/android/gms/internal/ads/zzbyt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyt;->zzrk()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzro()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccg;->zzfpj:Lcom/google/android/gms/internal/ads/zzbyn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyn;->zzro()V

    return-void
.end method

.method public final zzrp()Lcom/google/android/gms/internal/ads/zzaee;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccg;->zzfpj:Lcom/google/android/gms/internal/ads/zzbyn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyn;->zzrp()Lcom/google/android/gms/internal/ads/zzaee;

    move-result-object v0

    return-object v0
.end method
