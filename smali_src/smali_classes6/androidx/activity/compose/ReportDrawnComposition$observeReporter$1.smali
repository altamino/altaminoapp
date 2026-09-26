.class final Landroidx/activity/compose/ReportDrawnComposition$observeReporter$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/compose/ReportDrawnComposition;->c(Le8/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $predicate:Le8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $reporterPassed:Lkotlin/jvm/internal/k0;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/k0;Le8/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/k0;",
            "Le8/a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/activity/compose/ReportDrawnComposition$observeReporter$1;->$reporterPassed:Lkotlin/jvm/internal/k0;

    iput-object p2, p0, Landroidx/activity/compose/ReportDrawnComposition$observeReporter$1;->$predicate:Le8/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/activity/compose/ReportDrawnComposition$observeReporter$1;->invoke()V

    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    iget-object v0, p0, Landroidx/activity/compose/ReportDrawnComposition$observeReporter$1;->$reporterPassed:Lkotlin/jvm/internal/k0;

    iget-object v1, p0, Landroidx/activity/compose/ReportDrawnComposition$observeReporter$1;->$predicate:Le8/a;

    .line 2
    invoke-interface {v1}, Le8/a;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lkotlin/jvm/internal/k0;->element:Z

    return-void
.end method
