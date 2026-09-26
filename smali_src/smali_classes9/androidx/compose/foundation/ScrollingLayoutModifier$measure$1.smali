.class final Landroidx/compose/foundation/ScrollingLayoutModifier$measure$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/ScrollingLayoutModifier;->N0(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
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

.field final synthetic $side:I

.field final synthetic this$0:Landroidx/compose/foundation/ScrollingLayoutModifier;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/ScrollingLayoutModifier;ILandroidx/compose/ui/layout/Placeable;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/ScrollingLayoutModifier$measure$1;->this$0:Landroidx/compose/foundation/ScrollingLayoutModifier;

    iput p2, p0, Landroidx/compose/foundation/ScrollingLayoutModifier$measure$1;->$side:I

    iput-object p3, p0, Landroidx/compose/foundation/ScrollingLayoutModifier$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 11
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
    iget-object v0, p0, Landroidx/compose/foundation/ScrollingLayoutModifier$measure$1;->this$0:Landroidx/compose/foundation/ScrollingLayoutModifier;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/foundation/ScrollingLayoutModifier;->a()Landroidx/compose/foundation/ScrollState;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iget v1, p0, Landroidx/compose/foundation/ScrollingLayoutModifier$measure$1;->$side:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/ScrollState;->l(I)V

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/compose/foundation/ScrollingLayoutModifier$measure$1;->this$0:Landroidx/compose/foundation/ScrollingLayoutModifier;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/compose/foundation/ScrollingLayoutModifier;->a()Landroidx/compose/foundation/ScrollState;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/compose/foundation/ScrollState;->k()I

    .line 26
    move-result v0

    .line 27
    .line 28
    iget v1, p0, Landroidx/compose/foundation/ScrollingLayoutModifier$measure$1;->$side:I

    .line 29
    const/4 v2, 0x0

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v2, v1}, Lj8/m;->n(III)I

    .line 33
    move-result v0

    .line 34
    .line 35
    iget-object v1, p0, Landroidx/compose/foundation/ScrollingLayoutModifier$measure$1;->this$0:Landroidx/compose/foundation/ScrollingLayoutModifier;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Landroidx/compose/foundation/ScrollingLayoutModifier;->b()Z

    .line 39
    move-result v1

    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    iget v1, p0, Landroidx/compose/foundation/ScrollingLayoutModifier$measure$1;->$side:I

    .line 44
    sub-int/2addr v0, v1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    neg-int v0, v0

    .line 47
    .line 48
    :goto_0
    iget-object v1, p0, Landroidx/compose/foundation/ScrollingLayoutModifier$measure$1;->this$0:Landroidx/compose/foundation/ScrollingLayoutModifier;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Landroidx/compose/foundation/ScrollingLayoutModifier;->c()Z

    .line 52
    move-result v1

    .line 53
    .line 54
    if-eqz v1, :cond_1

    .line 55
    move v5, v2

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    move v5, v0

    .line 58
    .line 59
    :goto_1
    iget-object v1, p0, Landroidx/compose/foundation/ScrollingLayoutModifier$measure$1;->this$0:Landroidx/compose/foundation/ScrollingLayoutModifier;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Landroidx/compose/foundation/ScrollingLayoutModifier;->c()Z

    .line 63
    move-result v1

    .line 64
    .line 65
    if-eqz v1, :cond_2

    .line 66
    move v6, v0

    .line 67
    goto :goto_2

    .line 68
    :cond_2
    move v6, v2

    .line 69
    .line 70
    :goto_2
    iget-object v4, p0, Landroidx/compose/foundation/ScrollingLayoutModifier$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    .line 71
    const/4 v7, 0x0

    .line 72
    const/4 v8, 0x0

    .line 73
    .line 74
    const/16 v9, 0xc

    .line 75
    const/4 v10, 0x0

    .line 76
    move-object v3, p1

    .line 77
    .line 78
    .line 79
    invoke-static/range {v3 .. v10}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->r(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFLe8/l;ILjava/lang/Object;)V

    .line 80
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
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/ScrollingLayoutModifier$measure$1;->a(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
