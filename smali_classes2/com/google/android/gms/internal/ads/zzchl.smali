.class public final Lcom/google/android/gms/internal/ads/zzchl;
.super Lcom/google/android/gms/internal/ads/zzchj;


# static fields
.field private static final zzfwx:Ljava/util/regex/Pattern;


# instance fields
.field private final zzfiw:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

.field private final zzfqw:Lcom/google/android/gms/internal/ads/zzbbl;

.field private final zzfwv:Lcom/google/android/gms/internal/ads/zzcgn;

.field private final zzfww:Lcom/google/android/gms/internal/ads/zzcji;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Received error HTTP response code: (.*)"

    .line 32
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzchl;->zzfwx:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbtg;Lcom/google/android/gms/internal/ads/zzcxv;Lcom/google/android/gms/internal/ads/zzcgn;Lcom/google/android/gms/internal/ads/zzbbl;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzcji;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzchj;-><init>(Lcom/google/android/gms/internal/ads/zzbtg;)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzchl;->zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzchl;->zzfwv:Lcom/google/android/gms/internal/ads/zzcgn;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzchl;->zzfqw:Lcom/google/android/gms/internal/ads/zzbbl;

    .line 5
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzchl;->zzfiw:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzchl;->zzfww:Lcom/google/android/gms/internal/ads/zzcji;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzchl;)Lcom/google/android/gms/internal/ads/zzcji;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzchl;->zzfww:Lcom/google/android/gms/internal/ads/zzcji;

    return-object p0
.end method

.method static synthetic zzakf()Ljava/util/regex/Pattern;
    .locals 1

    .line 30
    sget-object v0, Lcom/google/android/gms/internal/ads/zzchl;->zzfwx:Ljava/util/regex/Pattern;

    return-object v0
.end method


# virtual methods
.method final synthetic zzd(Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzbbh;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcxu;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcxr;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzchl;->zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzcxr;-><init>(Lcom/google/android/gms/internal/ads/zzcxv;)V

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 27
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcxs;->zza(Ljava/io/Reader;)Lcom/google/android/gms/internal/ads/zzcxs;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcxu;-><init>(Lcom/google/android/gms/internal/ads/zzcxr;Lcom/google/android/gms/internal/ads/zzcxs;)V

    .line 28
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbar;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbbg;

    move-result-object p1

    return-object p1
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzarx;)Lcom/google/android/gms/internal/ads/zzbbh;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzarx;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzbbh<",
            "Lcom/google/android/gms/internal/ads/zzcxu;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcgm;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchl;->zzfwv:Lcom/google/android/gms/internal/ads/zzcgn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgn;->zzc(Lcom/google/android/gms/internal/ads/zzarx;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object p1

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzchm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzchm;-><init>(Lcom/google/android/gms/internal/ads/zzchl;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzchl;->zzfqw:Lcom/google/android/gms/internal/ads/zzbbl;

    .line 10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzbar;->zza(Lcom/google/android/gms/internal/ads/zzbbh;Lcom/google/android/gms/internal/ads/zzbal;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object p1

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/zzacu;->zzcvm:Lcom/google/android/gms/internal/ads/zzacj;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/zzacu;->zzcvn:Lcom/google/android/gms/internal/ads/zzacj;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzchl;->zzfiw:Ljava/util/concurrent/ScheduledExecutorService;

    .line 18
    invoke-static {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbar;->zza(Lcom/google/android/gms/internal/ads/zzbbh;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object p1

    .line 19
    const-class v0, Ljava/util/concurrent/TimeoutException;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzchn;->zzbqz:Lcom/google/android/gms/internal/ads/zzbal;

    .line 20
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbm;->zzeaf:Ljava/util/concurrent/Executor;

    .line 21
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbar;->zza(Lcom/google/android/gms/internal/ads/zzbbh;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzbal;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object p1

    .line 22
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcho;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcho;-><init>(Lcom/google/android/gms/internal/ads/zzchl;)V

    .line 23
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbbm;->zzeaf:Ljava/util/concurrent/Executor;

    .line 24
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzbar;->zza(Lcom/google/android/gms/internal/ads/zzbbh;Lcom/google/android/gms/internal/ads/zzban;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method
