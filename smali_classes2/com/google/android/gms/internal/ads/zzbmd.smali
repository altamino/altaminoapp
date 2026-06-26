.class public final Lcom/google/android/gms/internal/ads/zzbmd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbro;


# instance fields
.field private final zzfez:Lcom/google/android/gms/internal/ads/zzcxo;

.field private final zzffa:Lcom/google/android/gms/internal/ads/zzcxu;

.field private final zzffb:Lcom/google/android/gms/internal/ads/zzdae;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzdae;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmd;->zzffa:Lcom/google/android/gms/internal/ads/zzcxu;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbmd;->zzffb:Lcom/google/android/gms/internal/ads/zzdae;

    .line 4
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcxu;->zzgky:Lcom/google/android/gms/internal/ads/zzcxs;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcxs;->zzgku:Lcom/google/android/gms/internal/ads/zzcxo;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmd;->zzfez:Lcom/google/android/gms/internal/ads/zzcxo;

    return-void
.end method


# virtual methods
.method public final onAdFailedToLoad(I)V
    .locals 3

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmd;->zzffb:Lcom/google/android/gms/internal/ads/zzdae;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmd;->zzffa:Lcom/google/android/gms/internal/ads/zzcxu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbmd;->zzfez:Lcom/google/android/gms/internal/ads/zzcxo;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzcxo;->zzdfh:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdae;->zza(Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzcxm;Ljava/util/List;)V

    return-void
.end method
