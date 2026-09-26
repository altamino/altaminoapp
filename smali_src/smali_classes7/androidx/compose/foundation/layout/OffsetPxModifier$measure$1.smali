.class final Landroidx/compose/foundation/layout/OffsetPxModifier$measure$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/layout/OffsetPxModifier;->N0(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
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

.field final synthetic this$0:Landroidx/compose/foundation/layout/OffsetPxModifier;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/layout/OffsetPxModifier;Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/layout/OffsetPxModifier$measure$1;->this$0:Landroidx/compose/foundation/layout/OffsetPxModifier;

    iput-object p2, p0, Landroidx/compose/foundation/layout/OffsetPxModifier$measure$1;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    iput-object p3, p0, Landroidx/compose/foundation/layout/OffsetPxModifier$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 10
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
    iget-object v0, p0, Landroidx/compose/foundation/layout/OffsetPxModifier$measure$1;->this$0:Landroidx/compose/foundation/layout/OffsetPxModifier;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/foundation/layout/OffsetPxModifier;->a()Le8/l;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iget-object v2, p0, Landroidx/compose/foundation/layout/OffsetPxModifier$measure$1;->$this_measure:Landroidx/compose/ui/layout/MeasureScope;

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v2}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Landroidx/compose/ui/unit/IntOffset;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntOffset;->n()J

    .line 23
    move-result-wide v2

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/compose/foundation/layout/OffsetPxModifier$measure$1;->this$0:Landroidx/compose/foundation/layout/OffsetPxModifier;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/compose/foundation/layout/OffsetPxModifier;->b()Z

    .line 29
    move-result v0

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Landroidx/compose/foundation/layout/OffsetPxModifier$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    .line 34
    .line 35
    .line 36
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 37
    move-result v4

    .line 38
    .line 39
    .line 40
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 41
    move-result v5

    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v7, 0x0

    .line 44
    .line 45
    const/16 v8, 0xc

    .line 46
    const/4 v9, 0x0

    .line 47
    move-object v1, p1

    .line 48
    move-object v2, v0

    .line 49
    move v3, v4

    .line 50
    move v4, v5

    .line 51
    move v5, v6

    .line 52
    move-object v6, v7

    .line 53
    move v7, v8

    .line 54
    move-object v8, v9

    .line 55
    .line 56
    .line 57
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->r(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFLe8/l;ILjava/lang/Object;)V

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/layout/OffsetPxModifier$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    .line 61
    .line 62
    .line 63
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->j(J)I

    .line 64
    move-result v4

    .line 65
    .line 66
    .line 67
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->k(J)I

    .line 68
    move-result v5

    .line 69
    const/4 v6, 0x0

    .line 70
    const/4 v7, 0x0

    .line 71
    .line 72
    const/16 v8, 0xc

    .line 73
    const/4 v9, 0x0

    .line 74
    move-object v1, p1

    .line 75
    move-object v2, v0

    .line 76
    move v3, v4

    .line 77
    move v4, v5

    .line 78
    move v5, v6

    .line 79
    move-object v6, v7

    .line 80
    move v7, v8

    .line 81
    move-object v8, v9

    .line 82
    .line 83
    .line 84
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->v(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFLe8/l;ILjava/lang/Object;)V

    .line 85
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
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/OffsetPxModifier$measure$1;->a(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
