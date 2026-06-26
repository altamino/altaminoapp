.class public final Lcom/google/android/gms/internal/ads/zzbzt;
.super Ljava/lang/Object;


# instance fields
.field private final zzfno:Lcom/google/android/gms/internal/ads/zzbzb;

.field private final zzfpz:Lcom/google/android/gms/internal/ads/zzccj;

.field private final zzfqh:Lcom/google/android/gms/internal/ads/zzcdn;

.field private final zzfqi:Lcom/google/android/gms/internal/ads/zzbmy;

.field private final zzlj:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcdn;Lcom/google/android/gms/internal/ads/zzccj;Lcom/google/android/gms/internal/ads/zzbmy;Lcom/google/android/gms/internal/ads/zzbzb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzt;->zzlj:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbzt;->zzfqh:Lcom/google/android/gms/internal/ads/zzcdn;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbzt;->zzfpz:Lcom/google/android/gms/internal/ads/zzccj;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbzt;->zzfqi:Lcom/google/android/gms/internal/ads/zzbmy;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbzt;->zzfno:Lcom/google/android/gms/internal/ads/zzbzb;

    return-void
.end method


# virtual methods
.method final synthetic zza(Lcom/google/android/gms/internal/ads/zzbgz;Ljava/util/Map;)V
    .locals 0

    .line 16
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgz;->getView()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzt;->zzfqi:Lcom/google/android/gms/internal/ads/zzbmy;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbmy;->zzax(Z)V

    return-void
.end method

.method final synthetic zza(Ljava/util/Map;Z)V
    .locals 2

    .line 22
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "messageType"

    const-string v1, "htmlLoaded"

    .line 23
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "id"

    .line 24
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzt;->zzfpz:Lcom/google/android/gms/internal/ads/zzccj;

    const-string v0, "sendMessageToNativeJs"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzccj;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzajb()Landroid/view/View;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbhj;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzt;->zzfqh:Lcom/google/android/gms/internal/ads/zzcdn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbzt;->zzlj:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzyd;->zzg(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzyd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcdn;->zzc(Lcom/google/android/gms/internal/ads/zzyd;)Lcom/google/android/gms/internal/ads/zzbgz;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgz;->getView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 10
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbzu;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbzu;-><init>(Lcom/google/android/gms/internal/ads/zzbzt;)V

    const-string v2, "/sendMessageToSdk"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbgz;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 11
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbzv;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbzv;-><init>(Lcom/google/android/gms/internal/ads/zzbzt;)V

    const-string v2, "/adMuted"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbgz;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbzt;->zzfpz:Lcom/google/android/gms/internal/ads/zzccj;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbzw;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzbzw;-><init>(Lcom/google/android/gms/internal/ads/zzbzt;)V

    const-string v4, "/loadHtml"

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzccj;->zza(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbzt;->zzfpz:Lcom/google/android/gms/internal/ads/zzccj;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbzx;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzbzx;-><init>(Lcom/google/android/gms/internal/ads/zzbzt;)V

    const-string v4, "/showOverlay"

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzccj;->zza(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbzt;->zzfpz:Lcom/google/android/gms/internal/ads/zzccj;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbzy;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzbzy;-><init>(Lcom/google/android/gms/internal/ads/zzbzt;)V

    const-string v4, "/hideOverlay"

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzccj;->zza(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaho;)V

    .line 15
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgz;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzb(Lcom/google/android/gms/internal/ads/zzbgz;Ljava/util/Map;)V
    .locals 0

    .line 19
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgz;->getView()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 20
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzt;->zzfqi:Lcom/google/android/gms/internal/ads/zzbmy;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbmy;->zzax(Z)V

    return-void
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzbgz;Ljava/util/Map;)V
    .locals 0

    .line 27
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzt;->zzfno:Lcom/google/android/gms/internal/ads/zzbzb;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbzb;->zzahl()V

    return-void
.end method

.method final synthetic zzd(Lcom/google/android/gms/internal/ads/zzbgz;Ljava/util/Map;)V
    .locals 1

    .line 28
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzt;->zzfpz:Lcom/google/android/gms/internal/ads/zzccj;

    const-string v0, "sendMessageToNativeJs"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzccj;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
