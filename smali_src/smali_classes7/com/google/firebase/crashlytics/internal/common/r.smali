.class public Lcom/google/firebase/crashlytics/internal/common/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final CRASHLYTICS_REQUIRE_BUILD_ID:Ljava/lang/String; = "com.crashlytics.RequireBuildId"

.field static final CRASHLYTICS_REQUIRE_BUILD_ID_DEFAULT:Z = true

.field static final CRASH_MARKER_FILE_NAME:Ljava/lang/String; = "crash_marker"

.field static final DEFAULT_MAIN_HANDLER_TIMEOUT_SEC:I = 0x3

.field private static final INITIALIZATION_MARKER_FILE_NAME:Ljava/lang/String; = "initialization_marker"

.field static final MAX_STACK_SIZE:I = 0x400

.field private static final MISSING_BUILD_ID_MSG:Ljava/lang/String; = "The Crashlytics build ID is missing. This occurs when the Crashlytics Gradle plugin is missing from your app\'s build configuration. Please review the Firebase Crashlytics onboarding instructions at https://firebase.google.com/docs/crashlytics/get-started?platform=android#add-plugin"

.field static final NUM_STACK_REPETITIONS_ALLOWED:I = 0xa

.field private static final ON_DEMAND_DROPPED_KEY:Ljava/lang/String; = "com.crashlytics.on-demand.dropped-exceptions"

.field private static final ON_DEMAND_RECORDED_KEY:Ljava/lang/String; = "com.crashlytics.on-demand.recorded-exceptions"


# instance fields
.field private final analyticsEventLogger:Lcom/google/firebase/crashlytics/internal/analytics/a;

.field private final app:Lcom/google/firebase/f;

.field private final backgroundWorker:Lcom/google/firebase/crashlytics/internal/common/n;

.field public final breadcrumbSource:Lb4/b;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private controller:Lcom/google/firebase/crashlytics/internal/common/p;

.field private final crashHandlerExecutor:Ljava/util/concurrent/ExecutorService;

.field private crashMarker:Lcom/google/firebase/crashlytics/internal/common/s;

.field private final dataCollectionArbiter:Lcom/google/firebase/crashlytics/internal/common/x;

.field private didCrashOnPreviousExecution:Z

.field private final fileStore:Le4/f;

.field private final idManager:Lcom/google/firebase/crashlytics/internal/common/b0;

.field private initializationMarker:Lcom/google/firebase/crashlytics/internal/common/s;

.field private final nativeComponent:Lcom/google/firebase/crashlytics/internal/a;

.field private final onDemandCounter:Lcom/google/firebase/crashlytics/internal/common/g0;

.field private final remoteConfigDeferredProxy:Lcom/google/firebase/crashlytics/internal/l;

.field private final sessionsSubscriber:Lcom/google/firebase/crashlytics/internal/common/m;

.field private final startTime:J


# direct methods
.method public constructor <init>(Lcom/google/firebase/f;Lcom/google/firebase/crashlytics/internal/common/b0;Lcom/google/firebase/crashlytics/internal/a;Lcom/google/firebase/crashlytics/internal/common/x;Lb4/b;Lcom/google/firebase/crashlytics/internal/analytics/a;Le4/f;Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/crashlytics/internal/common/m;Lcom/google/firebase/crashlytics/internal/l;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/r;->app:Lcom/google/firebase/f;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/common/r;->dataCollectionArbiter:Lcom/google/firebase/crashlytics/internal/common/x;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/firebase/f;->k()Landroid/content/Context;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/r;->context:Landroid/content/Context;

    .line 14
    .line 15
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/r;->idManager:Lcom/google/firebase/crashlytics/internal/common/b0;

    .line 16
    .line 17
    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/common/r;->nativeComponent:Lcom/google/firebase/crashlytics/internal/a;

    .line 18
    .line 19
    iput-object p5, p0, Lcom/google/firebase/crashlytics/internal/common/r;->breadcrumbSource:Lb4/b;

    .line 20
    .line 21
    iput-object p6, p0, Lcom/google/firebase/crashlytics/internal/common/r;->analyticsEventLogger:Lcom/google/firebase/crashlytics/internal/analytics/a;

    .line 22
    .line 23
    iput-object p8, p0, Lcom/google/firebase/crashlytics/internal/common/r;->crashHandlerExecutor:Ljava/util/concurrent/ExecutorService;

    .line 24
    .line 25
    iput-object p7, p0, Lcom/google/firebase/crashlytics/internal/common/r;->fileStore:Le4/f;

    .line 26
    .line 27
    new-instance p1, Lcom/google/firebase/crashlytics/internal/common/n;

    .line 28
    .line 29
    .line 30
    invoke-direct {p1, p8}, Lcom/google/firebase/crashlytics/internal/common/n;-><init>(Ljava/util/concurrent/Executor;)V

    .line 31
    .line 32
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/r;->backgroundWorker:Lcom/google/firebase/crashlytics/internal/common/n;

    .line 33
    .line 34
    iput-object p9, p0, Lcom/google/firebase/crashlytics/internal/common/r;->sessionsSubscriber:Lcom/google/firebase/crashlytics/internal/common/m;

    .line 35
    .line 36
    iput-object p10, p0, Lcom/google/firebase/crashlytics/internal/common/r;->remoteConfigDeferredProxy:Lcom/google/firebase/crashlytics/internal/l;

    .line 37
    .line 38
    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 40
    move-result-wide p1

    .line 41
    .line 42
    iput-wide p1, p0, Lcom/google/firebase/crashlytics/internal/common/r;->startTime:J

    .line 43
    .line 44
    new-instance p1, Lcom/google/firebase/crashlytics/internal/common/g0;

    .line 45
    .line 46
    .line 47
    invoke-direct {p1}, Lcom/google/firebase/crashlytics/internal/common/g0;-><init>()V

    .line 48
    .line 49
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/r;->onDemandCounter:Lcom/google/firebase/crashlytics/internal/common/g0;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/google/firebase/crashlytics/internal/common/r;Lcom/google/firebase/crashlytics/internal/settings/i;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/r;->f(Lcom/google/firebase/crashlytics/internal/settings/i;)Lcom/google/android/gms/tasks/Task;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic b(Lcom/google/firebase/crashlytics/internal/common/r;)Lcom/google/firebase/crashlytics/internal/common/s;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/common/r;->initializationMarker:Lcom/google/firebase/crashlytics/internal/common/s;

    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/google/firebase/crashlytics/internal/common/r;)Lcom/google/firebase/crashlytics/internal/common/p;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/common/r;->controller:Lcom/google/firebase/crashlytics/internal/common/p;

    .line 3
    return-object p0
.end method

.method private d()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/r;->backgroundWorker:Lcom/google/firebase/crashlytics/internal/common/n;

    .line 3
    .line 4
    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/r$d;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/google/firebase/crashlytics/internal/common/r$d;-><init>(Lcom/google/firebase/crashlytics/internal/common/r;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/n;->h(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/x0;->f(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v0

    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/common/r;->didCrashOnPreviousExecution:Z

    .line 26
    return-void

    .line 27
    :catch_0
    const/4 v0, 0x0

    .line 28
    .line 29
    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/common/r;->didCrashOnPreviousExecution:Z

    .line 30
    return-void
.end method

.method private f(Lcom/google/firebase/crashlytics/internal/settings/i;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/internal/settings/i;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "Collection of crash reports disabled in Crashlytics settings."

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/r;->n()V

    .line 6
    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/r;->breadcrumbSource:Lb4/b;

    .line 8
    .line 9
    new-instance v2, Lcom/google/firebase/crashlytics/internal/common/q;

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, p0}, Lcom/google/firebase/crashlytics/internal/common/q;-><init>(Lcom/google/firebase/crashlytics/internal/common/r;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v1, v2}, Lb4/b;->a(Lb4/a;)V

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/r;->controller:Lcom/google/firebase/crashlytics/internal/common/p;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/internal/common/p;->S()V

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Lcom/google/firebase/crashlytics/internal/settings/i;->a()Lcom/google/firebase/crashlytics/internal/settings/d;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    iget-object v1, v1, Lcom/google/firebase/crashlytics/internal/settings/d;->featureFlagData:Lcom/google/firebase/crashlytics/internal/settings/d$a;

    .line 27
    .line 28
    iget-boolean v1, v1, Lcom/google/firebase/crashlytics/internal/settings/d$a;->collectReports:Z

    .line 29
    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/internal/g;->b(Ljava/lang/String;)V

    .line 38
    .line 39
    new-instance p1, Ljava/lang/RuntimeException;

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 46
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/r;->m()V

    .line 50
    return-object p1

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto :goto_1

    .line 53
    :catch_0
    move-exception p1

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/r;->controller:Lcom/google/firebase/crashlytics/internal/common/p;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/p;->z(Lcom/google/firebase/crashlytics/internal/settings/i;)Z

    .line 60
    move-result v0

    .line 61
    .line 62
    if-nez v0, :cond_1

    .line 63
    .line 64
    .line 65
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    const-string v1, "Previous sessions could not be finalized."

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/g;->k(Ljava/lang/String;)V

    .line 72
    .line 73
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/r;->controller:Lcom/google/firebase/crashlytics/internal/common/p;

    .line 74
    .line 75
    .line 76
    invoke-interface {p1}, Lcom/google/firebase/crashlytics/internal/settings/i;->b()Lcom/google/android/gms/tasks/Task;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/p;->V(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    .line 81
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/r;->m()V

    .line 85
    return-object p1

    .line 86
    .line 87
    .line 88
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    const-string v1, "Crashlytics encountered a problem during asynchronous initialization."

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/crashlytics/internal/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 98
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/r;->m()V

    .line 102
    return-object p1

    .line 103
    .line 104
    .line 105
    :goto_1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/r;->m()V

    .line 106
    throw p1
.end method

.method private h(Lcom/google/firebase/crashlytics/internal/settings/i;)V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/crashlytics/internal/common/r$b;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lcom/google/firebase/crashlytics/internal/common/r$b;-><init>(Lcom/google/firebase/crashlytics/internal/common/r;Lcom/google/firebase/crashlytics/internal/settings/i;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/r;->crashHandlerExecutor:Ljava/util/concurrent/ExecutorService;

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    const-string v1, "Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously."

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/g;->b(Ljava/lang/String;)V

    .line 21
    .line 22
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 23
    .line 24
    const-wide/16 v1, 0x3

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, v1, v2, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_3

    .line 29
    :catch_0
    move-exception p1

    .line 30
    goto :goto_0

    .line 31
    :catch_1
    move-exception p1

    .line 32
    goto :goto_1

    .line 33
    :catch_2
    move-exception p1

    .line 34
    goto :goto_2

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    const-string v1, "Crashlytics timed out during initialization."

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/crashlytics/internal/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    goto :goto_3

    .line 45
    .line 46
    .line 47
    :goto_1
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    const-string v1, "Crashlytics encountered a problem during initialization."

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/crashlytics/internal/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    goto :goto_3

    .line 55
    .line 56
    .line 57
    :goto_2
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    const-string v1, "Crashlytics was interrupted during initialization."

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/crashlytics/internal/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    :goto_3
    return-void
.end method

.method public static i()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "18.6.0"

    return-object v0
.end method

.method static j(Ljava/lang/String;Z)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 7
    move-result-object p0

    .line 8
    .line 9
    const-string p1, "Configured not to require a build ID."

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/g;->i(Ljava/lang/String;)V

    .line 13
    return v0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    move-result p0

    .line 18
    .line 19
    if-nez p0, :cond_1

    .line 20
    return v0

    .line 21
    .line 22
    :cond_1
    const-string p0, "FirebaseCrashlytics"

    .line 23
    .line 24
    const-string p1, "."

    .line 25
    .line 26
    .line 27
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    const-string v0, ".     |  | "

    .line 30
    .line 31
    .line 32
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    const-string v0, ".     |  |"

    .line 35
    .line 36
    .line 37
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    const-string v1, ".   \\ |  | /"

    .line 43
    .line 44
    .line 45
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    const-string v1, ".    \\    /"

    .line 48
    .line 49
    .line 50
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    const-string v1, ".     \\  /"

    .line 53
    .line 54
    .line 55
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    const-string v1, ".      \\/"

    .line 58
    .line 59
    .line 60
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    const-string v1, "The Crashlytics build ID is missing. This occurs when the Crashlytics Gradle plugin is missing from your app\'s build configuration. Please review the Firebase Crashlytics onboarding instructions at https://firebase.google.com/docs/crashlytics/get-started?platform=android#add-plugin"

    .line 66
    .line 67
    .line 68
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    const-string v1, ".      /\\"

    .line 74
    .line 75
    .line 76
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    const-string v1, ".     /  \\"

    .line 79
    .line 80
    .line 81
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    const-string v1, ".    /    \\"

    .line 84
    .line 85
    .line 86
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    const-string v1, ".   / |  | \\"

    .line 89
    .line 90
    .line 91
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 p0, 0x0

    .line 105
    return p0
.end method


# virtual methods
.method e()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/r;->initializationMarker:Lcom/google/firebase/crashlytics/internal/common/s;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/s;->c()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public g(Lcom/google/firebase/crashlytics/internal/settings/i;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/internal/settings/i;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/r;->crashHandlerExecutor:Ljava/util/concurrent/ExecutorService;

    .line 3
    .line 4
    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/r$a;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/google/firebase/crashlytics/internal/common/r$a;-><init>(Lcom/google/firebase/crashlytics/internal/common/r;Lcom/google/firebase/crashlytics/internal/settings/i;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/x0;->h(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public k(Ljava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    iget-wide v2, p0, Lcom/google/firebase/crashlytics/internal/common/r;->startTime:J

    .line 7
    sub-long/2addr v0, v2

    .line 8
    .line 9
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/r;->controller:Lcom/google/firebase/crashlytics/internal/common/p;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v0, v1, p1}, Lcom/google/firebase/crashlytics/internal/common/p;->Z(JLjava/lang/String;)V

    .line 13
    return-void
.end method

.method public l(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/r;->controller:Lcom/google/firebase/crashlytics/internal/common/p;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/crashlytics/internal/common/p;->Y(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 10
    return-void
.end method

.method m()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/r;->backgroundWorker:Lcom/google/firebase/crashlytics/internal/common/n;

    .line 3
    .line 4
    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/r$c;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/google/firebase/crashlytics/internal/common/r$c;-><init>(Lcom/google/firebase/crashlytics/internal/common/r;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/n;->h(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    .line 11
    return-void
.end method

.method n()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/r;->backgroundWorker:Lcom/google/firebase/crashlytics/internal/common/n;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/n;->b()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/r;->initializationMarker:Lcom/google/firebase/crashlytics/internal/common/s;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/s;->a()Z

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-string v1, "Initialization marker file was created."

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/g;->i(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public o(Lcom/google/firebase/crashlytics/internal/common/a;Lcom/google/firebase/crashlytics/internal/settings/i;)Z
    .locals 28

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    move-object/from16 v0, p2

    .line 5
    .line 6
    iget-object v2, v1, Lcom/google/firebase/crashlytics/internal/common/r;->context:Landroid/content/Context;

    .line 7
    .line 8
    const-string v3, "com.crashlytics.RequireBuildId"

    .line 9
    const/4 v12, 0x1

    .line 10
    .line 11
    .line 12
    invoke-static {v2, v3, v12}, Lcom/google/firebase/crashlytics/internal/common/i;->i(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 13
    move-result v2

    .line 14
    .line 15
    move-object/from16 v15, p1

    .line 16
    .line 17
    iget-object v3, v15, Lcom/google/firebase/crashlytics/internal/common/a;->buildId:Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-static {v3, v2}, Lcom/google/firebase/crashlytics/internal/common/r;->j(Ljava/lang/String;Z)Z

    .line 21
    move-result v2

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    new-instance v2, Lcom/google/firebase/crashlytics/internal/common/h;

    .line 26
    .line 27
    iget-object v3, v1, Lcom/google/firebase/crashlytics/internal/common/r;->idManager:Lcom/google/firebase/crashlytics/internal/common/b0;

    .line 28
    .line 29
    .line 30
    invoke-direct {v2, v3}, Lcom/google/firebase/crashlytics/internal/common/h;-><init>(Lcom/google/firebase/crashlytics/internal/common/b0;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/internal/common/h;->toString()Ljava/lang/String;

    .line 34
    move-result-object v14

    .line 35
    .line 36
    const/16 v27, 0x0

    .line 37
    .line 38
    :try_start_0
    new-instance v2, Lcom/google/firebase/crashlytics/internal/common/s;

    .line 39
    .line 40
    const-string v3, "crash_marker"

    .line 41
    .line 42
    iget-object v4, v1, Lcom/google/firebase/crashlytics/internal/common/r;->fileStore:Le4/f;

    .line 43
    .line 44
    .line 45
    invoke-direct {v2, v3, v4}, Lcom/google/firebase/crashlytics/internal/common/s;-><init>(Ljava/lang/String;Le4/f;)V

    .line 46
    .line 47
    iput-object v2, v1, Lcom/google/firebase/crashlytics/internal/common/r;->crashMarker:Lcom/google/firebase/crashlytics/internal/common/s;

    .line 48
    .line 49
    new-instance v2, Lcom/google/firebase/crashlytics/internal/common/s;

    .line 50
    .line 51
    const-string v3, "initialization_marker"

    .line 52
    .line 53
    iget-object v4, v1, Lcom/google/firebase/crashlytics/internal/common/r;->fileStore:Le4/f;

    .line 54
    .line 55
    .line 56
    invoke-direct {v2, v3, v4}, Lcom/google/firebase/crashlytics/internal/common/s;-><init>(Ljava/lang/String;Le4/f;)V

    .line 57
    .line 58
    iput-object v2, v1, Lcom/google/firebase/crashlytics/internal/common/r;->initializationMarker:Lcom/google/firebase/crashlytics/internal/common/s;

    .line 59
    .line 60
    new-instance v13, Lcom/google/firebase/crashlytics/internal/metadata/n;

    .line 61
    .line 62
    iget-object v2, v1, Lcom/google/firebase/crashlytics/internal/common/r;->fileStore:Le4/f;

    .line 63
    .line 64
    iget-object v3, v1, Lcom/google/firebase/crashlytics/internal/common/r;->backgroundWorker:Lcom/google/firebase/crashlytics/internal/common/n;

    .line 65
    .line 66
    .line 67
    invoke-direct {v13, v14, v2, v3}, Lcom/google/firebase/crashlytics/internal/metadata/n;-><init>(Ljava/lang/String;Le4/f;Lcom/google/firebase/crashlytics/internal/common/n;)V

    .line 68
    .line 69
    new-instance v11, Lcom/google/firebase/crashlytics/internal/metadata/e;

    .line 70
    .line 71
    iget-object v2, v1, Lcom/google/firebase/crashlytics/internal/common/r;->fileStore:Le4/f;

    .line 72
    .line 73
    .line 74
    invoke-direct {v11, v2}, Lcom/google/firebase/crashlytics/internal/metadata/e;-><init>(Le4/f;)V

    .line 75
    .line 76
    new-instance v8, Lf4/a;

    .line 77
    .line 78
    new-array v2, v12, [Lf4/d;

    .line 79
    .line 80
    new-instance v3, Lf4/c;

    .line 81
    .line 82
    const/16 v4, 0xa

    .line 83
    .line 84
    .line 85
    invoke-direct {v3, v4}, Lf4/c;-><init>(I)V

    .line 86
    .line 87
    aput-object v3, v2, v27

    .line 88
    .line 89
    const/16 v3, 0x400

    .line 90
    .line 91
    .line 92
    invoke-direct {v8, v3, v2}, Lf4/a;-><init>(I[Lf4/d;)V

    .line 93
    .line 94
    iget-object v2, v1, Lcom/google/firebase/crashlytics/internal/common/r;->remoteConfigDeferredProxy:Lcom/google/firebase/crashlytics/internal/l;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v13}, Lcom/google/firebase/crashlytics/internal/l;->c(Lcom/google/firebase/crashlytics/internal/metadata/n;)V

    .line 98
    .line 99
    iget-object v2, v1, Lcom/google/firebase/crashlytics/internal/common/r;->context:Landroid/content/Context;

    .line 100
    .line 101
    iget-object v3, v1, Lcom/google/firebase/crashlytics/internal/common/r;->idManager:Lcom/google/firebase/crashlytics/internal/common/b0;

    .line 102
    .line 103
    iget-object v4, v1, Lcom/google/firebase/crashlytics/internal/common/r;->fileStore:Le4/f;

    .line 104
    .line 105
    iget-object v10, v1, Lcom/google/firebase/crashlytics/internal/common/r;->onDemandCounter:Lcom/google/firebase/crashlytics/internal/common/g0;

    .line 106
    .line 107
    iget-object v9, v1, Lcom/google/firebase/crashlytics/internal/common/r;->sessionsSubscriber:Lcom/google/firebase/crashlytics/internal/common/m;

    .line 108
    .line 109
    move-object/from16 v5, p1

    .line 110
    move-object v6, v11

    .line 111
    move-object v7, v13

    .line 112
    .line 113
    move-object/from16 v16, v9

    .line 114
    .line 115
    move-object/from16 v9, p2

    .line 116
    .line 117
    move-object/from16 v22, v11

    .line 118
    .line 119
    move-object/from16 v11, v16

    .line 120
    .line 121
    .line 122
    invoke-static/range {v2 .. v11}, Lcom/google/firebase/crashlytics/internal/common/q0;->h(Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/common/b0;Le4/f;Lcom/google/firebase/crashlytics/internal/common/a;Lcom/google/firebase/crashlytics/internal/metadata/e;Lcom/google/firebase/crashlytics/internal/metadata/n;Lf4/d;Lcom/google/firebase/crashlytics/internal/settings/i;Lcom/google/firebase/crashlytics/internal/common/g0;Lcom/google/firebase/crashlytics/internal/common/m;)Lcom/google/firebase/crashlytics/internal/common/q0;

    .line 123
    move-result-object v23

    .line 124
    .line 125
    new-instance v2, Lcom/google/firebase/crashlytics/internal/common/p;

    .line 126
    .line 127
    iget-object v3, v1, Lcom/google/firebase/crashlytics/internal/common/r;->context:Landroid/content/Context;

    .line 128
    .line 129
    iget-object v4, v1, Lcom/google/firebase/crashlytics/internal/common/r;->backgroundWorker:Lcom/google/firebase/crashlytics/internal/common/n;

    .line 130
    .line 131
    iget-object v5, v1, Lcom/google/firebase/crashlytics/internal/common/r;->idManager:Lcom/google/firebase/crashlytics/internal/common/b0;

    .line 132
    .line 133
    iget-object v6, v1, Lcom/google/firebase/crashlytics/internal/common/r;->dataCollectionArbiter:Lcom/google/firebase/crashlytics/internal/common/x;

    .line 134
    .line 135
    iget-object v7, v1, Lcom/google/firebase/crashlytics/internal/common/r;->fileStore:Le4/f;

    .line 136
    .line 137
    iget-object v8, v1, Lcom/google/firebase/crashlytics/internal/common/r;->crashMarker:Lcom/google/firebase/crashlytics/internal/common/s;

    .line 138
    .line 139
    iget-object v9, v1, Lcom/google/firebase/crashlytics/internal/common/r;->nativeComponent:Lcom/google/firebase/crashlytics/internal/a;

    .line 140
    .line 141
    iget-object v10, v1, Lcom/google/firebase/crashlytics/internal/common/r;->analyticsEventLogger:Lcom/google/firebase/crashlytics/internal/analytics/a;

    .line 142
    .line 143
    iget-object v11, v1, Lcom/google/firebase/crashlytics/internal/common/r;->sessionsSubscriber:Lcom/google/firebase/crashlytics/internal/common/m;

    .line 144
    .line 145
    move-object/from16 v21, v13

    .line 146
    move-object v13, v2

    .line 147
    move-object v12, v14

    .line 148
    move-object v14, v3

    .line 149
    move-object v15, v4

    .line 150
    .line 151
    move-object/from16 v16, v5

    .line 152
    .line 153
    move-object/from16 v17, v6

    .line 154
    .line 155
    move-object/from16 v18, v7

    .line 156
    .line 157
    move-object/from16 v19, v8

    .line 158
    .line 159
    move-object/from16 v20, p1

    .line 160
    .line 161
    move-object/from16 v24, v9

    .line 162
    .line 163
    move-object/from16 v25, v10

    .line 164
    .line 165
    move-object/from16 v26, v11

    .line 166
    .line 167
    .line 168
    invoke-direct/range {v13 .. v26}, Lcom/google/firebase/crashlytics/internal/common/p;-><init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/common/n;Lcom/google/firebase/crashlytics/internal/common/b0;Lcom/google/firebase/crashlytics/internal/common/x;Le4/f;Lcom/google/firebase/crashlytics/internal/common/s;Lcom/google/firebase/crashlytics/internal/common/a;Lcom/google/firebase/crashlytics/internal/metadata/n;Lcom/google/firebase/crashlytics/internal/metadata/e;Lcom/google/firebase/crashlytics/internal/common/q0;Lcom/google/firebase/crashlytics/internal/a;Lcom/google/firebase/crashlytics/internal/analytics/a;Lcom/google/firebase/crashlytics/internal/common/m;)V

    .line 169
    .line 170
    iput-object v2, v1, Lcom/google/firebase/crashlytics/internal/common/r;->controller:Lcom/google/firebase/crashlytics/internal/common/p;

    .line 171
    .line 172
    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/crashlytics/internal/common/r;->e()Z

    .line 174
    move-result v2

    .line 175
    .line 176
    .line 177
    invoke-direct/range {p0 .. p0}, Lcom/google/firebase/crashlytics/internal/common/r;->d()V

    .line 178
    .line 179
    iget-object v3, v1, Lcom/google/firebase/crashlytics/internal/common/r;->controller:Lcom/google/firebase/crashlytics/internal/common/p;

    .line 180
    .line 181
    .line 182
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 183
    move-result-object v4

    .line 184
    .line 185
    .line 186
    invoke-virtual {v3, v12, v4, v0}, Lcom/google/firebase/crashlytics/internal/common/p;->x(Ljava/lang/String;Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/google/firebase/crashlytics/internal/settings/i;)V

    .line 187
    .line 188
    if-eqz v2, :cond_0

    .line 189
    .line 190
    iget-object v2, v1, Lcom/google/firebase/crashlytics/internal/common/r;->context:Landroid/content/Context;

    .line 191
    .line 192
    .line 193
    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/common/i;->d(Landroid/content/Context;)Z

    .line 194
    move-result v2

    .line 195
    .line 196
    if-eqz v2, :cond_0

    .line 197
    .line 198
    .line 199
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 200
    move-result-object v2

    .line 201
    .line 202
    const-string v3, "Crashlytics did not finish previous background initialization. Initializing synchronously."

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2, v3}, Lcom/google/firebase/crashlytics/internal/g;->b(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-direct {v1, v0}, Lcom/google/firebase/crashlytics/internal/common/r;->h(Lcom/google/firebase/crashlytics/internal/settings/i;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    return v27

    .line 210
    :catch_0
    move-exception v0

    .line 211
    goto :goto_0

    .line 212
    .line 213
    .line 214
    :cond_0
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 215
    move-result-object v0

    .line 216
    .line 217
    const-string v2, "Successfully configured exception handler."

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0, v2}, Lcom/google/firebase/crashlytics/internal/g;->b(Ljava/lang/String;)V

    .line 221
    const/4 v0, 0x1

    .line 222
    return v0

    .line 223
    .line 224
    .line 225
    :goto_0
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/g;->f()Lcom/google/firebase/crashlytics/internal/g;

    .line 226
    move-result-object v2

    .line 227
    .line 228
    const-string v3, "Crashlytics was not started due to an exception during initialization"

    .line 229
    .line 230
    .line 231
    invoke-virtual {v2, v3, v0}, Lcom/google/firebase/crashlytics/internal/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 232
    const/4 v0, 0x0

    .line 233
    .line 234
    iput-object v0, v1, Lcom/google/firebase/crashlytics/internal/common/r;->controller:Lcom/google/firebase/crashlytics/internal/common/p;

    .line 235
    return v27

    .line 236
    .line 237
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 238
    .line 239
    const-string v2, "The Crashlytics build ID is missing. This occurs when the Crashlytics Gradle plugin is missing from your app\'s build configuration. Please review the Firebase Crashlytics onboarding instructions at https://firebase.google.com/docs/crashlytics/get-started?platform=android#add-plugin"

    .line 240
    .line 241
    .line 242
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 243
    throw v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/r;->controller:Lcom/google/firebase/crashlytics/internal/common/p;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/p;->U(Ljava/lang/String;)V

    .line 6
    return-void
.end method
