.class public final Lcom/google/android/gms/internal/ads/zzclq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcka;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcka<",
        "Lcom/google/android/gms/internal/ads/zzbvx;",
        "Lcom/google/android/gms/internal/ads/zzaov;",
        "Lcom/google/android/gms/internal/ads/zzcla;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfzy:Lcom/google/android/gms/internal/ads/zzbws;

.field private final zzlj:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbws;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclq;->zzlj:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzclq;->zzfzy:Lcom/google/android/gms/internal/ads/zzbws;

    return-void
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

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzclq;->zzlj:Landroid/content/Context;

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/ads/zzclt;

    const/4 p1, 0x0

    invoke-direct {v6, p0, p3, p1}, Lcom/google/android/gms/internal/ads/zzclt;-><init>(Lcom/google/android/gms/internal/ads/zzclq;Lcom/google/android/gms/internal/ads/zzcjy;Lcom/google/android/gms/internal/ads/zzcls;)V

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzcjy;->zzfzn:Lcom/google/android/gms/internal/ads/zzbsm;

    move-object v7, p1

    check-cast v7, Lcom/google/android/gms/internal/ads/zzamv;

    .line 8
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzaov;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzxz;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzaom;Lcom/google/android/gms/internal/ads/zzamv;)V

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

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcjx;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzcjx;-><init>(Lcom/google/android/gms/internal/ads/zzcxm;)V

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclq;->zzfzy:Lcom/google/android/gms/internal/ads/zzbws;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbpr;

    iget-object v3, p3, Lcom/google/android/gms/internal/ads/zzcjy;->zzfis:Ljava/lang/String;

    invoke-direct {v2, p1, p2, v3}, Lcom/google/android/gms/internal/ads/zzbpr;-><init>(Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzcxm;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbvz;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzclr;

    invoke-direct {p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzclr;-><init>(Lcom/google/android/gms/internal/ads/zzcjy;Lcom/google/android/gms/internal/ads/zzcjx;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzbvz;-><init>(Lcom/google/android/gms/internal/ads/zzbwz;)V

    .line 13
    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzbws;->zza(Lcom/google/android/gms/internal/ads/zzbpr;Lcom/google/android/gms/internal/ads/zzbvz;)Lcom/google/android/gms/internal/ads/zzbvy;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbpd;->zzadg()Lcom/google/android/gms/internal/ads/zzbrt;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzcjx;->zza(Lcom/google/android/gms/internal/ads/zzbrt;)V

    .line 15
    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzcjy;->zzfzn:Lcom/google/android/gms/internal/ads/zzbsm;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzcla;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbpd;->zzadi()Lcom/google/android/gms/internal/ads/zzcoj;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzcla;->zza(Lcom/google/android/gms/internal/ads/zzamv;)V

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbvy;->zzaee()Lcom/google/android/gms/internal/ads/zzbvx;

    move-result-object p1

    return-object p1
.end method
