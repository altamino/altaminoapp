.class final synthetic Lcom/google/android/gms/internal/ads/zzavl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzdsp:Lcom/google/android/gms/internal/ads/zzavg;

.field private final zzdsr:Ljava/lang/String;

.field private final zzdss:Lcom/google/android/gms/internal/ads/zzavv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzavg;Lcom/google/android/gms/internal/ads/zzavv;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavl;->zzdsp:Lcom/google/android/gms/internal/ads/zzavg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzavl;->zzdss:Lcom/google/android/gms/internal/ads/zzavv;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzavl;->zzdsr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavl;->zzdsp:Lcom/google/android/gms/internal/ads/zzavg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavl;->zzdss:Lcom/google/android/gms/internal/ads/zzavv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzavl;->zzdsr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzavg;->zza(Lcom/google/android/gms/internal/ads/zzavv;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
