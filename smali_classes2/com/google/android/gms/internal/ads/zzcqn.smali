.class final Lcom/google/android/gms/internal/ads/zzcqn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbsr;


# instance fields
.field private zzgfk:Lcom/google/android/gms/internal/ads/zzbsr;

.field private final synthetic zzgfo:Lcom/google/android/gms/internal/ads/zzcqj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcqj;Lcom/google/android/gms/internal/ads/zzbsr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqn;->zzgfo:Lcom/google/android/gms/internal/ads/zzcqj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqn;->zzgfk:Lcom/google/android/gms/internal/ads/zzbsr;

    return-void
.end method


# virtual methods
.method public final onAdLoaded()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqn;->zzgfo:Lcom/google/android/gms/internal/ads/zzcqj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcqj;->zzalg()V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqn;->zzgfk:Lcom/google/android/gms/internal/ads/zzbsr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbsr;->onAdLoaded()V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqn;->zzgfo:Lcom/google/android/gms/internal/ads/zzcqj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcqj;->zzalh()V

    return-void
.end method
