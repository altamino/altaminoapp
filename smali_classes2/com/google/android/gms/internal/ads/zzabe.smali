.class public final Lcom/google/android/gms/internal/ads/zzabe;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzard;
.end annotation


# static fields
.field private static final lock:Ljava/lang/Object;

.field private static zzcjo:Lcom/google/android/gms/internal/ads/zzabe;


# instance fields
.field private zzcjp:Lcom/google/android/gms/internal/ads/zzaab;

.field private zzcjq:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

.field private zzcjr:Lcom/google/android/gms/internal/ads/zztw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzabe;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzqf()Lcom/google/android/gms/internal/ads/zzabe;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabe;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabe;->zzcjo:Lcom/google/android/gms/internal/ads/zzabe;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzabe;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzabe;-><init>()V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzabe;->zzcjo:Lcom/google/android/gms/internal/ads/zzabe;

    .line 4
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabe;->zzcjo:Lcom/google/android/gms/internal/ads/zzabe;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final getRewardedVideoAdInstance(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;
    .locals 4

    .line 39
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabe;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzabe;->zzcjq:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    if-eqz v1, :cond_0

    .line 41
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzabe;->zzcjq:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    monitor-exit v0

    return-object p1

    .line 42
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzamo;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzamo;-><init>()V

    .line 43
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpb()Lcom/google/android/gms/internal/ads/zzyh;

    move-result-object v2

    .line 44
    new-instance v3, Lcom/google/android/gms/internal/ads/zzyq;

    invoke-direct {v3, v2, p1, v1}, Lcom/google/android/gms/internal/ads/zzyq;-><init>(Lcom/google/android/gms/internal/ads/zzyh;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzamp;)V

    const/4 v1, 0x0

    .line 46
    invoke-virtual {v3, p1, v1}, Lcom/google/android/gms/internal/ads/zzys;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v1

    .line 47
    check-cast v1, Lcom/google/android/gms/internal/ads/zzasw;

    .line 49
    new-instance v2, Lcom/google/android/gms/internal/ads/zzatj;

    invoke-direct {v2, p1, v1}, Lcom/google/android/gms/internal/ads/zzatj;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzasw;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzabe;->zzcjq:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    .line 50
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzabe;->zzcjq:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 51
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final getVersionString()Ljava/lang/String;
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabe;->zzcjp:Lcom/google/android/gms/internal/ads/zzaab;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "MobileAds.initialize() must be called prior to getting version string."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabe;->zzcjp:Lcom/google/android/gms/internal/ads/zzaab;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaab;->getVersionString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Unable to get version string."

    .line 90
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbad;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, ""

    return-object v0
.end method

.method public final openDebugMenu(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabe;->zzcjp:Lcom/google/android/gms/internal/ads/zzaab;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "MobileAds.initialize() must be called prior to opening debug menu."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabe;->zzcjp:Lcom/google/android/gms/internal/ads/zzaab;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaab;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Unable to open debug menu."

    .line 85
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final registerRtbAdapter(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;",
            ">;)V"
        }
    .end annotation

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabe;->zzcjp:Lcom/google/android/gms/internal/ads/zzaab;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaab;->zzbv(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Unable to register RtbAdapter"

    .line 95
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setAppMuted(Z)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabe;->zzcjp:Lcom/google/android/gms/internal/ads/zzaab;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "MobileAds.initialize() must be called prior to setting app muted state."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabe;->zzcjp:Lcom/google/android/gms/internal/ads/zzaab;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaab;->setAppMuted(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Unable to set app mute state."

    .line 71
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setAppVolume(F)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpg-float v2, v2, p1

    if-gtz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "The app volume must be a value between 0 and 1 inclusive."

    .line 52
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 53
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzabe;->zzcjp:Lcom/google/android/gms/internal/ads/zzaab;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "MobileAds.initialize() must be called prior to setting the app volume."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabe;->zzcjp:Lcom/google/android/gms/internal/ads/zzaab;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaab;->setAppVolume(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Unable to set app volume."

    .line 57
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzabi;Lcom/google/android/gms/internal/ads/zztx;)V
    .locals 2

    .line 6
    sget-object p3, Lcom/google/android/gms/internal/ads/zzabe;->lock:Ljava/lang/Object;

    monitor-enter p3

    .line 7
    :try_start_0
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzabe;->zzcjp:Lcom/google/android/gms/internal/ads/zzaab;

    if-eqz p4, :cond_0

    .line 8
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 11
    :try_start_1
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzami;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpb()Lcom/google/android/gms/internal/ads/zzyh;

    move-result-object p4

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/zzyn;

    invoke-direct {v0, p4, p1}, Lcom/google/android/gms/internal/ads/zzyn;-><init>(Lcom/google/android/gms/internal/ads/zzyh;Landroid/content/Context;)V

    const/4 p4, 0x0

    .line 16
    invoke-virtual {v0, p1, p4}, Lcom/google/android/gms/internal/ads/zzys;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v0

    .line 17
    check-cast v0, Lcom/google/android/gms/internal/ads/zzaab;

    .line 18
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzabe;->zzcjp:Lcom/google/android/gms/internal/ads/zzaab;

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabe;->zzcjp:Lcom/google/android/gms/internal/ads/zzaab;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzamo;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzamo;-><init>()V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzaab;->zza(Lcom/google/android/gms/internal/ads/zzamp;)V

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabe;->zzcjp:Lcom/google/android/gms/internal/ads/zzaab;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaab;->zza()V

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabe;->zzcjp:Lcom/google/android/gms/internal/ads/zzaab;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzabf;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzabf;-><init>(Lcom/google/android/gms/internal/ads/zzabe;Landroid/content/Context;)V

    .line 22
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 23
    invoke-interface {v0, p2, v1}, Lcom/google/android/gms/internal/ads/zzaab;->zzb(Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 24
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzacu;->initialize(Landroid/content/Context;)V

    .line 25
    sget-object p1, Lcom/google/android/gms/internal/ads/zzacu;->zzcuw:Lcom/google/android/gms/internal/ads/zzacj;

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object p1

    .line 27
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/ads/zzacu;->zzcvc:Lcom/google/android/gms/internal/ads/zzacj;

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object p1

    .line 29
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p4, 0x1

    :cond_1
    if-nez p4, :cond_2

    const-string p1, "Google Mobile Ads SDK initialization functionality unavailable for this session. Ad requests can be made at any time."

    .line 31
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzen(Ljava/lang/String;)V

    .line 33
    new-instance p1, Lcom/google/android/gms/internal/ads/zzabg;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzabg;-><init>(Lcom/google/android/gms/internal/ads/zzabe;)V

    .line 34
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabe;->zzcjr:Lcom/google/android/gms/internal/ads/zztw;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "MobileAdsSettingManager initialization failed"

    .line 37
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    :cond_2
    :goto_0
    monitor-exit p3

    return-void

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Context cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 38
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final zzpq()F
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabe;->zzcjp:Lcom/google/android/gms/internal/ads/zzaab;

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    return v1

    .line 62
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaab;->zzpq()F

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Unable to get app volume."

    .line 65
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzbad;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return v1
.end method

.method public final zzpr()Z
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabe;->zzcjp:Lcom/google/android/gms/internal/ads/zzaab;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 76
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaab;->zzpr()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Unable to get app mute state."

    .line 79
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzbad;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return v1
.end method
