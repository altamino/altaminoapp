.class final Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;->a(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)Landroidx/compose/ui/layout/MeasureResult;
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
.field final synthetic $bodyPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $fabOffsetX:I

.field final synthetic $fabOffsetY:I

.field final synthetic $fabPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $sheetOffsetY:I

.field final synthetic $sheetPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $snackbarOffsetX:I

.field final synthetic $snackbarOffsetY:I

.field final synthetic $snackbarPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $topBarHeight:I

.field final synthetic $topBarPlaceable:Landroidx/compose/ui/layout/Placeable;


# direct methods
.method constructor <init>(Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;II)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$bodyPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput p2, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$topBarHeight:I

    iput-object p3, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$topBarPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput-object p4, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$sheetPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput p5, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$sheetOffsetY:I

    iput-object p6, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$fabPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput p7, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$fabOffsetX:I

    iput p8, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$fabOffsetY:I

    iput-object p9, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$snackbarPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput p10, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$snackbarOffsetX:I

    iput p11, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$snackbarOffsetY:I

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
    iget-object v2, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$bodyPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 8
    const/4 v3, 0x0

    .line 9
    .line 10
    iget v4, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$topBarHeight:I

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x4

    .line 13
    const/4 v7, 0x0

    .line 14
    move-object v1, p1

    .line 15
    .line 16
    .line 17
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->n(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 18
    .line 19
    iget-object v2, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$topBarPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x0

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
    :cond_0
    iget-object v2, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$sheetPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 33
    const/4 v3, 0x0

    .line 34
    .line 35
    iget v4, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$sheetOffsetY:I

    .line 36
    const/4 v5, 0x0

    .line 37
    const/4 v6, 0x4

    .line 38
    const/4 v7, 0x0

    .line 39
    move-object v1, p1

    .line 40
    .line 41
    .line 42
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->n(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 43
    .line 44
    iget-object v2, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$fabPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 45
    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    iget v3, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$fabOffsetX:I

    .line 49
    .line 50
    iget v4, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$fabOffsetY:I

    .line 51
    const/4 v5, 0x0

    .line 52
    const/4 v6, 0x4

    .line 53
    const/4 v7, 0x0

    .line 54
    move-object v1, p1

    .line 55
    .line 56
    .line 57
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->n(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 58
    .line 59
    :cond_1
    iget-object v2, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$snackbarPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 60
    .line 61
    iget v3, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$snackbarOffsetX:I

    .line 62
    .line 63
    iget v4, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->$snackbarOffsetY:I

    .line 64
    const/4 v5, 0x0

    .line 65
    const/4 v6, 0x4

    .line 66
    const/4 v7, 0x0

    .line 67
    move-object v1, p1

    .line 68
    .line 69
    .line 70
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->n(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 71
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
    invoke-virtual {p0, p1}, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;->a(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
