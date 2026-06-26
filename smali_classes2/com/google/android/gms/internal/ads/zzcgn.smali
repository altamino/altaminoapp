.class public final Lcom/google/android/gms/internal/ads/zzcgn;
.super Ljava/lang/Object;


# instance fields
.field private final zzfqw:Lcom/google/android/gms/internal/ads/zzbbl;

.field private final zzfvr:Lcom/google/android/gms/internal/ads/zzbbl;

.field private final zzfvs:Lcom/google/android/gms/internal/ads/zzchv;

.field private final zzfvt:Lcom/google/android/gms/internal/ads/zzdte;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdte<",
            "Lcom/google/android/gms/internal/ads/zzcig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbbl;Lcom/google/android/gms/internal/ads/zzbbl;Lcom/google/android/gms/internal/ads/zzchv;Lcom/google/android/gms/internal/ads/zzdte;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbbl;",
            "Lcom/google/android/gms/internal/ads/zzbbl;",
            "Lcom/google/android/gms/internal/ads/zzchv;",
            "Lcom/google/android/gms/internal/ads/zzdte<",
            "Lcom/google/android/gms/internal/ads/zzcig;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgn;->zzfvr:Lcom/google/android/gms/internal/ads/zzbbl;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcgn;->zzfqw:Lcom/google/android/gms/internal/ads/zzbbl;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcgn;->zzfvs:Lcom/google/android/gms/internal/ads/zzchv;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcgn;->zzfvt:Lcom/google/android/gms/internal/ads/zzdte;

    return-void
.end method


# virtual methods
.method final synthetic zza(Lcom/google/android/gms/internal/ads/zzarx;Lcom/google/android/gms/internal/ads/zzcie;)Lcom/google/android/gms/internal/ads/zzbbh;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcgn;->zzfvt:Lcom/google/android/gms/internal/ads/zzdte;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdte;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzcig;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzcig;->zzh(Lcom/google/android/gms/internal/ads/zzarx;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzarx;)Lcom/google/android/gms/internal/ads/zzbbh;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzarx;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzbbh<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzarx;->packageName:Ljava/lang/String;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlg()Lcom/google/android/gms/internal/ads/zzaxi;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzec(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcie;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcie;-><init>(I)V

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbar;->zzd(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbbf;

    move-result-object v0

    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzacu;->zzcvo:Lcom/google/android/gms/internal/ads/zzacj;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgn;->zzfvr:Lcom/google/android/gms/internal/ads/zzbbl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcgo;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzcgo;-><init>(Lcom/google/android/gms/internal/ads/zzcgn;Lcom/google/android/gms/internal/ads/zzarx;)V

    .line 16
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbl;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object v0

    .line 17
    const-class v1, Ljava/util/concurrent/ExecutionException;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzcgp;->zzbqz:Lcom/google/android/gms/internal/ads/zzbal;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcgn;->zzfqw:Lcom/google/android/gms/internal/ads/zzbbl;

    .line 18
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbar;->zza(Lcom/google/android/gms/internal/ads/zzbbh;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzbal;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object v0

    goto :goto_0

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgn;->zzfvs:Lcom/google/android/gms/internal/ads/zzchv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzchv;->zzf(Lcom/google/android/gms/internal/ads/zzarx;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object v0

    .line 21
    :goto_0
    const-class v1, Lcom/google/android/gms/internal/ads/zzcie;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcgq;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/ads/zzcgq;-><init>(Lcom/google/android/gms/internal/ads/zzcgn;Lcom/google/android/gms/internal/ads/zzarx;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgn;->zzfqw:Lcom/google/android/gms/internal/ads/zzbbl;

    .line 22
    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzbar;->zza(Lcom/google/android/gms/internal/ads/zzbbh;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzbal;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object p1

    .line 23
    sget-object v1, Lcom/google/android/gms/internal/ads/zzacu;->zzcvo:Lcom/google/android/gms/internal/ads/zzacj;

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object v1

    .line 25
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 26
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcgr;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgr;-><init>(Lcom/google/android/gms/internal/ads/zzbbh;)V

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbm;->zzeaf:Ljava/util/concurrent/Executor;

    .line 28
    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbbh;->zza(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_2
    return-object p1
.end method

.method final synthetic zzd(Lcom/google/android/gms/internal/ads/zzarx;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgn;->zzfvs:Lcom/google/android/gms/internal/ads/zzchv;

    .line 32
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzchv;->zzf(Lcom/google/android/gms/internal/ads/zzarx;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzacu;->zzcvn:Lcom/google/android/gms/internal/ads/zzacj;

    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object v0

    .line 35
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    return-object p1
.end method
