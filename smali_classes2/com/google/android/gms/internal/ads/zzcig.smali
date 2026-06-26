.class public final Lcom/google/android/gms/internal/ads/zzcig;
.super Lcom/google/android/gms/internal/ads/zzarn;


# instance fields
.field private final zzffv:Ljava/util/concurrent/Executor;

.field private final zzfxl:Lcom/google/android/gms/internal/ads/zzasm;

.field private final zzfxm:Lcom/google/android/gms/internal/ads/zzasl;

.field private final zzfxn:Lcom/google/android/gms/internal/ads/zzblp;

.field private final zzlj:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzasm;Lcom/google/android/gms/internal/ads/zzblp;Lcom/google/android/gms/internal/ads/zzasl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzarn;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzacu;->initialize(Landroid/content/Context;)V

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzlj:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzffv:Ljava/util/concurrent/Executor;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzfxl:Lcom/google/android/gms/internal/ads/zzasm;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzfxm:Lcom/google/android/gms/internal/ads/zzasl;

    .line 7
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzfxn:Lcom/google/android/gms/internal/ads/zzblp;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzbbh;Lcom/google/android/gms/internal/ads/zzarr;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbbh<",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzarr;",
            ")V"
        }
    .end annotation

    .line 75
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcip;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcip;-><init>(Lcom/google/android/gms/internal/ads/zzcig;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzaxg;->zzdvp:Lcom/google/android/gms/internal/ads/zzbbl;

    .line 76
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzbar;->zza(Lcom/google/android/gms/internal/ads/zzbbh;Lcom/google/android/gms/internal/ads/zzbal;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object p1

    .line 77
    new-instance v0, Lcom/google/android/gms/internal/ads/zzciq;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/zzciq;-><init>(Lcom/google/android/gms/internal/ads/zzcig;Lcom/google/android/gms/internal/ads/zzarr;)V

    .line 78
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbbm;->zzeaf:Ljava/util/concurrent/Executor;

    .line 79
    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzbar;->zza(Lcom/google/android/gms/internal/ads/zzbbh;Lcom/google/android/gms/internal/ads/zzban;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzarg;)Lcom/google/android/gms/internal/ads/zzari;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzarg;Lcom/google/android/gms/internal/ads/zzarp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzarx;Lcom/google/android/gms/internal/ads/zzarr;)V
    .locals 1

    .line 49
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzcig;->zzh(Lcom/google/android/gms/internal/ads/zzarx;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object p1

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcig;->zza(Lcom/google/android/gms/internal/ads/zzbbh;Lcom/google/android/gms/internal/ads/zzarr;)V

    .line 51
    new-instance p2, Lcom/google/android/gms/internal/ads/zzcin;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzcin;-><init>(Lcom/google/android/gms/internal/ads/zzcig;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzffv:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzbbh;->zza(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method final synthetic zzaki()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzfxm:Lcom/google/android/gms/internal/ads/zzasl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzasl;->zztz()Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object v0

    const-string v1, "persistFlags"

    .line 85
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbao;->zza(Lcom/google/android/gms/internal/ads/zzbbh;Ljava/lang/String;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzarx;Lcom/google/android/gms/internal/ads/zzarr;)V
    .locals 6

    .line 54
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlt()Lcom/google/android/gms/internal/ads/zzalk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzlj:Landroid/content/Context;

    .line 55
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbai;->zzxc()Lcom/google/android/gms/internal/ads/zzbai;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzalk;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbai;)Lcom/google/android/gms/internal/ads/zzalr;

    move-result-object v0

    .line 56
    sget-object v1, Lcom/google/android/gms/internal/ads/zzacu;->zzcwd:Lcom/google/android/gms/internal/ads/zzacj;

    .line 57
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object v1

    .line 58
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Signal collection disabled."

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbar;->zzd(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbbf;

    move-result-object p1

    goto :goto_0

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzfxn:Lcom/google/android/gms/internal/ads/zzblp;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzblp;->zza(Lcom/google/android/gms/internal/ads/zzarx;)Lcom/google/android/gms/internal/ads/zzcvs;

    move-result-object v1

    .line 61
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzfxn:Lcom/google/android/gms/internal/ads/zzblp;

    .line 62
    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/zzblp;->zza(Lcom/google/android/gms/internal/ads/zzarx;)Lcom/google/android/gms/internal/ads/zzcvs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcvs;->zzadq()Lcom/google/android/gms/internal/ads/zzcvb;

    move-result-object v2

    .line 63
    sget-object v3, Lcom/google/android/gms/internal/ads/zzalo;->zzddi:Lcom/google/android/gms/internal/ads/zzaln;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzalo;->zzddj:Lcom/google/android/gms/internal/ads/zzall;

    const-string v5, "google.afma.request.getSignals"

    .line 64
    invoke-virtual {v0, v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzalr;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzalm;Lcom/google/android/gms/internal/ads/zzall;)Lcom/google/android/gms/internal/ads/zzalj;

    move-result-object v0

    .line 65
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcvs;->zzadr()Lcom/google/android/gms/internal/ads/zzczt;

    move-result-object v1

    .line 66
    sget-object v3, Lcom/google/android/gms/internal/ads/zzczs;->zzgnc:Lcom/google/android/gms/internal/ads/zzczs;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzarx;->zzdot:Landroid/os/Bundle;

    .line 67
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbar;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbbg;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Lcom/google/android/gms/internal/ads/zzczf;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbbh;)Lcom/google/android/gms/internal/ads/zzczl;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcio;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzcio;-><init>(Lcom/google/android/gms/internal/ads/zzcvb;)V

    .line 68
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzczl;->zza(Lcom/google/android/gms/internal/ads/zzbal;)Lcom/google/android/gms/internal/ads/zzczl;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzczs;->zzgnd:Lcom/google/android/gms/internal/ads/zzczs;

    .line 69
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzczl;->zzx(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzczl;

    move-result-object p1

    .line 70
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzczl;->zza(Lcom/google/android/gms/internal/ads/zzbal;)Lcom/google/android/gms/internal/ads/zzczl;

    move-result-object p1

    .line 71
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzczl;->zzane()Lcom/google/android/gms/internal/ads/zzcze;

    move-result-object p1

    .line 73
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcig;->zza(Lcom/google/android/gms/internal/ads/zzbbh;Lcom/google/android/gms/internal/ads/zzarr;)V

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzarx;)Lcom/google/android/gms/internal/ads/zzbbh;
    .locals 11
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

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlt()Lcom/google/android/gms/internal/ads/zzalk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzlj:Landroid/content/Context;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbai;->zzxc()Lcom/google/android/gms/internal/ads/zzbai;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzalk;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbai;)Lcom/google/android/gms/internal/ads/zzalr;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzfxn:Lcom/google/android/gms/internal/ads/zzblp;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzblp;->zza(Lcom/google/android/gms/internal/ads/zzarx;)Lcom/google/android/gms/internal/ads/zzcvs;

    move-result-object v1

    .line 12
    new-instance v2, Lcom/google/android/gms/internal/ads/zzcih;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzcih;-><init>(Lcom/google/android/gms/internal/ads/zzcvs;)V

    .line 13
    sget-object v3, Lcom/google/android/gms/internal/ads/zzcii;->zzfvz:Lcom/google/android/gms/internal/ads/zzczc;

    .line 14
    sget-object v4, Lcom/google/android/gms/internal/ads/zzalo;->zzddi:Lcom/google/android/gms/internal/ads/zzaln;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzcij;->zzddk:Lcom/google/android/gms/internal/ads/zzall;

    const-string v6, "AFMA_getAdDictionary"

    .line 15
    invoke-virtual {v0, v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzalr;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzalm;Lcom/google/android/gms/internal/ads/zzall;)Lcom/google/android/gms/internal/ads/zzalj;

    move-result-object v4

    .line 16
    sget-object v5, Lcom/google/android/gms/internal/ads/zzcir;->zzfxv:Lcom/google/android/gms/internal/ads/zzalm;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzalo;->zzddj:Lcom/google/android/gms/internal/ads/zzall;

    const-string v7, "google.afma.response.normalize"

    .line 17
    invoke-virtual {v0, v7, v5, v6}, Lcom/google/android/gms/internal/ads/zzalr;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzalm;Lcom/google/android/gms/internal/ads/zzall;)Lcom/google/android/gms/internal/ads/zzalj;

    move-result-object v5

    .line 18
    new-instance v6, Lcom/google/android/gms/internal/ads/zzciu;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzlj:Landroid/content/Context;

    iget-object v8, p1, Lcom/google/android/gms/internal/ads/zzarx;->zzdld:Lcom/google/android/gms/internal/ads/zzbai;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzbai;->zzbsx:Ljava/lang/String;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzfxl:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v10, p1, Lcom/google/android/gms/internal/ads/zzarx;->zzdmi:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/google/android/gms/internal/ads/zzciu;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzasm;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcvs;->zzadr()Lcom/google/android/gms/internal/ads/zzczt;

    move-result-object v1

    .line 20
    sget-object v7, Lcom/google/android/gms/internal/ads/zzczs;->zzgmx:Lcom/google/android/gms/internal/ads/zzczs;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzarx;->zzdot:Landroid/os/Bundle;

    .line 21
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbar;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbbg;

    move-result-object p1

    invoke-virtual {v1, v7, p1}, Lcom/google/android/gms/internal/ads/zzczf;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbbh;)Lcom/google/android/gms/internal/ads/zzczl;

    move-result-object p1

    .line 22
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzczl;->zza(Lcom/google/android/gms/internal/ads/zzbal;)Lcom/google/android/gms/internal/ads/zzczl;

    move-result-object p1

    .line 23
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzczl;->zzb(Lcom/google/android/gms/internal/ads/zzczc;)Lcom/google/android/gms/internal/ads/zzczl;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzczl;->zzane()Lcom/google/android/gms/internal/ads/zzcze;

    move-result-object p1

    .line 25
    sget-object v2, Lcom/google/android/gms/internal/ads/zzacu;->zzcvp:Lcom/google/android/gms/internal/ads/zzacj;

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 28
    sget-object v2, Lcom/google/android/gms/internal/ads/zzalo;->zzddi:Lcom/google/android/gms/internal/ads/zzaln;

    const-string v3, "google.afma.request.getAdResponse"

    .line 29
    invoke-virtual {v0, v3, v2, v2}, Lcom/google/android/gms/internal/ads/zzalr;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzalm;Lcom/google/android/gms/internal/ads/zzall;)Lcom/google/android/gms/internal/ads/zzalj;

    move-result-object v0

    .line 30
    sget-object v2, Lcom/google/android/gms/internal/ads/zzczs;->zzgmy:Lcom/google/android/gms/internal/ads/zzczs;

    .line 31
    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzczf;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbbh;)Lcom/google/android/gms/internal/ads/zzczl;

    move-result-object p1

    .line 32
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzczl;->zza(Lcom/google/android/gms/internal/ads/zzbal;)Lcom/google/android/gms/internal/ads/zzczl;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcik;->zzfvz:Lcom/google/android/gms/internal/ads/zzczc;

    .line 33
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzczl;->zzb(Lcom/google/android/gms/internal/ads/zzczc;)Lcom/google/android/gms/internal/ads/zzczl;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzczl;->zzane()Lcom/google/android/gms/internal/ads/zzcze;

    move-result-object p1

    return-object p1

    .line 36
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzczs;->zzgmz:Lcom/google/android/gms/internal/ads/zzczs;

    .line 37
    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzczf;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbbh;)Lcom/google/android/gms/internal/ads/zzczl;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzczl;->zza(Lcom/google/android/gms/internal/ads/zzbal;)Lcom/google/android/gms/internal/ads/zzczl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzczl;->zzane()Lcom/google/android/gms/internal/ads/zzcze;

    move-result-object v0

    .line 38
    sget-object v2, Lcom/google/android/gms/internal/ads/zzczs;->zzgna:Lcom/google/android/gms/internal/ads/zzczs;

    const/4 v3, 0x2

    new-array v4, v3, [Lcom/google/android/gms/internal/ads/zzbbh;

    const/4 v7, 0x0

    aput-object v0, v4, v7

    const/4 v8, 0x1

    aput-object p1, v4, v8

    .line 39
    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzczf;->zza(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/zzbbh;)Lcom/google/android/gms/internal/ads/zzczh;

    move-result-object v2

    new-instance v4, Lcom/google/android/gms/internal/ads/zzcil;

    invoke-direct {v4, p1, v0}, Lcom/google/android/gms/internal/ads/zzcil;-><init>(Lcom/google/android/gms/internal/ads/zzbbh;Lcom/google/android/gms/internal/ads/zzbbh;)V

    .line 40
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzczh;->zzc(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzczl;

    move-result-object v2

    .line 41
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzczl;->zzb(Lcom/google/android/gms/internal/ads/zzczc;)Lcom/google/android/gms/internal/ads/zzczl;

    move-result-object v2

    .line 42
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzczl;->zzane()Lcom/google/android/gms/internal/ads/zzcze;

    move-result-object v2

    .line 43
    sget-object v4, Lcom/google/android/gms/internal/ads/zzczs;->zzgnb:Lcom/google/android/gms/internal/ads/zzczs;

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/google/android/gms/internal/ads/zzbbh;

    aput-object p1, v6, v7

    aput-object v0, v6, v8

    aput-object v2, v6, v3

    .line 44
    invoke-virtual {v1, v4, v6}, Lcom/google/android/gms/internal/ads/zzczf;->zza(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/zzbbh;)Lcom/google/android/gms/internal/ads/zzczh;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcim;

    invoke-direct {v3, v2, p1, v0}, Lcom/google/android/gms/internal/ads/zzcim;-><init>(Lcom/google/android/gms/internal/ads/zzbbh;Lcom/google/android/gms/internal/ads/zzbbh;Lcom/google/android/gms/internal/ads/zzbbh;)V

    .line 45
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzczh;->zzc(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzczl;

    move-result-object p1

    .line 46
    invoke-virtual {p1, v5}, Lcom/google/android/gms/internal/ads/zzczl;->zza(Lcom/google/android/gms/internal/ads/zzbal;)Lcom/google/android/gms/internal/ads/zzczl;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzczl;->zzane()Lcom/google/android/gms/internal/ads/zzcze;

    move-result-object p1

    return-object p1
.end method
