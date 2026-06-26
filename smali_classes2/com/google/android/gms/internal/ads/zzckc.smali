.class final synthetic Lcom/google/android/gms/internal/ads/zzckc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbal;


# instance fields
.field private final zzfhm:Lcom/google/android/gms/internal/ads/zzcxm;

.field private final zzfra:Lcom/google/android/gms/internal/ads/zzcxu;

.field private final zzfzq:Lcom/google/android/gms/internal/ads/zzckb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzckb;Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzcxm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzckc;->zzfzq:Lcom/google/android/gms/internal/ads/zzckb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzckc;->zzfra:Lcom/google/android/gms/internal/ads/zzcxu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzckc;->zzfhm:Lcom/google/android/gms/internal/ads/zzcxm;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbbh;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckc;->zzfzq:Lcom/google/android/gms/internal/ads/zzckb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzckc;->zzfra:Lcom/google/android/gms/internal/ads/zzcxu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzckc;->zzfhm:Lcom/google/android/gms/internal/ads/zzcxm;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzckb;->zza(Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzcxm;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object p1

    return-object p1
.end method
