.class public Lcom/google/android/gms/internal/ads/zzcoj;
.super Lcom/google/android/gms/internal/ads/zzamw;


# instance fields
.field private final zzfir:Lcom/google/android/gms/internal/ads/zzbso;

.field private final zzfjg:Lcom/google/android/gms/internal/ads/zzbse;

.field private final zzflp:Lcom/google/android/gms/internal/ads/zzbsv;

.field private final zzfmr:Lcom/google/android/gms/internal/ads/zzbrt;

.field private final zzfms:Lcom/google/android/gms/internal/ads/zzbri;

.field private final zzfsr:Lcom/google/android/gms/internal/ads/zzbtp;

.field private final zzgcm:Lcom/google/android/gms/internal/ads/zzbvq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbri;Lcom/google/android/gms/internal/ads/zzbrt;Lcom/google/android/gms/internal/ads/zzbse;Lcom/google/android/gms/internal/ads/zzbso;Lcom/google/android/gms/internal/ads/zzbtp;Lcom/google/android/gms/internal/ads/zzbsv;Lcom/google/android/gms/internal/ads/zzbvq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzamw;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzfms:Lcom/google/android/gms/internal/ads/zzbri;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzfmr:Lcom/google/android/gms/internal/ads/zzbrt;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzfjg:Lcom/google/android/gms/internal/ads/zzbse;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzfir:Lcom/google/android/gms/internal/ads/zzbso;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzfsr:Lcom/google/android/gms/internal/ads/zzbtp;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzflp:Lcom/google/android/gms/internal/ads/zzbsv;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzgcm:Lcom/google/android/gms/internal/ads/zzbvq;

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzfms:Lcom/google/android/gms/internal/ads/zzbri;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbri;->onAdClicked()V

    return-void
.end method

.method public final onAdClosed()V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzflp:Lcom/google/android/gms/internal/ads/zzbsv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbsv;->zzsz()V

    return-void
.end method

.method public final onAdFailedToLoad(I)V
    .locals 0

    return-void
.end method

.method public final onAdImpression()V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzfmr:Lcom/google/android/gms/internal/ads/zzbrt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbrt;->onAdImpression()V

    return-void
.end method

.method public final onAdLeftApplication()V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzfjg:Lcom/google/android/gms/internal/ads/zzbse;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbse;->onAdLeftApplication()V

    return-void
.end method

.method public final onAdLoaded()V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzfir:Lcom/google/android/gms/internal/ads/zzbso;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbso;->onAdLoaded()V

    return-void
.end method

.method public final onAdOpened()V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzflp:Lcom/google/android/gms/internal/ads/zzbsv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbsv;->zzta()V

    return-void
.end method

.method public final onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzfsr:Lcom/google/android/gms/internal/ads/zzbtp;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbtp;->onAppEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoEnd()V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzgcm:Lcom/google/android/gms/internal/ads/zzbvq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbvq;->onVideoEnd()V

    return-void
.end method

.method public final onVideoPause()V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzgcm:Lcom/google/android/gms/internal/ads/zzbvq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbvq;->onVideoPause()V

    return-void
.end method

.method public final onVideoPlay()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzgcm:Lcom/google/android/gms/internal/ads/zzbvq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbvq;->onVideoPlay()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzafe;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzamy;)V
    .locals 0

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/ads/zzatq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public zzb(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/ads/zzato;)V
    .locals 0

    return-void
.end method

.method public zzcs(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final zzcz(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public zzsm()V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzgcm:Lcom/google/android/gms/internal/ads/zzbvq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbvq;->onVideoStart()V

    return-void
.end method

.method public zzsn()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
