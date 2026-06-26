.class public final Lcom/google/android/gms/internal/ads/zzcln;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcka;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcka<",
        "Lcom/google/android/gms/internal/ads/zzbvx;",
        "Lcom/google/android/gms/internal/ads/zzams;",
        "Lcom/google/android/gms/internal/ads/zzcla;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzbrc:Lcom/google/android/gms/internal/ads/zzbai;

.field private final zzfzy:Lcom/google/android/gms/internal/ads/zzbws;

.field private final zzlj:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbai;Lcom/google/android/gms/internal/ads/zzbws;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcln;->zzlj:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcln;->zzbrc:Lcom/google/android/gms/internal/ads/zzbai;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcln;->zzfzy:Lcom/google/android/gms/internal/ads/zzbws;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzcxm;Lcom/google/android/gms/internal/ads/zzcjy;)V
    .locals 7
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

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcln;->zzbrc:Lcom/google/android/gms/internal/ads/zzbai;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbai;->zzdzd:I

    const v1, 0x3e8fa0

    if-ge v0, v1, :cond_0

    .line 7
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzcjy;->zzdgc:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzams;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcln;->zzlj:Landroid/content/Context;

    .line 8
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcxu;->zzgkx:Lcom/google/android/gms/internal/ads/zzcxr;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcxr;->zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcxv;->zzghg:Lcom/google/android/gms/internal/ads/zzxz;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzcxm;->zzgkh:Lorg/json/JSONObject;

    .line 9
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzcjy;->zzfzn:Lcom/google/android/gms/internal/ads/zzbsm;

    check-cast p3, Lcom/google/android/gms/internal/ads/zzamv;

    .line 10
    invoke-interface {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzams;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzxz;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamv;)V

    return-void

    .line 11
    :cond_0
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzcjy;->zzdgc:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzams;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcln;->zzlj:Landroid/content/Context;

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcxu;->zzgkx:Lcom/google/android/gms/internal/ads/zzcxr;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcxr;->zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzcxv;->zzghg:Lcom/google/android/gms/internal/ads/zzxz;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzcxm;->zzgkh:Lorg/json/JSONObject;

    .line 13
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzcxm;->zzgke:Lcom/google/android/gms/internal/ads/zzcxq;

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazc;->zza(Lcom/google/android/gms/internal/ads/zzazf;)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzcjy;->zzfzn:Lcom/google/android/gms/internal/ads/zzbsm;

    move-object v6, p1

    check-cast v6, Lcom/google/android/gms/internal/ads/zzamv;

    .line 15
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzams;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzxz;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamv;)V

    return-void
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzcxm;Lcom/google/android/gms/internal/ads/zzcjy;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/gms/internal/ads/zzcmw;
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcln;->zzfzy:Lcom/google/android/gms/internal/ads/zzbws;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbpr;

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/zzcjy;->zzfis:Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzbpr;-><init>(Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzcxm;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbvz;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzclo;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zzclo;-><init>(Lcom/google/android/gms/internal/ads/zzcjy;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzbvz;-><init>(Lcom/google/android/gms/internal/ads/zzbwz;)V

    .line 19
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbws;->zza(Lcom/google/android/gms/internal/ads/zzbpr;Lcom/google/android/gms/internal/ads/zzbvz;)Lcom/google/android/gms/internal/ads/zzbvy;

    move-result-object p1

    .line 20
    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzcjy;->zzfzn:Lcom/google/android/gms/internal/ads/zzbsm;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzcla;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbpd;->zzadi()Lcom/google/android/gms/internal/ads/zzcoj;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzcla;->zza(Lcom/google/android/gms/internal/ads/zzamv;)V

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbvy;->zzaee()Lcom/google/android/gms/internal/ads/zzbvx;

    move-result-object p1

    return-object p1
.end method
