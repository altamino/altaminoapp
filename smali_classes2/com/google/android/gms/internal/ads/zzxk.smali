.class public final Lcom/google/android/gms/internal/ads/zzxk;
.super Lcom/google/android/gms/internal/ads/zzdrr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdrr<",
        "Lcom/google/android/gms/internal/ads/zzxk;",
        ">;"
    }
.end annotation


# instance fields
.field public zzcep:Ljava/lang/String;

.field private zzceq:[Lcom/google/android/gms/internal/ads/zzwt$zza;

.field private zzcer:Lcom/google/android/gms/internal/ads/zzwx;

.field private zzces:Lcom/google/android/gms/internal/ads/zzwx;

.field private zzcet:Lcom/google/android/gms/internal/ads/zzwx;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdrr;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzcep:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzwt$zza;

    .line 4
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzceq:[Lcom/google/android/gms/internal/ads/zzwt$zza;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzcer:Lcom/google/android/gms/internal/ads/zzwx;

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzces:Lcom/google/android/gms/internal/ads/zzwx;

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzcet:Lcom/google/android/gms/internal/ads/zzwx;

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrr;->zzhno:Lcom/google/android/gms/internal/ads/zzdrt;

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzhnx:I

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdrp;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzcep:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 12
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzdrp;->zzf(ILjava/lang/String;)V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzceq:[Lcom/google/android/gms/internal/ads/zzwt$zza;

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 14
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzceq:[Lcom/google/android/gms/internal/ads/zzwt$zza;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 15
    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 17
    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzdrp;->zze(ILcom/google/android/gms/internal/ads/zzdpk;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 19
    :cond_2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzdrr;->zza(Lcom/google/android/gms/internal/ads/zzdrp;)V

    return-void
.end method

.method protected final zzor()I
    .locals 4

    .line 21
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzdrr;->zzor()I

    move-result v0

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzcep:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 24
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzdrp;->zzg(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzceq:[Lcom/google/android/gms/internal/ads/zzwt$zza;

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 26
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzceq:[Lcom/google/android/gms/internal/ads/zzwt$zza;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 27
    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    .line 30
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzdni;->zzc(ILcom/google/android/gms/internal/ads/zzdpk;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method
