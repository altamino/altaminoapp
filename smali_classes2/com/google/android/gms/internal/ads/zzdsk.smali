.class public final Lcom/google/android/gms/internal/ads/zzdsk;
.super Lcom/google/android/gms/internal/ads/zzdrr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdrr<",
        "Lcom/google/android/gms/internal/ads/zzdsk;",
        ">;"
    }
.end annotation


# instance fields
.field public zzdrr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdrr;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzdrr:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrr;->zzhno:Lcom/google/android/gms/internal/ads/zzdrt;

    const/4 v0, -0x1

    .line 5
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

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzdrr:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 8
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzdrp;->zzf(ILjava/lang/String;)V

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzdrr;->zza(Lcom/google/android/gms/internal/ads/zzdrp;)V

    return-void
.end method

.method protected final zzor()I
    .locals 3

    .line 11
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzdrr;->zzor()I

    move-result v0

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzdrr:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 14
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzdrp;->zzg(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method
