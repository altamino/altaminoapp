.class public final Lcom/google/android/gms/internal/ads/zzawm;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzard;
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private zzbtc:Lcom/google/android/gms/internal/ads/zzbai;

.field private final zzdsw:Lcom/google/android/gms/internal/ads/zzawu;

.field private zzdto:Lcom/google/android/gms/internal/ads/zztz;

.field private final zzdtp:Lcom/google/android/gms/internal/ads/zzaxc;

.field private zzdtq:Lcom/google/android/gms/internal/ads/zzacy;

.field private zzdtr:Ljava/lang/Boolean;

.field private final zzdts:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final zzdtt:Lcom/google/android/gms/internal/ads/zzawp;

.field private final zzdtu:Ljava/lang/Object;

.field private zzdtv:Lcom/google/android/gms/internal/ads/zzbbh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbbh<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private zzlj:Landroid/content/Context;

.field private zzxs:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->lock:Ljava/lang/Object;

    .line 61
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaxc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaxc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdtp:Lcom/google/android/gms/internal/ads/zzaxc;

    .line 62
    new-instance v0, Lcom/google/android/gms/internal/ads/zzawu;

    .line 63
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpf()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdtp:Lcom/google/android/gms/internal/ads/zzaxc;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzawu;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaxb;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdsw:Lcom/google/android/gms/internal/ads/zzawu;

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzxs:Z

    const/4 v1, 0x0

    .line 65
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdtq:Lcom/google/android/gms/internal/ads/zzacy;

    .line 66
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdtr:Ljava/lang/Boolean;

    .line 67
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdts:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 68
    new-instance v0, Lcom/google/android/gms/internal/ads/zzawp;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzawp;-><init>(Lcom/google/android/gms/internal/ads/zzawo;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdtt:Lcom/google/android/gms/internal/ads/zzawp;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdtu:Ljava/lang/Object;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzawm;)Landroid/content/Context;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzlj:Landroid/content/Context;

    return-object p0
.end method

.method private static zzah(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v1

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0x1000

    .line 97
    invoke-virtual {v1, p0, v2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 103
    :goto_0
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 104
    iget-object v3, p0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v3, v3, v1

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 105
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzawm;)Lcom/google/android/gms/internal/ads/zzbai;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzbtc:Lcom/google/android/gms/internal/ads/zzbai;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzawm;)Ljava/lang/Object;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzawm;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzawm;)Lcom/google/android/gms/internal/ads/zzacy;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdtq:Lcom/google/android/gms/internal/ads/zzacy;

    return-object p0
.end method


# virtual methods
.method public final getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzlj:Landroid/content/Context;

    return-object v0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzbtc:Lcom/google/android/gms/internal/ads/zzbai;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzbai;->zzdze:Z

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzlj:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 45
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzlj:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbae;->zzbl(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbag; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "Cannot load resource from dynamite apk or local jar"

    .line 48
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbad;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final zza(Ljava/lang/Boolean;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdtr:Ljava/lang/Boolean;

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zza(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzlj:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzbtc:Lcom/google/android/gms/internal/ads/zzbai;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaqx;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbai;)Lcom/google/android/gms/internal/ads/zzarb;

    move-result-object v0

    .line 52
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzarb;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzlj:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzbtc:Lcom/google/android/gms/internal/ads/zzbai;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaqx;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbai;)Lcom/google/android/gms/internal/ads/zzarb;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzacu;->zzcli:Lcom/google/android/gms/internal/ads/zzacj;

    .line 56
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object v1

    .line 57
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzarb;->zza(Ljava/lang/Throwable;Ljava/lang/String;F)V

    return-void
.end method

.method public final zzd(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbai;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 13
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzxs:Z

    if-nez v1, :cond_2

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzlj:Landroid/content/Context;

    .line 15
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzbtc:Lcom/google/android/gms/internal/ads/zzbai;

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlj()Lcom/google/android/gms/internal/ads/zzuq;

    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdsw:Lcom/google/android/gms/internal/ads/zzawu;

    .line 18
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzuq;->zza(Lcom/google/android/gms/internal/ads/zzut;)V

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdtp:Lcom/google/android/gms/internal/ads/zzaxc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzlj:Landroid/content/Context;

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 20
    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzaxc;->zza(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzlj:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzbtc:Lcom/google/android/gms/internal/ads/zzbai;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaqx;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbai;)Lcom/google/android/gms/internal/ads/zzarb;

    .line 23
    new-instance v1, Lcom/google/android/gms/internal/ads/zztz;

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzbtc:Lcom/google/android/gms/internal/ads/zzbai;

    invoke-direct {v1, v2, v5}, Lcom/google/android/gms/internal/ads/zztz;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbai;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdto:Lcom/google/android/gms/internal/ads/zztz;

    .line 26
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlp()Lcom/google/android/gms/internal/ads/zzada;

    .line 27
    sget-object v1, Lcom/google/android/gms/internal/ads/zzacu;->zzcmx:Lcom/google/android/gms/internal/ads/zzacj;

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CsiReporterFactory: CSI is not enabled. No CSI reporter created."

    .line 30
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzawz;->zzds(Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_0
    new-instance v4, Lcom/google/android/gms/internal/ads/zzacy;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzacy;-><init>()V

    .line 33
    :goto_0
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdtq:Lcom/google/android/gms/internal/ads/zzacy;

    .line 34
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdtq:Lcom/google/android/gms/internal/ads/zzacy;

    if-eqz v1, :cond_1

    .line 35
    new-instance v1, Lcom/google/android/gms/internal/ads/zzawo;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzawo;-><init>(Lcom/google/android/gms/internal/ads/zzawm;)V

    .line 36
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawv;->zzvi()Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object v1

    const-string v2, "AppState.registerCsiReporter"

    .line 37
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbao;->zza(Lcom/google/android/gms/internal/ads/zzbbh;Ljava/lang/String;)V

    .line 38
    :cond_1
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzxs:Z

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzawm;->zzvd()Lcom/google/android/gms/internal/ads/zzbbh;

    .line 40
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlg()Lcom/google/android/gms/internal/ads/zzaxi;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzbai;->zzbsx:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaxi;->zzq(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    return-void

    :catchall_0
    move-exception p1

    .line 40
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzuw()Lcom/google/android/gms/internal/ads/zzacy;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdtq:Lcom/google/android/gms/internal/ads/zzacy;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzux()Ljava/lang/Boolean;
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdtr:Ljava/lang/Boolean;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzuy()V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdtt:Lcom/google/android/gms/internal/ads/zzawp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawp;->zzuy()V

    return-void
.end method

.method public final zzuz()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdts:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public final zzva()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdts:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method

.method public final zzvb()I
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdts:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final zzvc()Lcom/google/android/gms/internal/ads/zzaxb;
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdtp:Lcom/google/android/gms/internal/ads/zzaxc;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 78
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzvd()Lcom/google/android/gms/internal/ads/zzbbh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzbbh<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 80
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBean()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzlj:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 81
    sget-object v0, Lcom/google/android/gms/internal/ads/zzacu;->zzcri:Lcom/google/android/gms/internal/ads/zzacj;

    .line 83
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object v0

    .line 84
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdtu:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdtv:Lcom/google/android/gms/internal/ads/zzbbh;

    if-eqz v1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdtv:Lcom/google/android/gms/internal/ads/zzbbh;

    monitor-exit v0

    return-object v1

    .line 89
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzawn;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzawn;-><init>(Lcom/google/android/gms/internal/ads/zzawm;)V

    .line 90
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaxg;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdtv:Lcom/google/android/gms/internal/ads/zzbbh;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 92
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 85
    :cond_2
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbar;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbbg;

    move-result-object v0

    return-object v0
.end method

.method public final zzve()Lcom/google/android/gms/internal/ads/zzawu;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzdsw:Lcom/google/android/gms/internal/ads/zzawu;

    return-object v0
.end method

.method final synthetic zzvf()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawm;->zzlj:Landroid/content/Context;

    .line 110
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzasq;->zzw(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 111
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzawm;->zzah(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
