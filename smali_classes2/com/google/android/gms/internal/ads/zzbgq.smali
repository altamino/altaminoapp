.class final synthetic Lcom/google/android/gms/internal/ads/zzbgq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzecm:Z

.field private final zzega:J

.field private final zzein:Lcom/google/android/gms/internal/ads/zzbdf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbdf;ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgq;->zzein:Lcom/google/android/gms/internal/ads/zzbdf;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbgq;->zzecm:Z

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzbgq;->zzega:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgq;->zzein:Lcom/google/android/gms/internal/ads/zzbdf;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbgq;->zzecm:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbgq;->zzega:J

    .line 2
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbdf;->zza(ZJ)V

    return-void
.end method
