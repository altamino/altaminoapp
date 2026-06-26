.class public final Lcom/google/android/gms/internal/ads/zzbze;
.super Ljava/lang/Object;


# instance fields
.field zzfow:Lcom/google/android/gms/internal/ads/zzafl;

.field zzfox:Lcom/google/android/gms/internal/ads/zzafi;

.field zzfoy:Lcom/google/android/gms/internal/ads/zzafx;

.field zzfoz:Lcom/google/android/gms/internal/ads/zzafu;

.field zzfpa:Lcom/google/android/gms/internal/ads/zzaje;

.field final zzfpb:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzafr;",
            ">;"
        }
    .end annotation
.end field

.field final zzfpc:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzafo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbze;->zzfpb:Landroid/support/v4/util/SimpleArrayMap;

    .line 3
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbze;->zzfpc:Landroid/support/v4/util/SimpleArrayMap;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzafu;)Lcom/google/android/gms/internal/ads/zzbze;
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbze;->zzfoz:Lcom/google/android/gms/internal/ads/zzafu;

    return-object p0
.end method

.method public final zzaip()Lcom/google/android/gms/internal/ads/zzbzc;
    .locals 2

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbzc;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzbzc;-><init>(Lcom/google/android/gms/internal/ads/zzbze;Lcom/google/android/gms/internal/ads/zzbzd;)V

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzafi;)Lcom/google/android/gms/internal/ads/zzbze;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbze;->zzfox:Lcom/google/android/gms/internal/ads/zzafi;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzafl;)Lcom/google/android/gms/internal/ads/zzbze;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbze;->zzfow:Lcom/google/android/gms/internal/ads/zzafl;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzafx;)Lcom/google/android/gms/internal/ads/zzbze;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbze;->zzfoy:Lcom/google/android/gms/internal/ads/zzafx;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzaje;)Lcom/google/android/gms/internal/ads/zzbze;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbze;->zzfpa:Lcom/google/android/gms/internal/ads/zzaje;

    return-object p0
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzafr;Lcom/google/android/gms/internal/ads/zzafo;)Lcom/google/android/gms/internal/ads/zzbze;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbze;->zzfpb:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbze;->zzfpc:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {p2, p1, p3}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
