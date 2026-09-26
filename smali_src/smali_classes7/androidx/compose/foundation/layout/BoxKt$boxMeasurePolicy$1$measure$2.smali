.class final Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1$measure$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1;->a(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
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
.field final synthetic $alignment:Landroidx/compose/ui/Alignment;

.field final synthetic $boxHeight:I

.field final synthetic $boxWidth:I

.field final synthetic $measurable:Landroidx/compose/ui/layout/Measurable;

.field final synthetic $placeable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $this_MeasurePolicy:Landroidx/compose/ui/layout/MeasureScope;


# direct methods
.method constructor <init>(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/layout/MeasureScope;IILandroidx/compose/ui/Alignment;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1$measure$2;->$placeable:Landroidx/compose/ui/layout/Placeable;

    iput-object p2, p0, Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1$measure$2;->$measurable:Landroidx/compose/ui/layout/Measurable;

    iput-object p3, p0, Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1$measure$2;->$this_MeasurePolicy:Landroidx/compose/ui/layout/MeasureScope;

    iput p4, p0, Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1$measure$2;->$boxWidth:I

    iput p5, p0, Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1$measure$2;->$boxHeight:I

    iput-object p6, p0, Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1$measure$2;->$alignment:Landroidx/compose/ui/Alignment;

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
    iget-object v2, p0, Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1$measure$2;->$placeable:Landroidx/compose/ui/layout/Placeable;

    .line 8
    .line 9
    iget-object v3, p0, Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1$measure$2;->$measurable:Landroidx/compose/ui/layout/Measurable;

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1$measure$2;->$this_MeasurePolicy:Landroidx/compose/ui/layout/MeasureScope;

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 15
    move-result-object v4

    .line 16
    .line 17
    iget v5, p0, Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1$measure$2;->$boxWidth:I

    .line 18
    .line 19
    iget v6, p0, Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1$measure$2;->$boxHeight:I

    .line 20
    .line 21
    iget-object v7, p0, Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1$measure$2;->$alignment:Landroidx/compose/ui/Alignment;

    .line 22
    move-object v1, p1

    .line 23
    .line 24
    .line 25
    invoke-static/range {v1 .. v7}, Landroidx/compose/foundation/layout/BoxKt;->c(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/unit/LayoutDirection;IILandroidx/compose/ui/Alignment;)V

    .line 26
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
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1$measure$2;->a(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
