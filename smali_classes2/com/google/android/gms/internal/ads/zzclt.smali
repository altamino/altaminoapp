.class final Lcom/google/android/gms/internal/ads/zzclt;
.super Lcom/google/android/gms/internal/ads/zzaon;


# instance fields
.field private zzfzw:Lcom/google/android/gms/internal/ads/zzcjy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzcjy<",
            "Lcom/google/android/gms/internal/ads/zzaov;",
            "Lcom/google/android/gms/internal/ads/zzcla;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzclq;Lcom/google/android/gms/internal/ads/zzcjy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaon;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzclt;->zzfzw:Lcom/google/android/gms/internal/ads/zzcjy;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzclq;Lcom/google/android/gms/internal/ads/zzcjy;Lcom/google/android/gms/internal/ads/zzcls;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzclt;-><init>(Lcom/google/android/gms/internal/ads/zzclq;Lcom/google/android/gms/internal/ads/zzcjy;)V

    return-void
.end method


# virtual methods
.method public final zzdb(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzclt;->zzfzw:Lcom/google/android/gms/internal/ads/zzcjy;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcjy;->zzfzn:Lcom/google/android/gms/internal/ads/zzbsm;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcla;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcla;->onAdFailedToLoad(I)V

    return-void
.end method

.method public final zzsw()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclt;->zzfzw:Lcom/google/android/gms/internal/ads/zzcjy;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcjy;->zzfzn:Lcom/google/android/gms/internal/ads/zzbsm;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcla;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcla;->onAdLoaded()V

    return-void
.end method
