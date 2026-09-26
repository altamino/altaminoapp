.class final Landroidx/compose/ui/window/PopupLayoutHelperImpl29;
.super Landroidx/compose/ui/window/PopupLayoutHelperImpl;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/compose/ui/window/PopupLayoutHelperImpl;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;II)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "composeView"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x1

    .line 7
    .line 8
    new-array v0, v0, [Landroid/graphics/Rect;

    .line 9
    .line 10
    new-instance v1, Landroid/graphics/Rect;

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2, v2, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 15
    .line 16
    aput-object v1, v0, v2

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lkotlin/collections/t;->s([Ljava/lang/Object;)Ljava/util/List;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    .line 23
    invoke-static {p1, p2}, Landroidx/compose/foundation/b;->a(Landroid/view/View;Ljava/util/List;)V

    .line 24
    return-void
.end method
