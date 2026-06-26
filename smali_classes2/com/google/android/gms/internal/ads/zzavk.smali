.class final synthetic Lcom/google/android/gms/internal/ads/zzavk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdsp:Lcom/google/android/gms/internal/ads/zzavg;

.field private final zzdsq:Lcom/google/android/gms/internal/ads/zzavw;

.field private final zzdsr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzavg;Lcom/google/android/gms/internal/ads/zzavw;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavk;->zzdsp:Lcom/google/android/gms/internal/ads/zzavg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzavk;->zzdsq:Lcom/google/android/gms/internal/ads/zzavw;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzavk;->zzdsr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavk;->zzdsp:Lcom/google/android/gms/internal/ads/zzavg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavk;->zzdsq:Lcom/google/android/gms/internal/ads/zzavw;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzavk;->zzdsr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzavg;->zza(Lcom/google/android/gms/internal/ads/zzavw;Ljava/lang/String;)V

    return-void
.end method
