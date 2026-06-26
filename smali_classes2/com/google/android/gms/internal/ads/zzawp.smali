.class final Lcom/google/android/gms/internal/ads/zzawp;
.super Ljava/lang/Object;


# instance fields
.field private final lock:Ljava/lang/Object;

.field private volatile zzdty:I

.field private volatile zzdtz:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawp;->lock:Ljava/lang/Object;

    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/zzawq;->zzdua:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzawp;->zzdty:I

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawp;->zzdtz:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzawo;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawp;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzuy()V
    .locals 7

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzln()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzawp;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 9
    :try_start_0
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzawp;->zzdty:I

    sget v4, Lcom/google/android/gms/internal/ads/zzawq;->zzduc:I

    if-ne v3, v4, :cond_0

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzawp;->zzdtz:J

    sget-object v5, Lcom/google/android/gms/internal/ads/zzacu;->zzcwe:Lcom/google/android/gms/internal/ads/zzacj;

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object v5

    .line 12
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v3, v5

    cmp-long v5, v3, v0

    if-gtz v5, :cond_0

    .line 13
    sget v0, Lcom/google/android/gms/internal/ads/zzawq;->zzdua:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzawp;->zzdty:I

    .line 14
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzln()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 16
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzawp;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 17
    :try_start_1
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzawp;->zzdty:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    .line 18
    monitor-exit v3

    return-void

    :cond_1
    const/4 v2, 0x3

    .line 19
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzawp;->zzdty:I

    .line 20
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzawp;->zzdty:I

    sget v4, Lcom/google/android/gms/internal/ads/zzawq;->zzduc:I

    if-ne v2, v4, :cond_2

    .line 21
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzawp;->zzdtz:J

    .line 22
    :cond_2
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    .line 23
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 14
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
