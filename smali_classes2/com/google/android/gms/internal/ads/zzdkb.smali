.class public final Lcom/google/android/gms/internal/ads/zzdkb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdbp;


# static fields
.field private static final zzgpx:[B


# instance fields
.field private final zzgyo:Ljava/security/interfaces/ECPrivateKey;

.field private final zzgyp:Lcom/google/android/gms/internal/ads/zzdkd;

.field private final zzgyq:Ljava/lang/String;

.field private final zzgyr:[B

.field private final zzgys:Lcom/google/android/gms/internal/ads/zzdkv;

.field private final zzgyt:Lcom/google/android/gms/internal/ads/zzdka;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 9
    sput-object v0, Lcom/google/android/gms/internal/ads/zzdkb;->zzgpx:[B

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;Lcom/google/android/gms/internal/ads/zzdkv;Lcom/google/android/gms/internal/ads/zzdka;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkb;->zzgyo:Ljava/security/interfaces/ECPrivateKey;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdkd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdkd;-><init>(Ljava/security/interfaces/ECPrivateKey;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkb;->zzgyp:Lcom/google/android/gms/internal/ads/zzdkd;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdkb;->zzgyr:[B

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdkb;->zzgyq:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdkb;->zzgys:Lcom/google/android/gms/internal/ads/zzdkv;

    .line 7
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdkb;->zzgyt:Lcom/google/android/gms/internal/ads/zzdka;

    return-void
.end method
