.class final Lcom/google/android/gms/internal/ads/zzcdz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaqc;


# instance fields
.field private final synthetic zzftm:Lcom/google/android/gms/internal/ads/zzcdp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcdp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdz;->zzftm:Lcom/google/android/gms/internal/ads/zzcdp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzc(IIII)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdz;->zzftm:Lcom/google/android/gms/internal/ads/zzcdp;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcdp;->zza(Lcom/google/android/gms/internal/ads/zzcdp;)Lcom/google/android/gms/internal/ads/zzbse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbse;->onAdOpened()V

    return-void
.end method

.method public final zztc()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdz;->zzftm:Lcom/google/android/gms/internal/ads/zzcdp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcdp;->zza(Lcom/google/android/gms/internal/ads/zzcdp;)Lcom/google/android/gms/internal/ads/zzbse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbse;->onAdClosed()V

    return-void
.end method

.method public final zztd()V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdz;->zzftm:Lcom/google/android/gms/internal/ads/zzcdp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcdp;->zzb(Lcom/google/android/gms/internal/ads/zzcdp;)Lcom/google/android/gms/internal/ads/zzbtl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbtl;->zzafq()V

    return-void
.end method
