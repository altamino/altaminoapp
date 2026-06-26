.class public final Lcom/google/android/gms/internal/ads/zzcae;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbzb;


# instance fields
.field private final zzbtc:Lcom/google/android/gms/internal/ads/zzbai;

.field private final zzfig:Lcom/google/android/gms/internal/ads/zzcxm;

.field private final zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

.field private final zzfmr:Lcom/google/android/gms/internal/ads/zzbrt;

.field private final zzfms:Lcom/google/android/gms/internal/ads/zzbri;

.field private zzfmw:Z

.field private zzfmz:Z

.field private final zzfqm:Lcom/google/android/gms/internal/ads/zzana;

.field private final zzfqn:Lcom/google/android/gms/internal/ads/zzand;

.field private final zzfqo:Lcom/google/android/gms/internal/ads/zzang;

.field private final zzlj:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzana;Lcom/google/android/gms/internal/ads/zzand;Lcom/google/android/gms/internal/ads/zzang;Lcom/google/android/gms/internal/ads/zzbrt;Lcom/google/android/gms/internal/ads/zzbri;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcxm;Lcom/google/android/gms/internal/ads/zzbai;Lcom/google/android/gms/internal/ads/zzcxv;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfmw:Z

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfmz:Z

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfqm:Lcom/google/android/gms/internal/ads/zzana;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfqn:Lcom/google/android/gms/internal/ads/zzand;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfqo:Lcom/google/android/gms/internal/ads/zzang;

    .line 7
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfmr:Lcom/google/android/gms/internal/ads/zzbrt;

    .line 8
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfms:Lcom/google/android/gms/internal/ads/zzbri;

    .line 9
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzlj:Landroid/content/Context;

    .line 10
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfig:Lcom/google/android/gms/internal/ads/zzcxm;

    .line 11
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzbtc:Lcom/google/android/gms/internal/ads/zzbai;

    .line 12
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

    return-void
.end method

.method private final zzaa(Landroid/view/View;)V
    .locals 1

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfqo:Lcom/google/android/gms/internal/ads/zzang;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfqo:Lcom/google/android/gms/internal/ads/zzang;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzang;->getOverrideClickHandling()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfqo:Lcom/google/android/gms/internal/ads/zzang;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzang;->zzt(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 68
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfms:Lcom/google/android/gms/internal/ads/zzbri;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbri;->onAdClicked()V

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfqm:Lcom/google/android/gms/internal/ads/zzana;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfqm:Lcom/google/android/gms/internal/ads/zzana;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzana;->getOverrideClickHandling()Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfqm:Lcom/google/android/gms/internal/ads/zzana;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzana;->zzt(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 71
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfms:Lcom/google/android/gms/internal/ads/zzbri;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbri;->onAdClicked()V

    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfqn:Lcom/google/android/gms/internal/ads/zzand;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfqn:Lcom/google/android/gms/internal/ads/zzand;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzand;->getOverrideClickHandling()Z

    move-result v0

    if-nez v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfqn:Lcom/google/android/gms/internal/ads/zzand;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzand;->zzt(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 74
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfms:Lcom/google/android/gms/internal/ads/zzbri;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbri;->onAdClicked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    const-string v0, "Failed to call handleClick"

    .line 77
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static zzb(Ljava/util/Map;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 43
    :cond_0
    monitor-enter p0

    .line 44
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 45
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 47
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 49
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public final cancelUnconfirmedClick()V
    .locals 0

    return-void
.end method

.method public final destroy()V
    .locals 0

    return-void
.end method

.method public final setClickConfirmingView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final zza(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final zza(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;Z)V"
        }
    .end annotation

    .line 62
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfmz:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfig:Lcom/google/android/gms/internal/ads/zzcxm;

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzcxm;->zzdft:Z

    if-eqz p2, :cond_0

    return-void

    .line 64
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcae;->zzaa(Landroid/view/View;)V

    return-void
.end method

.method public final zza(Landroid/view/View;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    .line 51
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 52
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfqo:Lcom/google/android/gms/internal/ads/zzang;

    if-eqz p2, :cond_0

    .line 53
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfqo:Lcom/google/android/gms/internal/ads/zzang;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzang;->zzv(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void

    .line 54
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfqm:Lcom/google/android/gms/internal/ads/zzana;

    if-eqz p2, :cond_1

    .line 55
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfqm:Lcom/google/android/gms/internal/ads/zzana;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzana;->zzv(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void

    .line 56
    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfqn:Lcom/google/android/gms/internal/ads/zzand;

    if-eqz p2, :cond_2

    .line 57
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfqn:Lcom/google/android/gms/internal/ads/zzand;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzand;->zzv(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    const-string p2, "Failed to call untrackView"

    .line 60
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    .line 91
    :try_start_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfmw:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfig:Lcom/google/android/gms/internal/ads/zzcxm;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcxm;->zzgkj:Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    .line 92
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfmw:Z

    .line 93
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlq()Lcom/google/android/gms/internal/ads/zzayi;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzlj:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzbtc:Lcom/google/android/gms/internal/ads/zzbai;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbai;->zzbsx:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfig:Lcom/google/android/gms/internal/ads/zzcxm;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzcxm;->zzgkj:Lorg/json/JSONObject;

    .line 94
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzcxv;->zzglb:Ljava/lang/String;

    .line 95
    invoke-virtual {p2, p3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzayi;->zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    or-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfmw:Z

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfqo:Lcom/google/android/gms/internal/ads/zzang;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfqo:Lcom/google/android/gms/internal/ads/zzang;

    .line 97
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzang;->getOverrideImpressionRecording()Z

    move-result p1

    if-nez p1, :cond_1

    .line 98
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfqo:Lcom/google/android/gms/internal/ads/zzang;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzang;->recordImpression()V

    .line 99
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfmr:Lcom/google/android/gms/internal/ads/zzbrt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbrt;->onAdImpression()V

    return-void

    .line 100
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfqm:Lcom/google/android/gms/internal/ads/zzana;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfqm:Lcom/google/android/gms/internal/ads/zzana;

    .line 101
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzana;->getOverrideImpressionRecording()Z

    move-result p1

    if-nez p1, :cond_2

    .line 102
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfqm:Lcom/google/android/gms/internal/ads/zzana;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzana;->recordImpression()V

    .line 103
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfmr:Lcom/google/android/gms/internal/ads/zzbrt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbrt;->onAdImpression()V

    return-void

    .line 104
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfqn:Lcom/google/android/gms/internal/ads/zzand;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfqn:Lcom/google/android/gms/internal/ads/zzand;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzand;->getOverrideImpressionRecording()Z

    move-result p1

    if-nez p1, :cond_3

    .line 105
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfqn:Lcom/google/android/gms/internal/ads/zzand;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzand;->recordImpression()V

    .line 106
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfmr:Lcom/google/android/gms/internal/ads/zzbrt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbrt;->onAdImpression()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    const-string p2, "Failed to call recordImpression"

    .line 109
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Landroid/view/View$OnTouchListener;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .line 14
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 16
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzcae;->zzb(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p2

    .line 18
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzcae;->zzb(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p3

    .line 19
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfqo:Lcom/google/android/gms/internal/ads/zzang;

    if-eqz p4, :cond_0

    .line 20
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfqo:Lcom/google/android/gms/internal/ads/zzang;

    .line 21
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    .line 22
    invoke-static {p3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p3

    .line 23
    invoke-interface {p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzang;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void

    .line 24
    :cond_0
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfqm:Lcom/google/android/gms/internal/ads/zzana;

    if-eqz p4, :cond_1

    .line 25
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfqm:Lcom/google/android/gms/internal/ads/zzana;

    .line 26
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    .line 27
    invoke-static {p3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p3

    .line 28
    invoke-interface {p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzana;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 29
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfqm:Lcom/google/android/gms/internal/ads/zzana;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzana;->zzu(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void

    .line 30
    :cond_1
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfqn:Lcom/google/android/gms/internal/ads/zzand;

    if-eqz p4, :cond_2

    .line 31
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfqn:Lcom/google/android/gms/internal/ads/zzand;

    .line 32
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    .line 33
    invoke-static {p3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p3

    .line 34
    invoke-interface {p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzand;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 35
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfqn:Lcom/google/android/gms/internal/ads/zzand;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzand;->zzu(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    const-string p2, "Failed to call trackView"

    .line 38
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;Z)V"
        }
    .end annotation

    .line 81
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfmz:Z

    if-nez p2, :cond_0

    const-string p1, "Custom click reporting for 3p ads failed. enableCustomClickGesture is not set."

    .line 82
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzep(Ljava/lang/String;)V

    return-void

    .line 84
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfig:Lcom/google/android/gms/internal/ads/zzcxm;

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzcxm;->zzdft:Z

    if-nez p2, :cond_1

    const-string p1, "Custom click reporting for 3p ads failed. Ad unit id not whitelisted."

    .line 85
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzep(Ljava/lang/String;)V

    return-void

    .line 87
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcae;->zzaa(Landroid/view/View;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaag;)V
    .locals 0

    const-string p1, "Mute This Ad is not supported for 3rd party ads"

    .line 121
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzep(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaak;)V
    .locals 0

    const-string p1, "Mute This Ad is not supported for 3rd party ads"

    .line 119
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzep(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzagd;)V
    .locals 0

    return-void
.end method

.method public final zzahk()V
    .locals 0

    return-void
.end method

.method public final zzahl()V
    .locals 1

    const-string v0, "Mute This Ad is not supported for 3rd party ads"

    .line 123
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbad;->zzep(Ljava/lang/String;)V

    return-void
.end method

.method public final zzahm()V
    .locals 0

    return-void
.end method

.method public final zzf(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final zzfi(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zzg(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final zzh(Landroid/os/Bundle;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final zzro()V
    .locals 1

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcae;->zzfmz:Z

    return-void
.end method
