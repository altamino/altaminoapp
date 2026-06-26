.class public abstract Lcom/google/android/gms/internal/ads/zzcmn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcjv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcjv<",
        "TAdT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static zzm(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    if-nez p0, :cond_0

    .line 79
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected abstract zza(Lcom/google/android/gms/internal/ads/zzcxv;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzbbh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcxv;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzbbh<",
            "TAdT;>;"
        }
    .end annotation
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzcxm;)Z
    .locals 1

    .line 2
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzcxm;->zzgkh:Lorg/json/JSONObject;

    const-string p2, "pubid"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzcxu;Lcom/google/android/gms/internal/ads/zzcxm;)Lcom/google/android/gms/internal/ads/zzbbh;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcxu;",
            "Lcom/google/android/gms/internal/ads/zzcxm;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzbbh<",
            "TAdT;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 3
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzcxm;->zzgkh:Lorg/json/JSONObject;

    const-string v3, "pubid"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzcxu;->zzgkx:Lcom/google/android/gms/internal/ads/zzcxr;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzcxr;->zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

    .line 6
    new-instance v4, Lcom/google/android/gms/internal/ads/zzcxx;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzcxx;-><init>()V

    .line 8
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzcxv;->zzghg:Lcom/google/android/gms/internal/ads/zzxz;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzcxx;->zzg(Lcom/google/android/gms/internal/ads/zzxz;)Lcom/google/android/gms/internal/ads/zzcxx;

    move-result-object v4

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzcxv;->zzdll:Lcom/google/android/gms/internal/ads/zzyd;

    .line 9
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzcxx;->zzd(Lcom/google/android/gms/internal/ads/zzyd;)Lcom/google/android/gms/internal/ads/zzcxx;

    move-result-object v4

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzcxv;->zzgkz:Lcom/google/android/gms/internal/ads/zzzy;

    .line 10
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzcxx;->zzd(Lcom/google/android/gms/internal/ads/zzzy;)Lcom/google/android/gms/internal/ads/zzcxx;

    move-result-object v4

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzcxv;->zzglb:Ljava/lang/String;

    .line 11
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzcxx;->zzft(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcxx;

    move-result-object v4

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzcxv;->zzgla:Lcom/google/android/gms/internal/ads/zzacd;

    .line 12
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzcxx;->zzc(Lcom/google/android/gms/internal/ads/zzacd;)Lcom/google/android/gms/internal/ads/zzcxx;

    move-result-object v4

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzcxv;->zzglc:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzcxx;->zzb(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/zzcxx;

    move-result-object v4

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzcxv;->zzgld:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzcxx;->zzc(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/zzcxx;

    move-result-object v4

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzcxv;->zzdgs:Lcom/google/android/gms/internal/ads/zzady;

    .line 15
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzcxx;->zzb(Lcom/google/android/gms/internal/ads/zzady;)Lcom/google/android/gms/internal/ads/zzcxx;

    move-result-object v4

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzcxv;->zzgle:Ljava/lang/String;

    .line 16
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzcxx;->zzfu(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcxx;

    move-result-object v4

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzcxv;->zzglh:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    .line 17
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzcxx;->zzb(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)Lcom/google/android/gms/internal/ads/zzcxx;

    move-result-object v4

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzcxv;->zzglf:Ljava/lang/String;

    .line 18
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzcxx;->zzfv(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcxx;

    move-result-object v4

    .line 20
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzcxx;->zzft(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcxx;

    move-result-object v2

    .line 22
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzcxv;->zzghg:Lcom/google/android/gms/internal/ads/zzxz;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzxz;->zzcgv:Landroid/os/Bundle;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzcmn;->zzm(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "com.google.ads.mediation.admob.AdMobAdapter"

    .line 23
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzcmn;->zzm(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    const/4 v15, 0x1

    const-string v6, "gw"

    .line 24
    invoke-virtual {v9, v6, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 25
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzcxm;->zzgkh:Lorg/json/JSONObject;

    const-string v7, "mad_hac"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 27
    invoke-virtual {v9, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_0
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzcxm;->zzgkh:Lorg/json/JSONObject;

    const-string v7, "adJson"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v7, "_ad"

    .line 30
    invoke-virtual {v9, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v6, "_noRefresh"

    .line 31
    invoke-virtual {v9, v6, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 32
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzcxm;->zzgkk:Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 33
    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 34
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 35
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzcxm;->zzgkk:Lorg/json/JSONObject;

    invoke-virtual {v10, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v7, :cond_2

    .line 37
    invoke-virtual {v9, v7, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_3
    invoke-virtual {v4, v5, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 40
    new-instance v14, Lcom/google/android/gms/internal/ads/zzxz;

    move-object v5, v14

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzcxv;->zzghg:Lcom/google/android/gms/internal/ads/zzxz;

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzxz;->versionCode:I

    iget-wide v7, v3, Lcom/google/android/gms/internal/ads/zzxz;->zzcgn:J

    iget v10, v3, Lcom/google/android/gms/internal/ads/zzxz;->zzcgo:I

    iget-object v11, v3, Lcom/google/android/gms/internal/ads/zzxz;->zzcgp:Ljava/util/List;

    iget-boolean v12, v3, Lcom/google/android/gms/internal/ads/zzxz;->zzcgq:Z

    iget v13, v3, Lcom/google/android/gms/internal/ads/zzxz;->zzcgr:I

    iget-boolean v15, v3, Lcom/google/android/gms/internal/ads/zzxz;->zzbqn:Z

    move-object v1, v14

    move v14, v15

    iget-object v15, v3, Lcom/google/android/gms/internal/ads/zzxz;->zzcgs:Ljava/lang/String;

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzxz;->zzcgt:Lcom/google/android/gms/internal/ads/zzaca;

    move-object/from16 v16, v0

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzxz;->zzmw:Landroid/location/Location;

    move-object/from16 v17, v0

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzxz;->zzcgu:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzxz;->zzcgw:Landroid/os/Bundle;

    move-object/from16 v20, v0

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzxz;->zzcgx:Ljava/util/List;

    move-object/from16 v21, v0

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzxz;->zzcgy:Ljava/lang/String;

    move-object/from16 v22, v0

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzxz;->zzcgz:Ljava/lang/String;

    move-object/from16 v23, v0

    iget-boolean v0, v3, Lcom/google/android/gms/internal/ads/zzxz;->zzcha:Z

    move/from16 v24, v0

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzxz;->zzchb:Lcom/google/android/gms/internal/ads/zzxt;

    move-object/from16 v25, v0

    iget v0, v3, Lcom/google/android/gms/internal/ads/zzxz;->zzchc:I

    move/from16 v26, v0

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzxz;->zzchd:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v19, v4

    invoke-direct/range {v5 .. v27}, Lcom/google/android/gms/internal/ads/zzxz;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/ads/zzaca;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/ads/zzxt;ILjava/lang/String;)V

    .line 41
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzcxx;->zzg(Lcom/google/android/gms/internal/ads/zzxz;)Lcom/google/android/gms/internal/ads/zzcxx;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcxx;->zzamq()Lcom/google/android/gms/internal/ads/zzcxv;

    move-result-object v0

    .line 45
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v2, p1

    .line 46
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzcxu;->zzgky:Lcom/google/android/gms/internal/ads/zzcxs;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzcxs;->zzgku:Lcom/google/android/gms/internal/ads/zzcxo;

    .line 48
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 49
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzcxo;->zzdfh:Ljava/util/List;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v6, "nofill_urls"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 50
    iget v5, v3, Lcom/google/android/gms/internal/ads/zzcxo;->zzgkr:I

    const-string v6, "refresh_interval"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 51
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzcxo;->zzcep:Ljava/lang/String;

    const-string v5, "gws_query_id"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "parent_common_config"

    .line 53
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 54
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzcxu;->zzgkx:Lcom/google/android/gms/internal/ads/zzcxr;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzcxr;->zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzcxv;->zzglb:Ljava/lang/String;

    .line 56
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "initial_ad_unit_id"

    .line 57
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p2

    .line 58
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzcxm;->zzdej:Ljava/lang/String;

    const-string v5, "allocation_id"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzcxm;->zzdfe:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v5, "click_urls"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 60
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzcxm;->zzdff:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v5, "imp_urls"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 61
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzcxm;->zzdnl:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v5, "manual_tracking_urls"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 62
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzcxm;->zzgkc:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v5, "fill_urls"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 63
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzcxm;->zzdny:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string/jumbo v5, "video_start_urls"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 64
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzcxm;->zzdnz:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string/jumbo v5, "video_reward_urls"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 65
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzcxm;->zzgkb:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string/jumbo v5, "video_complete_urls"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 66
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzcxm;->zzdeu:Ljava/lang/String;

    const-string/jumbo v5, "transaction_id"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzcxm;->zzdev:Ljava/lang/String;

    const-string/jumbo v5, "valid_from_timestamp"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-boolean v4, v2, Lcom/google/android/gms/internal/ads/zzcxm;->zzbrm:Z

    const-string v5, "is_closable_area_disabled"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 69
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzcxm;->zzdnx:Lcom/google/android/gms/internal/ads/zzato;

    if-eqz v4, :cond_4

    .line 70
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 71
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzcxm;->zzdnx:Lcom/google/android/gms/internal/ads/zzato;

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzato;->zzdqm:I

    const-string v6, "rb_amount"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzcxm;->zzdnx:Lcom/google/android/gms/internal/ads/zzato;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzato;->type:Ljava/lang/String;

    const-string v5, "rb_type"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/os/Bundle;

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const-string v4, "rewards"

    .line 73
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_4
    const-string v2, "parent_ad_config"

    .line 75
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    move-object/from16 v2, p0

    .line 78
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzcmn;->zza(Lcom/google/android/gms/internal/ads/zzcxv;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object v0

    return-object v0
.end method
