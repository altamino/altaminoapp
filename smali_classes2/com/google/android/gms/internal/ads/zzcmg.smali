.class public final Lcom/google/android/gms/internal/ads/zzcmg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcka;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcka<",
        "Lcom/google/android/gms/internal/ads/zzbyn;",
        "Lcom/google/android/gms/internal/ads/zzaov;",
        "Lcom/google/android/gms/internal/ads/zzcla;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzgav:Lcom/google/android/gms/internal/ads/zzbxo;

.field private zzgba:Lcom/google/android/gms/internal/ads/zzang;

.field private final zzlj:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbxo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmg;->zzlj:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmg;->zzgav:Lcom/google/android/gms/internal/ads/zzbxo;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcmg;Lcom/google/android/gms/internal/ads/zzang;)Lcom/google/android/gms/internal/ads/zzang;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmg;->zzgba:Lcom/google/android/gms/internal/ads/zzang;

    return-object p1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzcxm;Lcom/google/android/gms/internal/ads/zzcjy;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcxu;",
            "Lcom/google/android/gms/internal/ads/zzcxm;",
            "Lcom/google/android/gms/internal/ads/zzcjy<",
            "Lcom/google/android/gms/internal/ads/zzaov;",
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

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaov;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzcxm;->zzemu:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzcxm;->zzgkh:Lorg/json/JSONObject;

    .line 6
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcxu;->zzgkx:Lcom/google/android/gms/internal/ads/zzcxr;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcxr;->zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzcxv;->zzghg:Lcom/google/android/gms/internal/ads/zzxz;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmg;->zzlj:Landroid/content/Context;

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/ads/zzcmi;

    const/4 p1, 0x0

    invoke-direct {v6, p0, p3, p1}, Lcom/google/android/gms/internal/ads/zzcmi;-><init>(Lcom/google/android/gms/internal/ads/zzcmg;Lcom/google/android/gms/internal/ads/zzcjy;Lcom/google/android/gms/internal/ads/zzcmh;)V

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzcjy;->zzfzn:Lcom/google/android/gms/internal/ads/zzbsm;

    move-object v7, p1

    check-cast v7, Lcom/google/android/gms/internal/ads/zzamv;

    .line 8
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzaov;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzxz;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzaop;Lcom/google/android/gms/internal/ads/zzamv;)V

    return-void
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzcxm;Lcom/google/android/gms/internal/ads/zzcjy;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/gms/internal/ads/zzcmw;
        }
    .end annotation

    .line 12
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzcxu;->zzgkx:Lcom/google/android/gms/internal/ads/zzcxr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcxr;->zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcxv;->zzglc:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmg;->zzgba:Lcom/google/android/gms/internal/ads/zzang;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbyt;->zzb(Lcom/google/android/gms/internal/ads/zzang;)Lcom/google/android/gms/internal/ads/zzbyt;

    move-result-object v0

    .line 16
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzcxu;->zzgkx:Lcom/google/android/gms/internal/ads/zzcxr;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzcxr;->zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzcxv;->zzglc:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyt;->zzahv()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmg;->zzgav:Lcom/google/android/gms/internal/ads/zzbxo;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbpr;

    iget-object v3, p3, Lcom/google/android/gms/internal/ads/zzcjy;->zzfis:Ljava/lang/String;

    invoke-direct {v2, p1, p2, v3}, Lcom/google/android/gms/internal/ads/zzbpr;-><init>(Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzcxm;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbzf;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzbzf;-><init>(Lcom/google/android/gms/internal/ads/zzbyt;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcag;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmg;->zzgba:Lcom/google/android/gms/internal/ads/zzang;

    const/4 v3, 0x0

    invoke-direct {p2, v3, v3, v0}, Lcom/google/android/gms/internal/ads/zzcag;-><init>(Lcom/google/android/gms/internal/ads/zzand;Lcom/google/android/gms/internal/ads/zzana;Lcom/google/android/gms/internal/ads/zzang;)V

    .line 21
    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzbxo;->zza(Lcom/google/android/gms/internal/ads/zzbpr;Lcom/google/android/gms/internal/ads/zzbzf;Lcom/google/android/gms/internal/ads/zzcag;)Lcom/google/android/gms/internal/ads/zzbyw;

    move-result-object p1

    .line 22
    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzcjy;->zzfzn:Lcom/google/android/gms/internal/ads/zzbsm;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzcla;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbpd;->zzadi()Lcom/google/android/gms/internal/ads/zzcoj;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzcla;->zza(Lcom/google/android/gms/internal/ads/zzamv;)V

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbyu;->zzadj()Lcom/google/android/gms/internal/ads/zzbyn;

    move-result-object p1

    return-object p1

    .line 19
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcmw;

    const/4 p2, 0x0

    const-string p3, "No corresponding native ad listener"

    invoke-direct {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzcmw;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 14
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcmw;

    const/4 p2, 0x1

    const-string p3, "Unified must be used for RTB."

    invoke-direct {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzcmw;-><init>(Ljava/lang/String;I)V

    throw p1
.end method
