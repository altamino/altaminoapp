.class final Lcom/google/android/gms/internal/ads/zzcqi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbsr;


# instance fields
.field private final synthetic zzgfi:Lcom/google/android/gms/internal/ads/zzcqf;

.field private zzgfk:Lcom/google/android/gms/internal/ads/zzbsr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcqf;Lcom/google/android/gms/internal/ads/zzbsr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqi;->zzgfi:Lcom/google/android/gms/internal/ads/zzcqf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqi;->zzgfk:Lcom/google/android/gms/internal/ads/zzbsr;

    return-void
.end method


# virtual methods
.method public final onAdLoaded()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqi;->zzgfi:Lcom/google/android/gms/internal/ads/zzcqf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcqf;->zzalg()V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqi;->zzgfk:Lcom/google/android/gms/internal/ads/zzbsr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbsr;->onAdLoaded()V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqi;->zzgfi:Lcom/google/android/gms/internal/ads/zzcqf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcqf;->zzalh()V

    return-void
.end method
