.class final Landroidx/compose/foundation/layout/PaddingModifier$measure$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/layout/PaddingModifier;->N0(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
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

.field final synthetic this$0:Landroidx/compose/foundation/layout/PaddingModifier;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/layout/PaddingModifier;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/MeasureScope;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/layout/PaddingModifier$measure$1;->this$0:Landroidx/compose/foundation/layout/PaddingModifier;

    iput-object p2, p0, Landroidx/compose/foundation/layout/PaddingModifier$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    iput-object p3, p0, Landroidx/compose/foundation/layout/PaddingModifier$measure$1;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

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
    iget-object v0, p0, Landroidx/compose/foundation/layout/PaddingModifier$measure$1;->this$0:Landroidx/compose/foundation/layout/PaddingModifier;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/foundation/layout/PaddingModifier;->a()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/compose/foundation/layout/PaddingModifier$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/compose/foundation/layout/PaddingModifier$measure$1;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    .line 18
    .line 19
    iget-object v3, p0, Landroidx/compose/foundation/layout/PaddingModifier$measure$1;->this$0:Landroidx/compose/foundation/layout/PaddingModifier;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Landroidx/compose/foundation/layout/PaddingModifier;->b()F

    .line 23
    move-result v3

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v3}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 27
    move-result v3

    .line 28
    .line 29
    iget-object v0, p0, Landroidx/compose/foundation/layout/PaddingModifier$measure$1;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    .line 30
    .line 31
    iget-object v4, p0, Landroidx/compose/foundation/layout/PaddingModifier$measure$1;->this$0:Landroidx/compose/foundation/layout/PaddingModifier;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4}, Landroidx/compose/foundation/layout/PaddingModifier;->c()F

    .line 35
    move-result v4

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v4}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 39
    move-result v4

    .line 40
    const/4 v5, 0x0

    .line 41
    const/4 v6, 0x4

    .line 42
    const/4 v7, 0x0

    .line 43
    move-object v1, p1

    .line 44
    .line 45
    .line 46
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->n(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_0
    iget-object v2, p0, Landroidx/compose/foundation/layout/PaddingModifier$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    .line 50
    .line 51
    iget-object v0, p0, Landroidx/compose/foundation/layout/PaddingModifier$measure$1;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    .line 52
    .line 53
    iget-object v3, p0, Landroidx/compose/foundation/layout/PaddingModifier$measure$1;->this$0:Landroidx/compose/foundation/layout/PaddingModifier;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Landroidx/compose/foundation/layout/PaddingModifier;->b()F

    .line 57
    move-result v3

    .line 58
    .line 59
    .line 60
    invoke-interface {v0, v3}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 61
    move-result v3

    .line 62
    .line 63
    iget-object v0, p0, Landroidx/compose/foundation/layout/PaddingModifier$measure$1;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    .line 64
    .line 65
    iget-object v4, p0, Landroidx/compose/foundation/layout/PaddingModifier$measure$1;->this$0:Landroidx/compose/foundation/layout/PaddingModifier;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4}, Landroidx/compose/foundation/layout/PaddingModifier;->c()F

    .line 69
    move-result v4

    .line 70
    .line 71
    .line 72
    invoke-interface {v0, v4}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 73
    move-result v4

    .line 74
    const/4 v5, 0x0

    .line 75
    const/4 v6, 0x4

    .line 76
    const/4 v7, 0x0

    .line 77
    move-object v1, p1

    .line 78
    .line 79
    .line 80
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->j(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 81
    :goto_0
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
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/PaddingModifier$measure$1;->a(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
