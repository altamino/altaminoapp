.class public final Lcom/google/android/gms/internal/ads/zzbtg;
.super Lcom/google/android/gms/internal/ads/zzbts;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbtk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbts<",
        "Lcom/google/android/gms/internal/ads/zzbtk;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbtk;"
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
            "Lcom/google/android/gms/internal/ads/zzbtk;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbts;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzcxu;)V
    .locals 1

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbti;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbti;-><init>(Lcom/google/android/gms/internal/ads/zzcxu;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbts;->zza(Lcom/google/android/gms/internal/ads/zzbtu;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzarx;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbth;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbth;-><init>(Lcom/google/android/gms/internal/ads/zzarx;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbts;->zza(Lcom/google/android/gms/internal/ads/zzbtu;)V

    return-void
.end method
