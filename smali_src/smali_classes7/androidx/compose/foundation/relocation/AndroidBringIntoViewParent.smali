.class final Landroidx/compose/foundation/relocation/AndroidBringIntoViewParent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/relocation/BringIntoViewParent;


# instance fields
.field private final view:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "view"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/compose/foundation/relocation/AndroidBringIntoViewParent;->view:Landroid/view/View;

    .line 11
    return-void
.end method


# virtual methods
.method public a(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/layout/LayoutCoordinates;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroidx/compose/ui/geometry/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/layout/LayoutCoordinates;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/geometry/Rect;",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->e(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    .line 4
    move-result-wide p2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2, p3}, Landroidx/compose/ui/geometry/Rect;->t(J)Landroidx/compose/ui/geometry/Rect;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    iget-object p2, p0, Landroidx/compose/foundation/relocation/AndroidBringIntoViewParent;->view:Landroid/view/View;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Landroidx/compose/foundation/relocation/BringIntoViewResponder_androidKt;->a(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/Rect;

    .line 14
    move-result-object p1

    .line 15
    const/4 p3, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p1, p3}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 19
    .line 20
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 21
    return-object p1
.end method
