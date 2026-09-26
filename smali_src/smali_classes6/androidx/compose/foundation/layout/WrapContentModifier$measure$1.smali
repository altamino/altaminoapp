.class final Landroidx/compose/foundation/layout/WrapContentModifier$measure$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/layout/WrapContentModifier;->N0(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
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
.field final synthetic $placeable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $this_measure:Landroidx/compose/ui/layout/MeasureScope;

.field final synthetic $wrapperHeight:I

.field final synthetic $wrapperWidth:I

.field final synthetic this$0:Landroidx/compose/foundation/layout/WrapContentModifier;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/layout/WrapContentModifier;ILandroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/MeasureScope;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/layout/WrapContentModifier$measure$1;->this$0:Landroidx/compose/foundation/layout/WrapContentModifier;

    iput p2, p0, Landroidx/compose/foundation/layout/WrapContentModifier$measure$1;->$wrapperWidth:I

    iput-object p3, p0, Landroidx/compose/foundation/layout/WrapContentModifier$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    iput p4, p0, Landroidx/compose/foundation/layout/WrapContentModifier$measure$1;->$wrapperHeight:I

    iput-object p5, p0, Landroidx/compose/foundation/layout/WrapContentModifier$measure$1;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 8
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
    iget-object v0, p0, Landroidx/compose/foundation/layout/WrapContentModifier$measure$1;->this$0:Landroidx/compose/foundation/layout/WrapContentModifier;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Landroidx/compose/foundation/layout/WrapContentModifier;->a(Landroidx/compose/foundation/layout/WrapContentModifier;)Le8/p;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iget v1, p0, Landroidx/compose/foundation/layout/WrapContentModifier$measure$1;->$wrapperWidth:I

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/compose/foundation/layout/WrapContentModifier$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 19
    move-result v2

    .line 20
    sub-int/2addr v1, v2

    .line 21
    .line 22
    iget v2, p0, Landroidx/compose/foundation/layout/WrapContentModifier$measure$1;->$wrapperHeight:I

    .line 23
    .line 24
    iget-object v3, p0, Landroidx/compose/foundation/layout/WrapContentModifier$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 28
    move-result v3

    .line 29
    sub-int/2addr v2, v3

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSizeKt;->a(II)J

    .line 33
    move-result-wide v1

    .line 34
    .line 35
    .line 36
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->b(J)Landroidx/compose/ui/unit/IntSize;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    iget-object v2, p0, Landroidx/compose/foundation/layout/WrapContentModifier$measure$1;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    .line 40
    .line 41
    .line 42
    invoke-interface {v2}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, v1, v2}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    check-cast v0, Landroidx/compose/ui/unit/IntOffset;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntOffset;->n()J

    .line 53
    move-result-wide v3

    .line 54
    .line 55
    iget-object v2, p0, Landroidx/compose/foundation/layout/WrapContentModifier$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    .line 56
    const/4 v5, 0x0

    .line 57
    const/4 v6, 0x2

    .line 58
    const/4 v7, 0x0

    .line 59
    move-object v1, p1

    .line 60
    .line 61
    .line 62
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->l(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;JFILjava/lang/Object;)V

    .line 63
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
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/WrapContentModifier$measure$1;->a(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
