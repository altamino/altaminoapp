.class final synthetic Lcom/google/android/gms/internal/ads/zzccs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzu;


# instance fields
.field private final zzfss:Lcom/google/android/gms/internal/ads/zzbse;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccs;->zzfss:Lcom/google/android/gms/internal/ads/zzbse;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzbse;)Lcom/google/android/gms/ads/internal/overlay/zzu;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzccs;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzccs;-><init>(Lcom/google/android/gms/internal/ads/zzbse;)V

    return-object v0
.end method


# virtual methods
.method public final zztq()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccs;->zzfss:Lcom/google/android/gms/internal/ads/zzbse;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbse;->onAdLeftApplication()V

    return-void
.end method
