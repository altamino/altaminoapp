.class final Lcom/google/android/gms/internal/ads/zzcmi;
.super Lcom/google/android/gms/internal/ads/zzaoq;


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

.field private final synthetic zzgbb:Lcom/google/android/gms/internal/ads/zzcmg;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcmg;Lcom/google/android/gms/internal/ads/zzcjy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmi;->zzgbb:Lcom/google/android/gms/internal/ads/zzcmg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaoq;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmi;->zzfzw:Lcom/google/android/gms/internal/ads/zzcjy;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcmg;Lcom/google/android/gms/internal/ads/zzcjy;Lcom/google/android/gms/internal/ads/zzcmh;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcmi;-><init>(Lcom/google/android/gms/internal/ads/zzcmg;Lcom/google/android/gms/internal/ads/zzcjy;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzang;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmi;->zzgbb:Lcom/google/android/gms/internal/ads/zzcmg;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcmg;->zza(Lcom/google/android/gms/internal/ads/zzcmg;Lcom/google/android/gms/internal/ads/zzang;)Lcom/google/android/gms/internal/ads/zzang;

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmi;->zzfzw:Lcom/google/android/gms/internal/ads/zzcjy;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcjy;->zzfzn:Lcom/google/android/gms/internal/ads/zzbsm;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcla;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcla;->onAdLoaded()V

    return-void
.end method

.method public final zzdb(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmi;->zzfzw:Lcom/google/android/gms/internal/ads/zzcjy;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcjy;->zzfzn:Lcom/google/android/gms/internal/ads/zzbsm;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcla;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcla;->onAdFailedToLoad(I)V

    return-void
.end method
