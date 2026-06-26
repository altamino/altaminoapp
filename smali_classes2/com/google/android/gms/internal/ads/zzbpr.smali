.class public final Lcom/google/android/gms/internal/ads/zzbpr;
.super Ljava/lang/Object;


# instance fields
.field private final zzffc:Lcom/google/android/gms/internal/ads/zzcxm;

.field private final zzfis:Ljava/lang/String;

.field private final zzfje:Lcom/google/android/gms/internal/ads/zzcxu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzcxm;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpr;->zzfje:Lcom/google/android/gms/internal/ads/zzcxu;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbpr;->zzffc:Lcom/google/android/gms/internal/ads/zzcxm;

    if-nez p3, :cond_0

    const-string p3, "com.google.ads.mediation.admob.AdMobAdapter"

    .line 5
    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbpr;->zzfis:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzaga()Lcom/google/android/gms/internal/ads/zzcxu;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpr;->zzfje:Lcom/google/android/gms/internal/ads/zzcxu;

    return-object v0
.end method

.method public final zzagb()Lcom/google/android/gms/internal/ads/zzcxm;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpr;->zzffc:Lcom/google/android/gms/internal/ads/zzcxm;

    return-object v0
.end method

.method public final zzagc()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpr;->zzfis:Ljava/lang/String;

    return-object v0
.end method
