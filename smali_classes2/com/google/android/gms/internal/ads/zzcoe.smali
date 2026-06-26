.class public final Lcom/google/android/gms/internal/ads/zzcoe;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcjv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Ljava/lang/Object;",
        "AdapterT:",
        "Ljava/lang/Object;",
        "ListenerT::Lcom/google/android/gms/internal/ads/zzbsm;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcjv<",
        "TAdT;>;"
    }
.end annotation


# instance fields
.field private final zzfef:Lcom/google/android/gms/internal/ads/zzcjz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzcjz<",
            "TAdapterT;T",
            "ListenerT;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgbk:Lcom/google/android/gms/internal/ads/zzczt;

.field private final zzgch:Lcom/google/android/gms/internal/ads/zzcka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzcka<",
            "TAdT;TAdapterT;T",
            "ListenerT;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgci:Lcom/google/android/gms/internal/ads/zzbbl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzczt;Lcom/google/android/gms/internal/ads/zzbbl;Lcom/google/android/gms/internal/ads/zzcjz;Lcom/google/android/gms/internal/ads/zzcka;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzczt;",
            "Lcom/google/android/gms/internal/ads/zzbbl;",
            "Lcom/google/android/gms/internal/ads/zzcjz<",
            "TAdapterT;T",
            "ListenerT;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzcka<",
            "TAdT;TAdapterT;T",
            "ListenerT;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoe;->zzgbk:Lcom/google/android/gms/internal/ads/zzczt;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcoe;->zzgci:Lcom/google/android/gms/internal/ads/zzbbl;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcoe;->zzgch:Lcom/google/android/gms/internal/ads/zzcka;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcoe;->zzfef:Lcom/google/android/gms/internal/ads/zzcjz;

    return-void
.end method


# virtual methods
.method final synthetic zza(Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzcxm;Lcom/google/android/gms/internal/ads/zzcjy;Ljava/lang/Void;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzcoe;->zzgch:Lcom/google/android/gms/internal/ads/zzcka;

    invoke-interface {p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcka;->zzb(Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzcxm;Lcom/google/android/gms/internal/ads/zzcjy;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzcxm;)Z
    .locals 0

    .line 7
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzcxm;->zzgkf:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzcxm;)Lcom/google/android/gms/internal/ads/zzbbh;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcxu;",
            "Lcom/google/android/gms/internal/ads/zzcxm;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzbbh<",
            "TAdT;>;"
        }
    .end annotation

    .line 8
    const-class v0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    .line 9
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzcxm;->zzgkf:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 10
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcoe;->zzfef:Lcom/google/android/gms/internal/ads/zzcjz;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzcxm;->zzgkh:Lorg/json/JSONObject;

    invoke-interface {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzcjz;->zzd(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzcjy;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    nop

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_1

    .line 15
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcmk;

    const-string/jumbo p2, "unable to instantiate mediation adapter class"

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzcmk;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbar;->zzd(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbbf;

    move-result-object p1

    return-object p1

    .line 17
    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbbr;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzbbr;-><init>()V

    .line 19
    new-instance v3, Lcom/google/android/gms/internal/ads/zzcoh;

    invoke-direct {v3, p0, v2, v1}, Lcom/google/android/gms/internal/ads/zzcoh;-><init>(Lcom/google/android/gms/internal/ads/zzcoe;Lcom/google/android/gms/internal/ads/zzbbr;Lcom/google/android/gms/internal/ads/zzcjy;)V

    .line 20
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzcjy;->zzfzn:Lcom/google/android/gms/internal/ads/zzbsm;

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/ads/zzbsm;->zza(Lcom/google/android/gms/internal/ads/zzbsn;)V

    .line 22
    iget-boolean v3, p2, Lcom/google/android/gms/internal/ads/zzcxm;->zzdpc:Z

    if-eqz v3, :cond_3

    .line 23
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzcxu;->zzgkx:Lcom/google/android/gms/internal/ads/zzcxr;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzcxr;->zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzcxv;->zzghg:Lcom/google/android/gms/internal/ads/zzxz;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzxz;->zzcgv:Landroid/os/Bundle;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_2

    .line 26
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 27
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    const/4 v0, 0x1

    const-string v3, "render_test_ad_label"

    .line 28
    invoke-virtual {v4, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 29
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoe;->zzgbk:Lcom/google/android/gms/internal/ads/zzczt;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzczs;->zzgng:Lcom/google/android/gms/internal/ads/zzczs;

    .line 30
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzczf;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzczj;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcof;

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzcof;-><init>(Lcom/google/android/gms/internal/ads/zzcoe;Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzcxm;Lcom/google/android/gms/internal/ads/zzcjy;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcoe;->zzgci:Lcom/google/android/gms/internal/ads/zzbbl;

    .line 31
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzczj;->zza(Lcom/google/android/gms/internal/ads/zzczd;Lcom/google/android/gms/internal/ads/zzbbl;)Lcom/google/android/gms/internal/ads/zzczl;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/internal/ads/zzczs;->zzgnh:Lcom/google/android/gms/internal/ads/zzczs;

    .line 32
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzczl;->zzx(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzczl;

    move-result-object v0

    .line 33
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzczl;->zzb(Lcom/google/android/gms/internal/ads/zzbbh;)Lcom/google/android/gms/internal/ads/zzczl;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzczs;->zzgni:Lcom/google/android/gms/internal/ads/zzczs;

    .line 34
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzczl;->zzx(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzczl;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcog;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzcog;-><init>(Lcom/google/android/gms/internal/ads/zzcoe;Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzcxm;Lcom/google/android/gms/internal/ads/zzcjy;)V

    .line 35
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzczl;->zzb(Lcom/google/android/gms/internal/ads/zzczc;)Lcom/google/android/gms/internal/ads/zzczl;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzczl;->zzane()Lcom/google/android/gms/internal/ads/zzcze;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzd(Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzcxm;Lcom/google/android/gms/internal/ads/zzcjy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoe;->zzgch:Lcom/google/android/gms/internal/ads/zzcka;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcka;->zza(Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzcxm;Lcom/google/android/gms/internal/ads/zzcjy;)V

    return-void
.end method
