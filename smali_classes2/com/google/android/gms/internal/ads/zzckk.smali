.class final synthetic Lcom/google/android/gms/internal/ads/zzckk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbpb;


# instance fields
.field private final zzfzu:Lcom/google/android/gms/internal/ads/zzams;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzckk;->zzfzu:Lcom/google/android/gms/internal/ads/zzams;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzams;)Lcom/google/android/gms/internal/ads/zzbpb;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzckk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzckk;-><init>(Lcom/google/android/gms/internal/ads/zzams;)V

    return-object v0
.end method


# virtual methods
.method public final getVideoController()Lcom/google/android/gms/internal/ads/zzaar;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckk;->zzfzu:Lcom/google/android/gms/internal/ads/zzams;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzams;->getVideoController()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v0

    return-object v0
.end method
