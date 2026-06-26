.class final synthetic Lcom/google/android/gms/internal/ads/zzckd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbpb;


# instance fields
.field private final zzemf:Lcom/google/android/gms/internal/ads/zzbgz;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbgz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzckd;->zzemf:Lcom/google/android/gms/internal/ads/zzbgz;

    return-void
.end method

.method static zzn(Lcom/google/android/gms/internal/ads/zzbgz;)Lcom/google/android/gms/internal/ads/zzbpb;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzckd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzckd;-><init>(Lcom/google/android/gms/internal/ads/zzbgz;)V

    return-object v0
.end method


# virtual methods
.method public final getVideoController()Lcom/google/android/gms/internal/ads/zzaar;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckd;->zzemf:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgz;->zzyb()Lcom/google/android/gms/internal/ads/zzbhq;

    move-result-object v0

    return-object v0
.end method
