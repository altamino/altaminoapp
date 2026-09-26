.class final Lcom/google/android/gms/measurement/internal/zzt;
.super Lcom/google/android/gms/measurement/internal/zzmo;
.source "SourceFile"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/measurement/internal/zzv;",
            ">;"
        }
    .end annotation
.end field

.field private zzd:Ljava/lang/Long;

.field private zze:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzmp;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzmo;-><init>(Lcom/google/android/gms/measurement/internal/zzmp;)V

    .line 4
    return-void
.end method

.method private final zza(Ljava/lang/Integer;)Lcom/google/android/gms/measurement/internal/zzv;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzc:Ljava/util/Map;

    .line 1
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzc:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzv;

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzv;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzt;->zza:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzv;-><init>(Lcom/google/android/gms/measurement/internal/zzt;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzy;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzc:Ljava/util/Map;

    .line 4
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private final zza(II)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzc:Ljava/util/Map;

    .line 200
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzv;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 201
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzv;->zza(Lcom/google/android/gms/measurement/internal/zzv;)Ljava/util/BitSet;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    return p1
.end method


# virtual methods
.method final zza(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;
    .locals 52
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzfi$zze;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzfi$zzn;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzfi$zzc;",
            ">;"
        }
    .end annotation

    move-object/from16 v10, p0

    .line 5
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/zzt;->zza:Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/zzt;->zzb:Ljava/util/Set;

    .line 9
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/zzt;->zzc:Ljava/util/Map;

    move-object/from16 v0, p4

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/zzt;->zzd:Ljava/lang/Long;

    move-object/from16 v0, p5

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/zzt;->zze:Ljava/lang/Long;

    .line 10
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v11, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfi$zze;

    const-string v2, "_s"

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfi$zze;->zzg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v11

    .line 12
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzob;->zza()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/zzt;->zza:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbi;->zzbg:Lcom/google/android/gms/measurement/internal/zzfi;

    .line 14
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzaf;->zzf(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfi;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v13, 0x1

    goto :goto_1

    :cond_2
    move v13, v11

    .line 15
    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzob;->zza()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/zzt;->zza:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzbi;->zzbf:Lcom/google/android/gms/measurement/internal/zzfi;

    .line 17
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzaf;->zzf(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfi;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v14, 0x1

    goto :goto_2

    :cond_3
    move v14, v11

    :goto_2
    if-eqz v1, :cond_4

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzml;->zzh()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v2

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzt;->zza:Ljava/lang/String;

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 21
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "current_session_count"

    .line 23
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 24
    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "events"

    const-string v6, "app_id = ?"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v7

    .line 25
    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v2

    const-string v4, "Error resetting session-scoped event counts. appId"

    .line 28
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 29
    invoke-virtual {v2, v4, v3, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    :cond_4
    :goto_3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v14, :cond_5

    if-eqz v13, :cond_5

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzml;->zzh()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v0

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/zzt;->zza:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzao;->zzk(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 32
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzml;->zzh()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v2

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzt;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzao;->zzj(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v15

    .line 33
    invoke-interface {v15}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 34
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    if-eqz v1, :cond_e

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/zzt;->zza:Ljava/lang/String;

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzml;->zzh()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v3

    iget-object v4, v10, Lcom/google/android/gms/measurement/internal/zzt;->zza:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzao;->zzl(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 36
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    invoke-static {v15}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    .line 39
    invoke-interface {v15}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d

    .line 40
    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 41
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v15, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzfi$zzl;

    .line 42
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_7

    .line 43
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_7
    move-object/from16 v17, v3

    goto/16 :goto_8

    .line 44
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzml;->g_()Lcom/google/android/gms/measurement/internal/zzmz;

    move-result-object v8

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzi()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Lcom/google/android/gms/measurement/internal/zzmz;->zza(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 45
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    .line 46
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzix;->zzby()Lcom/google/android/gms/internal/measurement/zzix$zzb;

    move-result-object v9

    .line 47
    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfi$zzl$zza;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfi$zzl$zza;->zzb()Lcom/google/android/gms/internal/measurement/zzfi$zzl$zza;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/measurement/zzfi$zzl$zza;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfi$zzl$zza;

    move-result-object v8

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzml;->g_()Lcom/google/android/gms/measurement/internal/zzmz;

    move-result-object v9

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzk()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v9, v11, v7}, Lcom/google/android/gms/measurement/internal/zzmz;->zza(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    .line 49
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfi$zzl$zza;->zzd()Lcom/google/android/gms/internal/measurement/zzfi$zzl$zza;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/google/android/gms/internal/measurement/zzfi$zzl$zza;->zzd(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfi$zzl$zza;

    .line 50
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 51
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzh()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzfi$zzd;

    .line 52
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfi$zzd;->zza()I

    move-result v16

    move-object/from16 v17, v3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 53
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    move-object/from16 v3, v17

    goto :goto_5

    :cond_a
    move-object/from16 v17, v3

    .line 54
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfi$zzl$zza;->zza()Lcom/google/android/gms/internal/measurement/zzfi$zzl$zza;

    move-result-object v3

    .line 55
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/measurement/zzfi$zzl$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfi$zzl$zza;

    .line 56
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 57
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzj()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfi$zzm;

    .line 58
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfi$zzm;->zzb()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 59
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 60
    :cond_c
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfi$zzl$zza;->zzc()Lcom/google/android/gms/internal/measurement/zzfi$zzl$zza;

    move-result-object v6

    .line 61
    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/measurement/zzfi$zzl$zza;->zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfi$zzl$zza;

    .line 62
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzix$zzb;->zzab()Lcom/google/android/gms/internal/measurement/zzkj;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzix;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfi$zzl;

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    move-object/from16 v3, v17

    const/4 v11, 0x0

    goto/16 :goto_4

    .line 63
    :goto_8
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_d
    move-object v11, v1

    goto :goto_9

    :cond_e
    move-object v11, v15

    .line 64
    :goto_9
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 65
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfi$zzl;

    .line 66
    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    .line 67
    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6}, Ljava/util/BitSet;-><init>()V

    .line 68
    new-instance v7, Landroidx/collection/ArrayMap;

    invoke-direct {v7}, Landroidx/collection/ArrayMap;-><init>()V

    if-eqz v1, :cond_12

    .line 69
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zza()I

    move-result v2

    if-nez v2, :cond_f

    goto :goto_d

    .line 70
    :cond_f
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzh()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfi$zzd;

    .line 71
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfi$zzd;->zzf()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 72
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfi$zzd;->zza()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 73
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfi$zzd;->zze()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 74
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfi$zzd;->zzb()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_c

    :cond_11
    const/4 v3, 0x0

    .line 75
    :goto_c
    invoke-interface {v7, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 76
    :cond_12
    :goto_d
    new-instance v8, Landroidx/collection/ArrayMap;

    invoke-direct {v8}, Landroidx/collection/ArrayMap;-><init>()V

    if-eqz v1, :cond_15

    .line 77
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzc()I

    move-result v2

    if-nez v2, :cond_13

    goto :goto_f

    .line 78
    :cond_13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzj()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfi$zzm;

    .line 79
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfi$zzm;->zzf()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfi$zzm;->zza()I

    move-result v4

    if-lez v4, :cond_14

    .line 80
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfi$zzm;->zzb()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 81
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfi$zzm;->zza()I

    move-result v9

    const/16 v17, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/measurement/zzfi$zzm;->zza(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 82
    invoke-interface {v8, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_14
    const/16 v17, 0x1

    goto :goto_e

    :cond_15
    :goto_f
    const/16 v17, 0x1

    if-eqz v1, :cond_18

    const/4 v2, 0x0

    .line 83
    :goto_10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzd()I

    move-result v3

    shl-int/lit8 v3, v3, 0x6

    if-ge v2, v3, :cond_18

    .line 84
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzk()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/android/gms/measurement/internal/zzmz;->zza(Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v3

    .line 86
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v3

    .line 87
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v18, v11

    const-string v11, "Filter already evaluated. audience ID, filter ID"

    invoke-virtual {v3, v11, v4, v9}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    invoke-virtual {v6, v2}, Ljava/util/BitSet;->set(I)V

    .line 89
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfi$zzl;->zzi()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/android/gms/measurement/internal/zzmz;->zza(Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 90
    invoke-virtual {v5, v2}, Ljava/util/BitSet;->set(I)V

    goto :goto_11

    :cond_16
    move-object/from16 v18, v11

    .line 91
    :cond_17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_11
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v11, v18

    goto :goto_10

    :cond_18
    move-object/from16 v18, v11

    .line 92
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzfi$zzl;

    if-eqz v14, :cond_1d

    if-eqz v13, :cond_1d

    .line 93
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1d

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/zzt;->zze:Ljava/lang/Long;

    if-eqz v2, :cond_1d

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/zzt;->zzd:Ljava/lang/Long;

    if-nez v2, :cond_19

    goto :goto_13

    .line 94
    :cond_19
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzew$zzb;

    .line 95
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzew$zzb;->zzb()I

    move-result v3

    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/zzt;->zze:Ljava/lang/Long;

    .line 96
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    const-wide/16 v21, 0x3e8

    div-long v19, v19, v21

    .line 97
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzew$zzb;->zzi()Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/zzt;->zzd:Ljava/lang/Long;

    .line 98
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    div-long v19, v19, v21

    .line 99
    :cond_1b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 100
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_1c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 102
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 103
    :cond_1d
    :goto_13
    new-instance v11, Lcom/google/android/gms/measurement/internal/zzv;

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzt;->zza:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v1, v11

    move-object/from16 v2, p0

    move-object/from16 p5, v12

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/measurement/internal/zzv;-><init>(Lcom/google/android/gms/measurement/internal/zzt;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfi$zzl;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zzy;)V

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/zzt;->zzc:Ljava/util/Map;

    .line 104
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v12, p5

    move-object/from16 v11, v18

    goto/16 :goto_a

    :cond_1e
    const/4 v12, 0x0

    const/16 v17, 0x1

    .line 105
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "Skipping failed audience ID"

    if-nez v0, :cond_26

    .line 106
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzx;

    invoke-direct {v0, v10, v12}, Lcom/google/android/gms/measurement/internal/zzx;-><init>(Lcom/google/android/gms/measurement/internal/zzt;Lcom/google/android/gms/measurement/internal/zzaa;)V

    .line 107
    new-instance v2, Landroidx/collection/ArrayMap;

    invoke-direct {v2}, Landroidx/collection/ArrayMap;-><init>()V

    .line 108
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzfi$zze;

    iget-object v5, v10, Lcom/google/android/gms/measurement/internal/zzt;->zza:Ljava/lang/String;

    .line 109
    invoke-virtual {v0, v5, v4}, Lcom/google/android/gms/measurement/internal/zzx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfi$zze;)Lcom/google/android/gms/internal/measurement/zzfi$zze;

    move-result-object v5

    if-eqz v5, :cond_1f

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzml;->zzh()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v6

    iget-object v7, v10, Lcom/google/android/gms/measurement/internal/zzt;->zza:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfi$zze;->zzg()Ljava/lang/String;

    move-result-object v8

    .line 111
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfi$zze;->zzg()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Lcom/google/android/gms/measurement/internal/zzao;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbc;

    move-result-object v9

    if-nez v9, :cond_20

    .line 112
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v9

    .line 113
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v9

    .line 114
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 115
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/zzfq;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "Event aggregate wasn\'t created during raw event logging. appId, event"

    .line 116
    invoke-virtual {v9, v8, v11, v6}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    new-instance v6, Lcom/google/android/gms/measurement/internal/zzbc;

    move-object/from16 v18, v6

    .line 118
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfi$zze;->zzg()Ljava/lang/String;

    move-result-object v20

    const-wide/16 v21, 0x1

    const-wide/16 v23, 0x1

    const-wide/16 v25, 0x1

    .line 119
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfi$zze;->zzd()J

    move-result-wide v27

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v19, v7

    invoke-direct/range {v18 .. v34}, Lcom/google/android/gms/measurement/internal/zzbc;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_14

    .line 120
    :cond_20
    new-instance v6, Lcom/google/android/gms/measurement/internal/zzbc;

    move-object/from16 v35, v6

    iget-object v4, v9, Lcom/google/android/gms/measurement/internal/zzbc;->zza:Ljava/lang/String;

    move-object/from16 v36, v4

    iget-object v4, v9, Lcom/google/android/gms/measurement/internal/zzbc;->zzb:Ljava/lang/String;

    move-object/from16 v37, v4

    iget-wide v7, v9, Lcom/google/android/gms/measurement/internal/zzbc;->zzc:J

    const-wide/16 v13, 0x1

    add-long v38, v7, v13

    iget-wide v7, v9, Lcom/google/android/gms/measurement/internal/zzbc;->zzd:J

    add-long v40, v7, v13

    iget-wide v7, v9, Lcom/google/android/gms/measurement/internal/zzbc;->zze:J

    add-long v42, v7, v13

    iget-wide v7, v9, Lcom/google/android/gms/measurement/internal/zzbc;->zzf:J

    move-wide/from16 v44, v7

    iget-wide v7, v9, Lcom/google/android/gms/measurement/internal/zzbc;->zzg:J

    move-wide/from16 v46, v7

    iget-object v4, v9, Lcom/google/android/gms/measurement/internal/zzbc;->zzh:Ljava/lang/Long;

    move-object/from16 v48, v4

    iget-object v4, v9, Lcom/google/android/gms/measurement/internal/zzbc;->zzi:Ljava/lang/Long;

    move-object/from16 v49, v4

    iget-object v4, v9, Lcom/google/android/gms/measurement/internal/zzbc;->zzj:Ljava/lang/Long;

    move-object/from16 v50, v4

    iget-object v4, v9, Lcom/google/android/gms/measurement/internal/zzbc;->zzk:Ljava/lang/Boolean;

    move-object/from16 v51, v4

    invoke-direct/range {v35 .. v51}, Lcom/google/android/gms/measurement/internal/zzbc;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 121
    :goto_14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzml;->zzh()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzao;->zza(Lcom/google/android/gms/measurement/internal/zzbc;)V

    iget-wide v7, v6, Lcom/google/android/gms/measurement/internal/zzbc;->zzc:J

    .line 122
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfi$zze;->zzg()Ljava/lang/String;

    move-result-object v4

    .line 123
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    if-nez v9, :cond_21

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzml;->zzh()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v9

    iget-object v11, v10, Lcom/google/android/gms/measurement/internal/zzt;->zza:Ljava/lang/String;

    invoke-virtual {v9, v11, v4}, Lcom/google/android/gms/measurement/internal/zzao;->zzf(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    .line 125
    invoke-interface {v2, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_21
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v13, v10, Lcom/google/android/gms/measurement/internal/zzt;->zzb:Ljava/util/Set;

    .line 127
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_22

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v13, v1, v11}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_15

    .line 129
    :cond_22
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 130
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move/from16 v14, v17

    :goto_16
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_24

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/measurement/zzew$zzb;

    .line 131
    new-instance v15, Lcom/google/android/gms/measurement/internal/zzz;

    iget-object v12, v10, Lcom/google/android/gms/measurement/internal/zzt;->zza:Ljava/lang/String;

    invoke-direct {v15, v10, v12, v11, v14}, Lcom/google/android/gms/measurement/internal/zzz;-><init>(Lcom/google/android/gms/measurement/internal/zzt;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzew$zzb;)V

    iget-object v12, v10, Lcom/google/android/gms/measurement/internal/zzt;->zzd:Ljava/lang/Long;

    move-object/from16 p4, v0

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzt;->zze:Ljava/lang/Long;

    .line 132
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzew$zzb;->zzb()I

    move-result v14

    invoke-direct {v10, v11, v14}, Lcom/google/android/gms/measurement/internal/zzt;->zza(II)Z

    move-result v25

    move-object/from16 v18, v15

    move-object/from16 v19, v12

    move-object/from16 v20, v0

    move-object/from16 v21, v5

    move-wide/from16 v22, v7

    move-object/from16 v24, v6

    .line 133
    invoke-virtual/range {v18 .. v25}, Lcom/google/android/gms/measurement/internal/zzz;->zza(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/zzfi$zze;JLcom/google/android/gms/measurement/internal/zzbc;Z)Z

    move-result v14

    if-eqz v14, :cond_23

    .line 134
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Ljava/lang/Integer;)Lcom/google/android/gms/measurement/internal/zzv;

    move-result-object v0

    .line 135
    invoke-virtual {v0, v15}, Lcom/google/android/gms/measurement/internal/zzv;->zza(Lcom/google/android/gms/measurement/internal/zzac;)V

    move-object/from16 v0, p4

    const/4 v12, 0x0

    goto :goto_16

    :cond_23
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzt;->zzb:Ljava/util/Set;

    .line 136
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_24
    move-object/from16 p4, v0

    :goto_17
    if-nez v14, :cond_25

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzt;->zzb:Ljava/util/Set;

    .line 137
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_25
    move-object/from16 v0, p4

    const/4 v12, 0x0

    goto/16 :goto_15

    .line 138
    :cond_26
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 139
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 140
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_27
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfi$zzn;

    .line 141
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfi$zzn;->zzg()Ljava/lang/String;

    move-result-object v4

    .line 142
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-nez v5, :cond_28

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzml;->zzh()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v5

    iget-object v6, v10, Lcom/google/android/gms/measurement/internal/zzt;->zza:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lcom/google/android/gms/measurement/internal/zzao;->zzg(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 144
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_28
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_29
    :goto_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_27

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v10, Lcom/google/android/gms/measurement/internal/zzt;->zzb:Ljava/util/Set;

    .line 146
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_18

    .line 148
    :cond_2a
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 149
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move/from16 v8, v17

    :goto_1a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_31

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzew$zze;

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v9

    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(I)Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v9

    .line 152
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v9

    .line 153
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 154
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzew$zze;->zzi()Z

    move-result v12

    if-eqz v12, :cond_2b

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzew$zze;->zza()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_1b

    :cond_2b
    const/4 v12, 0x0

    .line 155
    :goto_1b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v13

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzew$zze;->zze()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/google/android/gms/measurement/internal/zzfq;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "Evaluating filter. audience, filter, property"

    .line 156
    invoke-virtual {v9, v14, v11, v12, v13}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v9

    .line 158
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfr;->zzp()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v9

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzml;->g_()Lcom/google/android/gms/measurement/internal/zzmz;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/google/android/gms/measurement/internal/zzmz;->zza(Lcom/google/android/gms/internal/measurement/zzew$zze;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Filter definition"

    invoke-virtual {v9, v12, v11}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    :cond_2c
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzew$zze;->zzi()Z

    move-result v9

    if-eqz v9, :cond_2f

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzew$zze;->zza()I

    move-result v9

    const/16 v11, 0x100

    if-le v9, v11, :cond_2d

    goto :goto_1c

    .line 161
    :cond_2d
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzab;

    iget-object v11, v10, Lcom/google/android/gms/measurement/internal/zzt;->zza:Ljava/lang/String;

    invoke-direct {v9, v10, v11, v6, v8}, Lcom/google/android/gms/measurement/internal/zzab;-><init>(Lcom/google/android/gms/measurement/internal/zzt;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzew$zze;)V

    iget-object v11, v10, Lcom/google/android/gms/measurement/internal/zzt;->zzd:Ljava/lang/Long;

    iget-object v12, v10, Lcom/google/android/gms/measurement/internal/zzt;->zze:Ljava/lang/Long;

    .line 162
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzew$zze;->zza()I

    move-result v8

    invoke-direct {v10, v6, v8}, Lcom/google/android/gms/measurement/internal/zzt;->zza(II)Z

    move-result v8

    .line 163
    invoke-virtual {v9, v11, v12, v3, v8}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/zzfi$zzn;Z)Z

    move-result v8

    if-eqz v8, :cond_2e

    .line 164
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Ljava/lang/Integer;)Lcom/google/android/gms/measurement/internal/zzv;

    move-result-object v11

    .line 165
    invoke-virtual {v11, v9}, Lcom/google/android/gms/measurement/internal/zzv;->zza(Lcom/google/android/gms/measurement/internal/zzac;)V

    goto/16 :goto_1a

    :cond_2e
    iget-object v7, v10, Lcom/google/android/gms/measurement/internal/zzt;->zzb:Ljava/util/Set;

    .line 166
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 167
    :cond_2f
    :goto_1c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v7

    .line 168
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v7

    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/zzt;->zza:Ljava/lang/String;

    .line 169
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 170
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzew$zze;->zzi()Z

    move-result v11

    if-eqz v11, :cond_30

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzew$zze;->zza()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_1d

    :cond_30
    const/4 v8, 0x0

    :goto_1d
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v11, "Invalid property filter ID. appId, id"

    .line 171
    invoke-virtual {v7, v11, v9, v8}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1f

    :cond_31
    :goto_1e
    if-nez v8, :cond_29

    :goto_1f
    iget-object v7, v10, Lcom/google/android/gms/measurement/internal/zzt;->zzb:Ljava/util/Set;

    .line 172
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_19

    .line 173
    :cond_32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzt;->zzc:Ljava/util/Map;

    .line 174
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/zzt;->zzb:Ljava/util/Set;

    .line 175
    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 176
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_33
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzt;->zzc:Ljava/util/Map;

    .line 177
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzv;

    .line 178
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/zzv;->zza(I)Lcom/google/android/gms/internal/measurement/zzfi$zzc;

    move-result-object v3

    .line 180
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzml;->zzh()Lcom/google/android/gms/measurement/internal/zzao;

    move-result-object v4

    iget-object v5, v10, Lcom/google/android/gms/measurement/internal/zzt;->zza:Ljava/lang/String;

    .line 182
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfi$zzc;->zzd()Lcom/google/android/gms/internal/measurement/zzfi$zzl;

    move-result-object v3

    .line 183
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzmo;->zzak()V

    .line 184
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 185
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzhd;->zzbv()[B

    move-result-object v3

    .line 188
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "app_id"

    .line 189
    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "audience_id"

    .line 190
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "current_results"

    .line 191
    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 192
    :try_start_1
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzao;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v3, "audience_filter_values"
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v7, 0x5

    const/4 v8, 0x0

    .line 193
    :try_start_2
    invoke-virtual {v0, v3, v8, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v6

    const-wide/16 v11, -0x1

    cmp-long v0, v6, v11

    if-nez v0, :cond_33

    .line 194
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    const-string v3, "Failed to insert filter results (got -1). appId"

    .line 196
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_20

    :catch_1
    move-exception v0

    goto :goto_21

    :catch_2
    move-exception v0

    const/4 v8, 0x0

    .line 197
    :goto_21
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v3

    .line 198
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v3

    const-string v4, "Error storing filter results. appId"

    .line 199
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_20

    :cond_34
    return-object v1
.end method

.method protected final zzc()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
