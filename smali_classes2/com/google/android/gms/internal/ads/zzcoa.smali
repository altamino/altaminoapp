.class final Lcom/google/android/gms/internal/ads/zzcoa;
.super Lcom/google/android/gms/internal/ads/zzatl;


# instance fields
.field private final synthetic zzgcd:Lcom/google/android/gms/internal/ads/zzbsv;

.field private final synthetic zzgce:Lcom/google/android/gms/internal/ads/zzbri;

.field private final synthetic zzgcf:Lcom/google/android/gms/internal/ads/zzbse;

.field private final synthetic zzgcg:Lcom/google/android/gms/internal/ads/zzbvj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcnw;Lcom/google/android/gms/internal/ads/zzbsv;Lcom/google/android/gms/internal/ads/zzbri;Lcom/google/android/gms/internal/ads/zzbse;Lcom/google/android/gms/internal/ads/zzbvj;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcoa;->zzgcd:Lcom/google/android/gms/internal/ads/zzbsv;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcoa;->zzgce:Lcom/google/android/gms/internal/ads/zzbri;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcoa;->zzgcf:Lcom/google/android/gms/internal/ads/zzbse;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcoa;->zzgcg:Lcom/google/android/gms/internal/ads/zzbvj;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzatl;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzato;)V
    .locals 0

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoa;->zzgcg:Lcom/google/android/gms/internal/ads/zzbvj;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbvj;->zza(Lcom/google/android/gms/internal/ads/zzato;)V

    return-void
.end method

.method public final zzae(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    return-void
.end method

.method public final zzaf(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    return-void
.end method

.method public final zzag(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoa;->zzgcd:Lcom/google/android/gms/internal/ads/zzbsv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbsv;->zzta()V

    return-void
.end method

.method public final zzah(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoa;->zzgcg:Lcom/google/android/gms/internal/ads/zzbvj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbvj;->zzrq()V

    return-void
.end method

.method public final zzai(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoa;->zzgcd:Lcom/google/android/gms/internal/ads/zzbsv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbsv;->zzsz()V

    return-void
.end method

.method public final zzaj(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoa;->zzgce:Lcom/google/android/gms/internal/ads/zzbri;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbri;->onAdClicked()V

    return-void
.end method

.method public final zzak(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoa;->zzgcf:Lcom/google/android/gms/internal/ads/zzbse;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbse;->onAdLeftApplication()V

    return-void
.end method

.method public final zzal(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoa;->zzgcf:Lcom/google/android/gms/internal/ads/zzbse;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbse;->onRewardedVideoCompleted()V

    return-void
.end method

.method public final zzb(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/dynamic/IObjectWrapper;I)V
    .locals 0

    return-void
.end method

.method public final zze(Lcom/google/android/gms/dynamic/IObjectWrapper;I)V
    .locals 0

    return-void
.end method
