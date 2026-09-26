.class public final Lcom/google/firebase/sessions/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/google/firebase/sessions/a0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SESSION_EVENT_ENCODER:Lj4/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/sessions/a0;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/firebase/sessions/a0;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/firebase/sessions/a0;->INSTANCE:Lcom/google/firebase/sessions/a0;

    .line 8
    .line 9
    new-instance v0, Lcom/google/firebase/encoders/json/d;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Lcom/google/firebase/encoders/json/d;-><init>()V

    .line 13
    .line 14
    sget-object v1, Lcom/google/firebase/sessions/c;->CONFIG:Lk4/a;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/json/d;->j(Lk4/a;)Lcom/google/firebase/encoders/json/d;

    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/json/d;->k(Z)Lcom/google/firebase/encoders/json/d;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/google/firebase/encoders/json/d;->i()Lj4/a;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    const-string v1, "JsonDataEncoderBuilder()\u2026lues(true)\n      .build()"

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    sput-object v0, Lcom/google/firebase/sessions/a0;->SESSION_EVENT_ENCODER:Lj4/a;

    .line 35
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private final d(Lcom/google/firebase/sessions/api/b;)Lcom/google/firebase/sessions/d;
    .locals 0

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    sget-object p1, Lcom/google/firebase/sessions/d;->COLLECTION_SDK_NOT_INSTALLED:Lcom/google/firebase/sessions/d;

    .line 5
    goto :goto_0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-interface {p1}, Lcom/google/firebase/sessions/api/b;->a()Z

    .line 9
    move-result p1

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    sget-object p1, Lcom/google/firebase/sessions/d;->COLLECTION_ENABLED:Lcom/google/firebase/sessions/d;

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_1
    sget-object p1, Lcom/google/firebase/sessions/d;->COLLECTION_DISABLED:Lcom/google/firebase/sessions/d;

    .line 17
    :goto_0
    return-object p1
.end method


# virtual methods
.method public final a(Lcom/google/firebase/f;Lcom/google/firebase/sessions/y;Lcom/google/firebase/sessions/settings/f;Lcom/google/firebase/sessions/t;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)Lcom/google/firebase/sessions/z;
    .locals 16
    .param p1    # Lcom/google/firebase/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/sessions/y;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/sessions/settings/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/firebase/sessions/t;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/f;",
            "Lcom/google/firebase/sessions/y;",
            "Lcom/google/firebase/sessions/settings/f;",
            "Lcom/google/firebase/sessions/t;",
            "Ljava/util/List<",
            "Lcom/google/firebase/sessions/t;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/firebase/sessions/api/b$a;",
            "+",
            "Lcom/google/firebase/sessions/api/b;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/firebase/sessions/z;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p6

    .line 5
    .line 6
    const-string v2, "firebaseApp"

    .line 7
    .line 8
    move-object/from16 v3, p1

    .line 9
    .line 10
    .line 11
    invoke-static {v3, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    const-string v2, "sessionDetails"

    .line 14
    .line 15
    move-object/from16 v4, p2

    .line 16
    .line 17
    .line 18
    invoke-static {v4, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    const-string v2, "sessionsSettings"

    .line 21
    .line 22
    move-object/from16 v5, p3

    .line 23
    .line 24
    .line 25
    invoke-static {v5, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    const-string v2, "currentProcessDetails"

    .line 28
    .line 29
    move-object/from16 v6, p4

    .line 30
    .line 31
    .line 32
    invoke-static {v6, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    const-string v2, "appProcessDetails"

    .line 35
    .line 36
    move-object/from16 v6, p5

    .line 37
    .line 38
    .line 39
    invoke-static {v6, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    const-string v2, "subscribers"

    .line 42
    .line 43
    .line 44
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    const-string v2, "firebaseInstallationId"

    .line 47
    .line 48
    move-object/from16 v11, p7

    .line 49
    .line 50
    .line 51
    invoke-static {v11, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    new-instance v2, Lcom/google/firebase/sessions/z;

    .line 54
    .line 55
    sget-object v12, Lcom/google/firebase/sessions/i;->SESSION_START:Lcom/google/firebase/sessions/i;

    .line 56
    .line 57
    new-instance v13, Lcom/google/firebase/sessions/e0;

    .line 58
    .line 59
    .line 60
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/sessions/y;->b()Ljava/lang/String;

    .line 61
    move-result-object v6

    .line 62
    .line 63
    .line 64
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/sessions/y;->a()Ljava/lang/String;

    .line 65
    move-result-object v7

    .line 66
    .line 67
    .line 68
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/sessions/y;->c()I

    .line 69
    move-result v8

    .line 70
    .line 71
    .line 72
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/sessions/y;->d()J

    .line 73
    move-result-wide v9

    .line 74
    .line 75
    new-instance v14, Lcom/google/firebase/sessions/e;

    .line 76
    .line 77
    sget-object v4, Lcom/google/firebase/sessions/api/b$a;->PERFORMANCE:Lcom/google/firebase/sessions/api/b$a;

    .line 78
    .line 79
    .line 80
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    move-result-object v4

    .line 82
    .line 83
    check-cast v4, Lcom/google/firebase/sessions/api/b;

    .line 84
    .line 85
    .line 86
    invoke-direct {v0, v4}, Lcom/google/firebase/sessions/a0;->d(Lcom/google/firebase/sessions/api/b;)Lcom/google/firebase/sessions/d;

    .line 87
    move-result-object v4

    .line 88
    .line 89
    sget-object v15, Lcom/google/firebase/sessions/api/b$a;->CRASHLYTICS:Lcom/google/firebase/sessions/api/b$a;

    .line 90
    .line 91
    .line 92
    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    move-result-object v1

    .line 94
    .line 95
    check-cast v1, Lcom/google/firebase/sessions/api/b;

    .line 96
    .line 97
    .line 98
    invoke-direct {v0, v1}, Lcom/google/firebase/sessions/a0;->d(Lcom/google/firebase/sessions/api/b;)Lcom/google/firebase/sessions/d;

    .line 99
    move-result-object v1

    .line 100
    .line 101
    move-object/from16 p4, v2

    .line 102
    .line 103
    .line 104
    invoke-virtual/range {p3 .. p3}, Lcom/google/firebase/sessions/settings/f;->b()D

    .line 105
    move-result-wide v2

    .line 106
    .line 107
    .line 108
    invoke-direct {v14, v4, v1, v2, v3}, Lcom/google/firebase/sessions/e;-><init>(Lcom/google/firebase/sessions/d;Lcom/google/firebase/sessions/d;D)V

    .line 109
    move-object v4, v13

    .line 110
    move-object v5, v6

    .line 111
    move-object v6, v7

    .line 112
    move v7, v8

    .line 113
    move-wide v8, v9

    .line 114
    move-object v10, v14

    .line 115
    .line 116
    .line 117
    invoke-direct/range {v4 .. v11}, Lcom/google/firebase/sessions/e0;-><init>(Ljava/lang/String;Ljava/lang/String;IJLcom/google/firebase/sessions/e;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual/range {p0 .. p1}, Lcom/google/firebase/sessions/a0;->b(Lcom/google/firebase/f;)Lcom/google/firebase/sessions/b;

    .line 121
    move-result-object v1

    .line 122
    .line 123
    move-object/from16 v2, p4

    .line 124
    .line 125
    .line 126
    invoke-direct {v2, v12, v13, v1}, Lcom/google/firebase/sessions/z;-><init>(Lcom/google/firebase/sessions/i;Lcom/google/firebase/sessions/e0;Lcom/google/firebase/sessions/b;)V

    .line 127
    return-object v2
.end method

.method public final b(Lcom/google/firebase/f;)Lcom/google/firebase/sessions/b;
    .locals 17
    .param p1    # Lcom/google/firebase/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "firebaseApp"

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    .line 7
    invoke-static {v1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/f;->k()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    const-string v2, "firebaseApp.applicationContext"

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 20
    move-result-object v4

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 24
    move-result-object v0

    .line 25
    const/4 v3, 0x0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v4, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 32
    .line 33
    const/16 v5, 0x1c

    .line 34
    .line 35
    if-lt v3, v5, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/a;->a(Landroid/content/pm/PackageInfo;)J

    .line 39
    move-result-wide v5

    .line 40
    .line 41
    .line 42
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 43
    move-result-object v3

    .line 44
    :goto_0
    move-object v6, v3

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_0
    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 48
    .line 49
    .line 50
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 51
    move-result-object v3

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :goto_1
    new-instance v14, Lcom/google/firebase/sessions/b;

    .line 55
    .line 56
    .line 57
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/f;->n()Lcom/google/firebase/n;

    .line 58
    move-result-object v3

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Lcom/google/firebase/n;->c()Ljava/lang/String;

    .line 62
    move-result-object v10

    .line 63
    .line 64
    const-string v3, "firebaseApp.options.applicationId"

    .line 65
    .line 66
    .line 67
    invoke-static {v10, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 70
    .line 71
    const-string v3, "MODEL"

    .line 72
    .line 73
    .line 74
    invoke-static {v11, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    const-string v12, "1.2.0"

    .line 77
    .line 78
    sget-object v13, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 79
    .line 80
    const-string v3, "RELEASE"

    .line 81
    .line 82
    .line 83
    invoke-static {v13, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    sget-object v15, Lcom/google/firebase/sessions/s;->LOG_ENVIRONMENT_PROD:Lcom/google/firebase/sessions/s;

    .line 86
    .line 87
    new-instance v16, Lcom/google/firebase/sessions/a;

    .line 88
    .line 89
    const-string v3, "packageName"

    .line 90
    .line 91
    .line 92
    invoke-static {v4, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 95
    .line 96
    if-nez v0, :cond_1

    .line 97
    move-object v5, v6

    .line 98
    goto :goto_2

    .line 99
    :cond_1
    move-object v5, v0

    .line 100
    .line 101
    :goto_2
    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 102
    .line 103
    const-string v0, "MANUFACTURER"

    .line 104
    .line 105
    .line 106
    invoke-static {v7, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .line 108
    sget-object v0, Lcom/google/firebase/sessions/u;->INSTANCE:Lcom/google/firebase/sessions/u;

    .line 109
    .line 110
    .line 111
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/f;->k()Landroid/content/Context;

    .line 112
    move-result-object v3

    .line 113
    .line 114
    .line 115
    invoke-static {v3, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v3}, Lcom/google/firebase/sessions/u;->d(Landroid/content/Context;)Lcom/google/firebase/sessions/t;

    .line 119
    move-result-object v8

    .line 120
    .line 121
    .line 122
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/f;->k()Landroid/content/Context;

    .line 123
    move-result-object v1

    .line 124
    .line 125
    .line 126
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v1}, Lcom/google/firebase/sessions/u;->c(Landroid/content/Context;)Ljava/util/List;

    .line 130
    move-result-object v9

    .line 131
    .line 132
    move-object/from16 v3, v16

    .line 133
    .line 134
    .line 135
    invoke-direct/range {v3 .. v9}, Lcom/google/firebase/sessions/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/sessions/t;Ljava/util/List;)V

    .line 136
    move-object v7, v14

    .line 137
    move-object v8, v10

    .line 138
    move-object v9, v11

    .line 139
    move-object v10, v12

    .line 140
    move-object v11, v13

    .line 141
    move-object v12, v15

    .line 142
    .line 143
    move-object/from16 v13, v16

    .line 144
    .line 145
    .line 146
    invoke-direct/range {v7 .. v13}, Lcom/google/firebase/sessions/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/sessions/s;Lcom/google/firebase/sessions/a;)V

    .line 147
    return-object v14
.end method

.method public final c()Lj4/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/a0;->SESSION_EVENT_ENCODER:Lj4/a;

    return-object v0
.end method
