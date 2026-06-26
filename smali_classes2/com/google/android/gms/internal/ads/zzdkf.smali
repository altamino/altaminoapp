.class public final Lcom/google/android/gms/internal/ads/zzdkf;
.super Ljava/lang/Object;


# instance fields
.field private final zzgyw:Lcom/google/android/gms/internal/ads/zzdlj;

.field private final zzgyx:Lcom/google/android/gms/internal/ads/zzdlj;


# direct methods
.method public constructor <init>([B[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdlj;->zzv([B)Lcom/google/android/gms/internal/ads/zzdlj;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkf;->zzgyw:Lcom/google/android/gms/internal/ads/zzdlj;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdlj;->zzv([B)Lcom/google/android/gms/internal/ads/zzdlj;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkf;->zzgyx:Lcom/google/android/gms/internal/ads/zzdlj;

    return-void
.end method


# virtual methods
.method public final zzauw()[B
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkf;->zzgyw:Lcom/google/android/gms/internal/ads/zzdlj;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdlj;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public final zzaux()[B
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkf;->zzgyx:Lcom/google/android/gms/internal/ads/zzdlj;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdlj;->getBytes()[B

    move-result-object v0

    return-object v0
.end method
