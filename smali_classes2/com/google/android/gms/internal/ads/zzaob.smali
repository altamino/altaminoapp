.class final Lcom/google/android/gms/internal/ads/zzaob;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzdgx:Lcom/google/android/gms/internal/ads/zzanu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzanu;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzdgx:Lcom/google/android/gms/internal/ads/zzanu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzdgx:Lcom/google/android/gms/internal/ads/zzanu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzanu;->zza(Lcom/google/android/gms/internal/ads/zzanu;)Lcom/google/android/gms/internal/ads/zzamv;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzamv;->onAdOpened()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 5
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbad;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
