.class public final Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;
.super Landroidx/work/impl/constraints/trackers/ConstraintTracker;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/work/impl/constraints/trackers/ConstraintTracker<",
        "Landroidx/work/impl/constraints/NetworkState;",
        ">;"
    }
.end annotation


# instance fields
.field private final connectivityManager:Landroid/net/ConnectivityManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final networkCallback:Landroidx/work/impl/constraints/trackers/NetworkStateTracker24$networkCallback$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/impl/utils/taskexecutor/TaskExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v0, "taskExecutor"

    .line 9
    .line 10
    .line 11
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1, p2}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->d()Landroid/content/Context;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    const-string p2, "connectivity"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    const-string/jumbo p2, "null cannot be cast to non-null type android.net.ConnectivityManager"

    .line 28
    .line 29
    .line 30
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 33
    .line 34
    iput-object p1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 35
    .line 36
    new-instance p1, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24$networkCallback$1;

    .line 37
    .line 38
    .line 39
    invoke-direct {p1, p0}, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24$networkCallback$1;-><init>(Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;)V

    .line 40
    .line 41
    iput-object p1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;->networkCallback:Landroidx/work/impl/constraints/trackers/NetworkStateTracker24$networkCallback$1;

    .line 42
    return-void
.end method

.method public static final synthetic j(Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 3
    return-object p0
.end method


# virtual methods
.method public bridge synthetic e()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;->k()Landroidx/work/impl/constraints/NetworkState;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public h()V
    .locals 4

    .line 1
    .line 2
    const-string v0, "Received exception while registering network callback"

    .line 3
    .line 4
    .line 5
    :try_start_0
    invoke-static {}, Landroidx/work/Logger;->e()Landroidx/work/Logger;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->b()Ljava/lang/String;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    const-string v3, "Registering network callback"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2, v3}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 18
    .line 19
    iget-object v2, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;->networkCallback:Landroidx/work/impl/constraints/trackers/NetworkStateTracker24$networkCallback$1;

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v2}, Landroidx/work/impl/utils/NetworkApi24;->a(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_2

    .line 24
    :catch_0
    move-exception v1

    .line 25
    goto :goto_0

    .line 26
    :catch_1
    move-exception v1

    .line 27
    goto :goto_1

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-static {}, Landroidx/work/Logger;->e()Landroidx/work/Logger;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    .line 34
    invoke-static {}, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->b()Ljava/lang/String;

    .line 35
    move-result-object v3

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v3, v0, v1}, Landroidx/work/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    goto :goto_2

    .line 40
    .line 41
    .line 42
    :goto_1
    invoke-static {}, Landroidx/work/Logger;->e()Landroidx/work/Logger;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    .line 46
    invoke-static {}, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->b()Ljava/lang/String;

    .line 47
    move-result-object v3

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v3, v0, v1}, Landroidx/work/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    :goto_2
    return-void
.end method

.method public i()V
    .locals 4

    .line 1
    .line 2
    const-string v0, "Received exception while unregistering network callback"

    .line 3
    .line 4
    .line 5
    :try_start_0
    invoke-static {}, Landroidx/work/Logger;->e()Landroidx/work/Logger;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->b()Ljava/lang/String;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    const-string v3, "Unregistering network callback"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2, v3}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 18
    .line 19
    iget-object v2, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;->networkCallback:Landroidx/work/impl/constraints/trackers/NetworkStateTracker24$networkCallback$1;

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v2}, Landroidx/work/impl/utils/NetworkApi21;->c(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_2

    .line 24
    :catch_0
    move-exception v1

    .line 25
    goto :goto_0

    .line 26
    :catch_1
    move-exception v1

    .line 27
    goto :goto_1

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-static {}, Landroidx/work/Logger;->e()Landroidx/work/Logger;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    .line 34
    invoke-static {}, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->b()Ljava/lang/String;

    .line 35
    move-result-object v3

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v3, v0, v1}, Landroidx/work/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    goto :goto_2

    .line 40
    .line 41
    .line 42
    :goto_1
    invoke-static {}, Landroidx/work/Logger;->e()Landroidx/work/Logger;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    .line 46
    invoke-static {}, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->b()Ljava/lang/String;

    .line 47
    move-result-object v3

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v3, v0, v1}, Landroidx/work/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    :goto_2
    return-void
.end method

.method public k()Landroidx/work/impl/constraints/NetworkState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->c(Landroid/net/ConnectivityManager;)Landroidx/work/impl/constraints/NetworkState;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
