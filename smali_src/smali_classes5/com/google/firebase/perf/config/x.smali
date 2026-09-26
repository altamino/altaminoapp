.class public Lcom/google/firebase/perf/config/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation


# static fields
.field private static final PREFS_NAME:Ljava/lang/String; = "FirebasePerfSharedPrefs"

.field private static instance:Lcom/google/firebase/perf/config/x;

.field private static final logger:Ly4/a;


# instance fields
.field private final serialExecutor:Ljava/util/concurrent/ExecutorService;

.field private volatile sharedPref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ly4/a;->e()Ly4/a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sput-object v0, Lcom/google/firebase/perf/config/x;->logger:Ly4/a;

    .line 7
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/firebase/perf/config/x;->serialExecutor:Ljava/util/concurrent/ExecutorService;

    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/perf/config/x;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/config/x;->h(Landroid/content/Context;)V

    return-void
.end method

.method private d()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Lcom/google/firebase/f;->l()Lcom/google/firebase/f;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/google/firebase/f;->l()Lcom/google/firebase/f;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/firebase/f;->k()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    return-object v0

    .line 13
    :catch_0
    const/4 v0, 0x0

    .line 14
    return-object v0
.end method

.method public static declared-synchronized e()Lcom/google/firebase/perf/config/x;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ThreadPoolCreation"
        }
    .end annotation

    .line 1
    .line 2
    const-class v0, Lcom/google/firebase/perf/config/x;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    sget-object v1, Lcom/google/firebase/perf/config/x;->instance:Lcom/google/firebase/perf/config/x;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Lcom/google/firebase/perf/config/x;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2}, Lcom/google/firebase/perf/config/x;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 17
    .line 18
    sput-object v1, Lcom/google/firebase/perf/config/x;->instance:Lcom/google/firebase/perf/config/x;

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    .line 23
    :cond_0
    :goto_0
    sget-object v1, Lcom/google/firebase/perf/config/x;->instance:Lcom/google/firebase/perf/config/x;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit v0

    .line 25
    return-object v1

    .line 26
    :goto_1
    monitor-exit v0

    .line 27
    throw v1
.end method

.method private synthetic h(Landroid/content/Context;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/perf/config/x;->sharedPref:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const-string v0, "FirebasePerfSharedPrefs"

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/firebase/perf/config/x;->sharedPref:Landroid/content/SharedPreferences;

    .line 16
    :cond_0
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Lcom/google/firebase/perf/util/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/firebase/perf/util/g<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    sget-object p1, Lcom/google/firebase/perf/config/x;->logger:Ly4/a;

    .line 5
    .line 6
    const-string v0, "Key is null when getting boolean value on device cache."

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ly4/a;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/google/firebase/perf/util/g;->a()Lcom/google/firebase/perf/util/g;

    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/config/x;->sharedPref:Landroid/content/SharedPreferences;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/google/firebase/perf/config/x;->d()Landroid/content/Context;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/google/firebase/perf/config/x;->i(Landroid/content/Context;)V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/firebase/perf/config/x;->sharedPref:Landroid/content/SharedPreferences;

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/google/firebase/perf/util/g;->a()Lcom/google/firebase/perf/util/g;

    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/perf/config/x;->sharedPref:Landroid/content/SharedPreferences;

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 40
    move-result v0

    .line 41
    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lcom/google/firebase/perf/util/g;->a()Lcom/google/firebase/perf/util/g;

    .line 46
    move-result-object p1

    .line 47
    return-object p1

    .line 48
    :cond_2
    const/4 v0, 0x0

    .line 49
    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/perf/config/x;->sharedPref:Landroid/content/SharedPreferences;

    .line 51
    .line 52
    .line 53
    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 54
    move-result v1

    .line 55
    .line 56
    .line 57
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    .line 61
    invoke-static {v1}, Lcom/google/firebase/perf/util/g;->e(Ljava/lang/Object;)Lcom/google/firebase/perf/util/g;

    .line 62
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    return-object p1

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .line 66
    sget-object v2, Lcom/google/firebase/perf/config/x;->logger:Ly4/a;

    .line 67
    const/4 v3, 0x2

    .line 68
    .line 69
    new-array v3, v3, [Ljava/lang/Object;

    .line 70
    .line 71
    aput-object p1, v3, v0

    .line 72
    const/4 p1, 0x1

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    aput-object v0, v3, p1

    .line 79
    .line 80
    const-string p1, "Key %s from sharedPreferences has type other than long: %s"

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, p1, v3}, Ly4/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    invoke-static {}, Lcom/google/firebase/perf/util/g;->a()Lcom/google/firebase/perf/util/g;

    .line 87
    move-result-object p1

    .line 88
    return-object p1
.end method

.method public c(Ljava/lang/String;)Lcom/google/firebase/perf/util/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/firebase/perf/util/g<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    sget-object p1, Lcom/google/firebase/perf/config/x;->logger:Ly4/a;

    .line 5
    .line 6
    const-string v0, "Key is null when getting double value on device cache."

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ly4/a;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/google/firebase/perf/util/g;->a()Lcom/google/firebase/perf/util/g;

    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/config/x;->sharedPref:Landroid/content/SharedPreferences;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/google/firebase/perf/config/x;->d()Landroid/content/Context;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/google/firebase/perf/config/x;->i(Landroid/content/Context;)V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/firebase/perf/config/x;->sharedPref:Landroid/content/SharedPreferences;

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/google/firebase/perf/util/g;->a()Lcom/google/firebase/perf/util/g;

    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/perf/config/x;->sharedPref:Landroid/content/SharedPreferences;

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 40
    move-result v0

    .line 41
    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lcom/google/firebase/perf/util/g;->a()Lcom/google/firebase/perf/util/g;

    .line 46
    move-result-object p1

    .line 47
    return-object p1

    .line 48
    .line 49
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/config/x;->sharedPref:Landroid/content/SharedPreferences;

    .line 50
    .line 51
    const-wide/16 v1, 0x0

    .line 52
    .line 53
    .line 54
    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 55
    move-result-wide v0

    .line 56
    .line 57
    .line 58
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 59
    move-result-wide v0

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    .line 66
    invoke-static {v0}, Lcom/google/firebase/perf/util/g;->e(Ljava/lang/Object;)Lcom/google/firebase/perf/util/g;

    .line 67
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    return-object p1

    .line 69
    .line 70
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/perf/config/x;->sharedPref:Landroid/content/SharedPreferences;

    .line 71
    const/4 v1, 0x0

    .line 72
    .line 73
    .line 74
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    .line 75
    move-result v0

    .line 76
    .line 77
    .line 78
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Float;->doubleValue()D

    .line 83
    move-result-wide v0

    .line 84
    .line 85
    .line 86
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    .line 90
    invoke-static {v0}, Lcom/google/firebase/perf/util/g;->e(Ljava/lang/Object;)Lcom/google/firebase/perf/util/g;

    .line 91
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 92
    return-object p1

    .line 93
    :catch_1
    move-exception v0

    .line 94
    .line 95
    sget-object v1, Lcom/google/firebase/perf/config/x;->logger:Ly4/a;

    .line 96
    const/4 v2, 0x2

    .line 97
    .line 98
    new-array v2, v2, [Ljava/lang/Object;

    .line 99
    const/4 v3, 0x0

    .line 100
    .line 101
    aput-object p1, v2, v3

    .line 102
    const/4 p1, 0x1

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    aput-object v0, v2, p1

    .line 109
    .line 110
    const-string p1, "Key %s from sharedPreferences has type other than double: %s"

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, p1, v2}, Ly4/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    invoke-static {}, Lcom/google/firebase/perf/util/g;->a()Lcom/google/firebase/perf/util/g;

    .line 117
    move-result-object p1

    .line 118
    return-object p1
.end method

.method public f(Ljava/lang/String;)Lcom/google/firebase/perf/util/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/firebase/perf/util/g<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    sget-object p1, Lcom/google/firebase/perf/config/x;->logger:Ly4/a;

    .line 5
    .line 6
    const-string v0, "Key is null when getting long value on device cache."

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ly4/a;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/google/firebase/perf/util/g;->a()Lcom/google/firebase/perf/util/g;

    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/config/x;->sharedPref:Landroid/content/SharedPreferences;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/google/firebase/perf/config/x;->d()Landroid/content/Context;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/google/firebase/perf/config/x;->i(Landroid/content/Context;)V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/firebase/perf/config/x;->sharedPref:Landroid/content/SharedPreferences;

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/google/firebase/perf/util/g;->a()Lcom/google/firebase/perf/util/g;

    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/perf/config/x;->sharedPref:Landroid/content/SharedPreferences;

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 40
    move-result v0

    .line 41
    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lcom/google/firebase/perf/util/g;->a()Lcom/google/firebase/perf/util/g;

    .line 46
    move-result-object p1

    .line 47
    return-object p1

    .line 48
    .line 49
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/config/x;->sharedPref:Landroid/content/SharedPreferences;

    .line 50
    .line 51
    const-wide/16 v1, 0x0

    .line 52
    .line 53
    .line 54
    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 55
    move-result-wide v0

    .line 56
    .line 57
    .line 58
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, Lcom/google/firebase/perf/util/g;->e(Ljava/lang/Object;)Lcom/google/firebase/perf/util/g;

    .line 63
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    return-object p1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .line 67
    sget-object v1, Lcom/google/firebase/perf/config/x;->logger:Ly4/a;

    .line 68
    const/4 v2, 0x2

    .line 69
    .line 70
    new-array v2, v2, [Ljava/lang/Object;

    .line 71
    const/4 v3, 0x0

    .line 72
    .line 73
    aput-object p1, v2, v3

    .line 74
    const/4 p1, 0x1

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    aput-object v0, v2, p1

    .line 81
    .line 82
    const-string p1, "Key %s from sharedPreferences has type other than long: %s"

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, p1, v2}, Ly4/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-static {}, Lcom/google/firebase/perf/util/g;->a()Lcom/google/firebase/perf/util/g;

    .line 89
    move-result-object p1

    .line 90
    return-object p1
.end method

.method public g(Ljava/lang/String;)Lcom/google/firebase/perf/util/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/firebase/perf/util/g<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    sget-object p1, Lcom/google/firebase/perf/config/x;->logger:Ly4/a;

    .line 5
    .line 6
    const-string v0, "Key is null when getting String value on device cache."

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ly4/a;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/google/firebase/perf/util/g;->a()Lcom/google/firebase/perf/util/g;

    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/config/x;->sharedPref:Landroid/content/SharedPreferences;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/google/firebase/perf/config/x;->d()Landroid/content/Context;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/google/firebase/perf/config/x;->i(Landroid/content/Context;)V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/firebase/perf/config/x;->sharedPref:Landroid/content/SharedPreferences;

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/google/firebase/perf/util/g;->a()Lcom/google/firebase/perf/util/g;

    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/perf/config/x;->sharedPref:Landroid/content/SharedPreferences;

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 40
    move-result v0

    .line 41
    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lcom/google/firebase/perf/util/g;->a()Lcom/google/firebase/perf/util/g;

    .line 46
    move-result-object p1

    .line 47
    return-object p1

    .line 48
    .line 49
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/config/x;->sharedPref:Landroid/content/SharedPreferences;

    .line 50
    .line 51
    const-string v1, ""

    .line 52
    .line 53
    .line 54
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Lcom/google/firebase/perf/util/g;->e(Ljava/lang/Object;)Lcom/google/firebase/perf/util/g;

    .line 59
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    return-object p1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .line 63
    sget-object v1, Lcom/google/firebase/perf/config/x;->logger:Ly4/a;

    .line 64
    const/4 v2, 0x2

    .line 65
    .line 66
    new-array v2, v2, [Ljava/lang/Object;

    .line 67
    const/4 v3, 0x0

    .line 68
    .line 69
    aput-object p1, v2, v3

    .line 70
    const/4 p1, 0x1

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    aput-object v0, v2, p1

    .line 77
    .line 78
    const-string p1, "Key %s from sharedPreferences has type other than String: %s"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, p1, v2}, Ly4/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    invoke-static {}, Lcom/google/firebase/perf/util/g;->a()Lcom/google/firebase/perf/util/g;

    .line 85
    move-result-object p1

    .line 86
    return-object p1
.end method

.method public declared-synchronized i(Landroid/content/Context;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/config/x;->sharedPref:Landroid/content/SharedPreferences;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/firebase/perf/config/x;->serialExecutor:Ljava/util/concurrent/ExecutorService;

    .line 10
    .line 11
    new-instance v1, Lcom/google/firebase/perf/config/w;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, p0, p1}, Lcom/google/firebase/perf/config/w;-><init>(Lcom/google/firebase/perf/config/x;Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :goto_1
    monitor-exit p0

    .line 24
    throw p1
.end method

.method public j(Ljava/lang/String;D)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/google/firebase/perf/config/x;->logger:Ly4/a;

    .line 6
    .line 7
    const-string p2, "Key is null when setting double value on device cache."

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Ly4/a;->a(Ljava/lang/String;)V

    .line 11
    return v0

    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/perf/config/x;->sharedPref:Landroid/content/SharedPreferences;

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/google/firebase/perf/config/x;->d()Landroid/content/Context;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lcom/google/firebase/perf/config/x;->i(Landroid/content/Context;)V

    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/firebase/perf/config/x;->sharedPref:Landroid/content/SharedPreferences;

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    return v0

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/perf/config/x;->sharedPref:Landroid/content/SharedPreferences;

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 37
    move-result-wide p2

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 45
    const/4 p1, 0x1

    .line 46
    return p1
.end method

.method public k(Ljava/lang/String;J)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/google/firebase/perf/config/x;->logger:Ly4/a;

    .line 6
    .line 7
    const-string p2, "Key is null when setting long value on device cache."

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Ly4/a;->a(Ljava/lang/String;)V

    .line 11
    return v0

    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/perf/config/x;->sharedPref:Landroid/content/SharedPreferences;

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/google/firebase/perf/config/x;->d()Landroid/content/Context;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lcom/google/firebase/perf/config/x;->i(Landroid/content/Context;)V

    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/firebase/perf/config/x;->sharedPref:Landroid/content/SharedPreferences;

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    return v0

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/perf/config/x;->sharedPref:Landroid/content/SharedPreferences;

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 41
    const/4 p1, 0x1

    .line 42
    return p1
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/google/firebase/perf/config/x;->logger:Ly4/a;

    .line 6
    .line 7
    const-string p2, "Key is null when setting String value on device cache."

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Ly4/a;->a(Ljava/lang/String;)V

    .line 11
    return v0

    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/perf/config/x;->sharedPref:Landroid/content/SharedPreferences;

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/google/firebase/perf/config/x;->d()Landroid/content/Context;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lcom/google/firebase/perf/config/x;->i(Landroid/content/Context;)V

    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/firebase/perf/config/x;->sharedPref:Landroid/content/SharedPreferences;

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    return v0

    .line 28
    :cond_1
    const/4 v0, 0x1

    .line 29
    .line 30
    if-nez p2, :cond_2

    .line 31
    .line 32
    iget-object p2, p0, Lcom/google/firebase/perf/config/x;->sharedPref:Landroid/content/SharedPreferences;

    .line 33
    .line 34
    .line 35
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 36
    move-result-object p2

    .line 37
    .line 38
    .line 39
    invoke-interface {p2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 44
    return v0

    .line 45
    .line 46
    :cond_2
    iget-object v1, p0, Lcom/google/firebase/perf/config/x;->sharedPref:Landroid/content/SharedPreferences;

    .line 47
    .line 48
    .line 49
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    .line 53
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    .line 57
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 58
    return v0
.end method

.method public m(Ljava/lang/String;Z)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/google/firebase/perf/config/x;->logger:Ly4/a;

    .line 6
    .line 7
    const-string p2, "Key is null when setting boolean value on device cache."

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Ly4/a;->a(Ljava/lang/String;)V

    .line 11
    return v0

    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/perf/config/x;->sharedPref:Landroid/content/SharedPreferences;

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/google/firebase/perf/config/x;->d()Landroid/content/Context;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lcom/google/firebase/perf/config/x;->i(Landroid/content/Context;)V

    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/firebase/perf/config/x;->sharedPref:Landroid/content/SharedPreferences;

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    return v0

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/perf/config/x;->sharedPref:Landroid/content/SharedPreferences;

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 41
    const/4 p1, 0x1

    .line 42
    return p1
.end method
