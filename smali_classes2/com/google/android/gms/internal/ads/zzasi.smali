.class final Lcom/google/android/gms/internal/ads/zzasi;
.super Ljava/lang/Object;


# instance fields
.field public final zzdqg:J

.field public final zzdqh:Lcom/google/android/gms/internal/ads/zzase;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzasg;Lcom/google/android/gms/internal/ads/zzase;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzln()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzasi;->zzdqg:J

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzasi;->zzdqh:Lcom/google/android/gms/internal/ads/zzase;

    return-void
.end method
