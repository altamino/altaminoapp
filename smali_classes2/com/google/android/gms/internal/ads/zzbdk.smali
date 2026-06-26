.class public final Lcom/google/android/gms/internal/ads/zzbdk;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation runtime Lcom/google/android/gms/internal/ads/zzard;
.end annotation


# static fields
.field private static zzefc:I
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private static zzefd:I
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private zzefe:Lcom/google/android/gms/internal/ads/zzge;

.field private zzeff:Lcom/google/android/gms/internal/ads/zzhd;

.field private zzefg:Lcom/google/android/gms/internal/ads/zzgn;

.field private zzefh:Lcom/google/android/gms/internal/ads/zzbdo;

.field private final zzefi:Lcom/google/android/gms/internal/ads/zzbdn;

.field private final zzefj:Lcom/google/android/gms/internal/ads/zzbdp;

.field private final zzefk:Lcom/google/android/gms/internal/ads/zzbdm;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbdn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzbdn;-><init>(Lcom/google/android/gms/internal/ads/zzbdk;Lcom/google/android/gms/internal/ads/zzbdl;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdk;->zzefi:Lcom/google/android/gms/internal/ads/zzbdn;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbdp;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzbdp;-><init>(Lcom/google/android/gms/internal/ads/zzbdk;Lcom/google/android/gms/internal/ads/zzbdl;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdk;->zzefj:Lcom/google/android/gms/internal/ads/zzbdp;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbdm;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzbdm;-><init>(Lcom/google/android/gms/internal/ads/zzbdk;Lcom/google/android/gms/internal/ads/zzbdl;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdk;->zzefk:Lcom/google/android/gms/internal/ads/zzbdm;

    const-string v0, "ExoPlayer must be created on the main UI thread."

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzawz;->zzvj()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AdExoPlayerHelper initialize "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzawz;->zzds(Ljava/lang/String;)V

    .line 9
    :cond_0
    sget v0, Lcom/google/android/gms/internal/ads/zzbdk;->zzefc:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/google/android/gms/internal/ads/zzbdk;->zzefc:I

    const/4 v0, 0x2

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgg;->zzn(I)Lcom/google/android/gms/internal/ads/zzge;

    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdk;->zzefe:Lcom/google/android/gms/internal/ads/zzge;

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdk;->zzefe:Lcom/google/android/gms/internal/ads/zzge;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdk;->zzefi:Lcom/google/android/gms/internal/ads/zzbdn;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzge;->zza(Lcom/google/android/gms/internal/ads/zzgh;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbdk;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbdk;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final declared-synchronized zzm(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdk;->zzefh:Lcom/google/android/gms/internal/ads/zzbdo;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdk;->zzefh:Lcom/google/android/gms/internal/ads/zzbdo;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbdo;->zzl(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static zzyp()I
    .locals 1

    .line 14
    sget v0, Lcom/google/android/gms/internal/ads/zzbdk;->zzefc:I

    return v0
.end method

.method public static zzyq()I
    .locals 1

    .line 15
    sget v0, Lcom/google/android/gms/internal/ads/zzbdk;->zzefd:I

    return v0
.end method


# virtual methods
.method public final finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 49
    sget v0, Lcom/google/android/gms/internal/ads/zzbdk;->zzefc:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/google/android/gms/internal/ads/zzbdk;->zzefc:I

    .line 50
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzawz;->zzvj()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AdExoPlayerHelper finalize "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzawz;->zzds(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized removeListener()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 37
    :try_start_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdk;->zzefh:Lcom/google/android/gms/internal/ads/zzbdo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzbdo;)V
    .locals 0

    monitor-enter p0

    .line 35
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdk;->zzefh:Lcom/google/android/gms/internal/ads/zzbdo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzgh;Lcom/google/android/gms/internal/ads/zzhh;Lcom/google/android/gms/internal/ads/zzgq;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdk;->zzefi:Lcom/google/android/gms/internal/ads/zzbdn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbdn;->zzb(Lcom/google/android/gms/internal/ads/zzgh;)V

    .line 46
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdk;->zzefj:Lcom/google/android/gms/internal/ads/zzbdp;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbdp;->zza(Lcom/google/android/gms/internal/ads/zzhh;)V

    .line 47
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdk;->zzefk:Lcom/google/android/gms/internal/ads/zzbdm;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzbdm;->zza(Lcom/google/android/gms/internal/ads/zzgq;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzhn;)Z
    .locals 10

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdk;->zzefe:Lcom/google/android/gms/internal/ads/zzge;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 19
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhd;

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    sget-object v7, Lcom/google/android/gms/internal/ads/zzaxi;->zzdvv:Landroid/os/Handler;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzbdk;->zzefj:Lcom/google/android/gms/internal/ads/zzbdp;

    const/4 v9, -0x1

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/zzhd;-><init>(Lcom/google/android/gms/internal/ads/zzhn;IJLandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzhh;I)V

    .line 20
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdk;->zzeff:Lcom/google/android/gms/internal/ads/zzhd;

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgn;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzaxi;->zzdvv:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbdk;->zzefk:Lcom/google/android/gms/internal/ads/zzbdm;

    invoke-direct {v0, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgn;-><init>(Lcom/google/android/gms/internal/ads/zzhn;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzgq;)V

    .line 23
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdk;->zzefg:Lcom/google/android/gms/internal/ads/zzgn;

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzhp;

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdk;->zzeff:Lcom/google/android/gms/internal/ads/zzhd;

    aput-object v0, p1, v1

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdk;->zzefg:Lcom/google/android/gms/internal/ads/zzgn;

    const/4 v1, 0x1

    aput-object v0, p1, v1

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdk;->zzefe:Lcom/google/android/gms/internal/ads/zzge;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzge;->zza([Lcom/google/android/gms/internal/ads/zzhp;)V

    .line 28
    sget p1, Lcom/google/android/gms/internal/ads/zzbdk;->zzefd:I

    add-int/2addr p1, v1

    sput p1, Lcom/google/android/gms/internal/ads/zzbdk;->zzefd:I

    return v1
.end method

.method public final zzyr()V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdk;->zzefe:Lcom/google/android/gms/internal/ads/zzge;

    if-eqz v0, :cond_0

    .line 31
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzge;->release()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdk;->zzefe:Lcom/google/android/gms/internal/ads/zzge;

    .line 33
    sget v0, Lcom/google/android/gms/internal/ads/zzbdk;->zzefd:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/google/android/gms/internal/ads/zzbdk;->zzefd:I

    :cond_0
    return-void
.end method

.method public final zzys()Lcom/google/android/gms/internal/ads/zzge;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdk;->zzefe:Lcom/google/android/gms/internal/ads/zzge;

    return-object v0
.end method

.method public final zzyt()Lcom/google/android/gms/internal/ads/zzhd;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdk;->zzeff:Lcom/google/android/gms/internal/ads/zzhd;

    return-object v0
.end method

.method public final zzyu()Lcom/google/android/gms/internal/ads/zzgn;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdk;->zzefg:Lcom/google/android/gms/internal/ads/zzgn;

    return-object v0
.end method
