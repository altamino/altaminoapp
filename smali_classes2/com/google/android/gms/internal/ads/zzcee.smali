.class final synthetic Lcom/google/android/gms/internal/ads/zzcee;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzwk;


# instance fields
.field private final zzdbk:Ljava/lang/String;

.field private final zzdyz:I

.field private final zzfts:Lcom/google/android/gms/internal/ads/zzxo;

.field private final zzftt:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzxo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcee;->zzdyz:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcee;->zzdbk:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcee;->zzfts:Lcom/google/android/gms/internal/ads/zzxo;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcee;->zzftt:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzxn;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcee;->zzdyz:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcee;->zzdbk:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcee;->zzfts:Lcom/google/android/gms/internal/ads/zzxo;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcee;->zzftt:Ljava/lang/String;

    .line 2
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzxn;->zzcfl:Lcom/google/android/gms/internal/ads/zzxj;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/gms/internal/ads/zzxj;->zzcee:Ljava/lang/Integer;

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzxn;->zzcfi:Lcom/google/android/gms/internal/ads/zzxl;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzxl;->zzceu:Ljava/lang/String;

    .line 4
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzxl;->zzcex:Lcom/google/android/gms/internal/ads/zzxo;

    .line 5
    iput-object v3, p1, Lcom/google/android/gms/internal/ads/zzxn;->zzcfd:Ljava/lang/String;

    return-void
.end method
