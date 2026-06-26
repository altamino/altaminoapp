.class public final Lcom/google/android/gms/internal/ads/zzcqf;
.super Lcom/google/android/gms/internal/ads/zzatu;


# instance fields
.field private final zzchk:Ljava/lang/String;

.field private zzfsq:Lcom/google/android/gms/internal/ads/zzbss;

.field private final zzgbc:Lcom/google/android/gms/internal/ads/zzbjm;

.field private final zzgds:Lcom/google/android/gms/internal/ads/zzcxx;

.field private zzgek:Lcom/google/android/gms/internal/ads/zzbbh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbbh<",
            "Lcom/google/android/gms/internal/ads/zzcdb;",
            ">;"
        }
    .end annotation
.end field

.field private zzgfc:Lcom/google/android/gms/internal/ads/zzcdb;

.field private final zzgfd:Lcom/google/android/gms/internal/ads/zzcqa;

.field private final zzgfe:Lcom/google/android/gms/internal/ads/zzcqb;

.field private final zzgff:Lcom/google/android/gms/internal/ads/zzcpz;

.field private zzgfg:Z

.field private final zzlj:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbjm;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzatu;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcqa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcqa;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzgfd:Lcom/google/android/gms/internal/ads/zzcqa;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcqb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcqb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzgfe:Lcom/google/android/gms/internal/ads/zzcqb;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcpz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcpz;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzgff:Lcom/google/android/gms/internal/ads/zzcpz;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzgfg:Z

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcxx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcxx;-><init>()V

    .line 8
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcxx;->zzglj:Ljava/util/Set;

    const-string v2, "new_rewarded"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzgds:Lcom/google/android/gms/internal/ads/zzcxx;

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzgbc:Lcom/google/android/gms/internal/ads/zzbjm;

    .line 12
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzlj:Landroid/content/Context;

    .line 13
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzchk:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcqf;Lcom/google/android/gms/internal/ads/zzbbh;)Lcom/google/android/gms/internal/ads/zzbbh;
    .locals 0

    const/4 p1, 0x0

    .line 88
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzgek:Lcom/google/android/gms/internal/ads/zzbbh;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcqf;Lcom/google/android/gms/internal/ads/zzcdb;)Lcom/google/android/gms/internal/ads/zzcdb;
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzgfc:Lcom/google/android/gms/internal/ads/zzcdb;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcqf;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzgfg:Z

    return p0
.end method


# virtual methods
.method public final getAdMetadata()Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "#008 Must be called on the main UI thread."

    .line 71
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 72
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzgfg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzfsq:Lcom/google/android/gms/internal/ads/zzbss;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbss;->getAdMetadata()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 74
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

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzgfc:Lcom/google/android/gms/internal/ads/zzcdb;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzgfc:Lcom/google/android/gms/internal/ads/zzcdb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbpc;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 60
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

    const-string v0, "#008 Must be called on the main UI thread."

    .line 61
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 62
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzgfg:Z

    return v0
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "#008 Must be called on the main UI thread."

    .line 50
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzgfc:Lcom/google/android/gms/internal/ads/zzcdb;

    if-nez v0, :cond_0

    const-string p1, "Rewarded can not be shown before loaded"

    .line 52
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzep(Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzgfd:Lcom/google/android/gms/internal/ads/zzcqa;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcqa;->zzcs(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    .line 55
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzgfc:Lcom/google/android/gms/internal/ads/zzcdb;

    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzcdb;->zzb(ZLandroid/app/Activity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaao;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzgff:Lcom/google/android/gms/internal/ads/zzcpz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcqh;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzcqh;-><init>(Lcom/google/android/gms/internal/ads/zzcqf;Lcom/google/android/gms/internal/ads/zzaao;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcpz;->zzb(Lcom/google/android/gms/internal/ads/zzaao;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzatw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "#008 Must be called on the main UI thread."

    .line 63
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzgfd:Lcom/google/android/gms/internal/ads/zzcqa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcqa;->zzb(Lcom/google/android/gms/internal/ads/zzatw;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "#008 Must be called on the main UI thread."

    .line 66
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzgfd:Lcom/google/android/gms/internal/ads/zzcqa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcqa;->zzb(Lcom/google/android/gms/internal/ads/zzaue;)V

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzaum;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "#008 Must be called on the main UI thread."

    .line 81
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzgds:Lcom/google/android/gms/internal/ads/zzcxx;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzaum;->zzdqs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcxx;->zzfu(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcxx;

    .line 83
    sget-object v0, Lcom/google/android/gms/internal/ads/zzacu;->zzcow:Lcom/google/android/gms/internal/ads/zzacj;

    .line 84
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object v0

    .line 85
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzgds:Lcom/google/android/gms/internal/ads/zzcxx;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaum;->zzdqt:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcxx;->zzfv(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcxx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzxz;Lcom/google/android/gms/internal/ads/zzaub;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "#008 Must be called on the main UI thread."

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzgfe:Lcom/google/android/gms/internal/ads/zzcqb;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzcqb;->zza(Lcom/google/android/gms/internal/ads/zzaub;)V

    const/4 p2, 0x0

    .line 17
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzgfg:Z

    .line 18
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzgek:Lcom/google/android/gms/internal/ads/zzbbh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 19
    monitor-exit p0

    return-void

    .line 20
    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzgfc:Lcom/google/android/gms/internal/ads/zzcdb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_1

    .line 21
    monitor-exit p0

    return-void

    .line 22
    :cond_1
    :try_start_2
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzlj:Landroid/content/Context;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzxz;->zzcgq:Z

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzcya;->zze(Landroid/content/Context;Z)V

    .line 23
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzgds:Lcom/google/android/gms/internal/ads/zzcxx;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzchk:Ljava/lang/String;

    .line 24
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzcxx;->zzft(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcxx;

    move-result-object p2

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyd;->zzou()Lcom/google/android/gms/internal/ads/zzyd;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzcxx;->zzd(Lcom/google/android/gms/internal/ads/zzyd;)Lcom/google/android/gms/internal/ads/zzcxx;

    move-result-object p2

    .line 26
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzcxx;->zzg(Lcom/google/android/gms/internal/ads/zzxz;)Lcom/google/android/gms/internal/ads/zzcxx;

    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcxx;->zzamq()Lcom/google/android/gms/internal/ads/zzcxv;

    move-result-object p1

    .line 29
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzgbc:Lcom/google/android/gms/internal/ads/zzbjm;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbjm;->zzacm()Lcom/google/android/gms/internal/ads/zzcdg;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbqy$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbqy$zza;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzlj:Landroid/content/Context;

    .line 30
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbqy$zza;->zzbt(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbqy$zza;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbqy$zza;->zza(Lcom/google/android/gms/internal/ads/zzcxv;)Lcom/google/android/gms/internal/ads/zzbqy$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbqy$zza;->zzagh()Lcom/google/android/gms/internal/ads/zzbqy;

    move-result-object p1

    .line 31
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzcdg;->zzd(Lcom/google/android/gms/internal/ads/zzbqy;)Lcom/google/android/gms/internal/ads/zzcdg;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbtv$zza;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzbtv$zza;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzgfd:Lcom/google/android/gms/internal/ads/zzcqa;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzgbc:Lcom/google/android/gms/internal/ads/zzbjm;

    .line 32
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbjm;->zzace()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbtv$zza;->zza(Lcom/google/android/gms/internal/ads/zzbrl;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzbtv$zza;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcqi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzgfe:Lcom/google/android/gms/internal/ads/zzcqb;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzcqi;-><init>(Lcom/google/android/gms/internal/ads/zzcqf;Lcom/google/android/gms/internal/ads/zzbsr;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzgbc:Lcom/google/android/gms/internal/ads/zzbjm;

    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbjm;->zzace()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbtv$zza;->zza(Lcom/google/android/gms/internal/ads/zzbsr;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzbtv$zza;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzgfe:Lcom/google/android/gms/internal/ads/zzcqb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzgbc:Lcom/google/android/gms/internal/ads/zzbjm;

    .line 34
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbjm;->zzace()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbtv$zza;->zza(Lcom/google/android/gms/internal/ads/zzbro;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzbtv$zza;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzgfd:Lcom/google/android/gms/internal/ads/zzcqa;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzgbc:Lcom/google/android/gms/internal/ads/zzbjm;

    .line 35
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbjm;->zzace()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbtv$zza;->zza(Lcom/google/android/gms/internal/ads/zzbrs;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzbtv$zza;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzgff:Lcom/google/android/gms/internal/ads/zzcpz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzgbc:Lcom/google/android/gms/internal/ads/zzbjm;

    .line 36
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbjm;->zzace()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbtv$zza;->zza(Lcom/google/android/gms/ads/reward/AdMetadataListener;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzbtv$zza;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcpy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcpy;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzgbc:Lcom/google/android/gms/internal/ads/zzbjm;

    .line 37
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbjm;->zzace()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbtv$zza;->zza(Lcom/google/android/gms/ads/doubleclick/AppEventListener;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzbtv$zza;

    move-result-object p2

    .line 38
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbtv$zza;->zzagt()Lcom/google/android/gms/internal/ads/zzbtv;

    move-result-object p2

    .line 39
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzcdg;->zzd(Lcom/google/android/gms/internal/ads/zzbtv;)Lcom/google/android/gms/internal/ads/zzcdg;

    move-result-object p1

    .line 40
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcdg;->zzaeh()Lcom/google/android/gms/internal/ads/zzcdf;

    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcdf;->zzaei()Lcom/google/android/gms/internal/ads/zzbss;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzfsq:Lcom/google/android/gms/internal/ads/zzbss;

    .line 43
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcdf;->zzadu()Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzgek:Lcom/google/android/gms/internal/ads/zzbbh;

    .line 44
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzgek:Lcom/google/android/gms/internal/ads/zzbbh;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcqg;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzcqg;-><init>(Lcom/google/android/gms/internal/ads/zzcqf;Lcom/google/android/gms/internal/ads/zzcdf;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzgbc:Lcom/google/android/gms/internal/ads/zzbjm;

    .line 45
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbjm;->zzace()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 46
    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzbar;->zza(Lcom/google/android/gms/internal/ads/zzbbh;Lcom/google/android/gms/internal/ads/zzban;Ljava/util/concurrent/Executor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final zzalg()V
    .locals 1

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzgfg:Z

    return-void
.end method

.method final zzalh()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzgff:Lcom/google/android/gms/internal/ads/zzcpz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcpz;->onAdMetadataChanged()V

    return-void
.end method

.method public final declared-synchronized zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 48
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzcqf;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzqh()Lcom/google/android/gms/internal/ads/zzatq;
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 75
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 76
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzgfg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqf;->zzgfc:Lcom/google/android/gms/internal/ads/zzcdb;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdb;->zzqh()Lcom/google/android/gms/internal/ads/zzatq;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
