.class final Lcom/google/android/gms/internal/ads/zzwc;
.super Lcom/google/android/gms/internal/ads/zzbbr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbbr<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzbxa:Lcom/google/android/gms/internal/ads/zzwb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzwb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzbxa:Lcom/google/android/gms/internal/ads/zzwb;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbr;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwc;->zzbxa:Lcom/google/android/gms/internal/ads/zzwb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzwb;->zza(Lcom/google/android/gms/internal/ads/zzwb;)V

    .line 3
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbbr;->cancel(Z)Z

    move-result p1

    return p1
.end method
