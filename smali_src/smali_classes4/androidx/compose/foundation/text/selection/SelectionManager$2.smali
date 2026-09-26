.class final Landroidx/compose/foundation/text/selection/SelectionManager$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


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
        "Le8/q<",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "Landroidx/compose/ui/geometry/Offset;",
        "Landroidx/compose/foundation/text/selection/SelectionAdjustment;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/text/selection/SelectionManager;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text/selection/SelectionManager;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager$2;->this$0:Landroidx/compose/foundation/text/selection/SelectionManager;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/layout/LayoutCoordinates;JLandroidx/compose/foundation/text/selection/SelectionAdjustment;)V
    .locals 2
    .param p1    # Landroidx/compose/ui/layout/LayoutCoordinates;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/foundation/text/selection/SelectionAdjustment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "layoutCoordinates"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "selectionMode"

    .line 8
    .line 9
    .line 10
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager$2;->this$0:Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 13
    .line 14
    .line 15
    invoke-static {v0, p1, p2, p3}, Landroidx/compose/foundation/text/selection/SelectionManager;->a(Landroidx/compose/foundation/text/selection/SelectionManager;Landroidx/compose/ui/layout/LayoutCoordinates;J)Landroidx/compose/ui/geometry/Offset;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p2, p0, Landroidx/compose/foundation/text/selection/SelectionManager$2;->this$0:Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset;->u()J

    .line 24
    move-result-wide v0

    .line 25
    const/4 p1, 0x0

    .line 26
    .line 27
    .line 28
    invoke-static {p2, v0, v1, p1, p4}, Landroidx/compose/foundation/text/selection/SelectionManager;->j(Landroidx/compose/foundation/text/selection/SelectionManager;JZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)V

    .line 29
    .line 30
    iget-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager$2;->this$0:Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/SelectionManager;->x()Landroidx/compose/ui/focus/FocusRequester;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusRequester;->c()V

    .line 38
    .line 39
    iget-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager$2;->this$0:Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/SelectionManager;->G()V

    .line 43
    :cond_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 3
    .line 4
    check-cast p2, Landroidx/compose/ui/geometry/Offset;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Offset;->u()J

    .line 8
    move-result-wide v0

    .line 9
    .line 10
    check-cast p3, Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, v0, v1, p3}, Landroidx/compose/foundation/text/selection/SelectionManager$2;->a(Landroidx/compose/ui/layout/LayoutCoordinates;JLandroidx/compose/foundation/text/selection/SelectionAdjustment;)V

    .line 14
    .line 15
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 16
    return-object p1
.end method
