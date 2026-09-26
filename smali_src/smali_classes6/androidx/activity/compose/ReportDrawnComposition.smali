.class final Landroidx/activity/compose/ReportDrawnComposition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le8/a<",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field private final checkReporter:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Le8/a<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fullyDrawnReporter:Landroidx/activity/FullyDrawnReporter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final predicate:Le8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final snapshotStateObserver:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/activity/FullyDrawnReporter;Le8/a;)V
    .locals 2
    .param p1    # Landroidx/activity/FullyDrawnReporter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/FullyDrawnReporter;",
            "Le8/a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "fullyDrawnReporter"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "predicate"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    iput-object p1, p0, Landroidx/activity/compose/ReportDrawnComposition;->fullyDrawnReporter:Landroidx/activity/FullyDrawnReporter;

    .line 16
    .line 17
    iput-object p2, p0, Landroidx/activity/compose/ReportDrawnComposition;->predicate:Le8/a;

    .line 18
    .line 19
    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 20
    .line 21
    sget-object v1, Landroidx/activity/compose/ReportDrawnComposition$snapshotStateObserver$1;->INSTANCE:Landroidx/activity/compose/ReportDrawnComposition$snapshotStateObserver$1;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;-><init>(Le8/l;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->l()V

    .line 28
    .line 29
    iput-object v0, p0, Landroidx/activity/compose/ReportDrawnComposition;->snapshotStateObserver:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 30
    .line 31
    new-instance v0, Landroidx/activity/compose/ReportDrawnComposition$checkReporter$1;

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, p0}, Landroidx/activity/compose/ReportDrawnComposition$checkReporter$1;-><init>(Ljava/lang/Object;)V

    .line 35
    .line 36
    iput-object v0, p0, Landroidx/activity/compose/ReportDrawnComposition;->checkReporter:Le8/l;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p0}, Landroidx/activity/FullyDrawnReporter;->b(Le8/a;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroidx/activity/FullyDrawnReporter;->e()Z

    .line 43
    move-result v0

    .line 44
    .line 45
    if-nez v0, :cond_0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroidx/activity/FullyDrawnReporter;->c()V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, p2}, Landroidx/activity/compose/ReportDrawnComposition;->c(Le8/a;)V

    .line 52
    :cond_0
    return-void
.end method

.method public static final synthetic a(Landroidx/activity/compose/ReportDrawnComposition;Le8/a;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/activity/compose/ReportDrawnComposition;->c(Le8/a;)V

    .line 4
    return-void
.end method

.method private final c(Le8/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lkotlin/jvm/internal/k0;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lkotlin/jvm/internal/k0;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/activity/compose/ReportDrawnComposition;->snapshotStateObserver:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/activity/compose/ReportDrawnComposition;->checkReporter:Le8/l;

    .line 10
    .line 11
    new-instance v3, Landroidx/activity/compose/ReportDrawnComposition$observeReporter$1;

    .line 12
    .line 13
    .line 14
    invoke-direct {v3, v0, p1}, Landroidx/activity/compose/ReportDrawnComposition$observeReporter$1;-><init>(Lkotlin/jvm/internal/k0;Le8/a;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1, v2, v3}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->k(Ljava/lang/Object;Le8/l;Le8/a;)V

    .line 18
    .line 19
    iget-boolean p1, v0, Lkotlin/jvm/internal/k0;->element:Z

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/activity/compose/ReportDrawnComposition;->d()V

    .line 25
    :cond_0
    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/activity/compose/ReportDrawnComposition;->snapshotStateObserver:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->g()V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/activity/compose/ReportDrawnComposition;->snapshotStateObserver:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->m()V

    .line 11
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/activity/compose/ReportDrawnComposition;->snapshotStateObserver:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/activity/compose/ReportDrawnComposition;->predicate:Le8/a;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->h(Ljava/lang/Object;)V

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/activity/compose/ReportDrawnComposition;->fullyDrawnReporter:Landroidx/activity/FullyDrawnReporter;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/activity/FullyDrawnReporter;->e()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/activity/compose/ReportDrawnComposition;->fullyDrawnReporter:Landroidx/activity/FullyDrawnReporter;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/activity/FullyDrawnReporter;->g()V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Landroidx/activity/compose/ReportDrawnComposition;->b()V

    .line 24
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/activity/compose/ReportDrawnComposition;->b()V

    .line 4
    .line 5
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 6
    return-object v0
.end method
