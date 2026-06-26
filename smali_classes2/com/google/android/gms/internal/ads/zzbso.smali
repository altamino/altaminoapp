.class public final Lcom/google/android/gms/internal/ads/zzbso;
.super Lcom/google/android/gms/internal/ads/zzbts;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbsr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbts<",
        "Lcom/google/android/gms/internal/ads/zzbsr;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbsr;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzbuz<",
            "Lcom/google/android/gms/internal/ads/zzbsr;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbts;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final onAdLoaded()V
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbsp;->zzfka:Lcom/google/android/gms/internal/ads/zzbtu;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbts;->zza(Lcom/google/android/gms/internal/ads/zzbtu;)V

    return-void
.end method
