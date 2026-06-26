.class public final Lcom/google/android/gms/internal/ads/zzcqj;
.super Lcom/google/android/gms/internal/ads/zzasx;


# instance fields
.field private zzfsq:Lcom/google/android/gms/internal/ads/zzbss;

.field private final zzgbc:Lcom/google/android/gms/internal/ads/zzbjm;

.field private final zzgdr:Landroid/content/Context;

.field private final zzgds:Lcom/google/android/gms/internal/ads/zzcxx;

.field private final zzgeh:Lcom/google/android/gms/internal/ads/zzcpy;

.field private zzgek:Lcom/google/android/gms/internal/ads/zzbbh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbbh<",
            "Lcom/google/android/gms/internal/ads/zzcdb;",
            ">;"
        }
    .end annotation
.end field

.field private zzgez:Z

.field private zzgfc:Lcom/google/android/gms/internal/ads/zzcdb;

.field private zzgfg:Z

.field private final zzgfl:Lcom/google/android/gms/internal/ads/zzcqc;

.field private final zzgfm:Lcom/google/android/gms/internal/ads/zzcpx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbjm;Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzasx;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcqc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcqc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgfl:Lcom/google/android/gms/internal/ads/zzcqc;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcpx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcpx;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgfm:Lcom/google/android/gms/internal/ads/zzcpx;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcpy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcpy;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgeh:Lcom/google/android/gms/internal/ads/zzcpy;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgfg:Z

    .line 6
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcxx;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzcxx;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgds:Lcom/google/android/gms/internal/ads/zzcxx;

    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgez:Z

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgbc:Lcom/google/android/gms/internal/ads/zzbjm;

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgdr:Landroid/content/Context;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcqj;Lcom/google/android/gms/internal/ads/zzbbh;)Lcom/google/android/gms/internal/ads/zzbbh;
    .locals 0

    const/4 p1, 0x0

    .line 130
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgek:Lcom/google/android/gms/internal/ads/zzbbh;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcqj;Lcom/google/android/gms/internal/ads/zzcdb;)Lcom/google/android/gms/internal/ads/zzcdb;
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgfc:Lcom/google/android/gms/internal/ads/zzcdb;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcqj;)Z
    .locals 0

    .line 132
    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgfg:Z

    return p0
.end method

.method private final declared-synchronized zzalf()Z
    .locals 1

    monitor-enter p0

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgfc:Lcom/google/android/gms/internal/ads/zzcdb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgfc:Lcom/google/android/gms/internal/ads/zzcdb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdb;->isClosed()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public final destroy()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzcqj;->zzn(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void
.end method

.method public final getAdMetadata()Landroid/os/Bundle;
    .locals 1

    const-string v0, "getAdMetadata can only be called from the UI thread."

    .line 107
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 108
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgfg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzfsq:Lcom/google/android/gms/internal/ads/zzbss;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbss;->getAdMetadata()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 110
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final declared-synchronized getMediationAdapterClassName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgfc:Lcom/google/android/gms/internal/ads/zzcdb;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgfc:Lcom/google/android/gms/internal/ads/zzcdb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbpc;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 95
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isLoaded()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "isLoaded must be called on the main UI thread."

    .line 96
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 97
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcqj;->zzalf()Z

    move-result v0

    return v0
.end method

.method public final pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzcqj;->zzl(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void
.end method

.method public final resume()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzcqj;->zzm(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void
.end method

.method public final setAppPackageName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final declared-synchronized setCustomData(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 118
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzacu;->zzcow:Lcom/google/android/gms/internal/ads/zzacj;

    .line 119
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object v0

    .line 120
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 121
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "#008 Must be called on the main UI thread.: setCustomData"

    .line 122
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgds:Lcom/google/android/gms/internal/ads/zzcxx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcxx;->zzfv(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcxx;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setImmersiveMode(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "setImmersiveMode must be called on the main UI thread."

    .line 125
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 126
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgez:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setUserId(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "setUserId must be called on the main UI thread."

    .line 115
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgds:Lcom/google/android/gms/internal/ads/zzcxx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcxx;->zzfu(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcxx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized show()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 79
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzcqj;->zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzasu;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread.: setRewardedAdSkuListener"

    .line 101
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgfl:Lcom/google/android/gms/internal/ads/zzcqc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcqc;->zzb(Lcom/google/android/gms/internal/ads/zzasu;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzatb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "setRewardedVideoAdListener can only be called from the UI thread."

    .line 98
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgfl:Lcom/google/android/gms/internal/ads/zzcqc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcqc;->zzb(Lcom/google/android/gms/internal/ads/zzatb;)V

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzath;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "loadAd must be called on the main UI thread."

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgfg:Z

    .line 14
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzath;->zzchk:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string p1, "Ad unit ID should not be null for rewarded video ad."

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzen(Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgbc:Lcom/google/android/gms/internal/ads/zzbjm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbjm;->zzace()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcqk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcqk;-><init>(Lcom/google/android/gms/internal/ads/zzcqj;)V

    .line 17
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    return-void

    .line 19
    :cond_0
    :try_start_1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzath;->zzchk:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzacw;->zzcg(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 20
    monitor-exit p0

    return-void

    .line 21
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgek:Lcom/google/android/gms/internal/ads/zzbbh;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    .line 22
    monitor-exit p0

    return-void

    .line 23
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcqj;->zzalf()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzacu;->zzcvh:Lcom/google/android/gms/internal/ads/zzacj;

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_3

    .line 26
    monitor-exit p0

    return-void

    .line 27
    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgdr:Landroid/content/Context;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzath;->zzdlk:Lcom/google/android/gms/internal/ads/zzxz;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzxz;->zzcgq:Z

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzcya;->zze(Landroid/content/Context;Z)V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgfc:Lcom/google/android/gms/internal/ads/zzcdb;

    .line 29
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgds:Lcom/google/android/gms/internal/ads/zzcxx;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzath;->zzchk:Ljava/lang/String;

    .line 30
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzcxx;->zzft(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcxx;

    move-result-object v1

    .line 31
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyd;->zzou()Lcom/google/android/gms/internal/ads/zzyd;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzcxx;->zzd(Lcom/google/android/gms/internal/ads/zzyd;)Lcom/google/android/gms/internal/ads/zzcxx;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzath;->zzdlk:Lcom/google/android/gms/internal/ads/zzxz;

    .line 32
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzcxx;->zzg(Lcom/google/android/gms/internal/ads/zzxz;)Lcom/google/android/gms/internal/ads/zzcxx;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcxx;->zzamq()Lcom/google/android/gms/internal/ads/zzcxv;

    move-result-object p1

    .line 35
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgbc:Lcom/google/android/gms/internal/ads/zzbjm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbjm;->zzacm()Lcom/google/android/gms/internal/ads/zzcdg;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbqy$zza;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzbqy$zza;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgdr:Landroid/content/Context;

    .line 36
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbqy$zza;->zzbt(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbqy$zza;

    move-result-object v2

    .line 37
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzbqy$zza;->zza(Lcom/google/android/gms/internal/ads/zzcxv;)Lcom/google/android/gms/internal/ads/zzbqy$zza;

    move-result-object p1

    .line 38
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbqy$zza;->zzfg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbqy$zza;

    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbqy$zza;->zzagh()Lcom/google/android/gms/internal/ads/zzbqy;

    move-result-object p1

    .line 40
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzcdg;->zzd(Lcom/google/android/gms/internal/ads/zzbqy;)Lcom/google/android/gms/internal/ads/zzcdg;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbtv$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbtv$zza;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgfl:Lcom/google/android/gms/internal/ads/zzcqc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgbc:Lcom/google/android/gms/internal/ads/zzbjm;

    .line 41
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbjm;->zzace()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbtv$zza;->zza(Lcom/google/android/gms/internal/ads/zzbrl;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzbtv$zza;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcqn;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgfl:Lcom/google/android/gms/internal/ads/zzcqc;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzcqn;-><init>(Lcom/google/android/gms/internal/ads/zzcqj;Lcom/google/android/gms/internal/ads/zzbsr;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgbc:Lcom/google/android/gms/internal/ads/zzbjm;

    .line 42
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbjm;->zzace()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbtv$zza;->zza(Lcom/google/android/gms/internal/ads/zzbsr;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzbtv$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgfl:Lcom/google/android/gms/internal/ads/zzcqc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgbc:Lcom/google/android/gms/internal/ads/zzbjm;

    .line 43
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbjm;->zzace()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbtv$zza;->zza(Lcom/google/android/gms/internal/ads/zzbro;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzbtv$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgfm:Lcom/google/android/gms/internal/ads/zzcpx;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgbc:Lcom/google/android/gms/internal/ads/zzbjm;

    .line 44
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbjm;->zzace()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbtv$zza;->zza(Lcom/google/android/gms/ads/reward/AdMetadataListener;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzbtv$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgeh:Lcom/google/android/gms/internal/ads/zzcpy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgbc:Lcom/google/android/gms/internal/ads/zzbjm;

    .line 45
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbjm;->zzace()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbtv$zza;->zza(Lcom/google/android/gms/ads/doubleclick/AppEventListener;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzbtv$zza;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbtv$zza;->zzagt()Lcom/google/android/gms/internal/ads/zzbtv;

    move-result-object v0

    .line 47
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzcdg;->zzd(Lcom/google/android/gms/internal/ads/zzbtv;)Lcom/google/android/gms/internal/ads/zzcdg;

    move-result-object p1

    .line 48
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcdg;->zzaeh()Lcom/google/android/gms/internal/ads/zzcdf;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcdf;->zzaei()Lcom/google/android/gms/internal/ads/zzbss;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzfsq:Lcom/google/android/gms/internal/ads/zzbss;

    .line 51
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcdf;->zzadu()Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgek:Lcom/google/android/gms/internal/ads/zzbbh;

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgek:Lcom/google/android/gms/internal/ads/zzbbh;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcql;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzcql;-><init>(Lcom/google/android/gms/internal/ads/zzcqj;Lcom/google/android/gms/internal/ads/zzcdf;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgbc:Lcom/google/android/gms/internal/ads/zzbjm;

    .line 53
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbjm;->zzace()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 54
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbar;->zza(Lcom/google/android/gms/internal/ads/zzbbh;Lcom/google/android/gms/internal/ads/zzban;Ljava/util/concurrent/Executor;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzzp;)V
    .locals 2

    const-string v0, "setAdMetadataListener can only be called from the UI thread."

    .line 104
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgfm:Lcom/google/android/gms/internal/ads/zzcpx;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcqm;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzcqm;-><init>(Lcom/google/android/gms/internal/ads/zzcqj;Lcom/google/android/gms/internal/ads/zzzp;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcpx;->zzb(Lcom/google/android/gms/internal/ads/zzzp;)V

    return-void
.end method

.method final zzalg()V
    .locals 1

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgfg:Z

    return-void
.end method

.method final zzalh()V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgfm:Lcom/google/android/gms/internal/ads/zzcpx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcpx;->onAdMetadataChanged()V

    return-void
.end method

.method final synthetic zzali()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgfl:Lcom/google/android/gms/internal/ads/zzcqc;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcqc;->onAdFailedToLoad(I)V

    return-void
.end method

.method public final declared-synchronized zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "showAd must be called on the main UI thread."

    .line 81
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgfc:Lcom/google/android/gms/internal/ads/zzcdb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 83
    monitor-exit p0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 86
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    .line 87
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 88
    check-cast p1, Landroid/app/Activity;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 91
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgfc:Lcom/google/android/gms/internal/ads/zzcdb;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgez:Z

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcdb;->zzb(ZLandroid/app/Activity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzl(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "pause must be called on the main UI thread."

    .line 67
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgfc:Lcom/google/android/gms/internal/ads/zzcdb;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 69
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 70
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgfc:Lcom/google/android/gms/internal/ads/zzcdb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdb;->zzadd()Lcom/google/android/gms/internal/ads/zzbry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbry;->zzbp(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzm(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "resume must be called on the main UI thread."

    .line 74
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgfc:Lcom/google/android/gms/internal/ads/zzcdb;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 76
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 77
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgfc:Lcom/google/android/gms/internal/ads/zzcdb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdb;->zzadd()Lcom/google/android/gms/internal/ads/zzbry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbry;->zzbq(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzn(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "destroy must be called on the main UI thread."

    .line 58
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgfm:Lcom/google/android/gms/internal/ads/zzcpx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcpx;->zzb(Lcom/google/android/gms/internal/ads/zzzp;)V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgfg:Z

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgfc:Lcom/google/android/gms/internal/ads/zzcdb;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    .line 63
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzgfc:Lcom/google/android/gms/internal/ads/zzcdb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcdb;->zzadd()Lcom/google/android/gms/internal/ads/zzbry;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbry;->zzbr(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
