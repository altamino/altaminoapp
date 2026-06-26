.class public final Lcom/google/android/gms/internal/ads/zzcbi;
.super Ljava/lang/Object;


# instance fields
.field private final zzffv:Ljava/util/concurrent/Executor;

.field private final zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

.field private final zzfqh:Lcom/google/android/gms/internal/ads/zzcdn;

.field private final zzlj:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcxv;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzcdn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbi;->zzlj:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcbi;->zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcbi;->zzffv:Ljava/util/concurrent/Executor;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcbi;->zzfqh:Lcom/google/android/gms/internal/ads/zzcdn;

    return-void
.end method

.method private final zzj(Lcom/google/android/gms/internal/ads/zzbgz;)V
    .locals 2

    .line 17
    sget-object v0, Lcom/google/android/gms/internal/ads/zzagz;->zzdab:Lcom/google/android/gms/internal/ads/zzaho;

    const-string v1, "/video"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbgz;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 18
    sget-object v0, Lcom/google/android/gms/internal/ads/zzagz;->zzdac:Lcom/google/android/gms/internal/ads/zzaho;

    const-string v1, "/videoMeta"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbgz;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 19
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbgc;-><init>()V

    const-string v1, "/precache"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbgz;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 20
    sget-object v0, Lcom/google/android/gms/internal/ads/zzagz;->zzdaf:Lcom/google/android/gms/internal/ads/zzaho;

    const-string v1, "/delayPageLoaded"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbgz;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 21
    sget-object v0, Lcom/google/android/gms/internal/ads/zzagz;->zzdad:Lcom/google/android/gms/internal/ads/zzaho;

    const-string v1, "/instrument"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbgz;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 22
    sget-object v0, Lcom/google/android/gms/internal/ads/zzagz;->zzczw:Lcom/google/android/gms/internal/ads/zzaho;

    const-string v1, "/log"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbgz;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/ads/zzagz;->zzczx:Lcom/google/android/gms/internal/ads/zzaho;

    const-string v1, "/videoClicked"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbgz;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 24
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgz;->zzaai()Lcom/google/android/gms/internal/ads/zzbii;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbii;->zzau(Z)V

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbi;->zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcxv;->zzdne:Lcom/google/android/gms/internal/ads/zzaiy;

    if-eqz v0, :cond_0

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/zzahs;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzahs;-><init>(Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzapr;)V

    const-string v1, "/open"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbgz;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    :cond_0
    return-void
.end method


# virtual methods
.method final synthetic zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbbh;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcbi;->zzfqh:Lcom/google/android/gms/internal/ads/zzcdn;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbi;->zzlj:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzyd;->zzg(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzyd;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/ads/zzcdn;->zzc(Lcom/google/android/gms/internal/ads/zzyd;)Lcom/google/android/gms/internal/ads/zzbgz;

    move-result-object p3

    .line 39
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzbbq;->zzn(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbbq;

    move-result-object v0

    .line 40
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzcbi;->zzj(Lcom/google/android/gms/internal/ads/zzbgz;)V

    .line 41
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbi;->zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzcxv;->zzdne:Lcom/google/android/gms/internal/ads/zzaiy;

    if-eqz v1, :cond_0

    .line 42
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbin;->zzabw()Lcom/google/android/gms/internal/ads/zzbin;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/google/android/gms/internal/ads/zzbgz;->zza(Lcom/google/android/gms/internal/ads/zzbin;)V

    goto :goto_0

    .line 43
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbin;->zzabv()Lcom/google/android/gms/internal/ads/zzbin;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/google/android/gms/internal/ads/zzbgz;->zza(Lcom/google/android/gms/internal/ads/zzbin;)V

    .line 45
    :goto_0
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzbgz;->zzaai()Lcom/google/android/gms/internal/ads/zzbii;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcbn;

    invoke-direct {v2, p0, p3, v0}, Lcom/google/android/gms/internal/ads/zzcbn;-><init>(Lcom/google/android/gms/internal/ads/zzcbi;Lcom/google/android/gms/internal/ads/zzbgz;Lcom/google/android/gms/internal/ads/zzbbq;)V

    .line 46
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzbii;->zza(Lcom/google/android/gms/internal/ads/zzbij;)V

    const/4 v1, 0x0

    .line 47
    invoke-interface {p3, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzbgz;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method final synthetic zza(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzbgz;)Lcom/google/android/gms/internal/ads/zzbbh;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbbq;->zzn(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbbq;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbi;->zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzcxv;->zzdne:Lcom/google/android/gms/internal/ads/zzaiy;

    if-eqz v1, :cond_0

    .line 55
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbin;->zzabw()Lcom/google/android/gms/internal/ads/zzbin;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/zzbgz;->zza(Lcom/google/android/gms/internal/ads/zzbin;)V

    goto :goto_0

    .line 56
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbin;->zzabv()Lcom/google/android/gms/internal/ads/zzbin;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/zzbgz;->zza(Lcom/google/android/gms/internal/ads/zzbin;)V

    .line 58
    :goto_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbgz;->zzaai()Lcom/google/android/gms/internal/ads/zzbii;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcbo;

    invoke-direct {v2, p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzcbo;-><init>(Lcom/google/android/gms/internal/ads/zzcbi;Lcom/google/android/gms/internal/ads/zzbgz;Lcom/google/android/gms/internal/ads/zzbbq;)V

    .line 59
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzbii;->zza(Lcom/google/android/gms/internal/ads/zzbij;)V

    const-string v1, "google.afma.nativeAds.renderVideo"

    .line 60
    invoke-interface {p2, v1, p1}, Lcom/google/android/gms/internal/ads/zzakg;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method final synthetic zza(Lcom/google/android/gms/internal/ads/zzbgz;Lcom/google/android/gms/internal/ads/zzbbq;Z)V
    .locals 0

    .line 49
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcbi;->zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzcxv;->zzgla:Lcom/google/android/gms/internal/ads/zzacd;

    if-eqz p3, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgz;->zzyb()Lcom/google/android/gms/internal/ads/zzbhq;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 50
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgz;->zzyb()Lcom/google/android/gms/internal/ads/zzbhq;

    move-result-object p1

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcbi;->zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzcxv;->zzgla:Lcom/google/android/gms/internal/ads/zzacd;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzbhq;->zzb(Lcom/google/android/gms/internal/ads/zzacd;)V

    .line 51
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbbq;->zzxe()V

    return-void
.end method

.method final synthetic zzb(Lcom/google/android/gms/internal/ads/zzbgz;Lcom/google/android/gms/internal/ads/zzbbq;Z)V
    .locals 0

    .line 62
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcbi;->zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzcxv;->zzgla:Lcom/google/android/gms/internal/ads/zzacd;

    if-eqz p3, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgz;->zzyb()Lcom/google/android/gms/internal/ads/zzbhq;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 63
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgz;->zzyb()Lcom/google/android/gms/internal/ads/zzbhq;

    move-result-object p1

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcbi;->zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzcxv;->zzgla:Lcom/google/android/gms/internal/ads/zzacd;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzbhq;->zzb(Lcom/google/android/gms/internal/ads/zzacd;)V

    .line 64
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbbq;->zzxe()V

    return-void
.end method

.method public final zzm(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzbbh;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzbbh<",
            "Lcom/google/android/gms/internal/ads/zzbgz;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbar;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbbg;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcbl;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcbl;-><init>(Lcom/google/android/gms/internal/ads/zzcbi;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcbi;->zzffv:Ljava/util/concurrent/Executor;

    .line 11
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbar;->zza(Lcom/google/android/gms/internal/ads/zzbbh;Lcom/google/android/gms/internal/ads/zzbal;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object v0

    .line 12
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcbj;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzcbj;-><init>(Lcom/google/android/gms/internal/ads/zzcbi;Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbi;->zzffv:Ljava/util/concurrent/Executor;

    .line 13
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbar;->zza(Lcom/google/android/gms/internal/ads/zzbbh;Lcom/google/android/gms/internal/ads/zzbal;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object p1

    return-object p1
.end method

.method public final zzq(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbbh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzbbh<",
            "Lcom/google/android/gms/internal/ads/zzbgz;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbar;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbbg;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcbk;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcbk;-><init>(Lcom/google/android/gms/internal/ads/zzcbi;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbi;->zzffv:Ljava/util/concurrent/Executor;

    .line 16
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbar;->zza(Lcom/google/android/gms/internal/ads/zzbbh;Lcom/google/android/gms/internal/ads/zzbal;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzs(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbbh;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbi;->zzfqh:Lcom/google/android/gms/internal/ads/zzcdn;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbi;->zzlj:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzyd;->zzg(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzyd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcdn;->zzc(Lcom/google/android/gms/internal/ads/zzyd;)Lcom/google/android/gms/internal/ads/zzbgz;

    move-result-object p1

    .line 29
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzn(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbbq;

    move-result-object v0

    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcbi;->zzj(Lcom/google/android/gms/internal/ads/zzbgz;)V

    .line 32
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgz;->zzaai()Lcom/google/android/gms/internal/ads/zzbii;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcbm;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzcbm;-><init>(Lcom/google/android/gms/internal/ads/zzbbq;)V

    .line 33
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzbii;->zza(Lcom/google/android/gms/internal/ads/zzbik;)V

    .line 34
    sget-object v1, Lcom/google/android/gms/internal/ads/zzacu;->zzcsd:Lcom/google/android/gms/internal/ads/zzacj;

    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzbgz;->loadUrl(Ljava/lang/String;)V

    return-object v0
.end method
