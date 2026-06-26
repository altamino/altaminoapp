.class final synthetic Lcom/google/android/gms/internal/ads/zzckn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbpb;


# instance fields
.field private final zzfzv:Lcom/google/android/gms/internal/ads/zzaov;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzaov;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzckn;->zzfzv:Lcom/google/android/gms/internal/ads/zzaov;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzaov;)Lcom/google/android/gms/internal/ads/zzbpb;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzckn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzckn;-><init>(Lcom/google/android/gms/internal/ads/zzaov;)V

    return-object v0
.end method


# virtual methods
.method public final getVideoController()Lcom/google/android/gms/internal/ads/zzaar;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckn;->zzfzv:Lcom/google/android/gms/internal/ads/zzaov;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaov;->getVideoController()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v0

    return-object v0
.end method
