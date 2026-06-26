.class final Lcom/google/android/gms/internal/ads/zzckp;
.super Lcom/google/android/gms/internal/ads/zzaok;


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

.field private final synthetic zzfzx:Lcom/google/android/gms/internal/ads/zzckm;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzckm;Lcom/google/android/gms/internal/ads/zzcjy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzfzx:Lcom/google/android/gms/internal/ads/zzckm;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaok;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzfzw:Lcom/google/android/gms/internal/ads/zzcjy;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzckm;Lcom/google/android/gms/internal/ads/zzcjy;Lcom/google/android/gms/internal/ads/zzcko;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzckp;-><init>(Lcom/google/android/gms/internal/ads/zzckm;Lcom/google/android/gms/internal/ads/zzcjy;)V

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

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzfzw:Lcom/google/android/gms/internal/ads/zzcjy;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcjy;->zzfzn:Lcom/google/android/gms/internal/ads/zzbsm;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcla;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcla;->onAdFailedToLoad(I)V

    return-void
.end method

.method public final zzw(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzfzx:Lcom/google/android/gms/internal/ads/zzckm;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzckm;->zza(Lcom/google/android/gms/internal/ads/zzckm;Landroid/view/View;)Landroid/view/View;

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzckp;->zzfzw:Lcom/google/android/gms/internal/ads/zzcjy;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcjy;->zzfzn:Lcom/google/android/gms/internal/ads/zzbsm;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcla;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcla;->onAdLoaded()V

    return-void
.end method
