.class public final Lcom/google/android/gms/internal/ads/zzxj;
.super Lcom/google/android/gms/internal/ads/zzdrr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdrr<",
        "Lcom/google/android/gms/internal/ads/zzxj;",
        ">;"
    }
.end annotation


# instance fields
.field public zzcee:Ljava/lang/Integer;

.field private zzcef:Lcom/google/android/gms/internal/ads/zzwx;

.field private zzceg:Lcom/google/android/gms/internal/ads/zzwt$zzb;

.field public zzceh:Lcom/google/android/gms/internal/ads/zzxk;

.field private zzcei:[Lcom/google/android/gms/internal/ads/zzwt$zza;

.field private zzcej:Lcom/google/android/gms/internal/ads/zzwt$zzc;

.field private zzcek:Lcom/google/android/gms/internal/ads/zzwt$zzj;

.field private zzcel:Lcom/google/android/gms/internal/ads/zzwt$zzh;

.field private zzcem:Lcom/google/android/gms/internal/ads/zzwt$zze;

.field private zzcen:Lcom/google/android/gms/internal/ads/zzwt$zzf;

.field private zzceo:[Lcom/google/android/gms/internal/ads/zzxp;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdrr;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxj;->zzcee:Ljava/lang/Integer;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxj;->zzcef:Lcom/google/android/gms/internal/ads/zzwx;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxj;->zzceg:Lcom/google/android/gms/internal/ads/zzwt$zzb;

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxj;->zzceh:Lcom/google/android/gms/internal/ads/zzxk;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzwt$zza;

    .line 7
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzxj;->zzcei:[Lcom/google/android/gms/internal/ads/zzwt$zza;

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxj;->zzcej:Lcom/google/android/gms/internal/ads/zzwt$zzc;

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxj;->zzcek:Lcom/google/android/gms/internal/ads/zzwt$zzj;

    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxj;->zzcel:Lcom/google/android/gms/internal/ads/zzwt$zzh;

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxj;->zzcem:Lcom/google/android/gms/internal/ads/zzwt$zze;

    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxj;->zzcen:Lcom/google/android/gms/internal/ads/zzwt$zzf;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzxp;->zzos()[Lcom/google/android/gms/internal/ads/zzxp;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzxj;->zzceo:[Lcom/google/android/gms/internal/ads/zzxp;

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrr;->zzhno:Lcom/google/android/gms/internal/ads/zzdrt;

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzhnx:I

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdrp;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxj;->zzcee:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    .line 18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzdrp;->zzx(II)V

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxj;->zzceh:Lcom/google/android/gms/internal/ads/zzxk;

    if-eqz v0, :cond_1

    const/16 v1, 0xa

    .line 20
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzdrp;->zza(ILcom/google/android/gms/internal/ads/zzdrw;)V

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxj;->zzcei:[Lcom/google/android/gms/internal/ads/zzwt$zza;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 22
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzxj;->zzcei:[Lcom/google/android/gms/internal/ads/zzwt$zza;

    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 23
    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    const/16 v3, 0xb

    .line 25
    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/ads/zzdrp;->zze(ILcom/google/android/gms/internal/ads/zzdpk;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxj;->zzceo:[Lcom/google/android/gms/internal/ads/zzxp;

    if-eqz v0, :cond_5

    array-length v0, v0

    if-lez v0, :cond_5

    .line 28
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxj;->zzceo:[Lcom/google/android/gms/internal/ads/zzxp;

    array-length v2, v0

    if-ge v1, v2, :cond_5

    .line 29
    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    const/16 v2, 0x11

    .line 31
    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzdrp;->zza(ILcom/google/android/gms/internal/ads/zzdrw;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 33
    :cond_5
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzdrr;->zza(Lcom/google/android/gms/internal/ads/zzdrp;)V

    return-void
.end method

.method protected final zzor()I
    .locals 5

    .line 35
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzdrr;->zzor()I

    move-result v0

    .line 36
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxj;->zzcee:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const/4 v2, 0x7

    .line 38
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzdrp;->zzab(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 39
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxj;->zzceh:Lcom/google/android/gms/internal/ads/zzxk;

    if-eqz v1, :cond_1

    const/16 v2, 0xa

    .line 41
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzdrp;->zzb(ILcom/google/android/gms/internal/ads/zzdrw;)I

    move-result v1

    add-int/2addr v0, v1

    .line 42
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxj;->zzcei:[Lcom/google/android/gms/internal/ads/zzwt$zza;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    array-length v1, v1

    if-lez v1, :cond_4

    move v1, v0

    const/4 v0, 0x0

    .line 43
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzxj;->zzcei:[Lcom/google/android/gms/internal/ads/zzwt$zza;

    array-length v4, v3

    if-ge v0, v4, :cond_3

    .line 44
    aget-object v3, v3, v0

    if-eqz v3, :cond_2

    const/16 v4, 0xb

    .line 47
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/zzdni;->zzc(ILcom/google/android/gms/internal/ads/zzdpk;)I

    move-result v3

    add-int/2addr v1, v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 49
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxj;->zzceo:[Lcom/google/android/gms/internal/ads/zzxp;

    if-eqz v1, :cond_6

    array-length v1, v1

    if-lez v1, :cond_6

    .line 50
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxj;->zzceo:[Lcom/google/android/gms/internal/ads/zzxp;

    array-length v3, v1

    if-ge v2, v3, :cond_6

    .line 51
    aget-object v1, v1, v2

    if-eqz v1, :cond_5

    const/16 v3, 0x11

    .line 54
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzdrp;->zzb(ILcom/google/android/gms/internal/ads/zzdrw;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    return v0
.end method
