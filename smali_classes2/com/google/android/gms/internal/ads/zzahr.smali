.class public final Lcom/google/android/gms/internal/ads/zzahr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaho;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzard;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzaho<",
        "Lcom/google/android/gms/internal/ads/zzbgz;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzdam:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzdaj:Lcom/google/android/gms/ads/internal/zzb;

.field private final zzdak:Lcom/google/android/gms/internal/ads/zzapr;

.field private final zzdal:Lcom/google/android/gms/internal/ads/zzaqc;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v0, 0x7

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "resize"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "playVideo"

    aput-object v4, v1, v3

    const/4 v4, 0x2

    const-string v5, "storePicture"

    aput-object v5, v1, v4

    const/4 v5, 0x3

    const-string v6, "createCalendarEvent"

    aput-object v6, v1, v5

    const/4 v6, 0x4

    const-string v7, "setOrientationProperties"

    aput-object v7, v1, v6

    const/4 v7, 0x5

    const-string v8, "closeResizedAd"

    aput-object v8, v1, v7

    const/4 v8, 0x6

    const-string/jumbo v9, "unload"

    aput-object v9, v1, v8

    new-array v9, v0, [Ljava/lang/Integer;

    .line 31
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    .line 32
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v3

    .line 33
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v4

    .line 34
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v5

    .line 35
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v6

    .line 36
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v7

    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v8

    .line 38
    invoke-static {v1, v9}, Lcom/google/android/gms/common/util/CollectionUtils;->mapOfKeyValueArrays([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzahr;->zzdam:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzapr;Lcom/google/android/gms/internal/ads/zzaqc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzdaj:Lcom/google/android/gms/ads/internal/zzb;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzdak:Lcom/google/android/gms/internal/ads/zzapr;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzdal:Lcom/google/android/gms/internal/ads/zzaqc;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 5

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbgz;

    const-string v0, "a"

    .line 7
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 8
    sget-object v1, Lcom/google/android/gms/internal/ads/zzahr;->zzdam:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    .line 9
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzdaj:Lcom/google/android/gms/ads/internal/zzb;

    if-eqz v3, :cond_0

    .line 10
    invoke-virtual {v3}, Lcom/google/android/gms/ads/internal/zzb;->zzkx()Z

    move-result v3

    if-nez v3, :cond_0

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzdaj:Lcom/google/android/gms/ads/internal/zzb;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/zzb;->zzbk(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v3, 0x1

    if-eq v0, v3, :cond_7

    const/4 v4, 0x3

    if-eq v0, v4, :cond_6

    const/4 v4, 0x4

    if-eq v0, v4, :cond_5

    if-eq v0, v2, :cond_4

    const/4 p1, 0x6

    if-eq v0, p1, :cond_3

    if-eq v0, v1, :cond_1

    const-string p1, "Unknown MRAID command called."

    .line 28
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzeo(Ljava/lang/String;)V

    goto :goto_0

    .line 24
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzacu;->zzcmw:Lcom/google/android/gms/internal/ads/zzacj;

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object p1

    .line 26
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 27
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzdal:Lcom/google/android/gms/internal/ads/zzaqc;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaqc;->zztd()V

    :cond_2
    :goto_0
    return-void

    .line 22
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzdak:Lcom/google/android/gms/internal/ads/zzapr;

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzapr;->zzw(Z)V

    return-void

    .line 20
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzapt;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzapt;-><init>(Lcom/google/android/gms/internal/ads/zzbgz;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapt;->execute()V

    return-void

    .line 16
    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzapo;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzapo;-><init>(Lcom/google/android/gms/internal/ads/zzbgz;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapo;->execute()V

    return-void

    .line 18
    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzapu;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzapu;-><init>(Lcom/google/android/gms/internal/ads/zzbgz;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapu;->execute()V

    return-void

    .line 14
    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahr;->zzdak:Lcom/google/android/gms/internal/ads/zzapr;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzapr;->zzg(Ljava/util/Map;)V

    return-void
.end method
