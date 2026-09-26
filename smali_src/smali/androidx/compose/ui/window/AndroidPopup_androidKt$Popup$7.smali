.class final Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$7;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/window/AndroidPopup_androidKt;->a(Landroidx/compose/ui/window/PopupPositionProvider;Le8/a;Landroidx/compose/ui/window/PopupProperties;Le8/p;Landroidx/compose/runtime/Composer;II)V
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
.field final synthetic $popupLayout:Landroidx/compose/ui/window/PopupLayout;


# direct methods
.method constructor <init>(Landroidx/compose/ui/window/PopupLayout;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$7;->$popupLayout:Landroidx/compose/ui/window/PopupLayout;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 1
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
    iget-object v0, p0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$7;->$popupLayout:Landroidx/compose/ui/window/PopupLayout;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroidx/compose/ui/window/PopupLayout;->u(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    .line 18
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
    invoke-virtual {p0, p1}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$7;->a(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
