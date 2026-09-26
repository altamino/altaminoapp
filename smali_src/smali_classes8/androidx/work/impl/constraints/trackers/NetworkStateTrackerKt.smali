.class public final Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "NetworkStateTracker"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/work/Logger;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    const-string/jumbo v1, "tagWithPrefix(\"NetworkStateTracker\")"

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    sput-object v0, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->TAG:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public static final a(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)Landroidx/work/impl/constraints/trackers/ConstraintTracker;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/work/impl/utils/taskexecutor/TaskExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/work/impl/utils/taskexecutor/TaskExecutor;",
            ")",
            "Landroidx/work/impl/constraints/trackers/ConstraintTracker<",
            "Landroidx/work/impl/constraints/NetworkState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v0, "taskExecutor"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v1, 0x18

    .line 16
    .line 17
    if-lt v0, v1, :cond_0

    .line 18
    .line 19
    new-instance v0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    new-instance v0, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerPre24;

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, p0, p1}, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerPre24;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V

    .line 29
    :goto_0
    return-object v0
.end method

.method public static final synthetic b()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final c(Landroid/net/ConnectivityManager;)Landroidx/work/impl/constraints/NetworkState;
    .locals 5
    .param p0    # Landroid/net/ConnectivityManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 17
    move-result v3

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    move v3, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v3, v1

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-static {p0}, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->d(Landroid/net/ConnectivityManager;)Z

    .line 26
    move-result v4

    .line 27
    .line 28
    .line 29
    invoke-static {p0}, Landroidx/core/net/ConnectivityManagerCompat;->a(Landroid/net/ConnectivityManager;)Z

    .line 30
    move-result p0

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    .line 36
    move-result v0

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    move v1, v2

    .line 40
    .line 41
    :cond_1
    new-instance v0, Landroidx/work/impl/constraints/NetworkState;

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v3, v4, p0, v1}, Landroidx/work/impl/constraints/NetworkState;-><init>(ZZZZ)V

    .line 45
    return-object v0
.end method

.method public static final d(Landroid/net/ConnectivityManager;)Z
    .locals 4
    .param p0    # Landroid/net/ConnectivityManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-static {p0}, Landroidx/work/impl/utils/NetworkApi23;->a(Landroid/net/ConnectivityManager;)Landroid/net/Network;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v1}, Landroidx/work/impl/utils/NetworkApi21;->a(Landroid/net/ConnectivityManager;Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    const/16 v1, 0x10

    .line 19
    .line 20
    .line 21
    invoke-static {p0, v1}, Landroidx/work/impl/utils/NetworkApi21;->b(Landroid/net/NetworkCapabilities;I)Z

    .line 22
    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    .line 26
    .line 27
    invoke-static {}, Landroidx/work/Logger;->e()Landroidx/work/Logger;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    sget-object v2, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->TAG:Ljava/lang/String;

    .line 31
    .line 32
    const-string v3, "Unable to validate active network"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2, v3, p0}, Landroidx/work/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    :cond_0
    :goto_0
    return v0
.end method
