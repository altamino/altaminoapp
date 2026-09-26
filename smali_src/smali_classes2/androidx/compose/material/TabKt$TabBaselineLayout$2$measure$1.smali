.class final Landroidx/compose/material/TabKt$TabBaselineLayout$2$measure$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/TabKt$TabBaselineLayout$2;->a(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
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
.field final synthetic $firstBaseline:Ljava/lang/Integer;

.field final synthetic $iconPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $lastBaseline:Ljava/lang/Integer;

.field final synthetic $tabHeight:I

.field final synthetic $tabWidth:I

.field final synthetic $textPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $this_Layout:Landroidx/compose/ui/layout/MeasureScope;


# direct methods
.method constructor <init>(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/MeasureScope;IILjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material/TabKt$TabBaselineLayout$2$measure$1;->$textPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p2, p0, Landroidx/compose/material/TabKt$TabBaselineLayout$2$measure$1;->$iconPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p3, p0, Landroidx/compose/material/TabKt$TabBaselineLayout$2$measure$1;->$this_Layout:Landroidx/compose/ui/layout/MeasureScope;

    iput p4, p0, Landroidx/compose/material/TabKt$TabBaselineLayout$2$measure$1;->$tabWidth:I

    iput p5, p0, Landroidx/compose/material/TabKt$TabBaselineLayout$2$measure$1;->$tabHeight:I

    iput-object p6, p0, Landroidx/compose/material/TabKt$TabBaselineLayout$2$measure$1;->$firstBaseline:Ljava/lang/Integer;

    iput-object p7, p0, Landroidx/compose/material/TabKt$TabBaselineLayout$2$measure$1;->$lastBaseline:Ljava/lang/Integer;

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
    iget-object v3, p0, Landroidx/compose/material/TabKt$TabBaselineLayout$2$measure$1;->$textPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    iget-object v4, p0, Landroidx/compose/material/TabKt$TabBaselineLayout$2$measure$1;->$iconPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 12
    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/compose/material/TabKt$TabBaselineLayout$2$measure$1;->$this_Layout:Landroidx/compose/ui/layout/MeasureScope;

    .line 16
    .line 17
    iget v5, p0, Landroidx/compose/material/TabKt$TabBaselineLayout$2$measure$1;->$tabWidth:I

    .line 18
    .line 19
    iget v6, p0, Landroidx/compose/material/TabKt$TabBaselineLayout$2$measure$1;->$tabHeight:I

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/compose/material/TabKt$TabBaselineLayout$2$measure$1;->$firstBaseline:Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 28
    move-result v7

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/compose/material/TabKt$TabBaselineLayout$2$measure$1;->$lastBaseline:Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 37
    move-result v8

    .line 38
    move-object v1, p1

    .line 39
    .line 40
    .line 41
    invoke-static/range {v1 .. v8}, Landroidx/compose/material/TabKt;->m(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;IIII)V

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_0
    if-eqz v3, :cond_1

    .line 45
    .line 46
    iget v0, p0, Landroidx/compose/material/TabKt$TabBaselineLayout$2$measure$1;->$tabHeight:I

    .line 47
    .line 48
    .line 49
    invoke-static {p1, v3, v0}, Landroidx/compose/material/TabKt;->n(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;I)V

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_1
    iget-object v0, p0, Landroidx/compose/material/TabKt$TabBaselineLayout$2$measure$1;->$iconPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    iget v1, p0, Landroidx/compose/material/TabKt$TabBaselineLayout$2$measure$1;->$tabHeight:I

    .line 57
    .line 58
    .line 59
    invoke-static {p1, v0, v1}, Landroidx/compose/material/TabKt;->n(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;I)V

    .line 60
    :cond_2
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
    invoke-virtual {p0, p1}, Landroidx/compose/material/TabKt$TabBaselineLayout$2$measure$1;->a(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
