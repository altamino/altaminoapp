.class public final Lcom/google/android/gms/internal/ads/zzciu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzczc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzczc<",
        "Lcom/google/android/gms/internal/ads/zzciv;",
        "Lcom/google/android/gms/internal/ads/zzciw;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzdmi:Ljava/lang/String;

.field private final zzfxl:Lcom/google/android/gms/internal/ads/zzasm;

.field private final zzfxz:Ljava/lang/String;

.field private final zzlj:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzasm;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzciu;->zzlj:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzciu;->zzfxz:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzciu;->zzfxl:Lcom/google/android/gms/internal/ads/zzasm;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzciu;->zzdmi:Ljava/lang/String;

    return-void
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzasd;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzciw;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcif;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "Received error HTTP response code: "

    const-string v2, "doritos_v2"

    const-string v3, "doritos"

    const-string v4, ""

    .line 7
    :try_start_0
    new-instance v5, Lcom/google/android/gms/internal/ads/zzciw;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzciw;-><init>()V

    const-string v6, "SDK version: "

    .line 8
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzciu;->zzfxz:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    :goto_0
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzbad;->zzeo(Ljava/lang/String;)V

    const-string v6, "AdRequestServiceImpl: Sending request: "

    .line 9
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    :goto_1
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzbad;->zzdp(Ljava/lang/String;)V

    .line 10
    new-instance v6, Ljava/net/URL;

    move-object/from16 v7, p1

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 11
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzln()Lcom/google/android/gms/common/util/Clock;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 14
    :goto_2
    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzciu;->zzfxl:Lcom/google/android/gms/internal/ads/zzasm;

    invoke-interface {v12}, Lcom/google/android/gms/internal/ads/zzasm;->zzua()V

    .line 15
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlg()Lcom/google/android/gms/internal/ads/zzaxi;

    move-result-object v12

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzciu;->zzlj:Landroid/content/Context;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzciu;->zzfxz:Ljava/lang/String;

    .line 17
    invoke-virtual {v12, v13, v14, v10, v6}, Lcom/google/android/gms/internal/ads/zzaxi;->zza(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    .line 18
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string v12, "Cookie"

    move-object/from16 v13, p4

    .line 19
    invoke-virtual {v6, v12, v13}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    move-object/from16 v13, p4

    .line 20
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzasd;->zztw()Z

    move-result v12

    if-eqz v12, :cond_5

    const-string v12, "pii"

    move-object/from16 v14, p3

    .line 21
    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 23
    invoke-virtual {v12, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    const-string/jumbo v15, "x-afma-drt-cookie"

    .line 25
    invoke-virtual {v12, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 26
    invoke-virtual {v6, v15, v10}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_3
    invoke-virtual {v12, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string/jumbo v10, "x-afma-drt-v2-cookie"

    .line 29
    invoke-virtual {v12, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 30
    invoke-virtual {v6, v10, v12}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    const-string v10, "DSID signal does not exist."

    .line 31
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzawz;->zzds(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    move-object/from16 v14, p3

    :cond_6
    :goto_4
    const/4 v10, 0x1

    if-eqz p2, :cond_7

    .line 34
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzasd;->zztv()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 35
    invoke-virtual {v6, v10}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 36
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzasd;->zztv()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    .line 37
    array-length v12, v15

    invoke-virtual {v6, v12}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 39
    :try_start_2
    new-instance v12, Ljava/io/BufferedOutputStream;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-direct {v12, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 40
    :try_start_3
    invoke-virtual {v12, v15}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 41
    :try_start_4
    invoke-static {v12}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object/from16 v16, v12

    goto :goto_5

    :catchall_1
    move-exception v0

    const/16 v16, 0x0

    .line 43
    :goto_5
    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_7
    const/4 v15, 0x0

    .line 44
    :goto_6
    new-instance v10, Lcom/google/android/gms/internal/ads/zzazx;

    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/zzazx;-><init>()V

    .line 45
    invoke-virtual {v10, v6, v15}, Lcom/google/android/gms/internal/ads/zzazx;->zza(Ljava/net/HttpURLConnection;[B)V

    .line 46
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    .line 47
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v15

    .line 48
    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 49
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v2

    move-object/from16 v2, v18

    check-cast v2, Ljava/lang/String;

    .line 50
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v3

    move-object/from16 v3, v17

    check-cast v3, Ljava/util/List;

    .line 51
    invoke-interface {v7, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 52
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_8

    :cond_8
    move-object/from16 v17, v4

    .line 53
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v7, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, v17

    :goto_8
    move-object/from16 v3, v18

    move-object/from16 v2, v19

    goto :goto_7

    :cond_9
    move-object/from16 v19, v2

    move-object/from16 v18, v3

    move-object/from16 v17, v4

    .line 55
    invoke-virtual {v10, v6, v12}, Lcom/google/android/gms/internal/ads/zzazx;->zza(Ljava/net/HttpURLConnection;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const/16 v2, 0xc8

    const/16 v3, 0x12c

    if-lt v12, v2, :cond_c

    if-ge v12, v3, :cond_c

    .line 58
    :try_start_5
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 59
    :try_start_6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlg()Lcom/google/android/gms/internal/ads/zzaxi;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaxi;->zza(Ljava/io/InputStreamReader;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 60
    :try_start_7
    invoke-static {v2}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 63
    invoke-virtual {v10, v0}, Lcom/google/android/gms/internal/ads/zzazx;->zzek(Ljava/lang/String;)V

    .line 64
    iput v12, v5, Lcom/google/android/gms/internal/ads/zzciw;->zzfya:I

    .line 65
    iput-object v0, v5, Lcom/google/android/gms/internal/ads/zzciw;->zzdnh:Ljava/lang/String;

    .line 66
    iput-object v7, v5, Lcom/google/android/gms/internal/ads/zzciw;->zzab:Ljava/util/Map;

    .line 67
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/google/android/gms/internal/ads/zzacu;->zzcvk:Lcom/google/android/gms/internal/ads/zzacj;

    .line 68
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_9

    .line 70
    :cond_a
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcif;

    const-string v2, "No Fill"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzcif;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 71
    :cond_b
    :goto_9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzln()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v8

    iput-wide v2, v5, Lcom/google/android/gms/internal/ads/zzciw;->zzfyb:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 73
    :try_start_8
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 74
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzciu;->zzfxl:Lcom/google/android/gms/internal/ads/zzasm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzasm;->zzub()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    return-object v5

    :catchall_2
    move-exception v0

    move-object/from16 v16, v2

    goto :goto_a

    :catchall_3
    move-exception v0

    const/16 v16, 0x0

    .line 62
    :goto_a
    :try_start_9
    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_c
    if-lt v12, v3, :cond_f

    const/16 v2, 0x190

    if-ge v12, v2, :cond_f

    const-string v2, "Location"

    .line 77
    invoke-virtual {v6, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 81
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    add-int/2addr v11, v2

    .line 86
    sget-object v2, Lcom/google/android/gms/internal/ads/zzacu;->zzcut:Lcom/google/android/gms/internal/ads/zzacj;

    .line 87
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object v2

    .line 88
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-gt v11, v2, :cond_d

    .line 91
    :try_start_a
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 92
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzciu;->zzfxl:Lcom/google/android/gms/internal/ads/zzasm;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzasm;->zzub()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    move-object v6, v3

    move-object/from16 v4, v17

    move-object/from16 v3, v18

    move-object/from16 v2, v19

    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_d
    :try_start_b
    const-string v0, "Too many redirects."

    .line 89
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbad;->zzep(Ljava/lang/String;)V

    .line 90
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcif;

    const-string v2, "Too many redirects"

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzcif;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const-string v0, "No location header to follow redirect."

    .line 79
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbad;->zzep(Ljava/lang/String;)V

    .line 80
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcif;

    const-string v2, "No location header to follow redirect"

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzcif;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbad;->zzep(Ljava/lang/String;)V

    .line 85
    new-instance v2, Lcom/google/android/gms/internal/ads/zzcif;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzcif;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :catchall_4
    move-exception v0

    .line 94
    :try_start_c
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 95
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzciu;->zzfxl:Lcom/google/android/gms/internal/ads/zzasm;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzasm;->zzub()V

    throw v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "Error while connecting to ad server: "

    .line 97
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_10
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_b
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbad;->zzep(Ljava/lang/String;)V

    .line 98
    new-instance v2, Lcom/google/android/gms/internal/ads/zzcif;

    const-string v3, "Error connecting to ad server:"

    .line 99
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_11
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_c
    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzcif;-><init>(Ljava/lang/String;I)V

    goto :goto_e

    :goto_d
    throw v2

    :goto_e
    goto :goto_d
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 100
    check-cast p1, Lcom/google/android/gms/internal/ads/zzciv;

    .line 102
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzciv;->zza(Lcom/google/android/gms/internal/ads/zzciv;)Lcom/google/android/gms/internal/ads/zzasd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzasd;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzciv;->zza(Lcom/google/android/gms/internal/ads/zzciv;)Lcom/google/android/gms/internal/ads/zzasd;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzciv;->zzb(Lcom/google/android/gms/internal/ads/zzciv;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzciu;->zzdmi:Ljava/lang/String;

    .line 103
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzciu;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzasd;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzciw;

    move-result-object p1

    return-object p1
.end method
