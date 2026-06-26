.class public abstract Lcom/google/android/gms/internal/ads/zzbjm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzblp;


# static fields
.field private static zzeod:Lcom/google/android/gms/internal/ads/zzbjm;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzamp;I)Lcom/google/android/gms/internal/ads/zzbjm;
    .locals 0

    .line 2
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ads/zzbjm;->zzd(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzbjm;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbjm;->zzach()Lcom/google/android/gms/internal/ads/zzclc;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzclc;->zzb(Lcom/google/android/gms/internal/ads/zzamp;)V

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzbai;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbkw$zza;)Lcom/google/android/gms/internal/ads/zzbjm;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11
    const-class v0, Lcom/google/android/gms/internal/ads/zzbjm;

    monitor-enter v0

    .line 12
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbjm;->zzeod:Lcom/google/android/gms/internal/ads/zzbjm;

    if-nez v1, :cond_0

    .line 13
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbkn;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzbkn;-><init>(Lcom/google/android/gms/internal/ads/zzbkd;)V

    .line 14
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbjn$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzbjn$zza;-><init>()V

    .line 15
    invoke-virtual {v3, p0}, Lcom/google/android/gms/internal/ads/zzbjn$zza;->zza(Lcom/google/android/gms/internal/ads/zzbai;)Lcom/google/android/gms/internal/ads/zzbjn$zza;

    move-result-object v3

    .line 16
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzbjn$zza;->zzbo(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbjn$zza;

    move-result-object v3

    .line 18
    new-instance v4, Lcom/google/android/gms/internal/ads/zzbjn;

    invoke-direct {v4, v3, v2}, Lcom/google/android/gms/internal/ads/zzbjn;-><init>(Lcom/google/android/gms/internal/ads/zzbjn$zza;Lcom/google/android/gms/internal/ads/zzbjo;)V

    .line 19
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzbkn;->zzc(Lcom/google/android/gms/internal/ads/zzbjn;)Lcom/google/android/gms/internal/ads/zzbkn;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbkw;

    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/ads/zzbkw;-><init>(Lcom/google/android/gms/internal/ads/zzbkw$zza;)V

    .line 20
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbkn;->zza(Lcom/google/android/gms/internal/ads/zzbkw;)Lcom/google/android/gms/internal/ads/zzbkn;

    move-result-object p2

    .line 21
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbkn;->zzaec()Lcom/google/android/gms/internal/ads/zzbjm;

    move-result-object p2

    sput-object p2, Lcom/google/android/gms/internal/ads/zzbjm;->zzeod:Lcom/google/android/gms/internal/ads/zzbjm;

    .line 22
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzacu;->initialize(Landroid/content/Context;)V

    .line 23
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlk()Lcom/google/android/gms/internal/ads/zzawm;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/google/android/gms/internal/ads/zzawm;->zzd(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbai;)V

    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlm()Lcom/google/android/gms/internal/ads/zzvn;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzvn;->initialize(Landroid/content/Context;)V

    .line 25
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlg()Lcom/google/android/gms/internal/ads/zzaxi;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzak(Landroid/content/Context;)Z

    .line 26
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlg()Lcom/google/android/gms/internal/ads/zzaxi;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzal(Landroid/content/Context;)Z

    .line 27
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzawx;->zzaj(Landroid/content/Context;)V

    .line 28
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlj()Lcom/google/android/gms/internal/ads/zzuq;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzuq;->initialize(Landroid/content/Context;)V

    .line 29
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzmb()Lcom/google/android/gms/internal/ads/zzazp;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzazp;->initialize(Landroid/content/Context;)V

    .line 30
    sget-object p2, Lcom/google/android/gms/internal/ads/zzacu;->zzcwt:Lcom/google/android/gms/internal/ads/zzacj;

    .line 31
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object p2

    .line 32
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 33
    new-instance p2, Lcom/google/android/gms/internal/ads/zzcjr;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzwj;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzwo;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zzwo;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzwj;-><init>(Lcom/google/android/gms/internal/ads/zzwo;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcjc;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcja;

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/ads/zzcja;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbjm;->zzeod:Lcom/google/android/gms/internal/ads/zzbjm;

    .line 34
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbjm;->zzacf()Lcom/google/android/gms/internal/ads/zzbbl;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzcjc;-><init>(Lcom/google/android/gms/internal/ads/zzcja;Lcom/google/android/gms/internal/ads/zzbbl;)V

    invoke-direct {p2, p1, p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcjr;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbai;Lcom/google/android/gms/internal/ads/zzwj;Lcom/google/android/gms/internal/ads/zzcjc;)V

    .line 35
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcjr;->zzakp()V

    .line 36
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbjm;->zzeod:Lcom/google/android/gms/internal/ads/zzbjm;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 37
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static zzd(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzbjm;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    const-class v0, Lcom/google/android/gms/internal/ads/zzbjm;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbjm;->zzeod:Lcom/google/android/gms/internal/ads/zzbjm;

    if-eqz v1, :cond_0

    .line 7
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbjm;->zzeod:Lcom/google/android/gms/internal/ads/zzbjm;

    monitor-exit v0

    return-object p0

    .line 8
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbai;

    const v1, 0xe4e1c0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbai;-><init>(IIZZ)V

    .line 10
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbkb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbkb;-><init>()V

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbjm;->zza(Lcom/google/android/gms/internal/ads/zzbai;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbkw$zza;)Lcom/google/android/gms/internal/ads/zzbjm;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzarx;)Lcom/google/android/gms/internal/ads/zzcvs;
    .locals 1

    .line 38
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcwx;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzcwx;-><init>(Lcom/google/android/gms/internal/ads/zzarx;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbjm;->zza(Lcom/google/android/gms/internal/ads/zzcwx;)Lcom/google/android/gms/internal/ads/zzcvs;

    move-result-object p1

    return-object p1
.end method

.method protected abstract zza(Lcom/google/android/gms/internal/ads/zzcwx;)Lcom/google/android/gms/internal/ads/zzcvs;
.end method

.method public abstract zzace()Ljava/util/concurrent/Executor;
.end method

.method public abstract zzacf()Lcom/google/android/gms/internal/ads/zzbbl;
.end method

.method public abstract zzacg()Lcom/google/android/gms/internal/ads/zzbtb;
.end method

.method public abstract zzach()Lcom/google/android/gms/internal/ads/zzclc;
.end method

.method public abstract zzaci()Lcom/google/android/gms/internal/ads/zzbkz;
.end method

.method public abstract zzacj()Lcom/google/android/gms/internal/ads/zzbod;
.end method

.method public abstract zzack()Lcom/google/android/gms/internal/ads/zzbwt;
.end method

.method public abstract zzacl()Lcom/google/android/gms/internal/ads/zzbxp;
.end method

.method public abstract zzacm()Lcom/google/android/gms/internal/ads/zzcdg;
.end method

.method public abstract zzacn()Lcom/google/android/gms/internal/ads/zzcqp;
.end method
