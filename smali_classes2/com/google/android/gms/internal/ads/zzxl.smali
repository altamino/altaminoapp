.class public final Lcom/google/android/gms/internal/ads/zzxl;
.super Lcom/google/android/gms/internal/ads/zzdrr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdrr<",
        "Lcom/google/android/gms/internal/ads/zzxl;",
        ">;"
    }
.end annotation


# instance fields
.field public zzceu:Ljava/lang/String;

.field private zzcev:Lcom/google/android/gms/internal/ads/zzwt$zzn;

.field private zzcew:Ljava/lang/Integer;

.field public zzcex:Lcom/google/android/gms/internal/ads/zzxo;

.field private zzcey:Ljava/lang/Integer;

.field private zzcez:Lcom/google/android/gms/internal/ads/zzwx;

.field private zzcfa:Lcom/google/android/gms/internal/ads/zzwx;

.field private zzcfb:Lcom/google/android/gms/internal/ads/zzwx;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdrr;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxl;->zzceu:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxl;->zzcev:Lcom/google/android/gms/internal/ads/zzwt$zzn;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxl;->zzcew:Ljava/lang/Integer;

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxl;->zzcex:Lcom/google/android/gms/internal/ads/zzxo;

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxl;->zzcey:Ljava/lang/Integer;

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxl;->zzcez:Lcom/google/android/gms/internal/ads/zzwx;

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxl;->zzcfa:Lcom/google/android/gms/internal/ads/zzwx;

    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxl;->zzcfb:Lcom/google/android/gms/internal/ads/zzwx;

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrr;->zzhno:Lcom/google/android/gms/internal/ads/zzdrt;

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzhnx:I

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdrp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxl;->zzceu:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 15
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzdrp;->zzf(ILjava/lang/String;)V

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxl;->zzcex:Lcom/google/android/gms/internal/ads/zzxo;

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    .line 17
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzdrp;->zza(ILcom/google/android/gms/internal/ads/zzdrw;)V

    .line 18
    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzdrr;->zza(Lcom/google/android/gms/internal/ads/zzdrp;)V

    return-void
.end method

.method protected final zzor()I
    .locals 3

    .line 20
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzdrr;->zzor()I

    move-result v0

    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxl;->zzceu:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 23
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzdrp;->zzg(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxl;->zzcex:Lcom/google/android/gms/internal/ads/zzxo;

    if-eqz v1, :cond_1

    const/4 v2, 0x4

    .line 26
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzdrp;->zzb(ILcom/google/android/gms/internal/ads/zzdrw;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method
