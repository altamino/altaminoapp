.class public final Lcom/google/android/gms/internal/ads/zzbzq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final zzbsa:Lcom/google/android/gms/common/util/Clock;

.field private final zzfpz:Lcom/google/android/gms/internal/ads/zzccj;

.field private zzfqa:Lcom/google/android/gms/internal/ads/zzagd;

.field private zzfqb:Lcom/google/android/gms/internal/ads/zzaho;

.field zzfqc:Ljava/lang/String;

.field zzfqd:Ljava/lang/Long;

.field zzfqe:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzccj;Lcom/google/android/gms/common/util/Clock;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzq;->zzfpz:Lcom/google/android/gms/internal/ads/zzccj;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbzq;->zzbsa:Lcom/google/android/gms/common/util/Clock;

    return-void
.end method

.method private final zzaja()V
    .locals 3

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzq;->zzfqc:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzq;->zzfqd:Ljava/lang/Long;

    .line 38
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbzq;->zzfqe:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    return-void

    .line 40
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    .line 43
    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 44
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzq;->zzfqe:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final cancelUnconfirmedClick()V
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzq;->zzfqa:Lcom/google/android/gms/internal/ads/zzagd;

    if-nez v0, :cond_0

    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzq;->zzfqd:Ljava/lang/Long;

    if-nez v0, :cond_1

    return-void

    .line 16
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbzq;->zzaja()V

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzq;->zzfqa:Lcom/google/android/gms/internal/ads/zzagd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzagd;->onUnconfirmedClickCancelled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 20
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbad;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzq;->zzfqe:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    goto :goto_1

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzq;->zzfqc:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzq;->zzfqd:Ljava/lang/Long;

    if-nez p1, :cond_1

    goto :goto_0

    .line 27
    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzq;->zzfqc:Ljava/lang/String;

    const-string v1, "id"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzq;->zzbsa:Lcom/google/android/gms/common/util/Clock;

    .line 30
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbzq;->zzfqd:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "time_interval"

    .line 31
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "messageType"

    const-string v1, "onePointFiveClick"

    .line 32
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzq;->zzfpz:Lcom/google/android/gms/internal/ads/zzccj;

    const-string v1, "sendMessageToNativeJs"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzccj;->zza(Ljava/lang/String;Ljava/util/Map;)V

    .line 34
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbzq;->zzaja()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzagd;)V
    .locals 3

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzq;->zzfqa:Lcom/google/android/gms/internal/ads/zzagd;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzq;->zzfqb:Lcom/google/android/gms/internal/ads/zzaho;

    const-string v1, "/unconfirmedClick"

    if-eqz v0, :cond_0

    .line 7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbzq;->zzfpz:Lcom/google/android/gms/internal/ads/zzccj;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzccj;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 8
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbzr;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbzr;-><init>(Lcom/google/android/gms/internal/ads/zzbzq;Lcom/google/android/gms/internal/ads/zzagd;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzq;->zzfqb:Lcom/google/android/gms/internal/ads/zzaho;

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzq;->zzfpz:Lcom/google/android/gms/internal/ads/zzccj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzq;->zzfqb:Lcom/google/android/gms/internal/ads/zzaho;

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzccj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    return-void
.end method

.method public final zzaiz()Lcom/google/android/gms/internal/ads/zzagd;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzq;->zzfqa:Lcom/google/android/gms/internal/ads/zzagd;

    return-object v0
.end method
