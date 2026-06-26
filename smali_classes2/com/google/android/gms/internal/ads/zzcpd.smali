.class final Lcom/google/android/gms/internal/ads/zzcpd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/zzf;


# instance fields
.field private final synthetic zzgdf:Lcom/google/android/gms/internal/ads/zzbvy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcpa;Lcom/google/android/gms/internal/ads/zzbvy;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcpd;->zzgdf:Lcom/google/android/gms/internal/ads/zzbvy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzg(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final zzky()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpd;->zzgdf:Lcom/google/android/gms/internal/ads/zzbvy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbpd;->zzadf()Lcom/google/android/gms/internal/ads/zzbri;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbri;->onAdClicked()V

    return-void
.end method

.method public final zzkz()V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpd;->zzgdf:Lcom/google/android/gms/internal/ads/zzbvy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbpd;->zzadg()Lcom/google/android/gms/internal/ads/zzbrt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbrt;->onAdImpression()V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpd;->zzgdf:Lcom/google/android/gms/internal/ads/zzbvy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbpd;->zzadh()Lcom/google/android/gms/internal/ads/zzbvd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbvd;->zzagx()V

    return-void
.end method
