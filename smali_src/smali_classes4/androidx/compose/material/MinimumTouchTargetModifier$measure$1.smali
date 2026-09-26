.class final Landroidx/compose/material/MinimumTouchTargetModifier$measure$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/MinimumTouchTargetModifier;->N0(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
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
.field final synthetic $height:I

.field final synthetic $placeable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $width:I


# direct methods
.method constructor <init>(ILandroidx/compose/ui/layout/Placeable;I)V
    .locals 0

    iput p1, p0, Landroidx/compose/material/MinimumTouchTargetModifier$measure$1;->$width:I

    iput-object p2, p0, Landroidx/compose/material/MinimumTouchTargetModifier$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    iput p3, p0, Landroidx/compose/material/MinimumTouchTargetModifier$measure$1;->$height:I

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
    iget v0, p0, Landroidx/compose/material/MinimumTouchTargetModifier$measure$1;->$width:I

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/material/MinimumTouchTargetModifier$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 13
    move-result v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    int-to-float v0, v0

    .line 16
    .line 17
    const/high16 v1, 0x40000000    # 2.0f

    .line 18
    div-float/2addr v0, v1

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lg8/a;->c(F)I

    .line 22
    move-result v4

    .line 23
    .line 24
    iget v0, p0, Landroidx/compose/material/MinimumTouchTargetModifier$measure$1;->$height:I

    .line 25
    .line 26
    iget-object v2, p0, Landroidx/compose/material/MinimumTouchTargetModifier$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 30
    move-result v2

    .line 31
    sub-int/2addr v0, v2

    .line 32
    int-to-float v0, v0

    .line 33
    div-float/2addr v0, v1

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lg8/a;->c(F)I

    .line 37
    move-result v5

    .line 38
    .line 39
    iget-object v3, p0, Landroidx/compose/material/MinimumTouchTargetModifier$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    .line 40
    const/4 v6, 0x0

    .line 41
    const/4 v7, 0x4

    .line 42
    const/4 v8, 0x0

    .line 43
    move-object v2, p1

    .line 44
    .line 45
    .line 46
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->j(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 47
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
    invoke-virtual {p0, p1}, Landroidx/compose/material/MinimumTouchTargetModifier$measure$1;->a(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
