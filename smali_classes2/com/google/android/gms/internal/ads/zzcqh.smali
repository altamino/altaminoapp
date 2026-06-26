.class final Lcom/google/android/gms/internal/ads/zzcqh;
.super Lcom/google/android/gms/internal/ads/zzaap;


# instance fields
.field private final synthetic zzgfi:Lcom/google/android/gms/internal/ads/zzcqf;

.field private final synthetic zzgfj:Lcom/google/android/gms/internal/ads/zzaao;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcqf;Lcom/google/android/gms/internal/ads/zzaao;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqh;->zzgfi:Lcom/google/android/gms/internal/ads/zzcqf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqh;->zzgfj:Lcom/google/android/gms/internal/ads/zzaao;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaap;-><init>()V

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqh;->zzgfi:Lcom/google/android/gms/internal/ads/zzcqf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcqf;->zza(Lcom/google/android/gms/internal/ads/zzcqf;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqh;->zzgfj:Lcom/google/android/gms/internal/ads/zzaao;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaao;->onAdMetadataChanged()V

    :cond_0
    return-void
.end method
