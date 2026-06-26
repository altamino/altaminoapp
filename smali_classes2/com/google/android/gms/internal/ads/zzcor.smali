.class public final Lcom/google/android/gms/internal/ads/zzcor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcjv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcjv<",
        "TAdT;>;"
    }
.end annotation


# instance fields
.field private final zzgbk:Lcom/google/android/gms/internal/ads/zzczt;

.field private final zzgci:Lcom/google/android/gms/internal/ads/zzbbl;

.field private final zzgco:Lcom/google/android/gms/internal/ads/zzado;

.field private final zzgcv:Lcom/google/android/gms/internal/ads/zzcou;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzcou<",
            "TAdT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzczt;Lcom/google/android/gms/internal/ads/zzbbl;Lcom/google/android/gms/internal/ads/zzado;Lcom/google/android/gms/internal/ads/zzcou;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzczt;",
            "Lcom/google/android/gms/internal/ads/zzbbl;",
            "Lcom/google/android/gms/internal/ads/zzado;",
            "Lcom/google/android/gms/internal/ads/zzcou<",
            "TAdT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcor;->zzgbk:Lcom/google/android/gms/internal/ads/zzczt;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcor;->zzgci:Lcom/google/android/gms/internal/ads/zzbbl;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcor;->zzgco:Lcom/google/android/gms/internal/ads/zzado;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcor;->zzgcv:Lcom/google/android/gms/internal/ads/zzcou;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcor;)Lcom/google/android/gms/internal/ads/zzcou;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcor;->zzgcv:Lcom/google/android/gms/internal/ads/zzcou;

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzcxm;)Z
    .locals 0

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcor;->zzgco:Lcom/google/android/gms/internal/ads/zzado;

    if-eqz p1, :cond_0

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzcxm;->zzgke:Lcom/google/android/gms/internal/ads/zzcxq;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcxq;->zzdkp:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzcxm;)Lcom/google/android/gms/internal/ads/zzbbh;
    .locals 9
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
    new-instance v6, Lcom/google/android/gms/internal/ads/zzbbr;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzbbr;-><init>()V

    .line 10
    new-instance v7, Lcom/google/android/gms/internal/ads/zzcoz;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzcoz;-><init>()V

    .line 11
    new-instance v8, Lcom/google/android/gms/internal/ads/zzcot;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzcot;-><init>(Lcom/google/android/gms/internal/ads/zzcor;Lcom/google/android/gms/internal/ads/zzbbr;Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzcxm;Lcom/google/android/gms/internal/ads/zzcoz;)V

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzcoz;->zza(Lcom/google/android/gms/ads/internal/zzf;)V

    .line 12
    new-instance p1, Lcom/google/android/gms/internal/ads/zzadj;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzcxm;->zzgke:Lcom/google/android/gms/internal/ads/zzcxq;

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzcxq;->zzdkn:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzcxq;->zzdkp:Ljava/lang/String;

    invoke-direct {p1, v7, v0, p2}, Lcom/google/android/gms/internal/ads/zzadj;-><init>(Lcom/google/android/gms/ads/internal/zzf;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcor;->zzgbk:Lcom/google/android/gms/internal/ads/zzczt;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzczs;->zzgnj:Lcom/google/android/gms/internal/ads/zzczs;

    .line 14
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzczf;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzczj;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcos;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzcos;-><init>(Lcom/google/android/gms/internal/ads/zzcor;Lcom/google/android/gms/internal/ads/zzadj;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcor;->zzgci:Lcom/google/android/gms/internal/ads/zzbbl;

    .line 15
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzczj;->zza(Lcom/google/android/gms/internal/ads/zzczd;Lcom/google/android/gms/internal/ads/zzbbl;)Lcom/google/android/gms/internal/ads/zzczl;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzczs;->zzgnk:Lcom/google/android/gms/internal/ads/zzczs;

    .line 16
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzczl;->zzx(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzczl;

    move-result-object p1

    .line 17
    invoke-virtual {p1, v6}, Lcom/google/android/gms/internal/ads/zzczl;->zzb(Lcom/google/android/gms/internal/ads/zzbbh;)Lcom/google/android/gms/internal/ads/zzczl;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzczl;->zzane()Lcom/google/android/gms/internal/ads/zzcze;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzb(Lcom/google/android/gms/internal/ads/zzadj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcor;->zzgco:Lcom/google/android/gms/internal/ads/zzado;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzado;->zza(Lcom/google/android/gms/internal/ads/zzadl;)V

    return-void
.end method
