.class final Landroidx/compose/foundation/text/selection/SelectionManager$6;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/selection/SelectionManager;-><init>(Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Ljava/lang/Long;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/text/selection/SelectionManager;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager$6;->this$0:Landroidx/compose/foundation/text/selection/SelectionManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget-object p2, p0, Landroidx/compose/foundation/text/selection/SelectionManager$6;->this$0:Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 7
    .line 8
    .line 9
    invoke-static {p2}, Landroidx/compose/foundation/text/selection/SelectionManager;->c(Landroidx/compose/foundation/text/selection/SelectionManager;)Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->f()Ljava/util/Map;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    .line 17
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 18
    move-result p1

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager$6;->this$0:Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/SelectionManager;->I()V

    .line 26
    .line 27
    iget-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager$6;->this$0:Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 28
    const/4 p2, 0x0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroidx/compose/foundation/text/selection/SelectionManager;->V(Landroidx/compose/foundation/text/selection/Selection;)V

    .line 32
    :cond_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    check-cast p1, Ljava/lang/Number;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Landroidx/compose/foundation/text/selection/SelectionManager$6;->a(J)V

    .line 10
    .line 11
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 12
    return-object p1
.end method
