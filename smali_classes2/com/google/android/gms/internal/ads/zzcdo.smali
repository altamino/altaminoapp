.class final Lcom/google/android/gms/internal/ads/zzcdo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/zzj;


# instance fields
.field private final synthetic zzfth:Lcom/google/android/gms/internal/ads/zzcdn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcdn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdo;->zzfth:Lcom/google/android/gms/internal/ads/zzcdn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzlc()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdo;->zzfth:Lcom/google/android/gms/internal/ads/zzcdn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcdn;->zza(Lcom/google/android/gms/internal/ads/zzcdn;)Lcom/google/android/gms/internal/ads/zzbtb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbtb;->onPause()V

    return-void
.end method

.method public final zzld()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdo;->zzfth:Lcom/google/android/gms/internal/ads/zzcdn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcdn;->zza(Lcom/google/android/gms/internal/ads/zzcdn;)Lcom/google/android/gms/internal/ads/zzbtb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbtb;->onResume()V

    return-void
.end method
