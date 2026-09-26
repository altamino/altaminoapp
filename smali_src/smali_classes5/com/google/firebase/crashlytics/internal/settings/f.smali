.class public Lcom/google/firebase/crashlytics/internal/settings/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/settings/i;


# static fields
.field private static final PREFS_BUILD_INSTANCE_IDENTIFIER:Ljava/lang/String; = "existing_instance_identifier"

.field private static final SETTINGS_URL_FORMAT:Ljava/lang/String; = "https://firebase-settings.crashlytics.com/spi/v2/platforms/android/gmp/%s/settings"


# instance fields
.field private final cachedSettingsIo:Lcom/google/firebase/crashlytics/internal/settings/a;

.field private final context:Landroid/content/Context;

.field private final currentTimeProvider:Lcom/google/firebase/crashlytics/internal/common/w;

.field private final dataCollectionArbiter:Lcom/google/firebase/crashlytics/internal/common/x;

.field private final settings:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/firebase/crashlytics/internal/settings/d;",
            ">;"
        }
    .end annotation
.end field

.field private final settingsJsonParser:Lcom/google/firebase/crashlytics/internal/settings/g;

.field private final settingsRequest:Lcom/google/firebase/crashlytics/internal/settings/j;

.field private final settingsSpiCall:Lcom/google/firebase/crashlytics/internal/settings/k;

.field private final settingsTask:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/firebase/crashlytics/internal/settings/d;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/settings/j;Lcom/google/firebase/crashlytics/internal/common/w;Lcom/google/firebase/crashlytics/internal/settings/g;Lcom/google/firebase/crashlytics/internal/settings/a;Lcom/google/firebase/crashlytics/internal/settings/k;Lcom/google/firebase/crashlytics/internal/common/x;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/f;->settings:Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    .line 12
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 13
    .line 14
    new-instance v2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 15
    .line 16
    .line 17
    invoke-direct {v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    iput-object v1, p0, Lcom/google/firebase/crashlytics/internal/settings/f;->settingsTask:Ljava/util/concurrent/atomic/AtomicReference;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/settings/f;->context:Landroid/content/Context;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/settings/f;->settingsRequest:Lcom/google/firebase/crashlytics/internal/settings/j;

    .line 27
    .line 28
    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/settings/f;->currentTimeProvider:Lcom/google/firebase/crashlytics/internal/common/w;

    .line 29
    .line 30
    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/settings/f;->settingsJsonParser:Lcom/google/firebase/crashlytics/internal/settings/g;

    .line 31
    .line 32
    iput-object p5, p0, Lcom/google/firebase/crashlytics/internal/settings/f;->cachedSettingsIo:Lcom/google/firebase/crashlytics/internal/settings/a;

    .line 33
    .line 34
    iput-object p6, p0, Lcom/google/firebase/crashlytics/internal/settings/f;->settingsSpiCall:Lcom/google/firebase/crashlytics/internal/settings/k;

    .line 35
    .line 36
    iput-object p7, p0, Lcom/google/firebase/crashlytics/internal/settings/f;->dataCollectionArbiter:Lcom/google/firebase/crashlytics/internal/common/x;

    .line 37
    .line 38
    .line 39
    invoke-static {p3}, Lcom/google/firebase/crashlytics/internal/settings/b;->b(Lcom/google/firebase/crashlytics/internal/common/w;)Lcom/google/firebase/crashlytics/internal/settings/d;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method static synthetic c(Lcom/google/firebase/crashlytics/internal/settings/f;)Lcom/google/firebase/crashlytics/internal/settings/j;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/settings/f;->settingsRequest:Lcom/google/firebase/crashlytics/internal/settings/j;

    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/google/firebase/crashlytics/internal/settings/f;)Lcom/google/firebase/crashlytics/internal/settings/k;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/settings/f;->settingsSpiCall:Lcom/google/firebase/crashlytics/internal/settings/k;

    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/google/firebase/crashlytics/internal/settings/f;)Lcom/google/firebase/crashlytics/internal/settings/g;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/settings/f;->settingsJsonParser:Lcom/google/firebase/crashlytics/internal/settings/g;

    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/google/firebase/crashlytics/internal/settings/f;)Lcom/google/firebase/crashlytics/internal/settings/a;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/settings/f;->cachedSettingsIo:Lcom/google/firebase/crashlytics/internal/settings/a;

    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/google/firebase/crashlytics/internal/settings/f;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/crashlytics/internal/settings/f;->q(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method static synthetic h(Lcom/google/firebase/crashlytics/internal/settings/f;Ljava/lang/String;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/settings/f;->r(Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic i(Lcom/google/firebase/crashlytics/internal/settings/f;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/settings/f;->settings:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    return-object p0
.end method

.method static synthetic j(Lcom/google/firebase/crashlytics/internal/settings/f;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/settings/f;->settingsTask:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    return-object p0
.end method

.method public static l(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/common/b0;Ld4/b;Ljava/lang/String;Ljava/lang/String;Le4/f;Lcom/google/firebase/crashlytics/internal/common/x;)Lcom/google/firebase/crashlytics/internal/settings/f;
    .locals 15

    .line 1
    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    .line 5
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/crashlytics/internal/common/b0;->g()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    new-instance v10, Lcom/google/firebase/crashlytics/internal/common/r0;

    .line 9
    .line 10
    .line 11
    invoke-direct {v10}, Lcom/google/firebase/crashlytics/internal/common/r0;-><init>()V

    .line 12
    .line 13
    new-instance v11, Lcom/google/firebase/crashlytics/internal/settings/g;

    .line 14
    .line 15
    .line 16
    invoke-direct {v11, v10}, Lcom/google/firebase/crashlytics/internal/settings/g;-><init>(Lcom/google/firebase/crashlytics/internal/common/w;)V

    .line 17
    .line 18
    new-instance v12, Lcom/google/firebase/crashlytics/internal/settings/a;

    .line 19
    .line 20
    move-object/from16 v2, p6

    .line 21
    .line 22
    .line 23
    invoke-direct {v12, v2}, Lcom/google/firebase/crashlytics/internal/settings/a;-><init>(Le4/f;)V

    .line 24
    .line 25
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 26
    const/4 v3, 0x1

    .line 27
    .line 28
    new-array v3, v3, [Ljava/lang/Object;

    .line 29
    const/4 v4, 0x0

    .line 30
    .line 31
    aput-object v1, v3, v4

    .line 32
    .line 33
    const-string v4, "https://firebase-settings.crashlytics.com/spi/v2/platforms/android/gmp/%s/settings"

    .line 34
    .line 35
    .line 36
    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    new-instance v13, Lcom/google/firebase/crashlytics/internal/settings/c;

    .line 40
    .line 41
    move-object/from16 v3, p3

    .line 42
    .line 43
    .line 44
    invoke-direct {v13, v2, v3}, Lcom/google/firebase/crashlytics/internal/settings/c;-><init>(Ljava/lang/String;Ld4/b;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/crashlytics/internal/common/b0;->h()Ljava/lang/String;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    .line 51
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/crashlytics/internal/common/b0;->i()Ljava/lang/String;

    .line 52
    move-result-object v3

    .line 53
    .line 54
    .line 55
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/crashlytics/internal/common/b0;->j()Ljava/lang/String;

    .line 56
    move-result-object v4

    .line 57
    .line 58
    .line 59
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/i;->m(Landroid/content/Context;)Ljava/lang/String;

    .line 60
    move-result-object v5

    .line 61
    .line 62
    move-object/from16 v8, p4

    .line 63
    .line 64
    move-object/from16 v7, p5

    .line 65
    .line 66
    .line 67
    filled-new-array {v5, v1, v7, v8}, [Ljava/lang/String;

    .line 68
    move-result-object v5

    .line 69
    .line 70
    .line 71
    invoke-static {v5}, Lcom/google/firebase/crashlytics/internal/common/i;->h([Ljava/lang/String;)Ljava/lang/String;

    .line 72
    move-result-object v6

    .line 73
    .line 74
    .line 75
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/y;->a(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/common/y;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/y;->b()I

    .line 80
    move-result v9

    .line 81
    .line 82
    new-instance v14, Lcom/google/firebase/crashlytics/internal/settings/j;

    .line 83
    move-object v0, v14

    .line 84
    .line 85
    move-object/from16 v5, p2

    .line 86
    .line 87
    .line 88
    invoke-direct/range {v0 .. v9}, Lcom/google/firebase/crashlytics/internal/settings/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/common/c0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    .line 90
    new-instance v0, Lcom/google/firebase/crashlytics/internal/settings/f;

    .line 91
    move-object v1, v0

    .line 92
    move-object v2, p0

    .line 93
    move-object v3, v14

    .line 94
    move-object v4, v10

    .line 95
    move-object v5, v11

    .line 96
    move-object v6, v12

    .line 97
    move-object v7, v13

    .line 98
    .line 99
    move-object/from16 v8, p7

    .line 100
    .line 101
    .line 102
    invoke-direct/range {v1 .. v8}, Lcom/google/firebase/crashlytics/internal/settings/f;-><init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/settings/j;Lcom/google/firebase/crashlytics/internal/common/w;Lcom/google/firebase/crashlytics/internal/settings/g;Lcom/google/firebase/crashlytics/internal/settings/a;Lcom/google/firebase/crashlytics/internal/settings/k;Lcom/google/firebase/crashlytics/internal/common/x;)V

    .line 103
    return-object v0
.end method

.method private m(Lcom/google/firebase/crashlytics/internal/settings/e;)Lcom/google/firebase/crashlytics/internal/settings/d;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    sget-object v1, Lcom/google/firebase/crashlytics/internal/settings/e;->SKIP_CACHE_LOOKUP:Lcom/google/firebase/crashlytics/internal/settings/e;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 7
    move-result v1

    .line 8
    .line 9
    if-nez v1, :cond_4

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/settings/f;->cachedSettingsIo:Lcom/google/firebase/crashlytics/internal/settings/a;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/internal/settings/a;->b()Lorg/json/JSONObject;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/settings/f;->settingsJsonParser:Lcom/google/firebase/crashlytics/internal/settings/g;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v1}, Lcom/google/firebase/crashlytics/internal/settings/g;->b(Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/d;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    const-string v3, "Loaded cached settings: "

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v1, v3}, Lcom/google/firebase/crashlytics/internal/settings/f;->q(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 31
    .line 32
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/settings/f;->currentTimeProvider:Lcom/google/firebase/crashlytics/internal/common/w;

    .line 33
    .line 34
    .line 35
    invoke-interface {v1}, Lcom/google/firebase/crashlytics/internal/common/w;->a()J

    .line 36
    move-result-wide v3

    .line 37
    .line 38
    sget-object v1, Lcom/google/firebase/crashlytics/internal/settings/e;->IGNORE_CACHE_EXPIRATION:Lcom/google/firebase/crashlytics/internal/settings/e;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result p1

    .line 43
    .line 44
    if-nez p1, :cond_1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v3, v4}, Lcom/google/firebase/crashlytics/internal/settings/d;->a(J)Z

    .line 48
    move-result p1

    .line 49
    .line 50
    if-nez p1, :cond_0

    .line 51
    goto :goto_0

    .line 52
    .line 53
    .line 54
    :cond_0
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    const-string v1, "Cached settings have expired."

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v1}, Lcom/google/firebase/crashlytics/internal/g;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_2

    .line 62
    :catch_0
    move-exception p1

    .line 63
    goto :goto_1

    .line 64
    .line 65
    .line 66
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    const-string v0, "Returning cached settings."

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/internal/g;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 73
    move-object v0, v2

    .line 74
    goto :goto_2

    .line 75
    :catch_1
    move-exception p1

    .line 76
    move-object v0, v2

    .line 77
    goto :goto_1

    .line 78
    .line 79
    .line 80
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    const-string v1, "Failed to parse cached settings data."

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v1, v0}, Lcom/google/firebase/crashlytics/internal/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    goto :goto_2

    .line 88
    .line 89
    .line 90
    :cond_3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    const-string v1, "No cached settings data found."

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v1}, Lcom/google/firebase/crashlytics/internal/g;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 97
    goto :goto_2

    .line 98
    .line 99
    .line 100
    :goto_1
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 101
    move-result-object v1

    .line 102
    .line 103
    const-string v2, "Failed to get cached settings"

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v2, p1}, Lcom/google/firebase/crashlytics/internal/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    :cond_4
    :goto_2
    return-object v0
.end method

.method private n()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/f;->context:Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/i;->q(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "existing_instance_identifier"

    .line 9
    .line 10
    const-string v2, ""

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method private q(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/g;->b(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method private r(Ljava/lang/String;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/f;->context:Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/i;->q(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const-string v1, "existing_instance_identifier"

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 19
    const/4 p1, 0x1

    .line 20
    return p1
.end method


# virtual methods
.method public a()Lcom/google/firebase/crashlytics/internal/settings/d;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/f;->settings:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/firebase/crashlytics/internal/settings/d;

    .line 9
    return-object v0
.end method

.method public b()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/crashlytics/internal/settings/d;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/f;->settingsTask:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method k()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/settings/f;->n()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/settings/f;->settingsRequest:Lcom/google/firebase/crashlytics/internal/settings/j;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/google/firebase/crashlytics/internal/settings/j;->instanceId:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    xor-int/lit8 v0, v0, 0x1

    .line 15
    return v0
.end method

.method public o(Lcom/google/firebase/crashlytics/internal/settings/e;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/internal/settings/e;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/settings/f;->k()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/settings/f;->m(Lcom/google/firebase/crashlytics/internal/settings/e;)Lcom/google/firebase/crashlytics/internal/settings/d;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p2, p0, Lcom/google/firebase/crashlytics/internal/settings/f;->settings:Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 18
    .line 19
    iget-object p2, p0, Lcom/google/firebase/crashlytics/internal/settings/f;->settingsTask:Ljava/util/concurrent/atomic/AtomicReference;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 29
    const/4 p1, 0x0

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    .line 36
    :cond_0
    sget-object p1, Lcom/google/firebase/crashlytics/internal/settings/e;->IGNORE_CACHE_EXPIRATION:Lcom/google/firebase/crashlytics/internal/settings/e;

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/settings/f;->m(Lcom/google/firebase/crashlytics/internal/settings/e;)Lcom/google/firebase/crashlytics/internal/settings/d;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/f;->settings:Ljava/util/concurrent/atomic/AtomicReference;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 48
    .line 49
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/settings/f;->settingsTask:Ljava/util/concurrent/atomic/AtomicReference;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    check-cast v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 59
    .line 60
    :cond_1
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/settings/f;->dataCollectionArbiter:Lcom/google/firebase/crashlytics/internal/common/x;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/internal/common/x;->i(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    new-instance v0, Lcom/google/firebase/crashlytics/internal/settings/f$a;

    .line 67
    .line 68
    .line 69
    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/internal/settings/f$a;-><init>(Lcom/google/firebase/crashlytics/internal/settings/f;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 73
    move-result-object p1

    .line 74
    return-object p1
.end method

.method public p(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/google/firebase/crashlytics/internal/settings/e;->USE_CACHE:Lcom/google/firebase/crashlytics/internal/settings/e;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/crashlytics/internal/settings/f;->o(Lcom/google/firebase/crashlytics/internal/settings/e;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
