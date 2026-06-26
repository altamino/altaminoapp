.class public final Lcom/google/android/gms/internal/ads/zzbph;
.super Ljava/lang/Object;


# instance fields
.field public final zzfiv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzbbh<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzbpc;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbpc;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbar;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbbg;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbph;->zzfiv:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzbbh<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzbpc;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbph;->zzfiv:Ljava/util/List;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzcjv;)Lcom/google/android/gms/internal/ads/zzcjv;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcjv<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzbpc;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzcjv<",
            "Lcom/google/android/gms/internal/ads/zzbph;",
            ">;"
        }
    .end annotation

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcjw;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbpj;->zzdrn:Lcom/google/android/gms/internal/ads/zzbam;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzcjw;-><init>(Lcom/google/android/gms/internal/ads/zzcjv;Lcom/google/android/gms/internal/ads/zzbam;)V

    return-object v0
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzclw;)Lcom/google/android/gms/internal/ads/zzcjv;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzclw<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzbpc;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzcjv<",
            "Lcom/google/android/gms/internal/ads/zzbph;",
            ">;"
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcjw;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbpi;->zzdrn:Lcom/google/android/gms/internal/ads/zzbam;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzcjw;-><init>(Lcom/google/android/gms/internal/ads/zzcjv;Lcom/google/android/gms/internal/ads/zzbam;)V

    return-object v0
.end method
