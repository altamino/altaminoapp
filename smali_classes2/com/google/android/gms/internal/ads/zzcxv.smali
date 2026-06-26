.class public final Lcom/google/android/gms/internal/ads/zzcxv;
.super Ljava/lang/Object;


# instance fields
.field public final zzdgs:Lcom/google/android/gms/internal/ads/zzady;

.field public final zzdll:Lcom/google/android/gms/internal/ads/zzyd;

.field public final zzdne:Lcom/google/android/gms/internal/ads/zzaiy;

.field public final zzghg:Lcom/google/android/gms/internal/ads/zzxz;

.field public final zzgkz:Lcom/google/android/gms/internal/ads/zzzy;

.field public final zzgla:Lcom/google/android/gms/internal/ads/zzacd;

.field public final zzglb:Ljava/lang/String;

.field public final zzglc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzgld:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzgle:Ljava/lang/String;

.field public final zzglf:Ljava/lang/String;

.field public final zzglg:I

.field public final zzglh:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

.field public final zzgli:Lcom/google/android/gms/internal/ads/zzzs;

.field public final zzglj:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcxx;)V
    .locals 25

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcxx;->zza(Lcom/google/android/gms/internal/ads/zzcxx;)Lcom/google/android/gms/internal/ads/zzyd;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcxv;->zzdll:Lcom/google/android/gms/internal/ads/zzyd;

    .line 3
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcxx;->zzb(Lcom/google/android/gms/internal/ads/zzcxx;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcxv;->zzglb:Ljava/lang/String;

    .line 4
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcxx;->zzc(Lcom/google/android/gms/internal/ads/zzcxx;)Lcom/google/android/gms/internal/ads/zzzy;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcxv;->zzgkz:Lcom/google/android/gms/internal/ads/zzzy;

    .line 6
    new-instance v1, Lcom/google/android/gms/internal/ads/zzxz;

    .line 7
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcxx;->zzl(Lcom/google/android/gms/internal/ads/zzcxx;)Lcom/google/android/gms/internal/ads/zzxz;

    move-result-object v2

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzxz;->versionCode:I

    .line 8
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcxx;->zzl(Lcom/google/android/gms/internal/ads/zzcxx;)Lcom/google/android/gms/internal/ads/zzxz;

    move-result-object v2

    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/zzxz;->zzcgn:J

    .line 9
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcxx;->zzl(Lcom/google/android/gms/internal/ads/zzcxx;)Lcom/google/android/gms/internal/ads/zzxz;

    move-result-object v2

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzxz;->extras:Landroid/os/Bundle;

    .line 10
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcxx;->zzl(Lcom/google/android/gms/internal/ads/zzcxx;)Lcom/google/android/gms/internal/ads/zzxz;

    move-result-object v2

    iget v7, v2, Lcom/google/android/gms/internal/ads/zzxz;->zzcgo:I

    .line 11
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcxx;->zzl(Lcom/google/android/gms/internal/ads/zzcxx;)Lcom/google/android/gms/internal/ads/zzxz;

    move-result-object v2

    iget-object v8, v2, Lcom/google/android/gms/internal/ads/zzxz;->zzcgp:Ljava/util/List;

    .line 12
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcxx;->zzl(Lcom/google/android/gms/internal/ads/zzcxx;)Lcom/google/android/gms/internal/ads/zzxz;

    move-result-object v2

    iget-boolean v9, v2, Lcom/google/android/gms/internal/ads/zzxz;->zzcgq:Z

    .line 13
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcxx;->zzl(Lcom/google/android/gms/internal/ads/zzcxx;)Lcom/google/android/gms/internal/ads/zzxz;

    move-result-object v2

    iget v10, v2, Lcom/google/android/gms/internal/ads/zzxz;->zzcgr:I

    .line 14
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcxx;->zzl(Lcom/google/android/gms/internal/ads/zzcxx;)Lcom/google/android/gms/internal/ads/zzxz;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzxz;->zzbqn:Z

    if-nez v2, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcxx;->zzm(Lcom/google/android/gms/internal/ads/zzcxx;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v11, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    const/4 v11, 0x1

    .line 15
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcxx;->zzl(Lcom/google/android/gms/internal/ads/zzcxx;)Lcom/google/android/gms/internal/ads/zzxz;

    move-result-object v2

    iget-object v12, v2, Lcom/google/android/gms/internal/ads/zzxz;->zzcgs:Ljava/lang/String;

    .line 16
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcxx;->zzl(Lcom/google/android/gms/internal/ads/zzcxx;)Lcom/google/android/gms/internal/ads/zzxz;

    move-result-object v2

    iget-object v13, v2, Lcom/google/android/gms/internal/ads/zzxz;->zzcgt:Lcom/google/android/gms/internal/ads/zzaca;

    .line 17
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcxx;->zzl(Lcom/google/android/gms/internal/ads/zzcxx;)Lcom/google/android/gms/internal/ads/zzxz;

    move-result-object v2

    iget-object v14, v2, Lcom/google/android/gms/internal/ads/zzxz;->zzmw:Landroid/location/Location;

    .line 18
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcxx;->zzl(Lcom/google/android/gms/internal/ads/zzcxx;)Lcom/google/android/gms/internal/ads/zzxz;

    move-result-object v2

    iget-object v15, v2, Lcom/google/android/gms/internal/ads/zzxz;->zzcgu:Ljava/lang/String;

    .line 19
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcxx;->zzl(Lcom/google/android/gms/internal/ads/zzcxx;)Lcom/google/android/gms/internal/ads/zzxz;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzxz;->zzcgv:Landroid/os/Bundle;

    move-object/from16 v16, v2

    .line 20
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcxx;->zzl(Lcom/google/android/gms/internal/ads/zzcxx;)Lcom/google/android/gms/internal/ads/zzxz;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzxz;->zzcgw:Landroid/os/Bundle;

    move-object/from16 v17, v2

    .line 21
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcxx;->zzl(Lcom/google/android/gms/internal/ads/zzcxx;)Lcom/google/android/gms/internal/ads/zzxz;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzxz;->zzcgx:Ljava/util/List;

    move-object/from16 v18, v2

    .line 22
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcxx;->zzl(Lcom/google/android/gms/internal/ads/zzcxx;)Lcom/google/android/gms/internal/ads/zzxz;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzxz;->zzcgy:Ljava/lang/String;

    move-object/from16 v19, v2

    .line 23
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcxx;->zzl(Lcom/google/android/gms/internal/ads/zzcxx;)Lcom/google/android/gms/internal/ads/zzxz;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzxz;->zzcgz:Ljava/lang/String;

    move-object/from16 v20, v2

    .line 24
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcxx;->zzl(Lcom/google/android/gms/internal/ads/zzcxx;)Lcom/google/android/gms/internal/ads/zzxz;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzxz;->zzcha:Z

    move/from16 v21, v2

    .line 25
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcxx;->zzl(Lcom/google/android/gms/internal/ads/zzcxx;)Lcom/google/android/gms/internal/ads/zzxz;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzxz;->zzchb:Lcom/google/android/gms/internal/ads/zzxt;

    move-object/from16 v22, v2

    .line 26
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcxx;->zzl(Lcom/google/android/gms/internal/ads/zzcxx;)Lcom/google/android/gms/internal/ads/zzxz;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzxz;->zzchc:I

    move/from16 v23, v2

    .line 27
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcxx;->zzl(Lcom/google/android/gms/internal/ads/zzcxx;)Lcom/google/android/gms/internal/ads/zzxz;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzxz;->zzchd:Ljava/lang/String;

    move-object/from16 v24, v2

    move-object v2, v1

    invoke-direct/range {v2 .. v24}, Lcom/google/android/gms/internal/ads/zzxz;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/ads/zzaca;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/ads/zzxt;ILjava/lang/String;)V

    .line 28
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcxv;->zzghg:Lcom/google/android/gms/internal/ads/zzxz;

    .line 30
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcxx;->zzn(Lcom/google/android/gms/internal/ads/zzcxx;)Lcom/google/android/gms/internal/ads/zzacd;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 31
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcxx;->zzn(Lcom/google/android/gms/internal/ads/zzcxx;)Lcom/google/android/gms/internal/ads/zzacd;

    move-result-object v1

    goto :goto_2

    .line 32
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcxx;->zzo(Lcom/google/android/gms/internal/ads/zzcxx;)Lcom/google/android/gms/internal/ads/zzady;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 33
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcxx;->zzo(Lcom/google/android/gms/internal/ads/zzcxx;)Lcom/google/android/gms/internal/ads/zzady;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzady;->zzcyn:Lcom/google/android/gms/internal/ads/zzacd;

    goto :goto_2

    :cond_3
    move-object v1, v2

    .line 35
    :goto_2
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcxv;->zzgla:Lcom/google/android/gms/internal/ads/zzacd;

    .line 36
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcxx;->zzd(Lcom/google/android/gms/internal/ads/zzcxx;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcxv;->zzglc:Ljava/util/ArrayList;

    .line 37
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcxx;->zze(Lcom/google/android/gms/internal/ads/zzcxx;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcxv;->zzgld:Ljava/util/ArrayList;

    .line 39
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcxx;->zzd(Lcom/google/android/gms/internal/ads/zzcxx;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_3

    .line 41
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcxx;->zzo(Lcom/google/android/gms/internal/ads/zzcxx;)Lcom/google/android/gms/internal/ads/zzady;

    move-result-object v1

    if-nez v1, :cond_5

    .line 42
    new-instance v2, Lcom/google/android/gms/internal/ads/zzady;

    new-instance v1, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzady;-><init>(Lcom/google/android/gms/ads/formats/NativeAdOptions;)V

    goto :goto_3

    .line 43
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcxx;->zzo(Lcom/google/android/gms/internal/ads/zzcxx;)Lcom/google/android/gms/internal/ads/zzady;

    move-result-object v2

    .line 44
    :goto_3
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzcxv;->zzdgs:Lcom/google/android/gms/internal/ads/zzady;

    .line 45
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcxx;->zzf(Lcom/google/android/gms/internal/ads/zzcxx;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcxv;->zzgle:Ljava/lang/String;

    .line 46
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcxx;->zzg(Lcom/google/android/gms/internal/ads/zzcxx;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcxv;->zzglf:Ljava/lang/String;

    .line 47
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcxx;->zzh(Lcom/google/android/gms/internal/ads/zzcxx;)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzcxv;->zzglg:I

    .line 48
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcxx;->zzi(Lcom/google/android/gms/internal/ads/zzcxx;)Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcxv;->zzglh:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    .line 49
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcxx;->zzj(Lcom/google/android/gms/internal/ads/zzcxx;)Lcom/google/android/gms/internal/ads/zzzs;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcxv;->zzgli:Lcom/google/android/gms/internal/ads/zzzs;

    .line 50
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcxx;->zzk(Lcom/google/android/gms/internal/ads/zzcxx;)Lcom/google/android/gms/internal/ads/zzaiy;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcxv;->zzdne:Lcom/google/android/gms/internal/ads/zzaiy;

    move-object/from16 v1, p1

    .line 51
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzcxx;->zzglj:Ljava/util/Set;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcxv;->zzglj:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcxx;Lcom/google/android/gms/internal/ads/zzcxw;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcxv;-><init>(Lcom/google/android/gms/internal/ads/zzcxx;)V

    return-void
.end method


# virtual methods
.method public final zzamn()Lcom/google/android/gms/internal/ads/zzaga;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxv;->zzglh:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->zzku()Lcom/google/android/gms/internal/ads/zzaga;

    move-result-object v0

    return-object v0
.end method
