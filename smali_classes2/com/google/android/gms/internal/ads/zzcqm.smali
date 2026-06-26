.class final Lcom/google/android/gms/internal/ads/zzcqm;
.super Lcom/google/android/gms/internal/ads/zzzq;


# instance fields
.field private final synthetic zzgfo:Lcom/google/android/gms/internal/ads/zzcqj;

.field private final synthetic zzgfp:Lcom/google/android/gms/internal/ads/zzzp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcqj;Lcom/google/android/gms/internal/ads/zzzp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqm;->zzgfo:Lcom/google/android/gms/internal/ads/zzcqj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqm;->zzgfp:Lcom/google/android/gms/internal/ads/zzzp;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzzq;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdMetadataChanged()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqm;->zzgfo:Lcom/google/android/gms/internal/ads/zzcqj;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcqj;->zza(Lcom/google/android/gms/internal/ads/zzcqj;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqm;->zzgfp:Lcom/google/android/gms/internal/ads/zzzp;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzzp;->onAdMetadataChanged()V

    :cond_0
    return-void
.end method
