.class final Landroidx/compose/animation/SlideModifier$measure$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/SlideModifier;->N0(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $measuredSize:J

.field final synthetic $placeable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic this$0:Landroidx/compose/animation/SlideModifier;


# direct methods
.method constructor <init>(Landroidx/compose/animation/SlideModifier;Landroidx/compose/ui/layout/Placeable;J)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/animation/SlideModifier$measure$1;->this$0:Landroidx/compose/animation/SlideModifier;

    iput-object p2, p0, Landroidx/compose/animation/SlideModifier$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    iput-wide p3, p0, Landroidx/compose/animation/SlideModifier$measure$1;->$measuredSize:J

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 9
    .param p1    # Landroidx/compose/ui/layout/Placeable$PlacementScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$layout"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/animation/SlideModifier$measure$1;->this$0:Landroidx/compose/animation/SlideModifier;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/animation/SlideModifier;->a()Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/compose/animation/SlideModifier$measure$1;->this$0:Landroidx/compose/animation/SlideModifier;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Landroidx/compose/animation/SlideModifier;->d()Le8/l;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    new-instance v2, Landroidx/compose/animation/SlideModifier$measure$1$slideOffset$1;

    .line 20
    .line 21
    iget-object v3, p0, Landroidx/compose/animation/SlideModifier$measure$1;->this$0:Landroidx/compose/animation/SlideModifier;

    .line 22
    .line 23
    iget-wide v4, p0, Landroidx/compose/animation/SlideModifier$measure$1;->$measuredSize:J

    .line 24
    .line 25
    .line 26
    invoke-direct {v2, v3, v4, v5}, Landroidx/compose/animation/SlideModifier$measure$1$slideOffset$1;-><init>(Landroidx/compose/animation/SlideModifier;J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Landroidx/compose/animation/core/Transition$DeferredAnimation;->a(Le8/l;Le8/l;)Landroidx/compose/runtime/State;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    iget-object v2, p0, Landroidx/compose/animation/SlideModifier$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    .line 33
    .line 34
    .line 35
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    check-cast v0, Landroidx/compose/ui/unit/IntOffset;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntOffset;->n()J

    .line 42
    move-result-wide v3

    .line 43
    const/4 v5, 0x0

    .line 44
    const/4 v6, 0x0

    .line 45
    const/4 v7, 0x6

    .line 46
    const/4 v8, 0x0

    .line 47
    move-object v1, p1

    .line 48
    .line 49
    .line 50
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->x(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;JFLe8/l;ILjava/lang/Object;)V

    .line 51
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/animation/SlideModifier$measure$1;->a(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
