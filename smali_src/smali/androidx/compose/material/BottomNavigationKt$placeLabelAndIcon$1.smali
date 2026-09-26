.class final Landroidx/compose/material/BottomNavigationKt$placeLabelAndIcon$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/BottomNavigationKt;->m(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;JF)Landroidx/compose/ui/layout/MeasureResult;
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
.field final synthetic $iconPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $iconPositionAnimationProgress:F

.field final synthetic $iconX:I

.field final synthetic $labelPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $labelX:I

.field final synthetic $labelY:I

.field final synthetic $offset:I

.field final synthetic $selectedIconY:I


# direct methods
.method constructor <init>(FLandroidx/compose/ui/layout/Placeable;IIILandroidx/compose/ui/layout/Placeable;II)V
    .locals 0

    iput p1, p0, Landroidx/compose/material/BottomNavigationKt$placeLabelAndIcon$1;->$iconPositionAnimationProgress:F

    iput-object p2, p0, Landroidx/compose/material/BottomNavigationKt$placeLabelAndIcon$1;->$labelPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput p3, p0, Landroidx/compose/material/BottomNavigationKt$placeLabelAndIcon$1;->$labelX:I

    iput p4, p0, Landroidx/compose/material/BottomNavigationKt$placeLabelAndIcon$1;->$labelY:I

    iput p5, p0, Landroidx/compose/material/BottomNavigationKt$placeLabelAndIcon$1;->$offset:I

    iput-object p6, p0, Landroidx/compose/material/BottomNavigationKt$placeLabelAndIcon$1;->$iconPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput p7, p0, Landroidx/compose/material/BottomNavigationKt$placeLabelAndIcon$1;->$iconX:I

    iput p8, p0, Landroidx/compose/material/BottomNavigationKt$placeLabelAndIcon$1;->$selectedIconY:I

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
    iget v0, p0, Landroidx/compose/material/BottomNavigationKt$placeLabelAndIcon$1;->$iconPositionAnimationProgress:F

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    cmpg-float v0, v0, v1

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object v2, p0, Landroidx/compose/material/BottomNavigationKt$placeLabelAndIcon$1;->$labelPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 16
    .line 17
    iget v3, p0, Landroidx/compose/material/BottomNavigationKt$placeLabelAndIcon$1;->$labelX:I

    .line 18
    .line 19
    iget v0, p0, Landroidx/compose/material/BottomNavigationKt$placeLabelAndIcon$1;->$labelY:I

    .line 20
    .line 21
    iget v1, p0, Landroidx/compose/material/BottomNavigationKt$placeLabelAndIcon$1;->$offset:I

    .line 22
    .line 23
    add-int v4, v0, v1

    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v6, 0x4

    .line 26
    const/4 v7, 0x0

    .line 27
    move-object v1, p1

    .line 28
    .line 29
    .line 30
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->n(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 31
    .line 32
    :goto_0
    iget-object v2, p0, Landroidx/compose/material/BottomNavigationKt$placeLabelAndIcon$1;->$iconPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 33
    .line 34
    iget v3, p0, Landroidx/compose/material/BottomNavigationKt$placeLabelAndIcon$1;->$iconX:I

    .line 35
    .line 36
    iget v0, p0, Landroidx/compose/material/BottomNavigationKt$placeLabelAndIcon$1;->$selectedIconY:I

    .line 37
    .line 38
    iget v1, p0, Landroidx/compose/material/BottomNavigationKt$placeLabelAndIcon$1;->$offset:I

    .line 39
    .line 40
    add-int v4, v0, v1

    .line 41
    const/4 v5, 0x0

    .line 42
    const/4 v6, 0x4

    .line 43
    const/4 v7, 0x0

    .line 44
    move-object v1, p1

    .line 45
    .line 46
    .line 47
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->n(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 48
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
    invoke-virtual {p0, p1}, Landroidx/compose/material/BottomNavigationKt$placeLabelAndIcon$1;->a(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
