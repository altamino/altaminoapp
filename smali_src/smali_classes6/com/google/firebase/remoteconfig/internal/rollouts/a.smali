.class public Lcom/google/firebase/remoteconfig/internal/rollouts/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field getParameterHandler:Lcom/google/firebase/remoteconfig/internal/o;


# direct methods
.method constructor <init>(Lcom/google/firebase/remoteconfig/internal/o;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/rollouts/a;->getParameterHandler:Lcom/google/firebase/remoteconfig/internal/o;

    .line 6
    return-void
.end method

.method public static a(Lcom/google/firebase/remoteconfig/internal/o;)Lcom/google/firebase/remoteconfig/internal/rollouts/a;
    .locals 1
    .param p0    # Lcom/google/firebase/remoteconfig/internal/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/remoteconfig/internal/rollouts/a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/google/firebase/remoteconfig/internal/rollouts/a;-><init>(Lcom/google/firebase/remoteconfig/internal/o;)V

    .line 6
    return-object v0
.end method


# virtual methods
.method b(Lcom/google/firebase/remoteconfig/internal/g;)Lcom/google/firebase/remoteconfig/interop/rollouts/e;
    .locals 12
    .param p1    # Lcom/google/firebase/remoteconfig/internal/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc5/h;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/internal/g;->j()Lorg/json/JSONArray;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/internal/g;->k()J

    .line 8
    move-result-wide v1

    .line 9
    .line 10
    new-instance p1, Ljava/util/HashSet;

    .line 11
    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 14
    const/4 v3, 0x0

    .line 15
    move v4, v3

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 19
    move-result v5

    .line 20
    .line 21
    if-ge v4, v5, :cond_1

    .line 22
    .line 23
    .line 24
    :try_start_0
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 25
    move-result-object v5

    .line 26
    .line 27
    const-string v6, "rolloutId"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v6

    .line 32
    .line 33
    const-string v7, "affectedParameterKeys"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 37
    move-result-object v7

    .line 38
    .line 39
    .line 40
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    .line 41
    move-result v8

    .line 42
    const/4 v9, 0x1

    .line 43
    .line 44
    if-le v8, v9, :cond_0

    .line 45
    .line 46
    const-string v8, "FirebaseRemoteConfig"

    .line 47
    .line 48
    const-string v10, "Rollout has multiple affected parameter keys.Only the first key will be included in RolloutsState. rolloutId: %s, affectedParameterKeys: %s"

    .line 49
    const/4 v11, 0x2

    .line 50
    .line 51
    new-array v11, v11, [Ljava/lang/Object;

    .line 52
    .line 53
    aput-object v6, v11, v3

    .line 54
    .line 55
    aput-object v7, v11, v9

    .line 56
    .line 57
    .line 58
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    move-result-object v9

    .line 60
    .line 61
    .line 62
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    goto :goto_1

    .line 64
    :catch_0
    move-exception p1

    .line 65
    goto :goto_2

    .line 66
    .line 67
    :cond_0
    :goto_1
    const-string v8, ""

    .line 68
    .line 69
    .line 70
    invoke-virtual {v7, v3, v8}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object v7

    .line 72
    .line 73
    iget-object v8, p0, Lcom/google/firebase/remoteconfig/internal/rollouts/a;->getParameterHandler:Lcom/google/firebase/remoteconfig/internal/o;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v8, v7}, Lcom/google/firebase/remoteconfig/internal/o;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    move-result-object v8

    .line 78
    .line 79
    .line 80
    invoke-static {}, Lcom/google/firebase/remoteconfig/interop/rollouts/d;->a()Lcom/google/firebase/remoteconfig/interop/rollouts/d$a;

    .line 81
    move-result-object v9

    .line 82
    .line 83
    .line 84
    invoke-virtual {v9, v6}, Lcom/google/firebase/remoteconfig/interop/rollouts/d$a;->d(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/interop/rollouts/d$a;

    .line 85
    move-result-object v6

    .line 86
    .line 87
    const-string v9, "variantId"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    move-result-object v5

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6, v5}, Lcom/google/firebase/remoteconfig/interop/rollouts/d$a;->f(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/interop/rollouts/d$a;

    .line 95
    move-result-object v5

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5, v7}, Lcom/google/firebase/remoteconfig/interop/rollouts/d$a;->b(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/interop/rollouts/d$a;

    .line 99
    move-result-object v5

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5, v8}, Lcom/google/firebase/remoteconfig/interop/rollouts/d$a;->c(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/interop/rollouts/d$a;

    .line 103
    move-result-object v5

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5, v1, v2}, Lcom/google/firebase/remoteconfig/interop/rollouts/d$a;->e(J)Lcom/google/firebase/remoteconfig/interop/rollouts/d$a;

    .line 107
    move-result-object v5

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5}, Lcom/google/firebase/remoteconfig/interop/rollouts/d$a;->a()Lcom/google/firebase/remoteconfig/interop/rollouts/d;

    .line 111
    move-result-object v5

    .line 112
    .line 113
    .line 114
    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .line 116
    add-int/lit8 v4, v4, 0x1

    .line 117
    goto :goto_0

    .line 118
    .line 119
    :goto_2
    new-instance v0, Lc5/h;

    .line 120
    .line 121
    const-string v1, "Exception parsing rollouts metadata to create RolloutsState."

    .line 122
    .line 123
    .line 124
    invoke-direct {v0, v1, p1}, Lc5/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    throw v0

    .line 126
    .line 127
    .line 128
    :cond_1
    invoke-static {p1}, Lcom/google/firebase/remoteconfig/interop/rollouts/e;->a(Ljava/util/Set;)Lcom/google/firebase/remoteconfig/interop/rollouts/e;

    .line 129
    move-result-object p1

    .line 130
    return-object p1
.end method
