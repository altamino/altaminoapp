.class final Landroidx/compose/material/SnackbarKt$OneRowSnackbar$2$measure$4;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SnackbarKt$OneRowSnackbar$2;->a(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
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
.field final synthetic $buttonPlaceX:I

.field final synthetic $buttonPlaceY:I

.field final synthetic $buttonPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $textPlaceY:I

.field final synthetic $textPlaceable:Landroidx/compose/ui/layout/Placeable;


# direct methods
.method constructor <init>(Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable;II)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material/SnackbarKt$OneRowSnackbar$2$measure$4;->$textPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput p2, p0, Landroidx/compose/material/SnackbarKt$OneRowSnackbar$2$measure$4;->$textPlaceY:I

    iput-object p3, p0, Landroidx/compose/material/SnackbarKt$OneRowSnackbar$2$measure$4;->$buttonPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput p4, p0, Landroidx/compose/material/SnackbarKt$OneRowSnackbar$2$measure$4;->$buttonPlaceX:I

    iput p5, p0, Landroidx/compose/material/SnackbarKt$OneRowSnackbar$2$measure$4;->$buttonPlaceY:I

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
    iget-object v2, p0, Landroidx/compose/material/SnackbarKt$OneRowSnackbar$2$measure$4;->$textPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 8
    const/4 v3, 0x0

    .line 9
    .line 10
    iget v4, p0, Landroidx/compose/material/SnackbarKt$OneRowSnackbar$2$measure$4;->$textPlaceY:I

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
    iget-object v2, p0, Landroidx/compose/material/SnackbarKt$OneRowSnackbar$2$measure$4;->$buttonPlaceable:Landroidx/compose/ui/layout/Placeable;

    .line 20
    .line 21
    iget v3, p0, Landroidx/compose/material/SnackbarKt$OneRowSnackbar$2$measure$4;->$buttonPlaceX:I

    .line 22
    .line 23
    iget v4, p0, Landroidx/compose/material/SnackbarKt$OneRowSnackbar$2$measure$4;->$buttonPlaceY:I

    .line 24
    .line 25
    .line 26
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->n(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 27
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
    invoke-virtual {p0, p1}, Landroidx/compose/material/SnackbarKt$OneRowSnackbar$2$measure$4;->a(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
