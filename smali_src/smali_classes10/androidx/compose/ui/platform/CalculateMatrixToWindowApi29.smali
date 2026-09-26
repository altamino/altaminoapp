.class final Landroidx/compose/ui/platform/CalculateMatrixToWindowApi29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/platform/CalculateMatrixToWindow;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation


# instance fields
.field private final tmpMatrix:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tmpPosition:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Matrix;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi29;->tmpMatrix:Landroid/graphics/Matrix;

    .line 11
    const/4 v0, 0x2

    .line 12
    .line 13
    new-array v0, v0, [I

    .line 14
    .line 15
    iput-object v0, p0, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi29;->tmpPosition:[I

    .line 16
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;[F)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .line 1
    .line 2
    const-string v0, "view"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "matrix"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi29;->tmpMatrix:Landroid/graphics/Matrix;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi29;->tmpMatrix:Landroid/graphics/Matrix;

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, Landroidx/compose/ui/platform/p;->a(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    :goto_0
    instance-of v1, v0, Landroid/view/View;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    move-object p1, v0

    .line 30
    .line 31
    check-cast p1, Landroid/view/View;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 35
    move-result-object v0

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi29;->tmpPosition:[I

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 42
    .line 43
    iget-object v0, p0, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi29;->tmpPosition:[I

    .line 44
    const/4 v1, 0x0

    .line 45
    .line 46
    aget v2, v0, v1

    .line 47
    const/4 v3, 0x1

    .line 48
    .line 49
    aget v4, v0, v3

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 53
    .line 54
    iget-object p1, p0, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi29;->tmpPosition:[I

    .line 55
    .line 56
    aget v0, p1, v1

    .line 57
    .line 58
    aget p1, p1, v3

    .line 59
    .line 60
    iget-object v1, p0, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi29;->tmpMatrix:Landroid/graphics/Matrix;

    .line 61
    sub-int/2addr v0, v2

    .line 62
    int-to-float v0, v0

    .line 63
    sub-int/2addr p1, v4

    .line 64
    int-to-float p1, p1

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 68
    .line 69
    iget-object p1, p0, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi29;->tmpMatrix:Landroid/graphics/Matrix;

    .line 70
    .line 71
    .line 72
    invoke-static {p2, p1}, Landroidx/compose/ui/graphics/AndroidMatrixConversions_androidKt;->b([FLandroid/graphics/Matrix;)V

    .line 73
    return-void
.end method
