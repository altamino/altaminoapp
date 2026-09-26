.class public Lcom/airbnb/lottie/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method private static a(Ljava/util/List;Landroidx/collection/LongSparseArray;Lcom/airbnb/lottie/model/layer/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/layer/d;",
            ">;",
            "Landroidx/collection/LongSparseArray<",
            "Lcom/airbnb/lottie/model/layer/d;",
            ">;",
            "Lcom/airbnb/lottie/model/layer/d;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/d;->b()J

    .line 7
    move-result-wide v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1, p2}, Landroidx/collection/LongSparseArray;->m(JLjava/lang/Object;)V

    .line 11
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Lcom/airbnb/lottie/h;)Lcom/airbnb/lottie/a;
    .locals 2

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 8
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p1, p2}, Lcom/airbnb/lottie/e$b;->c(Landroid/content/Context;Ljava/io/InputStream;Lcom/airbnb/lottie/h;)Lcom/airbnb/lottie/a;

    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    .line 16
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    const-string v1, "Unable to find file "

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-direct {p2, p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    throw p2
.end method

.method public static c(Landroid/content/Context;Ljava/io/InputStream;Lcom/airbnb/lottie/h;)Lcom/airbnb/lottie/a;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/airbnb/lottie/model/e;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0, p2}, Lcom/airbnb/lottie/model/e;-><init>(Landroid/content/res/Resources;Lcom/airbnb/lottie/h;)V

    .line 10
    .line 11
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 12
    const/4 p2, 0x1

    .line 13
    .line 14
    new-array p2, p2, [Ljava/io/InputStream;

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    aput-object p1, p2, v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p0, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 21
    return-object v0
.end method

.method public static d(Landroid/content/res/Resources;Ljava/io/InputStream;)Lcom/airbnb/lottie/e;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "Failed to load composition."

    .line 3
    .line 4
    const-string v1, "LOTTIE"

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    .line 8
    move-result v2

    .line 9
    .line 10
    new-array v2, v2, [B

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    .line 14
    .line 15
    new-instance v3, Ljava/lang/String;

    .line 16
    .line 17
    const-string v4, "UTF-8"

    .line 18
    .line 19
    .line 20
    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 21
    .line 22
    new-instance v2, Lorg/json/JSONObject;

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v2}, Lcom/airbnb/lottie/e$b;->f(Landroid/content/res/Resources;Lorg/json/JSONObject;)Lcom/airbnb/lottie/e;

    .line 29
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lcom/airbnb/lottie/utils/f;->c(Ljava/io/Closeable;)V

    .line 33
    return-object p0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_4

    .line 36
    :catch_0
    move-exception p0

    .line 37
    goto :goto_0

    .line 38
    :catch_1
    move-exception p0

    .line 39
    goto :goto_2

    .line 40
    .line 41
    :goto_0
    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    const-string v3, "Unable to load JSON."

    .line 44
    .line 45
    .line 46
    invoke-direct {v2, v3, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    .line 51
    .line 52
    :goto_1
    invoke-static {p1}, Lcom/airbnb/lottie/utils/f;->c(Ljava/io/Closeable;)V

    .line 53
    goto :goto_3

    .line 54
    .line 55
    :goto_2
    :try_start_2
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    const-string v3, "Unable to find file."

    .line 58
    .line 59
    .line 60
    invoke-direct {v2, v3, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    goto :goto_1

    .line 65
    :goto_3
    const/4 p0, 0x0

    .line 66
    return-object p0

    .line 67
    .line 68
    .line 69
    :goto_4
    invoke-static {p1}, Lcom/airbnb/lottie/utils/f;->c(Ljava/io/Closeable;)V

    .line 70
    throw p0
.end method

.method public static e(Landroid/content/res/Resources;Lorg/json/JSONObject;Lcom/airbnb/lottie/h;)Lcom/airbnb/lottie/a;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/airbnb/lottie/model/h;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p2}, Lcom/airbnb/lottie/model/h;-><init>(Landroid/content/res/Resources;Lcom/airbnb/lottie/h;)V

    .line 6
    .line 7
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 8
    const/4 p2, 0x1

    .line 9
    .line 10
    new-array p2, p2, [Lorg/json/JSONObject;

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    aput-object p1, p2, v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 17
    return-object v0
.end method

.method public static f(Landroid/content/res/Resources;Lorg/json/JSONObject;)Lcom/airbnb/lottie/e;
    .locals 17

    .line 1
    .line 2
    move-object/from16 v0, p1

    .line 3
    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    iget v9, v1, Landroid/util/DisplayMetrics;->density:F

    .line 9
    .line 10
    .line 11
    const-string/jumbo v1, "w"

    .line 12
    const/4 v2, -0x1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 16
    move-result v1

    .line 17
    .line 18
    const-string v3, "h"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x0

    .line 24
    .line 25
    if-eq v1, v2, :cond_0

    .line 26
    .line 27
    if-eq v3, v2, :cond_0

    .line 28
    int-to-float v1, v1

    .line 29
    mul-float/2addr v1, v9

    .line 30
    float-to-int v1, v1

    .line 31
    int-to-float v2, v3

    .line 32
    mul-float/2addr v2, v9

    .line 33
    float-to-int v2, v2

    .line 34
    .line 35
    new-instance v3, Landroid/graphics/Rect;

    .line 36
    .line 37
    .line 38
    invoke-direct {v3, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v1, 0x0

    .line 41
    move-object v3, v1

    .line 42
    .line 43
    :goto_0
    const-string v1, "ip"

    .line 44
    .line 45
    const-wide/16 v5, 0x0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 49
    move-result-wide v7

    .line 50
    .line 51
    .line 52
    const-string/jumbo v1, "op"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 56
    move-result-wide v10

    .line 57
    .line 58
    const-string v1, "fr"

    .line 59
    .line 60
    const-wide/16 v5, 0x0

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 64
    move-result-wide v1

    .line 65
    double-to-float v1, v1

    .line 66
    .line 67
    .line 68
    const-string/jumbo v2, "v"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    move-result-object v2

    .line 73
    .line 74
    const-string v5, "[.]"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 78
    move-result-object v2

    .line 79
    .line 80
    aget-object v4, v2, v4

    .line 81
    .line 82
    .line 83
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 84
    move-result v12

    .line 85
    const/4 v4, 0x1

    .line 86
    .line 87
    aget-object v4, v2, v4

    .line 88
    .line 89
    .line 90
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 91
    move-result v13

    .line 92
    const/4 v4, 0x2

    .line 93
    .line 94
    aget-object v2, v2, v4

    .line 95
    .line 96
    .line 97
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 98
    move-result v14

    .line 99
    .line 100
    new-instance v15, Lcom/airbnb/lottie/e;

    .line 101
    .line 102
    const/16 v16, 0x0

    .line 103
    move-object v2, v15

    .line 104
    move-wide v4, v7

    .line 105
    move-wide v6, v10

    .line 106
    move v8, v1

    .line 107
    move v10, v12

    .line 108
    move v11, v13

    .line 109
    move v12, v14

    .line 110
    .line 111
    move-object/from16 v13, v16

    .line 112
    .line 113
    .line 114
    invoke-direct/range {v2 .. v13}, Lcom/airbnb/lottie/e;-><init>(Landroid/graphics/Rect;JJFFIIILcom/airbnb/lottie/e$a;)V

    .line 115
    .line 116
    const-string v1, "assets"

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 120
    move-result-object v1

    .line 121
    .line 122
    .line 123
    invoke-static {v1, v15}, Lcom/airbnb/lottie/e$b;->i(Lorg/json/JSONArray;Lcom/airbnb/lottie/e;)V

    .line 124
    .line 125
    .line 126
    invoke-static {v1, v15}, Lcom/airbnb/lottie/e$b;->k(Lorg/json/JSONArray;Lcom/airbnb/lottie/e;)V

    .line 127
    .line 128
    const-string v1, "fonts"

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 132
    move-result-object v1

    .line 133
    .line 134
    .line 135
    invoke-static {v1, v15}, Lcom/airbnb/lottie/e$b;->h(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)V

    .line 136
    .line 137
    const-string v1, "chars"

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 141
    move-result-object v1

    .line 142
    .line 143
    .line 144
    invoke-static {v1, v15}, Lcom/airbnb/lottie/e$b;->g(Lorg/json/JSONArray;Lcom/airbnb/lottie/e;)V

    .line 145
    .line 146
    .line 147
    invoke-static {v0, v15}, Lcom/airbnb/lottie/e$b;->j(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)V

    .line 148
    return-object v15
.end method

.method private static g(Lorg/json/JSONArray;Lcom/airbnb/lottie/e;)V
    .locals 5
    .param p0    # Lorg/json/JSONArray;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    :goto_0
    if-ge v1, v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    .line 17
    invoke-static {v2, p1}, Lcom/airbnb/lottie/model/g$a;->a(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/g;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/airbnb/lottie/e;->f(Lcom/airbnb/lottie/e;)Landroidx/collection/SparseArrayCompat;

    .line 22
    move-result-object v3

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/g;->hashCode()I

    .line 26
    move-result v4

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v4, v2}, Landroidx/collection/SparseArrayCompat;->o(ILjava/lang/Object;)V

    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-void
.end method

.method private static h(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)V
    .locals 5
    .param p0    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    const-string v0, "list"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    if-nez p0, :cond_1

    .line 12
    return-void

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    :goto_0
    if-ge v1, v0, :cond_2

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-static {v2}, Lcom/airbnb/lottie/model/f$a;->a(Lorg/json/JSONObject;)Lcom/airbnb/lottie/model/f;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/airbnb/lottie/e;->e(Lcom/airbnb/lottie/e;)Ljava/util/Map;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/f;->b()Ljava/lang/String;

    .line 35
    move-result-object v4

    .line 36
    .line 37
    .line 38
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    return-void
.end method

.method private static i(Lorg/json/JSONArray;Lcom/airbnb/lottie/e;)V
    .locals 5
    .param p0    # Lorg/json/JSONArray;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    :goto_0
    if-ge v1, v0, :cond_2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    .line 17
    const-string/jumbo v3, "p"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 21
    move-result v3

    .line 22
    .line 23
    if-nez v3, :cond_1

    .line 24
    goto :goto_1

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-static {v2}, Lcom/airbnb/lottie/g$b;->a(Lorg/json/JSONObject;)Lcom/airbnb/lottie/g;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lcom/airbnb/lottie/e;->d(Lcom/airbnb/lottie/e;)Ljava/util/Map;

    .line 32
    move-result-object v3

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/airbnb/lottie/g;->b()Ljava/lang/String;

    .line 36
    move-result-object v4

    .line 37
    .line 38
    .line 39
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    return-void
.end method

.method private static j(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)V
    .locals 6

    .line 1
    .line 2
    const-string v0, "layers"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    move v2, v1

    .line 16
    .line 17
    :goto_0
    if-ge v1, v0, :cond_2

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    .line 24
    invoke-static {v3, p1}, Lcom/airbnb/lottie/model/layer/d$b;->b(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/layer/d;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/airbnb/lottie/model/layer/d;->d()Lcom/airbnb/lottie/model/layer/d$c;

    .line 29
    move-result-object v4

    .line 30
    .line 31
    sget-object v5, Lcom/airbnb/lottie/model/layer/d$c;->Image:Lcom/airbnb/lottie/model/layer/d$c;

    .line 32
    .line 33
    if-ne v4, v5, :cond_1

    .line 34
    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-static {p1}, Lcom/airbnb/lottie/e;->a(Lcom/airbnb/lottie/e;)Ljava/util/List;

    .line 39
    move-result-object v4

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Lcom/airbnb/lottie/e;->b(Lcom/airbnb/lottie/e;)Landroidx/collection/LongSparseArray;

    .line 43
    move-result-object v5

    .line 44
    .line 45
    .line 46
    invoke-static {v4, v5, v3}, Lcom/airbnb/lottie/e$b;->a(Ljava/util/List;Landroidx/collection/LongSparseArray;Lcom/airbnb/lottie/model/layer/d;)V

    .line 47
    .line 48
    add-int/lit8 v1, v1, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 p0, 0x4

    .line 51
    .line 52
    if-le v2, p0, :cond_3

    .line 53
    .line 54
    new-instance p0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    const-string v0, "You have "

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v0, " images. Lottie should primarily be "

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string/jumbo v0, "used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers"

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v0, " to shape layers."

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p0

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/e;->g(Ljava/lang/String;)V

    .line 89
    :cond_3
    return-void
.end method

.method private static k(Lorg/json/JSONArray;Lcom/airbnb/lottie/e;)V
    .locals 11
    .param p0    # Lorg/json/JSONArray;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    move v2, v1

    .line 10
    .line 11
    :goto_0
    if-ge v2, v0, :cond_3

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 15
    move-result-object v3

    .line 16
    .line 17
    const-string v4, "layers"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 21
    move-result-object v4

    .line 22
    .line 23
    if-nez v4, :cond_1

    .line 24
    goto :goto_2

    .line 25
    .line 26
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    .line 30
    move-result v6

    .line 31
    .line 32
    .line 33
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    .line 35
    new-instance v6, Landroidx/collection/LongSparseArray;

    .line 36
    .line 37
    .line 38
    invoke-direct {v6}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 39
    move v7, v1

    .line 40
    .line 41
    .line 42
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    .line 43
    move-result v8

    .line 44
    .line 45
    if-ge v7, v8, :cond_2

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 49
    move-result-object v8

    .line 50
    .line 51
    .line 52
    invoke-static {v8, p1}, Lcom/airbnb/lottie/model/layer/d$b;->b(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/layer/d;

    .line 53
    move-result-object v8

    .line 54
    .line 55
    .line 56
    invoke-virtual {v8}, Lcom/airbnb/lottie/model/layer/d;->b()J

    .line 57
    move-result-wide v9

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6, v9, v10, v8}, Landroidx/collection/LongSparseArray;->m(JLjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    add-int/lit8 v7, v7, 0x1

    .line 66
    goto :goto_1

    .line 67
    .line 68
    :cond_2
    const-string v4, "id"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    move-result-object v3

    .line 73
    .line 74
    .line 75
    invoke-static {p1}, Lcom/airbnb/lottie/e;->c(Lcom/airbnb/lottie/e;)Ljava/util/Map;

    .line 76
    move-result-object v4

    .line 77
    .line 78
    .line 79
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 82
    goto :goto_0

    .line 83
    :cond_3
    return-void
.end method
