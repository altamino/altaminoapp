.class final Lcom/google/android/gms/internal/ads/zzdmz;
.super Ljava/lang/Object;


# instance fields
.field private final buffer:[B

.field private final zzhcx:Lcom/google/android/gms/internal/ads/zzdni;


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmz;->buffer:[B

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmz;->buffer:[B

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdni;->zzab([B)Lcom/google/android/gms/internal/ads/zzdni;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmz;->zzhcx:Lcom/google/android/gms/internal/ads/zzdni;

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/gms/internal/ads/zzdms;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdmz;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final zzavs()Lcom/google/android/gms/internal/ads/zzdmr;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmz;->zzhcx:Lcom/google/android/gms/internal/ads/zzdni;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdni;->zzawv()V

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdnb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmz;->buffer:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdnb;-><init>([B)V

    return-object v0
.end method

.method public final zzavt()Lcom/google/android/gms/internal/ads/zzdni;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmz;->zzhcx:Lcom/google/android/gms/internal/ads/zzdni;

    return-object v0
.end method
