.class public final Lcom/google/android/gms/internal/ads/zzcqq;
.super Lcom/google/android/gms/internal/ads/zzawb;


# instance fields
.field private zzgfq:Lcom/google/android/gms/internal/ads/zzbjm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbjm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawb;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqq;->zzgfq:Lcom/google/android/gms/internal/ads/zzbjm;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzawc;Lcom/google/android/gms/internal/ads/zzavy;)V
    .locals 4

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 5
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzawc;->zzchk:Ljava/lang/String;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzawc;->zzbsu:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzawc;->zzdsu:Lcom/google/android/gms/internal/ads/zzyd;

    .line 7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcqq;->zzgfq:Lcom/google/android/gms/internal/ads/zzbjm;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbjm;->zzacn()Lcom/google/android/gms/internal/ads/zzcqp;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbqy$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzbqy$zza;-><init>()V

    .line 9
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzbqy$zza;->zzbt(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbqy$zza;

    move-result-object p1

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcxx;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzcxx;-><init>()V

    .line 10
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzcxx;->zzft(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcxx;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/internal/ads/zzya;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzya;-><init>()V

    .line 11
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzya;->zzot()Lcom/google/android/gms/internal/ads/zzxz;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzcxx;->zzg(Lcom/google/android/gms/internal/ads/zzxz;)Lcom/google/android/gms/internal/ads/zzcxx;

    move-result-object v0

    .line 12
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzcxx;->zzd(Lcom/google/android/gms/internal/ads/zzyd;)Lcom/google/android/gms/internal/ads/zzcxx;

    move-result-object p2

    .line 13
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcxx;->zzamq()Lcom/google/android/gms/internal/ads/zzcxv;

    move-result-object p2

    .line 14
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbqy$zza;->zza(Lcom/google/android/gms/internal/ads/zzcxv;)Lcom/google/android/gms/internal/ads/zzbqy$zza;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbqy$zza;->zzagh()Lcom/google/android/gms/internal/ads/zzbqy;

    move-result-object p1

    .line 16
    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/zzcqp;->zze(Lcom/google/android/gms/internal/ads/zzbqy;)Lcom/google/android/gms/internal/ads/zzcqp;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcqt$zza;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzcqt$zza;-><init>()V

    .line 17
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzcqt$zza;->zzfs(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcqt$zza;

    move-result-object p2

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcqt;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/google/android/gms/internal/ads/zzcqt;-><init>(Lcom/google/android/gms/internal/ads/zzcqt$zza;Lcom/google/android/gms/internal/ads/zzcqu;)V

    .line 19
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzcqp;->zza(Lcom/google/android/gms/internal/ads/zzcqt;)Lcom/google/android/gms/internal/ads/zzcqp;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbtv$zza;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzbtv$zza;-><init>()V

    .line 20
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbtv$zza;->zzagt()Lcom/google/android/gms/internal/ads/zzbtv;

    .line 21
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcqp;->zzaem()Lcom/google/android/gms/internal/ads/zzcqo;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcqo;->zzaen()Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object p1

    .line 23
    new-instance p2, Lcom/google/android/gms/internal/ads/zzcqr;

    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/internal/ads/zzcqr;-><init>(Lcom/google/android/gms/internal/ads/zzcqq;Lcom/google/android/gms/internal/ads/zzavy;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcqq;->zzgfq:Lcom/google/android/gms/internal/ads/zzbjm;

    .line 24
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzbjm;->zzace()Ljava/util/concurrent/Executor;

    move-result-object p3

    .line 25
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbar;->zza(Lcom/google/android/gms/internal/ads/zzbbh;Lcom/google/android/gms/internal/ads/zzban;Ljava/util/concurrent/Executor;)V

    return-void
.end method
