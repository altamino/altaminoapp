.class public final Lcom/google/android/gms/ads/Correlator;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzard;
.end annotation


# instance fields
.field zzaar:Lcom/google/android/gms/internal/ads/zzyu;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzyu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzyu;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/Correlator;->zzaar:Lcom/google/android/gms/internal/ads/zzyu;

    return-void
.end method


# virtual methods
.method public final reset()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/ads/Correlator;->zzaar:Lcom/google/android/gms/internal/ads/zzyu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyu;->zzpi()V

    return-void
.end method

.method public final zzdf()Lcom/google/android/gms/internal/ads/zzyu;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/ads/Correlator;->zzaar:Lcom/google/android/gms/internal/ads/zzyu;

    return-object v0
.end method
