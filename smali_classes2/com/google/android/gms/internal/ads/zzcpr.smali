.class final synthetic Lcom/google/android/gms/internal/ads/zzcpr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbro;


# instance fields
.field private final zzgeb:Lcom/google/android/gms/internal/ads/zzcpw;

.field private final zzgec:Lcom/google/android/gms/internal/ads/zzaje;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcpw;Lcom/google/android/gms/internal/ads/zzaje;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpr;->zzgeb:Lcom/google/android/gms/internal/ads/zzcpw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcpr;->zzgec:Lcom/google/android/gms/internal/ads/zzaje;

    return-void
.end method


# virtual methods
.method public final onAdFailedToLoad(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpr;->zzgeb:Lcom/google/android/gms/internal/ads/zzcpw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcpr;->zzgec:Lcom/google/android/gms/internal/ads/zzaje;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcpw;->onAdFailedToLoad(I)V

    if-eqz v1, :cond_0

    .line 4
    :try_start_0
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzaje;->zzcr(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 7
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbad;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
