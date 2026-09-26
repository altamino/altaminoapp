.class final Landroidx/compose/foundation/text/selection/SelectionManager$3;
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

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager$3;->this$0:Landroidx/compose/foundation/text/selection/SelectionManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager$3;->this$0:Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->C()Landroidx/compose/foundation/text/selection/Selection;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, p2, v1}, Landroidx/compose/foundation/text/selection/SelectionManager;->K(JLandroidx/compose/foundation/text/selection/Selection;)Lw7/u;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lw7/u;->a()Ljava/lang/Object;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    check-cast p2, Landroidx/compose/foundation/text/selection/Selection;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lw7/u;->b()Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    check-cast p1, Ljava/util/Map;

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager$3;->this$0:Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->C()Landroidx/compose/foundation/text/selection/Selection;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    move-result v0

    .line 33
    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager$3;->this$0:Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->c(Landroidx/compose/foundation/text/selection/SelectionManager;)Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->u(Ljava/util/Map;)V

    .line 44
    .line 45
    iget-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager$3;->this$0:Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/SelectionManager;->A()Le8/l;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-interface {p1, p2}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    :cond_0
    iget-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager$3;->this$0:Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/SelectionManager;->x()Landroidx/compose/ui/focus/FocusRequester;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusRequester;->c()V

    .line 62
    .line 63
    iget-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager$3;->this$0:Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/SelectionManager;->G()V

    .line 67
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
    invoke-virtual {p0, v0, v1}, Landroidx/compose/foundation/text/selection/SelectionManager$3;->a(J)V

    .line 10
    .line 11
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 12
    return-object p1
.end method
