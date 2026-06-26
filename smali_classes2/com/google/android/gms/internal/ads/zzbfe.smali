.class final synthetic Lcom/google/android/gms/internal/ads/zzbfe;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzrw;


# instance fields
.field private final zzehh:Lcom/google/android/gms/internal/ads/zzbfa;

.field private final zzehi:Lcom/google/android/gms/internal/ads/zzrw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbfa;Lcom/google/android/gms/internal/ads/zzrw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfe;->zzehh:Lcom/google/android/gms/internal/ads/zzbfa;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbfe;->zzehi:Lcom/google/android/gms/internal/ads/zzrw;

    return-void
.end method


# virtual methods
.method public final zzju()Lcom/google/android/gms/internal/ads/zzrv;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfe;->zzehh:Lcom/google/android/gms/internal/ads/zzbfa;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfe;->zzehi:Lcom/google/android/gms/internal/ads/zzrw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(Lcom/google/android/gms/internal/ads/zzrw;)Lcom/google/android/gms/internal/ads/zzrv;

    move-result-object v0

    return-object v0
.end method
