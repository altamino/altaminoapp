.class public final Landroidx/work/impl/constraints/trackers/NetworkStateTracker24$networkCallback$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;-><init>(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;


# direct methods
.method constructor <init>(Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24$networkCallback$1;->this$0:Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 3
    .param p1    # Landroid/net/Network;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/NetworkCapabilities;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "network"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    const-string p1, "capabilities"

    .line 9
    .line 10
    .line 11
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroidx/work/Logger;->e()Landroidx/work/Logger;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->b()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    const-string v2, "Network capabilities changed: "

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p2

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0, p2}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    iget-object p1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24$networkCallback$1;->this$0:Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;->j(Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;)Landroid/net/ConnectivityManager;

    .line 45
    move-result-object p2

    .line 46
    .line 47
    .line 48
    invoke-static {p2}, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->c(Landroid/net/ConnectivityManager;)Landroidx/work/impl/constraints/NetworkState;

    .line 49
    move-result-object p2

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->g(Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2
    .param p1    # Landroid/net/Network;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "network"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroidx/work/Logger;->e()Landroidx/work/Logger;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->b()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-string v1, "Network connection lost"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    iget-object p1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24$networkCallback$1;->this$0:Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;->j(Landroidx/work/impl/constraints/trackers/NetworkStateTracker24;)Landroid/net/ConnectivityManager;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->c(Landroid/net/ConnectivityManager;)Landroidx/work/impl/constraints/NetworkState;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->g(Ljava/lang/Object;)V

    .line 33
    return-void
.end method
