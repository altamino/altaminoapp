.class public final Lcom/google/android/gms/internal/ads/zzcme;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcka;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcka<",
        "Lcom/google/android/gms/internal/ads/zzbyn;",
        "Lcom/google/android/gms/internal/ads/zzams;",
        "Lcom/google/android/gms/internal/ads/zzcla;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzgav:Lcom/google/android/gms/internal/ads/zzbxo;

.field private final zzlj:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbxo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcme;->zzlj:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcme;->zzgav:Lcom/google/android/gms/internal/ads/zzbxo;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzcxu;I)Z
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcxu;->zzgkx:Lcom/google/android/gms/internal/ads/zzcxr;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcxr;->zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcxv;->zzglc:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzcxm;Lcom/google/android/gms/internal/ads/zzcjy;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcxu;",
            "Lcom/google/android/gms/internal/ads/zzcxm;",
            "Lcom/google/android/gms/internal/ads/zzcjy<",
            "Lcom/google/android/gms/internal/ads/zzams;",
            "Lcom/google/android/gms/internal/ads/zzcla;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzcjy;->zzdgc:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzams;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcme;->zzlj:Landroid/content/Context;

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzcxu;->zzgkx:Lcom/google/android/gms/internal/ads/zzcxr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcxr;->zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzcxv;->zzghg:Lcom/google/android/gms/internal/ads/zzxz;

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzcxm;->zzgkh:Lorg/json/JSONObject;

    .line 7
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzcxm;->zzgke:Lcom/google/android/gms/internal/ads/zzcxq;

    .line 8
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzazc;->zza(Lcom/google/android/gms/internal/ads/zzazf;)Ljava/lang/String;

    move-result-object v5

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzcjy;->zzfzn:Lcom/google/android/gms/internal/ads/zzbsm;

    move-object v6, p2

    check-cast v6, Lcom/google/android/gms/internal/ads/zzamv;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcxu;->zzgkx:Lcom/google/android/gms/internal/ads/zzcxr;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcxr;->zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

    iget-object v7, p1, Lcom/google/android/gms/internal/ads/zzcxv;->zzdgs:Lcom/google/android/gms/internal/ads/zzady;

    iget-object v8, p1, Lcom/google/android/gms/internal/ads/zzcxv;->zzglc:Ljava/util/ArrayList;

    .line 9
    invoke-interface/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzams;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzxz;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamv;Lcom/google/android/gms/internal/ads/zzady;Ljava/util/List;)V

    return-void
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzcxm;Lcom/google/android/gms/internal/ads/zzcjy;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/gms/internal/ads/zzcmw;
        }
    .end annotation

    .line 13
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzcjy;->zzdgc:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzams;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzams;->zzsf()Lcom/google/android/gms/internal/ads/zzana;

    move-result-object v0

    .line 14
    iget-object v1, p3, Lcom/google/android/gms/internal/ads/zzcjy;->zzdgc:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzams;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzams;->zzsg()Lcom/google/android/gms/internal/ads/zzand;

    move-result-object v1

    .line 15
    iget-object v2, p3, Lcom/google/android/gms/internal/ads/zzcjy;->zzdgc:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzams;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzams;->zzsl()Lcom/google/android/gms/internal/ads/zzang;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x6

    if-eqz v2, :cond_0

    .line 16
    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/zzcme;->zza(Lcom/google/android/gms/internal/ads/zzcxu;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 17
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbyt;->zzb(Lcom/google/android/gms/internal/ads/zzang;)Lcom/google/android/gms/internal/ads/zzbyt;

    move-result-object v4

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 19
    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/zzcme;->zza(Lcom/google/android/gms/internal/ads/zzcxu;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 20
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbyt;->zzb(Lcom/google/android/gms/internal/ads/zzana;)Lcom/google/android/gms/internal/ads/zzbyt;

    move-result-object v4

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const/4 v5, 0x2

    .line 22
    invoke-static {p1, v5}, Lcom/google/android/gms/internal/ads/zzcme;->zza(Lcom/google/android/gms/internal/ads/zzcxu;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 23
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbyt;->zza(Lcom/google/android/gms/internal/ads/zzana;)Lcom/google/android/gms/internal/ads/zzbyt;

    move-result-object v4

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 24
    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/zzcme;->zza(Lcom/google/android/gms/internal/ads/zzcxu;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 25
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbyt;->zzb(Lcom/google/android/gms/internal/ads/zzand;)Lcom/google/android/gms/internal/ads/zzbyt;

    move-result-object v4

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_5

    const/4 v4, 0x1

    .line 26
    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/zzcme;->zza(Lcom/google/android/gms/internal/ads/zzcxu;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 27
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbyt;->zza(Lcom/google/android/gms/internal/ads/zzand;)Lcom/google/android/gms/internal/ads/zzbyt;

    move-result-object v4

    .line 29
    :goto_0
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzcxu;->zzgkx:Lcom/google/android/gms/internal/ads/zzcxr;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzcxr;->zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzcxv;->zzglc:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbyt;->zzahv()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 31
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 33
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcme;->zzgav:Lcom/google/android/gms/internal/ads/zzbxo;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzbpr;

    iget-object v6, p3, Lcom/google/android/gms/internal/ads/zzcjy;->zzfis:Ljava/lang/String;

    invoke-direct {v5, p1, p2, v6}, Lcom/google/android/gms/internal/ads/zzbpr;-><init>(Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzcxm;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbzf;

    invoke-direct {p1, v4}, Lcom/google/android/gms/internal/ads/zzbzf;-><init>(Lcom/google/android/gms/internal/ads/zzbyt;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcag;

    invoke-direct {p2, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzcag;-><init>(Lcom/google/android/gms/internal/ads/zzand;Lcom/google/android/gms/internal/ads/zzana;Lcom/google/android/gms/internal/ads/zzang;)V

    .line 34
    invoke-virtual {v3, v5, p1, p2}, Lcom/google/android/gms/internal/ads/zzbxo;->zza(Lcom/google/android/gms/internal/ads/zzbpr;Lcom/google/android/gms/internal/ads/zzbzf;Lcom/google/android/gms/internal/ads/zzcag;)Lcom/google/android/gms/internal/ads/zzbyw;

    move-result-object p1

    .line 35
    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzcjy;->zzfzn:Lcom/google/android/gms/internal/ads/zzbsm;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzcla;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbpd;->zzadi()Lcom/google/android/gms/internal/ads/zzcoj;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzcla;->zza(Lcom/google/android/gms/internal/ads/zzamv;)V

    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbyu;->zzadj()Lcom/google/android/gms/internal/ads/zzbyn;

    move-result-object p1

    return-object p1

    .line 32
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcmw;

    const-string p2, "No corresponding native ad listener"

    invoke-direct {p1, p2, v3}, Lcom/google/android/gms/internal/ads/zzcmw;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 28
    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcmw;

    const-string p2, "No native ad mappers"

    invoke-direct {p1, p2, v3}, Lcom/google/android/gms/internal/ads/zzcmw;-><init>(Ljava/lang/String;I)V

    throw p1
.end method
