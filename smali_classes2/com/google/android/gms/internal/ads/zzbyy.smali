.class public final Lcom/google/android/gms/internal/ads/zzbyy;
.super Lcom/google/android/gms/internal/ads/zzbyx;


# instance fields
.field private final zzdfr:Z

.field private final zzdfs:Z

.field private final zzdoh:Z

.field private final zzfov:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcxm;Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbyx;-><init>(Lcom/google/android/gms/internal/ads/zzcxm;)V

    const/4 p1, 0x2

    new-array v0, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "tracking_urls_and_actions"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "active_view"

    aput-object v3, v0, v2

    .line 2
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzazc;->zza(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyy;->zzfov:Lorg/json/JSONObject;

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "allow_pub_owned_ad_view"

    aput-object v3, v0, v1

    .line 3
    invoke-static {v1, p2, v0}, Lcom/google/android/gms/internal/ads/zzazc;->zza(ZLorg/json/JSONObject;[Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbyy;->zzdfs:Z

    new-array p1, p1, [Ljava/lang/String;

    const-string v0, "attribution"

    aput-object v0, p1, v1

    const-string v0, "allow_pub_rendering"

    aput-object v0, p1, v2

    .line 5
    invoke-static {v1, p2, p1}, Lcom/google/android/gms/internal/ads/zzazc;->zza(ZLorg/json/JSONObject;[Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbyy;->zzdfr:Z

    new-array p1, v2, [Ljava/lang/String;

    const-string v0, "enable_omid"

    aput-object v0, p1, v1

    .line 6
    invoke-static {v1, p2, p1}, Lcom/google/android/gms/internal/ads/zzazc;->zza(ZLorg/json/JSONObject;[Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbyy;->zzdoh:Z

    return-void
.end method


# virtual methods
.method public final zzaie()Lorg/json/JSONObject;
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyy;->zzfov:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    return-object v0

    .line 10
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyx;->zzfou:Lcom/google/android/gms/internal/ads/zzcxm;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzcxm;->zzdnr:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzaif()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbyy;->zzdfs:Z

    return v0
.end method

.method public final zzaig()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbyy;->zzdfr:Z

    return v0
.end method

.method public final zzaih()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbyy;->zzdoh:Z

    return v0
.end method
