.class final Lcom/google/android/gms/internal/ads/zzdqh;
.super Lcom/google/android/gms/internal/ads/zzdqn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdqn;"
    }
.end annotation


# instance fields
.field private final synthetic zzhky:Lcom/google/android/gms/internal/ads/zzdqe;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdqe;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqh;->zzhky:Lcom/google/android/gms/internal/ads/zzdqe;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdqn;-><init>(Lcom/google/android/gms/internal/ads/zzdqe;Lcom/google/android/gms/internal/ads/zzdqf;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdqe;Lcom/google/android/gms/internal/ads/zzdqf;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdqh;-><init>(Lcom/google/android/gms/internal/ads/zzdqe;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdqg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqh;->zzhky:Lcom/google/android/gms/internal/ads/zzdqe;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdqg;-><init>(Lcom/google/android/gms/internal/ads/zzdqe;Lcom/google/android/gms/internal/ads/zzdqf;)V

    return-object v0
.end method
