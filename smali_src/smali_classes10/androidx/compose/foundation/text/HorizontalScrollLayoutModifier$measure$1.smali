.class final Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier$measure$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier;->N0(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
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

.field final synthetic $width:I

.field final synthetic this$0:Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier;


# direct methods
.method constructor <init>(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier;Landroidx/compose/ui/layout/Placeable;I)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier$measure$1;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    iput-object p2, p0, Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier$measure$1;->this$0:Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier;

    iput-object p3, p0, Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    iput p4, p0, Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier$measure$1;->$width:I

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
    iget-object v1, p0, Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier$measure$1;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier$measure$1;->this$0:Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier;->a()I

    .line 13
    move-result v2

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier$measure$1;->this$0:Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier;->d()Landroidx/compose/ui/text/input/TransformedText;

    .line 19
    move-result-object v3

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier$measure$1;->this$0:Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier;->c()Le8/a;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Le8/a;->invoke()Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    check-cast v0, Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->i()Landroidx/compose/ui/text/TextLayoutResult;

    .line 37
    move-result-object v0

    .line 38
    :goto_0
    move-object v4, v0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :goto_1
    iget-object v0, p0, Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier$measure$1;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    .line 44
    .line 45
    .line 46
    invoke-interface {v0}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    sget-object v5, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    .line 50
    .line 51
    if-ne v0, v5, :cond_1

    .line 52
    const/4 v0, 0x1

    .line 53
    :goto_2
    move v5, v0

    .line 54
    goto :goto_3

    .line 55
    :cond_1
    const/4 v0, 0x0

    .line 56
    goto :goto_2

    .line 57
    .line 58
    :goto_3
    iget-object v0, p0, Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 62
    move-result v6

    .line 63
    .line 64
    .line 65
    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/text/TextFieldScrollKt;->a(Landroidx/compose/ui/unit/Density;ILandroidx/compose/ui/text/input/TransformedText;Landroidx/compose/ui/text/TextLayoutResult;ZI)Landroidx/compose/ui/geometry/Rect;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    iget-object v1, p0, Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier$measure$1;->this$0:Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier;->b()Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 75
    .line 76
    iget v3, p0, Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier$measure$1;->$width:I

    .line 77
    .line 78
    iget-object v4, p0, Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 82
    move-result v4

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v2, v0, v3, v4}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->j(Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/geometry/Rect;II)V

    .line 86
    .line 87
    iget-object v0, p0, Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier$measure$1;->this$0:Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier;->b()Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->d()F

    .line 95
    move-result v0

    .line 96
    neg-float v0, v0

    .line 97
    .line 98
    iget-object v2, p0, Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    .line 99
    .line 100
    .line 101
    invoke-static {v0}, Lg8/a;->c(F)I

    .line 102
    move-result v3

    .line 103
    const/4 v4, 0x0

    .line 104
    const/4 v5, 0x0

    .line 105
    const/4 v6, 0x4

    .line 106
    const/4 v7, 0x0

    .line 107
    move-object v1, p1

    .line 108
    .line 109
    .line 110
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->n(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 111
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
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier$measure$1;->a(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
