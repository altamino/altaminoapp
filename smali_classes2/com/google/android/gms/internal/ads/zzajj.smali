.class public final Lcom/google/android/gms/internal/ads/zzajj;
.super Lcom/google/android/gms/internal/ads/zzaju;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzajq;
.implements Lcom/google/android/gms/internal/ads/zzajw;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzard;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzaju<",
        "Lcom/google/android/gms/internal/ads/zzalf;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzajq;",
        "Lcom/google/android/gms/internal/ads/zzajw;"
    }
.end annotation


# instance fields
.field private final zzdbh:Lcom/google/android/gms/internal/ads/zzbjb;

.field private zzdbi:Lcom/google/android/gms/internal/ads/zzajx;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbai;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbhj;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaju;-><init>()V

    .line 2
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbjb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzajp;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzajp;-><init>(Lcom/google/android/gms/internal/ads/zzajj;Lcom/google/android/gms/internal/ads/zzajn;)V

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbjb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbiz;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzdbh:Lcom/google/android/gms/internal/ads/zzbjb;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzdbh:Lcom/google/android/gms/internal/ads/zzbjb;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzdbh:Lcom/google/android/gms/internal/ads/zzbjb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzajo;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzajo;-><init>(Lcom/google/android/gms/internal/ads/zzajt;Lcom/google/android/gms/internal/ads/zzajn;)V

    const-string v2, "GoogleJsInterface"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbjb;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlg()Lcom/google/android/gms/internal/ads/zzaxi;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzbai;->zzbsx:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzdbh:Lcom/google/android/gms/internal/ads/zzbjb;

    .line 6
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzaxi;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebSettings;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-super {p0, p0}, Lcom/google/android/gms/internal/ads/zzaju;->zzg(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 9
    new-instance p2, Lcom/google/android/gms/internal/ads/zzbhj;

    const-string v0, "Init failed."

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzbhj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzajj;)Lcom/google/android/gms/internal/ads/zzajx;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzdbi:Lcom/google/android/gms/internal/ads/zzajx;

    return-object p0
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzdbh:Lcom/google/android/gms/internal/ads/zzbjb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbjb;->destroy()V

    return-void
.end method

.method public final isDestroyed()Z
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzdbh:Lcom/google/android/gms/internal/ads/zzbjb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbjb;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzajx;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzdbi:Lcom/google/android/gms/internal/ads/zzajx;

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzajr;->zza(Lcom/google/android/gms/internal/ads/zzajq;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzajr;->zzb(Lcom/google/android/gms/internal/ads/zzajq;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzajr;->zza(Lcom/google/android/gms/internal/ads/zzajq;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final zzcl(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "<!DOCTYPE html><html><head><script src=\"%s\"></script></head></html>"

    .line 12
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzajj;->zzcm(Ljava/lang/String;)V

    return-void
.end method

.method public final zzcm(Ljava/lang/String;)V
    .locals 2

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbm;->zzeae:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzajk;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzajk;-><init>(Lcom/google/android/gms/internal/ads/zzajj;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzcn(Ljava/lang/String;)V
    .locals 2

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbm;->zzeae:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzajl;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzajl;-><init>(Lcom/google/android/gms/internal/ads/zzajj;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzco(Ljava/lang/String;)V
    .locals 2

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbm;->zzeae:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzajm;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzajm;-><init>(Lcom/google/android/gms/internal/ads/zzajj;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic zzcp(Ljava/lang/String;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzdbh:Lcom/google/android/gms/internal/ads/zzbjb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbjb;->zzco(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic zzcq(Ljava/lang/String;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzdbh:Lcom/google/android/gms/internal/ads/zzbjb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbjb;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic zzcr(Ljava/lang/String;)V
    .locals 3

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzdbh:Lcom/google/android/gms/internal/ads/zzbjb;

    const-string v1, "text/html"

    const-string v2, "UTF-8"

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzbjb;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzajr;->zza(Lcom/google/android/gms/internal/ads/zzajq;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzru()Lcom/google/android/gms/internal/ads/zzalg;
    .locals 1

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/ads/zzalh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzalh;-><init>(Lcom/google/android/gms/internal/ads/zzalf;)V

    return-object v0
.end method
