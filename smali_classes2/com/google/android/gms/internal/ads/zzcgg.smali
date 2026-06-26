.class final synthetic Lcom/google/android/gms/internal/ads/zzcgg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdeb:Ljava/lang/Object;

.field private final zzftt:Ljava/lang/String;

.field private final zzfvf:Lcom/google/android/gms/internal/ads/zzcgb;

.field private final zzfvh:Lcom/google/android/gms/internal/ads/zzbbr;

.field private final zzfvi:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcgb;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbbr;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgg;->zzfvf:Lcom/google/android/gms/internal/ads/zzcgb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcgg;->zzdeb:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcgg;->zzfvh:Lcom/google/android/gms/internal/ads/zzbbr;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcgg;->zzftt:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzcgg;->zzfvi:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgg;->zzfvf:Lcom/google/android/gms/internal/ads/zzcgb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgg;->zzdeb:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcgg;->zzfvh:Lcom/google/android/gms/internal/ads/zzbbr;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcgg;->zzftt:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzcgg;->zzfvi:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzcgb;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbbr;Ljava/lang/String;J)V

    return-void
.end method
