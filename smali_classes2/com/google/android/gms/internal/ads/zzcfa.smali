.class public final Lcom/google/android/gms/internal/ads/zzcfa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdti;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdti<",
        "Lcom/google/android/gms/internal/ads/zzcex;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfuc:Lcom/google/android/gms/internal/ads/zzdtu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Lcom/google/android/gms/internal/ads/zzwj;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfun:Lcom/google/android/gms/internal/ads/zzdtu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/ads/zzczs;",
            "Lcom/google/android/gms/internal/ads/zzcez;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdtu;Lcom/google/android/gms/internal/ads/zzdtu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Lcom/google/android/gms/internal/ads/zzwj;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/ads/zzczs;",
            "Lcom/google/android/gms/internal/ads/zzcez;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfa;->zzfuc:Lcom/google/android/gms/internal/ads/zzdtu;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfa;->zzfun:Lcom/google/android/gms/internal/ads/zzdtu;

    return-void
.end method

.method public static zzr(Lcom/google/android/gms/internal/ads/zzdtu;Lcom/google/android/gms/internal/ads/zzdtu;)Lcom/google/android/gms/internal/ads/zzcfa;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Lcom/google/android/gms/internal/ads/zzwj;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdtu<",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/ads/zzczs;",
            "Lcom/google/android/gms/internal/ads/zzcez;",
            ">;>;)",
            "Lcom/google/android/gms/internal/ads/zzcfa;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcfa;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzcfa;-><init>(Lcom/google/android/gms/internal/ads/zzdtu;Lcom/google/android/gms/internal/ads/zzdtu;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcex;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfa;->zzfuc:Lcom/google/android/gms/internal/ads/zzdtu;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdtu;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzwj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcfa;->zzfun:Lcom/google/android/gms/internal/ads/zzdtu;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdtu;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcex;-><init>(Lcom/google/android/gms/internal/ads/zzwj;Ljava/util/Map;)V

    return-object v0
.end method
