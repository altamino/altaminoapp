.class public final Lcom/google/android/gms/internal/ads/zzccy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbrx;


# instance fields
.field private final zzfsy:Lcom/google/android/gms/internal/ads/zzams;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzams;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccy;->zzfsy:Lcom/google/android/gms/internal/ads/zzams;

    return-void
.end method


# virtual methods
.method public final zzbp(Landroid/content/Context;)V
    .locals 1

    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzccy;->zzfsy:Lcom/google/android/gms/internal/ads/zzams;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzams;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Nonagon: Can\'t invoke onPause for rewarded video."

    .line 7
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzbq(Landroid/content/Context;)V
    .locals 1

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccy;->zzfsy:Lcom/google/android/gms/internal/ads/zzams;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzams;->resume()V

    if-eqz p1, :cond_0

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccy;->zzfsy:Lcom/google/android/gms/internal/ads/zzams;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzams;->zzr(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "Nonagon: Can\'t invoke onResume for rewarded video."

    .line 14
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzbr(Landroid/content/Context;)V
    .locals 1

    .line 16
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzccy;->zzfsy:Lcom/google/android/gms/internal/ads/zzams;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzams;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Nonagon: Can\'t invoke onDestroy for rewarded video."

    .line 19
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
