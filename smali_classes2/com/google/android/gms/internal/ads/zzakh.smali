.class public final Lcom/google/android/gms/internal/ads/zzakh;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzard;
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private status:I

.field private final zzbtc:Lcom/google/android/gms/internal/ads/zzbai;

.field private final zzdca:Ljava/lang/String;

.field private zzdcb:Lcom/google/android/gms/internal/ads/zzayp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzayp<",
            "Lcom/google/android/gms/internal/ads/zzajw;",
            ">;"
        }
    .end annotation
.end field

.field private zzdcc:Lcom/google/android/gms/internal/ads/zzayp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzayp<",
            "Lcom/google/android/gms/internal/ads/zzajw;",
            ">;"
        }
    .end annotation
.end field

.field private zzdcd:Lcom/google/android/gms/internal/ads/zzala;

.field private final zzlj:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbai;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzakh;->lock:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzakh;->status:I

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzakh;->zzdca:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakh;->zzlj:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzakh;->zzbtc:Lcom/google/android/gms/internal/ads/zzbai;

    .line 7
    new-instance p1, Lcom/google/android/gms/internal/ads/zzakv;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzakv;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakh;->zzdcb:Lcom/google/android/gms/internal/ads/zzayp;

    .line 8
    new-instance p1, Lcom/google/android/gms/internal/ads/zzakv;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzakv;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakh;->zzdcc:Lcom/google/android/gms/internal/ads/zzayp;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbai;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzayp;Lcom/google/android/gms/internal/ads/zzayp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzbai;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzayp<",
            "Lcom/google/android/gms/internal/ads/zzajw;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzayp<",
            "Lcom/google/android/gms/internal/ads/zzajw;",
            ">;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzakh;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbai;Ljava/lang/String;)V

    .line 11
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzakh;->zzdcb:Lcom/google/android/gms/internal/ads/zzayp;

    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzakh;->zzdcc:Lcom/google/android/gms/internal/ads/zzayp;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzakh;I)I
    .locals 0

    .line 85
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzakh;->status:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzakh;Lcom/google/android/gms/internal/ads/zzala;)Lcom/google/android/gms/internal/ads/zzala;
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakh;->zzdcd:Lcom/google/android/gms/internal/ads/zzala;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzakh;)Ljava/lang/Object;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzakh;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzakh;)Lcom/google/android/gms/internal/ads/zzala;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzakh;->zzdcd:Lcom/google/android/gms/internal/ads/zzala;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzakh;)Lcom/google/android/gms/internal/ads/zzayp;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzakh;->zzdcb:Lcom/google/android/gms/internal/ads/zzayp;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzakh;)I
    .locals 0

    .line 89
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzakh;->status:I

    return p0
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/ads/zzdh;)Lcom/google/android/gms/internal/ads/zzala;
    .locals 3

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/zzala;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakh;->zzdcc:Lcom/google/android/gms/internal/ads/zzayp;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzala;-><init>(Lcom/google/android/gms/internal/ads/zzayp;)V

    .line 17
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbbm;->zzeae:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaki;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzaki;-><init>(Lcom/google/android/gms/internal/ads/zzakh;Lcom/google/android/gms/internal/ads/zzdh;Lcom/google/android/gms/internal/ads/zzala;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 20
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaks;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/ads/zzaks;-><init>(Lcom/google/android/gms/internal/ads/zzakh;Lcom/google/android/gms/internal/ads/zzala;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzakt;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzakt;-><init>(Lcom/google/android/gms/internal/ads/zzakh;Lcom/google/android/gms/internal/ads/zzala;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbbw;->zza(Lcom/google/android/gms/internal/ads/zzbbv;Lcom/google/android/gms/internal/ads/zzbbt;)V

    return-object v0
.end method

.method final synthetic zza(Lcom/google/android/gms/internal/ads/zzajw;)V
    .locals 0

    .line 46
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzajw;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 47
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzakh;->status:I

    :cond_0
    return-void
.end method

.method final synthetic zza(Lcom/google/android/gms/internal/ads/zzala;Lcom/google/android/gms/internal/ads/zzajw;)V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakh;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbbw;->getStatus()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 78
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbbw;->getStatus()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbbw;->reject()V

    .line 81
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbm;->zzeae:Ljava/util/concurrent/Executor;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzakn;->zzb(Lcom/google/android/gms/internal/ads/zzajw;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string p1, "Could not receive loaded message in a timely manner. Rejecting."

    .line 82
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzawz;->zzds(Ljava/lang/String;)V

    .line 83
    monitor-exit v0

    return-void

    .line 79
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 83
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final synthetic zza(Lcom/google/android/gms/internal/ads/zzdh;Lcom/google/android/gms/internal/ads/zzala;)V
    .locals 4

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakh;->zzlj:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakh;->zzbtc:Lcom/google/android/gms/internal/ads/zzbai;

    .line 50
    sget-object v2, Lcom/google/android/gms/internal/ads/zzacu;->zzcoj:Lcom/google/android/gms/internal/ads/zzacj;

    .line 51
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object v2

    .line 52
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    new-instance v2, Lcom/google/android/gms/internal/ads/zzajj;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzajj;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbai;)V

    goto :goto_0

    .line 54
    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/ads/zzajy;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, p1, v3}, Lcom/google/android/gms/internal/ads/zzajy;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbai;Lcom/google/android/gms/internal/ads/zzdh;Lcom/google/android/gms/ads/internal/zza;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzakl;

    invoke-direct {v0, p0, p2, v2}, Lcom/google/android/gms/internal/ads/zzakl;-><init>(Lcom/google/android/gms/internal/ads/zzakh;Lcom/google/android/gms/internal/ads/zzala;Lcom/google/android/gms/internal/ads/zzajw;)V

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzajw;->zza(Lcom/google/android/gms/internal/ads/zzajx;)V

    .line 64
    new-instance v0, Lcom/google/android/gms/internal/ads/zzako;

    invoke-direct {v0, p0, p2, v2}, Lcom/google/android/gms/internal/ads/zzako;-><init>(Lcom/google/android/gms/internal/ads/zzakh;Lcom/google/android/gms/internal/ads/zzala;Lcom/google/android/gms/internal/ads/zzajw;)V

    const-string v1, "/jsLoaded"

    invoke-interface {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzalf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 65
    new-instance v0, Lcom/google/android/gms/internal/ads/zzazk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzazk;-><init>()V

    .line 66
    new-instance v1, Lcom/google/android/gms/internal/ads/zzakp;

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzakp;-><init>(Lcom/google/android/gms/internal/ads/zzakh;Lcom/google/android/gms/internal/ads/zzdh;Lcom/google/android/gms/internal/ads/zzajw;Lcom/google/android/gms/internal/ads/zzazk;)V

    .line 67
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzazk;->set(Ljava/lang/Object;)V

    const-string p1, "/requestReload"

    .line 68
    invoke-interface {v2, p1, v1}, Lcom/google/android/gms/internal/ads/zzalf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 69
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzakh;->zzdca:Ljava/lang/String;

    const-string v0, ".js"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 70
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzakh;->zzdca:Ljava/lang/String;

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/zzajw;->zzcl(Ljava/lang/String;)V

    goto :goto_1

    .line 71
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzakh;->zzdca:Ljava/lang/String;

    const-string v0, "<html>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 72
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzakh;->zzdca:Ljava/lang/String;

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/zzajw;->zzcm(Ljava/lang/String;)V

    goto :goto_1

    .line 73
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzakh;->zzdca:Ljava/lang/String;

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/zzajw;->zzcn(Ljava/lang/String;)V

    .line 74
    :goto_1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaxi;->zzdvv:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzakq;

    invoke-direct {v0, p0, p2, v2}, Lcom/google/android/gms/internal/ads/zzakq;-><init>(Lcom/google/android/gms/internal/ads/zzakh;Lcom/google/android/gms/internal/ads/zzala;Lcom/google/android/gms/internal/ads/zzajw;)V

    sget p2, Lcom/google/android/gms/internal/ads/zzaku;->zzdcr:I

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "Error creating webview."

    .line 58
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlk()Lcom/google/android/gms/internal/ads/zzawm;

    move-result-object v0

    const-string v1, "SdkJavascriptFactory.loadJavascriptEngine"

    .line 60
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzawm;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbbw;->reject()V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzdh;)Lcom/google/android/gms/internal/ads/zzakw;
    .locals 4

    .line 22
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzakh;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakh;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakh;->zzdcd:Lcom/google/android/gms/internal/ads/zzala;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzakh;->status:I

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzacu;->zzclb:Lcom/google/android/gms/internal/ads/zzacj;

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakh;->zzdcd:Lcom/google/android/gms/internal/ads/zzala;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzakj;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzakj;-><init>(Lcom/google/android/gms/internal/ads/zzakh;)V

    sget-object v3, Lcom/google/android/gms/internal/ads/zzakk;->zzdch:Lcom/google/android/gms/internal/ads/zzbbt;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbbw;->zza(Lcom/google/android/gms/internal/ads/zzbbv;Lcom/google/android/gms/internal/ads/zzbbt;)V

    .line 30
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakh;->zzdcd:Lcom/google/android/gms/internal/ads/zzala;

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakh;->zzdcd:Lcom/google/android/gms/internal/ads/zzala;

    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->getStatus()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 36
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzakh;->status:I

    if-nez v0, :cond_2

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakh;->zzdcd:Lcom/google/android/gms/internal/ads/zzala;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzala;->zzrx()Lcom/google/android/gms/internal/ads/zzakw;

    move-result-object v0

    monitor-exit p1

    return-object v0

    .line 38
    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzakh;->status:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    .line 39
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzakh;->status:I

    .line 40
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzakh;->zza(Lcom/google/android/gms/internal/ads/zzdh;)Lcom/google/android/gms/internal/ads/zzala;

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakh;->zzdcd:Lcom/google/android/gms/internal/ads/zzala;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzala;->zzrx()Lcom/google/android/gms/internal/ads/zzakw;

    move-result-object v0

    monitor-exit p1

    return-object v0

    .line 42
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzakh;->status:I

    if-ne v0, v2, :cond_4

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakh;->zzdcd:Lcom/google/android/gms/internal/ads/zzala;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzala;->zzrx()Lcom/google/android/gms/internal/ads/zzakw;

    move-result-object v0

    monitor-exit p1

    return-object v0

    .line 44
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakh;->zzdcd:Lcom/google/android/gms/internal/ads/zzala;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzala;->zzrx()Lcom/google/android/gms/internal/ads/zzakw;

    move-result-object v0

    monitor-exit p1

    return-object v0

    .line 33
    :cond_5
    :goto_0
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzakh;->status:I

    .line 34
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzakh;->zza(Lcom/google/android/gms/internal/ads/zzdh;)Lcom/google/android/gms/internal/ads/zzala;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzakh;->zzdcd:Lcom/google/android/gms/internal/ads/zzala;

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakh;->zzdcd:Lcom/google/android/gms/internal/ads/zzala;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzala;->zzrx()Lcom/google/android/gms/internal/ads/zzakw;

    move-result-object v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    :catchall_0
    move-exception v1

    .line 30
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :catchall_1
    move-exception v0

    .line 45
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
