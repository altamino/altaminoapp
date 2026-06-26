.class final synthetic Lcom/google/android/gms/internal/ads/zzbdv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzecm:Z

.field private final zzefz:Lcom/google/android/gms/internal/ads/zzbdq;

.field private final zzega:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbdq;ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdv;->zzefz:Lcom/google/android/gms/internal/ads/zzbdq;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbdv;->zzecm:Z

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzbdv;->zzega:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdv;->zzefz:Lcom/google/android/gms/internal/ads/zzbdq;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbdv;->zzecm:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbdv;->zzega:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbdq;->zzc(ZJ)V

    return-void
.end method
