.class public final Lcom/google/android/gms/internal/ads/zzccz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzahy;


# instance fields
.field private final zzfjg:Lcom/google/android/gms/internal/ads/zzbse;

.field private final zzfsz:Lcom/google/android/gms/internal/ads/zzato;

.field private final zzfta:Ljava/lang/String;

.field private final zzftb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbse;Lcom/google/android/gms/internal/ads/zzcxm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccz;->zzfjg:Lcom/google/android/gms/internal/ads/zzbse;

    .line 3
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzcxm;->zzdnx:Lcom/google/android/gms/internal/ads/zzato;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccz;->zzfsz:Lcom/google/android/gms/internal/ads/zzato;

    .line 4
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzcxm;->zzdeu:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccz;->zzfta:Ljava/lang/String;

    .line 5
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzcxm;->zzdev:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccz;->zzftb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzato;)V
    .locals 3

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccz;->zzfsz:Lcom/google/android/gms/internal/ads/zzato;

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    if-eqz p1, :cond_1

    .line 14
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzato;->type:Ljava/lang/String;

    .line 15
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzato;->zzdqm:I

    goto :goto_0

    :cond_1
    const-string v0, ""

    const/4 p1, 0x1

    .line 16
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzasp;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzasp;-><init>(Ljava/lang/String;I)V

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzccz;->zzfjg:Lcom/google/android/gms/internal/ads/zzbse;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccz;->zzfta:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzccz;->zzftb:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbse;->zzb(Lcom/google/android/gms/internal/ads/zzasr;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzrq()V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccz;->zzfjg:Lcom/google/android/gms/internal/ads/zzbse;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbse;->onRewardedVideoStarted()V

    return-void
.end method

.method public final zzrr()V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccz;->zzfjg:Lcom/google/android/gms/internal/ads/zzbse;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbse;->onRewardedVideoCompleted()V

    return-void
.end method
