.class public final Lcom/google/android/gms/internal/ads/zzbcx;
.super Lcom/google/android/gms/internal/ads/zzbcp;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzard;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbcp;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdf;IZLcom/google/android/gms/internal/ads/zzadi;Lcom/google/android/gms/internal/ads/zzbde;)Lcom/google/android/gms/internal/ads/zzbco;
    .locals 15

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastIceCreamSandwich()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    .line 7
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbdg;

    .line 8
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzbdf;->zzyh()Lcom/google/android/gms/internal/ads/zzbai;

    move-result-object v6

    .line 9
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzbdf;->zzyf()Ljava/lang/String;

    move-result-object v7

    .line 10
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzbdf;->zzyc()Lcom/google/android/gms/internal/ads/zzadg;

    move-result-object v9

    move-object v4, v0

    move-object/from16 v5, p1

    move-object/from16 v8, p5

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzbdg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbai;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzadi;Lcom/google/android/gms/internal/ads/zzadg;)V

    .line 12
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v1, v4, :cond_3

    const/4 v1, 0x2

    move/from16 v5, p3

    if-ne v5, v1, :cond_4

    goto :goto_1

    :cond_3
    move/from16 v5, p3

    :cond_4
    const/4 v2, 0x0

    :goto_1
    move-object/from16 v8, p6

    if-eqz v2, :cond_6

    .line 17
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzbde;->zzeeg:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "3"

    .line 18
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 19
    new-instance v9, Lcom/google/android/gms/internal/ads/zzbek;

    .line 20
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzbcp;->zza(Lcom/google/android/gms/internal/ads/zzbdf;)Z

    move-result v6

    move-object v1, v9

    move-object/from16 v2, p1

    move-object v3, v0

    move-object/from16 v4, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzbek;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdg;Lcom/google/android/gms/internal/ads/zzbdf;ZZLcom/google/android/gms/internal/ads/zzbde;)V

    return-object v9

    :cond_5
    const-string v2, "1"

    .line 22
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 23
    new-instance v9, Lcom/google/android/gms/internal/ads/zzbdq;

    .line 24
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzbcp;->zza(Lcom/google/android/gms/internal/ads/zzbdf;)Z

    move-result v7

    move-object v1, v9

    move-object/from16 v2, p1

    move-object v3, v0

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzbdq;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdg;Lcom/google/android/gms/internal/ads/zzbdf;IZZLcom/google/android/gms/internal/ads/zzbde;)V

    return-object v9

    .line 26
    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcd;

    .line 27
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzbcp;->zza(Lcom/google/android/gms/internal/ads/zzbdf;)Z

    move-result v6

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbdg;

    .line 28
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzbdf;->zzyh()Lcom/google/android/gms/internal/ads/zzbai;

    move-result-object v11

    .line 29
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzbdf;->zzyf()Ljava/lang/String;

    move-result-object v12

    .line 30
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzbdf;->zzyc()Lcom/google/android/gms/internal/ads/zzadg;

    move-result-object v14

    move-object v9, v1

    move-object/from16 v10, p1

    move-object/from16 v13, p5

    invoke-direct/range {v9 .. v14}, Lcom/google/android/gms/internal/ads/zzbdg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbai;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzadi;Lcom/google/android/gms/internal/ads/zzadg;)V

    move-object v3, v0

    move-object/from16 v4, p1

    move/from16 v5, p4

    move-object/from16 v7, p6

    move-object v8, v1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzbcd;-><init>(Landroid/content/Context;ZZLcom/google/android/gms/internal/ads/zzbde;Lcom/google/android/gms/internal/ads/zzbdg;)V

    return-object v0
.end method
