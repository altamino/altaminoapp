.class public final Lcom/google/android/gms/internal/ads/zzdbr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdbv;


# static fields
.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private final zzapv:Ljava/io/InputStream;

.field private final zzgpb:Lorg/json/JSONObject;

.field private zzgpc:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 73
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdbr;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdbr;->zzgpc:Z

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbr;->zzapv:Ljava/io/InputStream;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbr;->zzgpb:Lorg/json/JSONObject;

    return-void
.end method

.method public static zzf(Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzdbv;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdbr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdbr;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method


# virtual methods
.method public final zzanq()Lcom/google/android/gms/internal/ads/zzdha;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "keyMaterialType"

    const-string/jumbo v1, "value"

    const-string/jumbo v2, "typeUrl"

    const-string v3, "outputPrefixType"

    const-string v4, "keyId"

    const-string v5, "status"

    const-string v6, "keyData"

    const-string v7, "primaryKeyId"

    const-string v8, "key"

    .line 7
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    new-instance v10, Ljava/lang/String;

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzdbr;->zzapv:Ljava/io/InputStream;

    .line 8
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzdch;->zzg(Ljava/io/InputStream;)[B

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/internal/ads/zzdbr;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v11, v12}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-eqz v10, :cond_11

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdha;->zzask()Lcom/google/android/gms/internal/ads/zzdha$zza;

    move-result-object v10

    .line 14
    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 15
    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/ads/zzdha$zza;->zzes(I)Lcom/google/android/gms/internal/ads/zzdha$zza;

    .line 16
    :cond_0
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const/4 v8, 0x0

    .line 17
    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_10

    .line 18
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 20
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 21
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 22
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 23
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdha$zzb;->zzasq()Lcom/google/android/gms/internal/ads/zzdha$zzb$zza;

    move-result-object v11

    .line 26
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "ENABLED"

    .line 27
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 28
    sget-object v12, Lcom/google/android/gms/internal/ads/zzdgu;->zzgul:Lcom/google/android/gms/internal/ads/zzdgu;

    goto :goto_1

    :cond_1
    const-string v13, "DISABLED"

    .line 29
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 30
    sget-object v12, Lcom/google/android/gms/internal/ads/zzdgu;->zzgum:Lcom/google/android/gms/internal/ads/zzdgu;

    .line 32
    :goto_1
    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/ads/zzdha$zzb$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdgu;)Lcom/google/android/gms/internal/ads/zzdha$zzb$zza;

    move-result-object v11

    .line 33
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/ads/zzdha$zzb$zza;->zzeu(I)Lcom/google/android/gms/internal/ads/zzdha$zzb$zza;

    move-result-object v11

    .line 34
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "TINK"

    .line 35
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 36
    sget-object v12, Lcom/google/android/gms/internal/ads/zzdhm;->zzgvr:Lcom/google/android/gms/internal/ads/zzdhm;

    goto :goto_2

    :cond_2
    const-string v13, "RAW"

    .line 37
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 38
    sget-object v12, Lcom/google/android/gms/internal/ads/zzdhm;->zzgvt:Lcom/google/android/gms/internal/ads/zzdhm;

    goto :goto_2

    :cond_3
    const-string v13, "LEGACY"

    .line 39
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 40
    sget-object v12, Lcom/google/android/gms/internal/ads/zzdhm;->zzgvs:Lcom/google/android/gms/internal/ads/zzdhm;

    goto :goto_2

    :cond_4
    const-string v13, "CRUNCHY"

    .line 41
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 42
    sget-object v12, Lcom/google/android/gms/internal/ads/zzdhm;->zzgvu:Lcom/google/android/gms/internal/ads/zzdhm;

    .line 44
    :goto_2
    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/ads/zzdha$zzb$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdhm;)Lcom/google/android/gms/internal/ads/zzdha$zzb$zza;

    move-result-object v11

    .line 45
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 47
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 49
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzdjp;->decode(Ljava/lang/String;)[B

    move-result-object v12

    .line 50
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdgr;->zzarw()Lcom/google/android/gms/internal/ads/zzdgr$zza;

    move-result-object v13

    .line 51
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/ads/zzdgr$zza;->zzgk(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdgr$zza;

    move-result-object v13

    .line 52
    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzdmr;->zzz([B)Lcom/google/android/gms/internal/ads/zzdmr;

    move-result-object v12

    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/zzdgr$zza;->zzbo(Lcom/google/android/gms/internal/ads/zzdmr;)Lcom/google/android/gms/internal/ads/zzdgr$zza;

    move-result-object v12

    .line 53
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v13, "SYMMETRIC"

    .line 54
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 55
    sget-object v9, Lcom/google/android/gms/internal/ads/zzdgr$zzb;->zzgue:Lcom/google/android/gms/internal/ads/zzdgr$zzb;

    goto :goto_3

    :cond_5
    const-string v13, "ASYMMETRIC_PRIVATE"

    .line 56
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 57
    sget-object v9, Lcom/google/android/gms/internal/ads/zzdgr$zzb;->zzguf:Lcom/google/android/gms/internal/ads/zzdgr$zzb;

    goto :goto_3

    :cond_6
    const-string v13, "ASYMMETRIC_PUBLIC"

    .line 58
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 59
    sget-object v9, Lcom/google/android/gms/internal/ads/zzdgr$zzb;->zzgug:Lcom/google/android/gms/internal/ads/zzdgr$zzb;

    goto :goto_3

    :cond_7
    const-string v13, "REMOTE"

    .line 60
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 61
    sget-object v9, Lcom/google/android/gms/internal/ads/zzdgr$zzb;->zzguh:Lcom/google/android/gms/internal/ads/zzdgr$zzb;

    .line 63
    :goto_3
    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/ads/zzdgr$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdgr$zzb;)Lcom/google/android/gms/internal/ads/zzdgr$zza;

    move-result-object v9

    .line 64
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzdob$zza;->zzaya()Lcom/google/android/gms/internal/ads/zzdpk;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/ads/zzdob;

    check-cast v9, Lcom/google/android/gms/internal/ads/zzdgr;

    .line 65
    invoke-virtual {v11, v9}, Lcom/google/android/gms/internal/ads/zzdha$zzb$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdgr;)Lcom/google/android/gms/internal/ads/zzdha$zzb$zza;

    move-result-object v9

    .line 66
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzdob$zza;->zzaya()Lcom/google/android/gms/internal/ads/zzdpk;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/ads/zzdob;

    check-cast v9, Lcom/google/android/gms/internal/ads/zzdha$zzb;

    .line 67
    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/zzdha$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdha$zzb;)Lcom/google/android/gms/internal/ads/zzdha$zza;

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 62
    :cond_8
    new-instance v0, Lorg/json/JSONException;

    const-string/jumbo v1, "unknown key material type: "

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_9
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_4
    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_a
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "invalid keyData"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_b
    new-instance v0, Lorg/json/JSONException;

    const-string/jumbo v1, "unknown output prefix type: "

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_c
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_5
    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_d
    new-instance v0, Lorg/json/JSONException;

    const-string/jumbo v1, "unknown status: "

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_e
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_6
    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_f
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "invalid key"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_10
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzdob$zza;->zzaya()Lcom/google/android/gms/internal/ads/zzdpk;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdob;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdha;

    return-object v0

    .line 12
    :cond_11
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "invalid keyset"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 72
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_8

    :goto_7
    throw v1

    :goto_8
    goto :goto_7
.end method
