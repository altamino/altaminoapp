.class public final Lcom/google/android/gms/internal/ads/zzbtr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdti;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdti<",
        "Lcom/google/android/gms/internal/ads/zzbtp;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfhq:Lcom/google/android/gms/internal/ads/zzdtu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzbuz<",
            "Lcom/google/android/gms/ads/doubleclick/AppEventListener;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdtu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzbuz<",
            "Lcom/google/android/gms/ads/doubleclick/AppEventListener;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtr;->zzfhq:Lcom/google/android/gms/internal/ads/zzdtu;

    return-void
.end method

.method public static zzv(Lcom/google/android/gms/internal/ads/zzdtu;)Lcom/google/android/gms/internal/ads/zzbtr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzbuz<",
            "Lcom/google/android/gms/ads/doubleclick/AppEventListener;",
            ">;>;>;)",
            "Lcom/google/android/gms/internal/ads/zzbtr;"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbtr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbtr;-><init>(Lcom/google/android/gms/internal/ads/zzdtu;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbtp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbtr;->zzfhq:Lcom/google/android/gms/internal/ads/zzdtu;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdtu;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbtp;-><init>(Ljava/util/Set;)V

    return-object v0
.end method
