.class public final Lcom/google/android/gms/internal/ads/zzbxc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbrl;


# instance fields
.field private final zzfij:Lcom/google/android/gms/internal/ads/zzbrt;

.field private final zzflu:Lcom/google/android/gms/internal/ads/zzcxm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbrt;Lcom/google/android/gms/internal/ads/zzcxm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxc;->zzfij:Lcom/google/android/gms/internal/ads/zzbrt;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbxc;->zzflu:Lcom/google/android/gms/internal/ads/zzcxm;

    return-void
.end method


# virtual methods
.method public final onAdClosed()V
    .locals 0

    return-void
.end method

.method public final onAdLeftApplication()V
    .locals 0

    return-void
.end method

.method public final onAdOpened()V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxc;->zzflu:Lcom/google/android/gms/internal/ads/zzcxm;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzcxm;->zzgkp:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxc;->zzfij:Lcom/google/android/gms/internal/ads/zzbrt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbrt;->onAdImpression()V

    :cond_1
    return-void
.end method

.method public final onRewardedVideoCompleted()V
    .locals 0

    return-void
.end method

.method public final onRewardedVideoStarted()V
    .locals 0

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzasr;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
