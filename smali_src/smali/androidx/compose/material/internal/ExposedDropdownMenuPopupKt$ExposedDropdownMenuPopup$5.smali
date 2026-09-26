.class final Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$5;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt;->a(Le8/a;Landroidx/compose/ui/window/PopupPositionProvider;Le8/p;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $popupLayout:Landroidx/compose/material/internal/PopupLayout;


# direct methods
.method constructor <init>(Landroidx/compose/material/internal/PopupLayout;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$5;->$popupLayout:Landroidx/compose/material/internal/PopupLayout;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 4
    .param p1    # Landroidx/compose/ui/layout/LayoutCoordinates;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "childCoordinates"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->B()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->a()J

    .line 16
    move-result-wide v0

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->f(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    .line 20
    move-result-wide v2

    .line 21
    .line 22
    .line 23
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 24
    move-result p1

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lg8/a;->c(F)I

    .line 28
    move-result p1

    .line 29
    .line 30
    .line 31
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 32
    move-result v2

    .line 33
    .line 34
    .line 35
    invoke-static {v2}, Lg8/a;->c(F)I

    .line 36
    move-result v2

    .line 37
    .line 38
    .line 39
    invoke-static {p1, v2}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 40
    move-result-wide v2

    .line 41
    .line 42
    iget-object p1, p0, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$5;->$popupLayout:Landroidx/compose/material/internal/PopupLayout;

    .line 43
    .line 44
    .line 45
    invoke-static {v2, v3, v0, v1}, Landroidx/compose/ui/unit/IntRectKt;->a(JJ)Landroidx/compose/ui/unit/IntRect;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroidx/compose/material/internal/PopupLayout;->o(Landroidx/compose/ui/unit/IntRect;)V

    .line 50
    .line 51
    iget-object p1, p0, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$5;->$popupLayout:Landroidx/compose/material/internal/PopupLayout;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Landroidx/compose/material/internal/PopupLayout;->t()V

    .line 55
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$5;->a(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
