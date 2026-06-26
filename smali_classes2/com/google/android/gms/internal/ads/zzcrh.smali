.class public final Lcom/google/android/gms/internal/ads/zzcrh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcuz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcuz<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcxv;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "the targeting must not be null"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrh;->zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

    return-void
.end method


# virtual methods
.method public final synthetic zzt(Ljava/lang/Object;)V
    .locals 12

    .line 5
    check-cast p1, Landroid/os/Bundle;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrh;->zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcxv;->zzghg:Lcom/google/android/gms/internal/ads/zzxz;

    .line 7
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcxv;->zzglb:Ljava/lang/String;

    const-string v2, "slotname"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrh;->zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcxv;->zzglj:Ljava/util/Set;

    const-string v2, "new_rewarded"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v0, "is_new_rewarded"

    .line 9
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "yyyyMMdd"

    invoke-direct {v0, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzxz;->zzcgn:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 11
    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzxz;->zzcgn:J

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    cmp-long v8, v3, v5

    if-eqz v8, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const-string v4, "cust_age"

    .line 12
    invoke-static {p1, v4, v0, v3}, Lcom/google/android/gms/internal/ads/zzcxz;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 13
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzxz;->extras:Landroid/os/Bundle;

    const-string v3, "extras"

    invoke-static {p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzcxz;->zza(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 14
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzxz;->zzcgo:I

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzxz;->zzcgo:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    const-string v5, "cust_gender"

    .line 16
    invoke-static {p1, v5, v0, v3}, Lcom/google/android/gms/internal/ads/zzcxz;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Integer;Z)V

    .line 17
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzxz;->zzcgp:Ljava/util/List;

    const-string v3, "kw"

    invoke-static {p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzcxz;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    .line 18
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzxz;->zzcgr:I

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzxz;->zzcgr:I

    if-eq v3, v4, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    const-string v5, "tag_for_child_directed_treatment"

    .line 20
    invoke-static {p1, v5, v0, v3}, Lcom/google/android/gms/internal/ads/zzcxz;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Integer;Z)V

    .line 21
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzxz;->zzcgq:Z

    if-eqz v0, :cond_4

    const-string v3, "test_request"

    .line 22
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 24
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzxz;->versionCode:I

    const/4 v5, 0x2

    if-lt v3, v5, :cond_5

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzxz;->zzbqn:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    const-string v6, "d_imp_hdr"

    .line 25
    invoke-static {p1, v6, v0, v3}, Lcom/google/android/gms/internal/ads/zzcxz;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Integer;Z)V

    .line 26
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzxz;->zzcgs:Ljava/lang/String;

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzxz;->versionCode:I

    if-lt v3, v5, :cond_6

    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x1

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    :goto_4
    const-string v5, "ppid"

    .line 28
    invoke-static {p1, v5, v0, v3}, Lcom/google/android/gms/internal/ads/zzcxz;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 29
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzxz;->zzmw:Landroid/location/Location;

    if-eqz v0, :cond_7

    .line 31
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float v3, v3, v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 32
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    const-wide/16 v8, 0x3e8

    mul-long v5, v5, v8

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 33
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    const-wide v10, 0x416312d000000000L    # 1.0E7

    mul-double v8, v8, v10

    double-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 34
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    mul-double v8, v8, v10

    double-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 35
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 36
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const-string v9, "radius"

    invoke-virtual {v8, v9, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 37
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-string v3, "lat"

    invoke-virtual {v8, v3, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 38
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-string v0, "long"

    invoke-virtual {v8, v0, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 39
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-string v0, "time"

    invoke-virtual {v8, v0, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v0, "uule"

    .line 40
    invoke-virtual {p1, v0, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 41
    :cond_7
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzxz;->zzcgu:Ljava/lang/String;

    const-string/jumbo v3, "url"

    invoke-static {p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzcxz;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzxz;->zzcgw:Landroid/os/Bundle;

    const-string v3, "custom_targeting"

    invoke-static {p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzcxz;->zza(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 43
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzxz;->zzcgx:Ljava/util/List;

    const-string v3, "category_exclusions"

    invoke-static {p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzcxz;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    .line 44
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzxz;->zzcgy:Ljava/lang/String;

    const-string v3, "request_agent"

    invoke-static {p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzcxz;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzxz;->zzcgz:Ljava/lang/String;

    const-string v3, "request_pkg"

    invoke-static {p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzcxz;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzxz;->zzcha:Z

    .line 47
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzxz;->versionCode:I

    const/4 v5, 0x7

    if-lt v3, v5, :cond_8

    const/4 v3, 0x1

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    :goto_5
    const-string v5, "is_designed_for_families"

    .line 48
    invoke-static {p1, v5, v0, v3}, Lcom/google/android/gms/internal/ads/zzcxz;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Boolean;Z)V

    .line 49
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzxz;->versionCode:I

    const/16 v3, 0x8

    if-lt v0, v3, :cond_a

    .line 50
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzxz;->zzchc:I

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzxz;->zzchc:I

    if-eq v3, v4, :cond_9

    goto :goto_6

    :cond_9
    const/4 v2, 0x0

    :goto_6
    const-string v3, "tag_for_under_age_of_consent"

    .line 52
    invoke-static {p1, v3, v0, v2}, Lcom/google/android/gms/internal/ads/zzcxz;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Integer;Z)V

    .line 53
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzxz;->zzchd:Ljava/lang/String;

    const-string v1, "max_ad_content_rating"

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzcxz;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-void
.end method
