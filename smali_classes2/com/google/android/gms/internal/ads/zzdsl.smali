.class public final Lcom/google/android/gms/internal/ads/zzdsl;
.super Lcom/google/android/gms/internal/ads/zzdrr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdrr<",
        "Lcom/google/android/gms/internal/ads/zzdsl;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzhsm:[Lcom/google/android/gms/internal/ads/zzdsl;


# instance fields
.field public zzhsn:[B

.field public zzhso:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdrr;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsl;->zzhsn:[B

    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsl;->zzhso:[B

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrr;->zzhno:Lcom/google/android/gms/internal/ads/zzdrt;

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzhnx:I

    return-void
.end method

.method public static zzbaz()[Lcom/google/android/gms/internal/ads/zzdsl;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdsl;->zzhsm:[Lcom/google/android/gms/internal/ads/zzdsl;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdrv;->zzhnw:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdsl;->zzhsm:[Lcom/google/android/gms/internal/ads/zzdsl;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzdsl;

    .line 4
    sput-object v1, Lcom/google/android/gms/internal/ads/zzdsl;->zzhsm:[Lcom/google/android/gms/internal/ads/zzdsl;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdsl;->zzhsm:[Lcom/google/android/gms/internal/ads/zzdsl;

    return-object v0
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsl;->zzhsn:[B

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzdrp;->zza(I[B)V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsl;->zzhso:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 16
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzdrp;->zza(I[B)V

    .line 17
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzdrr;->zza(Lcom/google/android/gms/internal/ads/zzdrp;)V

    return-void
.end method

.method protected final zzor()I
    .locals 3

    .line 19
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzdrr;->zzor()I

    move-result v0

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsl;->zzhsn:[B

    const/4 v2, 0x1

    .line 21
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzdrp;->zzb(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsl;->zzhso:[B

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    .line 24
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzdrp;->zzb(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method
