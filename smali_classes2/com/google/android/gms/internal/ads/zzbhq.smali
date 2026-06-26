.class public final Lcom/google/android/gms/internal/ads/zzbhq;
.super Lcom/google/android/gms/internal/ads/zzaas;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzard;
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private zzaay:Z

.field private zzaaz:Z

.field private zzabv:I

.field private zzdfz:Lcom/google/android/gms/internal/ads/zzaau;

.field private final zzebt:Lcom/google/android/gms/internal/ads/zzbdf;

.field private final zzelv:Z

.field private final zzelw:Z

.field private zzelx:Z

.field private zzely:Z

.field private zzelz:F

.field private zzema:F

.field private zzemb:F


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbdf;FZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaas;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhq;->lock:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbhq;->zzely:Z

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhq;->zzebt:Lcom/google/android/gms/internal/ads/zzbdf;

    .line 5
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbhq;->zzelz:F

    .line 6
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzbhq;->zzelv:Z

    .line 7
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzbhq;->zzelw:Z

    return-void
.end method

.method private final zza(IIZZ)V
    .locals 8

    .line 86
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbm;->zzeae:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzbhs;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzbhs;-><init>(Lcom/google/android/gms/internal/ads/zzbhq;IIZZ)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zzf(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 30
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p2, v0

    :goto_0
    const-string v0, "action"

    .line 31
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbm;->zzeae:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbhr;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/zzbhr;-><init>(Lcom/google/android/gms/internal/ads/zzbhq;Ljava/util/Map;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final getAspectRatio()F
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhq;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 41
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbhq;->zzemb:F

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 42
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getPlaybackState()I
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhq;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 38
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbhq;->zzabv:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 39
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final isClickToExpandEnabled()Z
    .locals 2

    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbhq;->isCustomControlsEnabled()Z

    move-result v0

    .line 59
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhq;->lock:Ljava/lang/Object;

    monitor-enter v1

    if-nez v0, :cond_0

    .line 60
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbhq;->zzaaz:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbhq;->zzelw:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return v0

    .line 61
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isCustomControlsEnabled()Z
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhq;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbhq;->zzelv:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbhq;->zzaay:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 57
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final isMuted()Z
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhq;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 35
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbhq;->zzely:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final mute(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "mute"

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "unmute"

    :goto_0
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbhq;->zzf(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final pause()V
    .locals 2

    const-string v0, "pause"

    const/4 v1, 0x0

    .line 13
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbhq;->zzf(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final play()V
    .locals 2

    const-string v0, "play"

    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbhq;->zzf(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zza(FFIZF)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhq;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 73
    :try_start_0
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbhq;->zzelz:F

    .line 74
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbhq;->zzema:F

    .line 75
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbhq;->zzely:Z

    .line 76
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzbhq;->zzely:Z

    .line 77
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzbhq;->zzabv:I

    .line 78
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzbhq;->zzabv:I

    .line 79
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbhq;->zzemb:F

    .line 80
    iput p5, p0, Lcom/google/android/gms/internal/ads/zzbhq;->zzemb:F

    .line 81
    iget p5, p0, Lcom/google/android/gms/internal/ads/zzbhq;->zzemb:F

    sub-float/2addr p5, v1

    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p5

    const v1, 0x38d1b717    # 1.0E-4f

    cmpl-float p5, p5, v1

    if-lez p5, :cond_0

    .line 82
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzbhq;->zzebt:Lcom/google/android/gms/internal/ads/zzbdf;

    invoke-interface {p5}, Lcom/google/android/gms/internal/ads/zzbih;->getView()Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->invalidate()V

    .line 83
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-direct {p0, p2, p3, p1, p4}, Lcom/google/android/gms/internal/ads/zzbhq;->zza(IIZZ)V

    return-void

    :catchall_0
    move-exception p1

    .line 83
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaau;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhq;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 50
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhq;->zzdfz:Lcom/google/android/gms/internal/ads/zzaau;

    .line 51
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzabs()V
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhq;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 66
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbhq;->zzely:Z

    .line 67
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbhq;->zzabv:I

    const/4 v3, 0x3

    .line 68
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzbhq;->zzabv:I

    .line 69
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    invoke-direct {p0, v2, v3, v1, v1}, Lcom/google/android/gms/internal/ads/zzbhq;->zza(IIZZ)V

    return-void

    :catchall_0
    move-exception v1

    .line 69
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method final synthetic zzb(IIZZ)V
    .locals 6

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhq;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 90
    :goto_0
    :try_start_0
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzbhq;->zzelx:Z

    if-nez v3, :cond_1

    if-ne p2, v2, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz p1, :cond_2

    if-ne p2, v2, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-eqz p1, :cond_3

    const/4 v5, 0x2

    if-ne p2, v5, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    if-eqz p1, :cond_4

    const/4 p1, 0x3

    if-ne p2, p1, :cond_4

    const/4 p1, 0x1

    goto :goto_4

    :cond_4
    const/4 p1, 0x0

    :goto_4
    if-eq p3, p4, :cond_5

    const/4 p2, 0x1

    goto :goto_5

    :cond_5
    const/4 p2, 0x0

    .line 95
    :goto_5
    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzbhq;->zzelx:Z

    if-nez p3, :cond_6

    if-eqz v3, :cond_7

    :cond_6
    const/4 v1, 0x1

    :cond_7
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbhq;->zzelx:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_8

    .line 97
    :try_start_1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbhq;->zzdfz:Lcom/google/android/gms/internal/ads/zzaau;

    if-eqz p3, :cond_8

    .line 98
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbhq;->zzdfz:Lcom/google/android/gms/internal/ads/zzaau;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzaau;->onVideoStart()V

    goto :goto_6

    :catch_0
    move-exception p1

    goto :goto_7

    :cond_8
    :goto_6
    if-eqz v4, :cond_9

    .line 100
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbhq;->zzdfz:Lcom/google/android/gms/internal/ads/zzaau;

    if-eqz p3, :cond_9

    .line 101
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbhq;->zzdfz:Lcom/google/android/gms/internal/ads/zzaau;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzaau;->onVideoPlay()V

    :cond_9
    if-eqz v5, :cond_a

    .line 103
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbhq;->zzdfz:Lcom/google/android/gms/internal/ads/zzaau;

    if-eqz p3, :cond_a

    .line 104
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbhq;->zzdfz:Lcom/google/android/gms/internal/ads/zzaau;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzaau;->onVideoPause()V

    :cond_a
    if-eqz p1, :cond_c

    .line 106
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhq;->zzdfz:Lcom/google/android/gms/internal/ads/zzaau;

    if-eqz p1, :cond_b

    .line 107
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhq;->zzdfz:Lcom/google/android/gms/internal/ads/zzaau;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaau;->onVideoEnd()V

    .line 108
    :cond_b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhq;->zzebt:Lcom/google/android/gms/internal/ads/zzbdf;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbdf;->zzyk()V

    :cond_c
    if-eqz p2, :cond_d

    .line 110
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhq;->zzdfz:Lcom/google/android/gms/internal/ads/zzaau;

    if-eqz p1, :cond_d

    .line 111
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhq;->zzdfz:Lcom/google/android/gms/internal/ads/zzaau;

    invoke-interface {p1, p4}, Lcom/google/android/gms/internal/ads/zzaau;->onVideoMute(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    :goto_7
    :try_start_2
    const-string p2, "#007 Could not call remote method."

    .line 114
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbad;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    :cond_d
    :goto_8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzacd;)V
    .locals 8

    .line 18
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzacd;->zzaax:Z

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzacd;->zzaay:Z

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzacd;->zzaaz:Z

    .line 19
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbhq;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 20
    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbhq;->zzaay:Z

    .line 21
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbhq;->zzaaz:Z

    .line 22
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    move-object v3, v0

    if-eqz v1, :cond_1

    const-string v0, "1"

    goto :goto_1

    :cond_1
    const-string v0, "0"

    :goto_1
    move-object v5, v0

    if-eqz p1, :cond_2

    const-string p1, "1"

    goto :goto_2

    :cond_2
    const-string p1, "0"

    :goto_2
    move-object v7, p1

    const-string v2, "muteStart"

    const-string v4, "customControlsRequested"

    const-string v6, "clickToExpandRequested"

    .line 27
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/common/util/CollectionUtils;->mapOf(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "initialState"

    .line 28
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzbhq;->zzf(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :catchall_0
    move-exception p1

    .line 22
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zze(F)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhq;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 63
    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbhq;->zzema:F

    .line 64
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final synthetic zzj(Ljava/util/Map;)V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhq;->zzebt:Lcom/google/android/gms/internal/ads/zzbdf;

    const-string v1, "pubVideoCmd"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzaji;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzpv()F
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhq;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 44
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbhq;->zzelz:F

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 45
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzpw()F
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhq;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 47
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbhq;->zzema:F

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 48
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzpx()Lcom/google/android/gms/internal/ads/zzaau;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhq;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhq;->zzdfz:Lcom/google/android/gms/internal/ads/zzaau;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 54
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
