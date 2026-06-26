.class final Lcom/google/android/gms/internal/ads/zzbnh;
.super Lcom/google/android/gms/internal/ads/zzbnf;


# instance fields
.field private final view:Landroid/view/View;

.field private final zzdbs:Lcom/google/android/gms/internal/ads/zzbgz;

.field private final zzffv:Ljava/util/concurrent/Executor;

.field private final zzfgx:Lcom/google/android/gms/internal/ads/zzcxn;

.field private final zzfgy:Lcom/google/android/gms/internal/ads/zzbpb;

.field private final zzfgz:Lcom/google/android/gms/internal/ads/zzbzc;

.field private final zzfha:Lcom/google/android/gms/internal/ads/zzbvd;

.field private final zzfhb:Lcom/google/android/gms/internal/ads/zzdte;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdte<",
            "Lcom/google/android/gms/internal/ads/zzcpm;",
            ">;"
        }
    .end annotation
.end field

.field private final zzlj:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcxn;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbgz;Lcom/google/android/gms/internal/ads/zzbpb;Lcom/google/android/gms/internal/ads/zzbzc;Lcom/google/android/gms/internal/ads/zzbvd;Lcom/google/android/gms/internal/ads/zzdte;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzcxn;",
            "Landroid/view/View;",
            "Lcom/google/android/gms/internal/ads/zzbgz;",
            "Lcom/google/android/gms/internal/ads/zzbpb;",
            "Lcom/google/android/gms/internal/ads/zzbzc;",
            "Lcom/google/android/gms/internal/ads/zzbvd;",
            "Lcom/google/android/gms/internal/ads/zzdte<",
            "Lcom/google/android/gms/internal/ads/zzcpm;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbnf;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbnh;->zzlj:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbnh;->view:Landroid/view/View;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbnh;->zzdbs:Lcom/google/android/gms/internal/ads/zzbgz;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbnh;->zzfgx:Lcom/google/android/gms/internal/ads/zzcxn;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbnh;->zzfgy:Lcom/google/android/gms/internal/ads/zzbpb;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzbnh;->zzfgz:Lcom/google/android/gms/internal/ads/zzbzc;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzbnh;->zzfha:Lcom/google/android/gms/internal/ads/zzbvd;

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzbnh;->zzfhb:Lcom/google/android/gms/internal/ads/zzdte;

    .line 10
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzbnh;->zzffv:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final getVideoController()Lcom/google/android/gms/internal/ads/zzaar;
    .locals 1

    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnh;->zzfgy:Lcom/google/android/gms/internal/ads/zzbpb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbpb;->getVideoController()Lcom/google/android/gms/internal/ads/zzaar;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zza(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzyd;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnh;->zzdbs:Lcom/google/android/gms/internal/ads/zzbgz;

    if-eqz v0, :cond_0

    .line 14
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbin;->zzb(Lcom/google/android/gms/internal/ads/zzyd;)Lcom/google/android/gms/internal/ads/zzbin;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbgz;->zza(Lcom/google/android/gms/internal/ads/zzbin;)V

    .line 15
    iget v0, p2, Lcom/google/android/gms/internal/ads/zzyd;->heightPixels:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    .line 16
    iget p2, p2, Lcom/google/android/gms/internal/ads/zzyd;->widthPixels:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setMinimumWidth(I)V

    :cond_0
    return-void
.end method

.method public final zzafi()Landroid/view/View;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnh;->view:Landroid/view/View;

    return-object v0
.end method

.method public final zzafj()Lcom/google/android/gms/internal/ads/zzcxn;
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpc;->zzfig:Lcom/google/android/gms/internal/ads/zzcxm;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcxm;->zzgkd:Ljava/util/List;

    const/4 v1, 0x0

    .line 22
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcxn;

    return-object v0
.end method

.method public final zzafk()I
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpc;->zzffa:Lcom/google/android/gms/internal/ads/zzcxu;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcxu;->zzgky:Lcom/google/android/gms/internal/ads/zzcxs;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcxs;->zzgku:Lcom/google/android/gms/internal/ads/zzcxo;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzcxo;->zzgkr:I

    return v0
.end method

.method public final zzafl()V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnh;->zzffv:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbni;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbni;-><init>(Lcom/google/android/gms/internal/ads/zzbnh;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 28
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbpc;->zzafl()V

    return-void
.end method

.method final synthetic zzafm()V
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnh;->zzfgz:Lcom/google/android/gms/internal/ads/zzbzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzc;->zzail()Lcom/google/android/gms/internal/ads/zzafu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnh;->zzfgz:Lcom/google/android/gms/internal/ads/zzbzc;

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzc;->zzail()Lcom/google/android/gms/internal/ads/zzafu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbnh;->zzfhb:Lcom/google/android/gms/internal/ads/zzdte;

    .line 34
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdte;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzzk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbnh;->zzlj:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzafu;->zza(Lcom/google/android/gms/internal/ads/zzzk;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "RemoteException when notifyAdLoad is called"

    .line 37
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbad;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final zzpm()V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnh;->zzfha:Lcom/google/android/gms/internal/ads/zzbvd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbvd;->zzagx()V

    return-void
.end method
