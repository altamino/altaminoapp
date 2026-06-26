.class final Lcom/google/android/gms/internal/ads/zzbcv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzecn:Lcom/google/android/gms/internal/ads/zzbcq;

.field private final synthetic zzeco:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbcq;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcv;->zzecn:Lcom/google/android/gms/internal/ads/zzbcq;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbcv;->zzeco:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcv;->zzecn:Lcom/google/android/gms/internal/ads/zzbcq;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "isVisible"

    aput-object v3, v1, v2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbcv;->zzeco:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, "windowVisibilityChanged"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbcq;->zza(Lcom/google/android/gms/internal/ads/zzbcq;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
