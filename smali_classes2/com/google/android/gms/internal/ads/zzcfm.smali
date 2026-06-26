.class public final Lcom/google/android/gms/internal/ads/zzcfm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdti;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdti<",
        "Lcom/google/android/gms/internal/ads/zzcfk;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfgj:Lcom/google/android/gms/internal/ads/zzdtu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Lcom/google/android/gms/common/util/Clock;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfuv:Lcom/google/android/gms/internal/ads/zzdtu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Lcom/google/android/gms/internal/ads/zzcfi;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfuw:Lcom/google/android/gms/internal/ads/zzdtu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzcfl;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdtu;Lcom/google/android/gms/internal/ads/zzdtu;Lcom/google/android/gms/internal/ads/zzdtu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Lcom/google/android/gms/internal/ads/zzcfi;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzcfl;",
            ">;>;",
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Lcom/google/android/gms/common/util/Clock;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfm;->zzfuv:Lcom/google/android/gms/internal/ads/zzdtu;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfm;->zzfuw:Lcom/google/android/gms/internal/ads/zzdtu;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcfm;->zzfgj:Lcom/google/android/gms/internal/ads/zzdtu;

    return-void
.end method

.method public static zzl(Lcom/google/android/gms/internal/ads/zzdtu;Lcom/google/android/gms/internal/ads/zzdtu;Lcom/google/android/gms/internal/ads/zzdtu;)Lcom/google/android/gms/internal/ads/zzcfm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Lcom/google/android/gms/internal/ads/zzcfi;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzcfl;",
            ">;>;",
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Lcom/google/android/gms/common/util/Clock;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzcfm;"
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcfm;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcfm;-><init>(Lcom/google/android/gms/internal/ads/zzdtu;Lcom/google/android/gms/internal/ads/zzdtu;Lcom/google/android/gms/internal/ads/zzdtu;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcfk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfm;->zzfuv:Lcom/google/android/gms/internal/ads/zzdtu;

    .line 9
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdtu;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcfi;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcfm;->zzfuw:Lcom/google/android/gms/internal/ads/zzdtu;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdtu;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcfm;->zzfgj:Lcom/google/android/gms/internal/ads/zzdtu;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdtu;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/util/Clock;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcfk;-><init>(Lcom/google/android/gms/internal/ads/zzcfi;Ljava/util/Set;Lcom/google/android/gms/common/util/Clock;)V

    return-object v0
.end method
