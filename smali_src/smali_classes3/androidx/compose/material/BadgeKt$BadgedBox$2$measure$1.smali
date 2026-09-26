.class final Landroidx/compose/material/BadgeKt$BadgedBox$2$measure$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/BadgeKt$BadgedBox$2;->a(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
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
.field final synthetic $anchorPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $badgePlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $this_Layout:Landroidx/compose/ui/layout/MeasureScope;


# direct methods
.method constructor <init>(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material/BadgeKt$BadgedBox$2$measure$1;->$badgePlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p2, p0, Landroidx/compose/material/BadgeKt$BadgedBox$2$measure$1;->$this_Layout:Landroidx/compose/ui/layout/MeasureScope;

    iput-object p3, p0, Landroidx/compose/material/BadgeKt$BadgedBox$2$measure$1;->$anchorPlaceable:Landroidx/compose/ui/layout/Placeable;

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
    iget-object v0, p0, Landroidx/compose/material/BadgeKt$BadgedBox$2$measure$1;->$badgePlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 11
    move-result v0

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/compose/material/BadgeKt$BadgedBox$2$measure$1;->$this_Layout:Landroidx/compose/ui/layout/MeasureScope;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroidx/compose/material/BadgeKt;->e()F

    .line 17
    move-result v2

    .line 18
    .line 19
    .line 20
    invoke-interface {v1, v2}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 21
    move-result v1

    .line 22
    .line 23
    mul-int/lit8 v1, v1, 0x2

    .line 24
    .line 25
    if-le v0, v1, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-static {}, Landroidx/compose/material/BadgeKt;->f()F

    .line 29
    move-result v0

    .line 30
    goto :goto_0

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-static {}, Landroidx/compose/material/BadgeKt;->d()F

    .line 34
    move-result v0

    .line 35
    .line 36
    :goto_0
    iget-object v2, p0, Landroidx/compose/material/BadgeKt$BadgedBox$2$measure$1;->$anchorPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 37
    const/4 v3, 0x0

    .line 38
    const/4 v4, 0x0

    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v6, 0x4

    .line 41
    const/4 v7, 0x0

    .line 42
    move-object v1, p1

    .line 43
    .line 44
    .line 45
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->n(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 46
    .line 47
    iget-object v1, p0, Landroidx/compose/material/BadgeKt$BadgedBox$2$measure$1;->$anchorPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 51
    move-result v1

    .line 52
    .line 53
    iget-object v2, p0, Landroidx/compose/material/BadgeKt$BadgedBox$2$measure$1;->$this_Layout:Landroidx/compose/ui/layout/MeasureScope;

    .line 54
    .line 55
    .line 56
    invoke-interface {v2, v0}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 57
    move-result v0

    .line 58
    .line 59
    add-int v4, v1, v0

    .line 60
    .line 61
    iget-object v0, p0, Landroidx/compose/material/BadgeKt$BadgedBox$2$measure$1;->$badgePlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 65
    move-result v0

    .line 66
    neg-int v0, v0

    .line 67
    .line 68
    div-int/lit8 v5, v0, 0x2

    .line 69
    .line 70
    iget-object v3, p0, Landroidx/compose/material/BadgeKt$BadgedBox$2$measure$1;->$badgePlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 71
    const/4 v6, 0x0

    .line 72
    const/4 v7, 0x4

    .line 73
    const/4 v8, 0x0

    .line 74
    move-object v2, p1

    .line 75
    .line 76
    .line 77
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->n(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 78
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
    invoke-virtual {p0, p1}, Landroidx/compose/material/BadgeKt$BadgedBox$2$measure$1;->a(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
