.class public final Lcom/google/android/gms/internal/ads/zzbrm;
.super Lcom/google/android/gms/internal/ads/zzbts;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbro;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbts<",
        "Lcom/google/android/gms/internal/ads/zzbro;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbro;"
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
            "Lcom/google/android/gms/internal/ads/zzbro;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbts;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final onAdFailedToLoad(I)V
    .locals 1

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbrn;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbrn;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbts;->zza(Lcom/google/android/gms/internal/ads/zzbtu;)V

    return-void
.end method
