.class final Lcom/google/android/gms/internal/ads/zzbcm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzebm:Lcom/google/android/gms/internal/ads/zzbcd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbcd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcm;->zzebm:Lcom/google/android/gms/internal/ads/zzbcd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcm;->zzebm:Lcom/google/android/gms/internal/ads/zzbcd;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbcd;->zza(Lcom/google/android/gms/internal/ads/zzbcd;)Lcom/google/android/gms/internal/ads/zzbcn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcm;->zzebm:Lcom/google/android/gms/internal/ads/zzbcd;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbcd;->zza(Lcom/google/android/gms/internal/ads/zzbcd;)Lcom/google/android/gms/internal/ads/zzbcn;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbcn;->onPaused()V

    :cond_0
    return-void
.end method
