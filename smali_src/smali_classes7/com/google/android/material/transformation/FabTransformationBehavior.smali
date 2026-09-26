.class public abstract Lcom/google/android/material/transformation/FabTransformationBehavior;
.super Lcom/google/android/material/transformation/ExpandableTransformationBehavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transformation/FabTransformationBehavior$e;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private dependencyOriginalTranslationX:F

.field private dependencyOriginalTranslationY:F

.field private final tmpArray:[I

.field private final tmpRect:Landroid/graphics/Rect;

.field private final tmpRectF1:Landroid/graphics/RectF;

.field private final tmpRectF2:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 4
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpArray:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    .line 7
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 8
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpArray:[I

    return-void
.end method

.method private B(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Landroid/view/ViewGroup;

    .line 7
    return-object p1

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    return-object p1
.end method

.method private g(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    sget v0, Ld3/f;->mtrl_child_content_container:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->B(Landroid/view/View;)Landroid/view/ViewGroup;

    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    .line 15
    :cond_0
    instance-of v0, p1, Lcom/google/android/material/transformation/b;

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    instance-of v0, p1, Lcom/google/android/material/transformation/a;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    goto :goto_0

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->B(Landroid/view/View;)Landroid/view/ViewGroup;

    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    .line 29
    :cond_2
    :goto_0
    check-cast p1, Landroid/view/ViewGroup;

    .line 30
    const/4 v0, 0x0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->B(Landroid/view/View;)Landroid/view/ViewGroup;

    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method

.method private h(Landroid/view/View;Lcom/google/android/material/transformation/FabTransformationBehavior$e;Le3/i;Le3/i;FFFFLandroid/graphics/RectF;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/transformation/FabTransformationBehavior$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Le3/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Le3/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p5, p7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->o(Lcom/google/android/material/transformation/FabTransformationBehavior$e;Le3/i;FF)F

    .line 4
    move-result p3

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2, p4, p6, p8}, Lcom/google/android/material/transformation/FabTransformationBehavior;->o(Lcom/google/android/material/transformation/FabTransformationBehavior$e;Le3/i;FF)F

    .line 8
    move-result p2

    .line 9
    .line 10
    iget-object p4, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 14
    .line 15
    iget-object p5, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p5, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 19
    .line 20
    iget-object p4, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1, p4}, Lcom/google/android/material/transformation/FabTransformationBehavior;->p(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p4, p3, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p4, p5}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 30
    .line 31
    .line 32
    invoke-virtual {p9, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 33
    return-void
.end method

.method private i(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/transformation/FabTransformationBehavior;->p(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 4
    .line 5
    iget p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationX:F

    .line 6
    .line 7
    iget v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationY:F

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, p1, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 11
    return-void
.end method

.method private j(FFZLcom/google/android/material/transformation/FabTransformationBehavior$e;)Landroid/util/Pair;
    .locals 1
    .param p4    # Lcom/google/android/material/transformation/FabTransformationBehavior$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$e;",
            ")",
            "Landroid/util/Pair<",
            "Le3/i;",
            "Le3/i;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    cmpl-float p1, p1, v0

    .line 4
    .line 5
    if-eqz p1, :cond_4

    .line 6
    .line 7
    cmpl-float p1, p2, v0

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    if-eqz p3, :cond_1

    .line 13
    .line 14
    cmpg-float p2, p2, v0

    .line 15
    .line 16
    if-ltz p2, :cond_2

    .line 17
    .line 18
    :cond_1
    if-nez p3, :cond_3

    .line 19
    .line 20
    if-lez p1, :cond_3

    .line 21
    .line 22
    :cond_2
    iget-object p1, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$e;->timings:Le3/h;

    .line 23
    .line 24
    const-string p2, "translationXCurveUpwards"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Le3/h;->h(Ljava/lang/String;)Le3/i;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    iget-object p2, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$e;->timings:Le3/h;

    .line 31
    .line 32
    const-string p3, "translationYCurveUpwards"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p3}, Le3/h;->h(Ljava/lang/String;)Le3/i;

    .line 36
    move-result-object p2

    .line 37
    goto :goto_1

    .line 38
    .line 39
    :cond_3
    iget-object p1, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$e;->timings:Le3/h;

    .line 40
    .line 41
    const-string p2, "translationXCurveDownwards"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2}, Le3/h;->h(Ljava/lang/String;)Le3/i;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    iget-object p2, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$e;->timings:Le3/h;

    .line 48
    .line 49
    const-string p3, "translationYCurveDownwards"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, p3}, Le3/h;->h(Ljava/lang/String;)Le3/i;

    .line 53
    move-result-object p2

    .line 54
    goto :goto_1

    .line 55
    .line 56
    :cond_4
    :goto_0
    iget-object p1, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$e;->timings:Le3/h;

    .line 57
    .line 58
    const-string p2, "translationXLinear"

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, Le3/h;->h(Ljava/lang/String;)Le3/i;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    iget-object p2, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$e;->timings:Le3/h;

    .line 65
    .line 66
    const-string p3, "translationYLinear"

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, p3}, Le3/h;->h(Ljava/lang/String;)Le3/i;

    .line 70
    move-result-object p2

    .line 71
    .line 72
    :goto_1
    new-instance p3, Landroid/util/Pair;

    .line 73
    .line 74
    .line 75
    invoke-direct {p3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    return-object p3
.end method

.method private k(Landroid/view/View;Landroid/view/View;Le3/j;)F
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Le3/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->i(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->p(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/transformation/FabTransformationBehavior;->m(Landroid/view/View;Landroid/view/View;Le3/j;)F

    .line 14
    move-result p1

    .line 15
    neg-float p1, p1

    .line 16
    const/4 p2, 0x0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    .line 23
    move-result p1

    .line 24
    .line 25
    iget p2, v1, Landroid/graphics/RectF;->left:F

    .line 26
    sub-float/2addr p1, p2

    .line 27
    return p1
.end method

.method private l(Landroid/view/View;Landroid/view/View;Le3/j;)F
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Le3/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->i(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->p(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/transformation/FabTransformationBehavior;->n(Landroid/view/View;Landroid/view/View;Le3/j;)F

    .line 14
    move-result p1

    .line 15
    const/4 p2, 0x0

    .line 16
    neg-float p1, p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p2, p1}, Landroid/graphics/RectF;->offset(FF)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    .line 23
    move-result p1

    .line 24
    .line 25
    iget p2, v1, Landroid/graphics/RectF;->top:F

    .line 26
    sub-float/2addr p1, p2

    .line 27
    return p1
.end method

.method private m(Landroid/view/View;Landroid/view/View;Le3/j;)F
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Le3/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->i(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->p(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 11
    .line 12
    iget p1, p3, Le3/j;->gravity:I

    .line 13
    .line 14
    and-int/lit8 p1, p1, 0x7

    .line 15
    const/4 p2, 0x1

    .line 16
    .line 17
    if-eq p1, p2, :cond_2

    .line 18
    const/4 p2, 0x3

    .line 19
    .line 20
    if-eq p1, p2, :cond_1

    .line 21
    const/4 p2, 0x5

    .line 22
    .line 23
    if-eq p1, p2, :cond_0

    .line 24
    const/4 p1, 0x0

    .line 25
    goto :goto_1

    .line 26
    .line 27
    :cond_0
    iget p1, v1, Landroid/graphics/RectF;->right:F

    .line 28
    .line 29
    iget p2, v0, Landroid/graphics/RectF;->right:F

    .line 30
    :goto_0
    sub-float/2addr p1, p2

    .line 31
    goto :goto_1

    .line 32
    .line 33
    :cond_1
    iget p1, v1, Landroid/graphics/RectF;->left:F

    .line 34
    .line 35
    iget p2, v0, Landroid/graphics/RectF;->left:F

    .line 36
    goto :goto_0

    .line 37
    .line 38
    .line 39
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    .line 40
    move-result p1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    .line 44
    move-result p2

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :goto_1
    iget p2, p3, Le3/j;->xAdjustment:F

    .line 48
    add-float/2addr p1, p2

    .line 49
    return p1
.end method

.method private n(Landroid/view/View;Landroid/view/View;Le3/j;)F
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Le3/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->i(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->p(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 11
    .line 12
    iget p1, p3, Le3/j;->gravity:I

    .line 13
    .line 14
    and-int/lit8 p1, p1, 0x70

    .line 15
    .line 16
    const/16 p2, 0x10

    .line 17
    .line 18
    if-eq p1, p2, :cond_2

    .line 19
    .line 20
    const/16 p2, 0x30

    .line 21
    .line 22
    if-eq p1, p2, :cond_1

    .line 23
    .line 24
    const/16 p2, 0x50

    .line 25
    .line 26
    if-eq p1, p2, :cond_0

    .line 27
    const/4 p1, 0x0

    .line 28
    goto :goto_1

    .line 29
    .line 30
    :cond_0
    iget p1, v1, Landroid/graphics/RectF;->bottom:F

    .line 31
    .line 32
    iget p2, v0, Landroid/graphics/RectF;->bottom:F

    .line 33
    :goto_0
    sub-float/2addr p1, p2

    .line 34
    goto :goto_1

    .line 35
    .line 36
    :cond_1
    iget p1, v1, Landroid/graphics/RectF;->top:F

    .line 37
    .line 38
    iget p2, v0, Landroid/graphics/RectF;->top:F

    .line 39
    goto :goto_0

    .line 40
    .line 41
    .line 42
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    .line 43
    move-result p1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    .line 47
    move-result p2

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :goto_1
    iget p2, p3, Le3/j;->yAdjustment:F

    .line 51
    add-float/2addr p1, p2

    .line 52
    return p1
.end method

.method private o(Lcom/google/android/material/transformation/FabTransformationBehavior$e;Le3/i;FF)F
    .locals 8
    .param p1    # Lcom/google/android/material/transformation/FabTransformationBehavior$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Le3/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Le3/i;->c()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Le3/i;->d()J

    .line 8
    move-result-wide v2

    .line 9
    .line 10
    iget-object p1, p1, Lcom/google/android/material/transformation/FabTransformationBehavior$e;->timings:Le3/h;

    .line 11
    .line 12
    const-string v4, "expansion"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v4}, Le3/h;->h(Ljava/lang/String;)Le3/i;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Le3/i;->c()J

    .line 20
    move-result-wide v4

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Le3/i;->d()J

    .line 24
    move-result-wide v6

    .line 25
    add-long/2addr v4, v6

    .line 26
    .line 27
    const-wide/16 v6, 0x11

    .line 28
    add-long/2addr v4, v6

    .line 29
    sub-long/2addr v4, v0

    .line 30
    long-to-float p1, v4

    .line 31
    long-to-float v0, v2

    .line 32
    div-float/2addr p1, v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Le3/i;->e()Landroid/animation/TimeInterpolator;

    .line 36
    move-result-object p2

    .line 37
    .line 38
    .line 39
    invoke-interface {p2, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 40
    move-result p1

    .line 41
    .line 42
    .line 43
    invoke-static {p3, p4, p1}, Le3/a;->a(FFF)F

    .line 44
    move-result p1

    .line 45
    return p1
.end method

.method private p(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 9
    move-result v1

    .line 10
    int-to-float v1, v1

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpArray:[I

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 20
    const/4 v1, 0x0

    .line 21
    .line 22
    aget v1, v0, v1

    .line 23
    int-to-float v1, v1

    .line 24
    const/4 v2, 0x1

    .line 25
    .line 26
    aget v0, v0, v2

    .line 27
    int-to-float v0, v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, v1, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 34
    move-result v0

    .line 35
    neg-float v0, v0

    .line 36
    float-to-int v0, v0

    .line 37
    int-to-float v0, v0

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 41
    move-result p1

    .line 42
    neg-float p1, p1

    .line 43
    float-to-int p1, p1

    .line 44
    int-to-float p1, p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v0, p1}, Landroid/graphics/RectF;->offset(FF)V

    .line 48
    return-void
.end method

.method private q(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$e;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p5    # Lcom/google/android/material/transformation/FabTransformationBehavior$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$e;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    instance-of p1, p2, Landroid/view/ViewGroup;

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    instance-of p1, p2, Lcom/google/android/material/circularreveal/d;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    sget p1, Lcom/google/android/material/circularreveal/c;->STRATEGY:I

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    return-void

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-direct {p0, p2}, Lcom/google/android/material/transformation/FabTransformationBehavior;->g(Landroid/view/View;)Landroid/view/ViewGroup;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    if-nez p1, :cond_2

    .line 21
    return-void

    .line 22
    :cond_2
    const/4 p2, 0x0

    .line 23
    const/4 p7, 0x1

    .line 24
    const/4 v0, 0x0

    .line 25
    .line 26
    if-eqz p3, :cond_4

    .line 27
    .line 28
    if-nez p4, :cond_3

    .line 29
    .line 30
    sget-object p3, Le3/d;->CHILDREN_ALPHA:Landroid/util/Property;

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 34
    move-result-object p4

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3, p1, p4}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    .line 39
    :cond_3
    sget-object p3, Le3/d;->CHILDREN_ALPHA:Landroid/util/Property;

    .line 40
    .line 41
    new-array p4, p7, [F

    .line 42
    .line 43
    const/high16 p7, 0x3f800000    # 1.0f

    .line 44
    .line 45
    aput p7, p4, p2

    .line 46
    .line 47
    .line 48
    invoke-static {p1, p3, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 49
    move-result-object p1

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_4
    sget-object p3, Le3/d;->CHILDREN_ALPHA:Landroid/util/Property;

    .line 53
    .line 54
    new-array p4, p7, [F

    .line 55
    .line 56
    aput v0, p4, p2

    .line 57
    .line 58
    .line 59
    invoke-static {p1, p3, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    :goto_0
    iget-object p2, p5, Lcom/google/android/material/transformation/FabTransformationBehavior$e;->timings:Le3/h;

    .line 63
    .line 64
    const-string p3, "contentFade"

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, p3}, Le3/h;->h(Ljava/lang/String;)Le3/i;

    .line 68
    move-result-object p2

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, p1}, Le3/i;->a(Landroid/animation/Animator;)V

    .line 72
    .line 73
    .line 74
    invoke-interface {p6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method private r(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$e;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/material/transformation/FabTransformationBehavior$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$e;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    instance-of p7, p2, Lcom/google/android/material/circularreveal/d;

    .line 3
    .line 4
    if-nez p7, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    check-cast p2, Lcom/google/android/material/circularreveal/d;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->z(Landroid/view/View;)I

    .line 11
    move-result p1

    .line 12
    .line 13
    .line 14
    const p7, 0xffffff

    .line 15
    and-int/2addr p7, p1

    .line 16
    .line 17
    if-eqz p3, :cond_2

    .line 18
    .line 19
    if-nez p4, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-interface {p2, p1}, Lcom/google/android/material/circularreveal/d;->setCircularRevealScrimColor(I)V

    .line 23
    .line 24
    :cond_1
    sget-object p1, Lcom/google/android/material/circularreveal/d$d;->CIRCULAR_REVEAL_SCRIM_COLOR:Landroid/util/Property;

    .line 25
    .line 26
    .line 27
    filled-new-array {p7}, [I

    .line 28
    move-result-object p3

    .line 29
    .line 30
    .line 31
    invoke-static {p2, p1, p3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    .line 32
    move-result-object p1

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_2
    sget-object p3, Lcom/google/android/material/circularreveal/d$d;->CIRCULAR_REVEAL_SCRIM_COLOR:Landroid/util/Property;

    .line 36
    .line 37
    .line 38
    filled-new-array {p1}, [I

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-static {p2, p3, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-static {}, Le3/c;->b()Le3/c;

    .line 47
    move-result-object p2

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 51
    .line 52
    iget-object p2, p5, Lcom/google/android/material/transformation/FabTransformationBehavior$e;->timings:Le3/h;

    .line 53
    .line 54
    const-string p3, "color"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, p3}, Le3/h;->h(Ljava/lang/String;)Le3/i;

    .line 58
    move-result-object p2

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, p1}, Le3/i;->a(Landroid/animation/Animator;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {p6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method private s(Landroid/view/View;Landroid/view/View;ZLcom/google/android/material/transformation/FabTransformationBehavior$e;Ljava/util/List;)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/material/transformation/FabTransformationBehavior$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Z",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$e;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$e;->positioning:Le3/j;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->m(Landroid/view/View;Landroid/view/View;Le3/j;)F

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$e;->positioning:Le3/j;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->n(Landroid/view/View;Landroid/view/View;Le3/j;)F

    .line 12
    move-result p2

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/google/android/material/transformation/FabTransformationBehavior;->j(FFZLcom/google/android/material/transformation/FabTransformationBehavior$e;)Landroid/util/Pair;

    .line 16
    move-result-object p4

    .line 17
    .line 18
    iget-object v1, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Le3/i;

    .line 21
    .line 22
    iget-object p4, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p4, Le3/i;

    .line 25
    .line 26
    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 27
    const/4 v3, 0x1

    .line 28
    .line 29
    new-array v4, v3, [F

    .line 30
    .line 31
    if-eqz p3, :cond_0

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_0
    iget v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationX:F

    .line 35
    :goto_0
    const/4 v5, 0x0

    .line 36
    .line 37
    aput v0, v4, v5

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 44
    .line 45
    new-array v3, v3, [F

    .line 46
    .line 47
    if-eqz p3, :cond_1

    .line 48
    goto :goto_1

    .line 49
    .line 50
    :cond_1
    iget p2, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationY:F

    .line 51
    .line 52
    :goto_1
    aput p2, v3, v5

    .line 53
    .line 54
    .line 55
    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v0}, Le3/i;->a(Landroid/animation/Animator;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p4, p1}, Le3/i;->a(Landroid/animation/Animator;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    invoke-interface {p5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method private t(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$e;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/material/transformation/FabTransformationBehavior$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$e;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->y(Landroid/view/View;)F

    .line 4
    move-result p7

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->y(Landroid/view/View;)F

    .line 8
    move-result p1

    .line 9
    sub-float/2addr p7, p1

    .line 10
    const/4 p1, 0x0

    .line 11
    const/4 v0, 0x1

    .line 12
    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    if-nez p4, :cond_0

    .line 16
    neg-float p3, p7

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationZ(F)V

    .line 20
    .line 21
    :cond_0
    sget-object p3, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    .line 22
    .line 23
    new-array p4, v0, [F

    .line 24
    const/4 p7, 0x0

    .line 25
    .line 26
    aput p7, p4, p1

    .line 27
    .line 28
    .line 29
    invoke-static {p2, p3, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 30
    move-result-object p1

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_1
    sget-object p3, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    .line 34
    .line 35
    new-array p4, v0, [F

    .line 36
    neg-float p7, p7

    .line 37
    .line 38
    aput p7, p4, p1

    .line 39
    .line 40
    .line 41
    invoke-static {p2, p3, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    :goto_0
    iget-object p2, p5, Lcom/google/android/material/transformation/FabTransformationBehavior$e;->timings:Le3/h;

    .line 45
    .line 46
    const-string p3, "elevation"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, p3}, Le3/h;->h(Ljava/lang/String;)Le3/i;

    .line 50
    move-result-object p2

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p1}, Le3/i;->a(Landroid/animation/Animator;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {p6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method private u(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$e;FFLjava/util/List;Ljava/util/List;)V
    .locals 17
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/material/transformation/FabTransformationBehavior$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$e;",
            "FF",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v12, p0

    .line 3
    .line 4
    move-object/from16 v0, p1

    .line 5
    .line 6
    move-object/from16 v8, p2

    .line 7
    .line 8
    move-object/from16 v9, p5

    .line 9
    .line 10
    instance-of v1, v8, Lcom/google/android/material/circularreveal/d;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    move-object v13, v8

    .line 15
    .line 16
    check-cast v13, Lcom/google/android/material/circularreveal/d;

    .line 17
    .line 18
    iget-object v1, v9, Lcom/google/android/material/transformation/FabTransformationBehavior$e;->positioning:Le3/j;

    .line 19
    .line 20
    .line 21
    invoke-direct {v12, v0, v8, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->k(Landroid/view/View;Landroid/view/View;Le3/j;)F

    .line 22
    move-result v1

    .line 23
    .line 24
    iget-object v2, v9, Lcom/google/android/material/transformation/FabTransformationBehavior$e;->positioning:Le3/j;

    .line 25
    .line 26
    .line 27
    invoke-direct {v12, v0, v8, v2}, Lcom/google/android/material/transformation/FabTransformationBehavior;->l(Landroid/view/View;Landroid/view/View;Le3/j;)F

    .line 28
    move-result v10

    .line 29
    .line 30
    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 31
    .line 32
    iget-object v2, v12, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->i(Landroid/graphics/Rect;)Z

    .line 36
    .line 37
    iget-object v0, v12, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 41
    move-result v0

    .line 42
    int-to-float v0, v0

    .line 43
    .line 44
    const/high16 v2, 0x40000000    # 2.0f

    .line 45
    .line 46
    div-float v11, v0, v2

    .line 47
    .line 48
    iget-object v0, v9, Lcom/google/android/material/transformation/FabTransformationBehavior$e;->timings:Le3/h;

    .line 49
    .line 50
    const-string v2, "expansion"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2}, Le3/h;->h(Ljava/lang/String;)Le3/i;

    .line 54
    move-result-object v14

    .line 55
    .line 56
    if-eqz p3, :cond_3

    .line 57
    .line 58
    if-nez p4, :cond_1

    .line 59
    .line 60
    new-instance v0, Lcom/google/android/material/circularreveal/d$e;

    .line 61
    .line 62
    .line 63
    invoke-direct {v0, v1, v10, v11}, Lcom/google/android/material/circularreveal/d$e;-><init>(FFF)V

    .line 64
    .line 65
    .line 66
    invoke-interface {v13, v0}, Lcom/google/android/material/circularreveal/d;->setRevealInfo(Lcom/google/android/material/circularreveal/d$e;)V

    .line 67
    .line 68
    :cond_1
    if-eqz p4, :cond_2

    .line 69
    .line 70
    .line 71
    invoke-interface {v13}, Lcom/google/android/material/circularreveal/d;->getRevealInfo()Lcom/google/android/material/circularreveal/d$e;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    iget v0, v0, Lcom/google/android/material/circularreveal/d$e;->radius:F

    .line 75
    move v11, v0

    .line 76
    :cond_2
    const/4 v4, 0x0

    .line 77
    const/4 v5, 0x0

    .line 78
    move v2, v1

    .line 79
    move v3, v10

    .line 80
    .line 81
    move/from16 v6, p6

    .line 82
    .line 83
    move/from16 v7, p7

    .line 84
    .line 85
    .line 86
    invoke-static/range {v2 .. v7}, Ln3/a;->b(FFFFFF)F

    .line 87
    move-result v0

    .line 88
    .line 89
    .line 90
    invoke-static {v13, v1, v10, v0}, Lcom/google/android/material/circularreveal/a;->a(Lcom/google/android/material/circularreveal/d;FFF)Landroid/animation/Animator;

    .line 91
    move-result-object v9

    .line 92
    .line 93
    new-instance v0, Lcom/google/android/material/transformation/FabTransformationBehavior$d;

    .line 94
    .line 95
    .line 96
    invoke-direct {v0, v12, v13}, Lcom/google/android/material/transformation/FabTransformationBehavior$d;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Lcom/google/android/material/circularreveal/d;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v9, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v14}, Le3/i;->c()J

    .line 103
    move-result-wide v2

    .line 104
    float-to-int v4, v1

    .line 105
    float-to-int v5, v10

    .line 106
    .line 107
    move-object/from16 v0, p0

    .line 108
    .line 109
    move-object/from16 v1, p2

    .line 110
    move v6, v11

    .line 111
    .line 112
    move-object/from16 v7, p8

    .line 113
    .line 114
    .line 115
    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->x(Landroid/view/View;JIIFLjava/util/List;)V

    .line 116
    goto :goto_0

    .line 117
    .line 118
    .line 119
    :cond_3
    invoke-interface {v13}, Lcom/google/android/material/circularreveal/d;->getRevealInfo()Lcom/google/android/material/circularreveal/d$e;

    .line 120
    move-result-object v0

    .line 121
    .line 122
    iget v6, v0, Lcom/google/android/material/circularreveal/d$e;->radius:F

    .line 123
    .line 124
    .line 125
    invoke-static {v13, v1, v10, v11}, Lcom/google/android/material/circularreveal/a;->a(Lcom/google/android/material/circularreveal/d;FFF)Landroid/animation/Animator;

    .line 126
    move-result-object v15

    .line 127
    .line 128
    .line 129
    invoke-virtual {v14}, Le3/i;->c()J

    .line 130
    move-result-wide v2

    .line 131
    float-to-int v7, v1

    .line 132
    float-to-int v10, v10

    .line 133
    .line 134
    move-object/from16 v0, p0

    .line 135
    .line 136
    move-object/from16 v1, p2

    .line 137
    move v4, v7

    .line 138
    move v5, v10

    .line 139
    .line 140
    move/from16 v16, v7

    .line 141
    .line 142
    move-object/from16 v7, p8

    .line 143
    .line 144
    .line 145
    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->x(Landroid/view/View;JIIFLjava/util/List;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v14}, Le3/i;->c()J

    .line 149
    move-result-wide v2

    .line 150
    .line 151
    .line 152
    invoke-virtual {v14}, Le3/i;->d()J

    .line 153
    move-result-wide v4

    .line 154
    .line 155
    iget-object v0, v9, Lcom/google/android/material/transformation/FabTransformationBehavior$e;->timings:Le3/h;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Le3/h;->i()J

    .line 159
    move-result-wide v6

    .line 160
    .line 161
    move-object/from16 v0, p0

    .line 162
    .line 163
    move/from16 v8, v16

    .line 164
    move v9, v10

    .line 165
    move v10, v11

    .line 166
    .line 167
    move-object/from16 v11, p8

    .line 168
    .line 169
    .line 170
    invoke-direct/range {v0 .. v11}, Lcom/google/android/material/transformation/FabTransformationBehavior;->w(Landroid/view/View;JJJIIFLjava/util/List;)V

    .line 171
    move-object v9, v15

    .line 172
    .line 173
    .line 174
    :goto_0
    invoke-virtual {v14, v9}, Le3/i;->a(Landroid/animation/Animator;)V

    .line 175
    .line 176
    move-object/from16 v0, p8

    .line 177
    .line 178
    .line 179
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    invoke-static {v13}, Lcom/google/android/material/circularreveal/a;->b(Lcom/google/android/material/circularreveal/d;)Landroid/animation/Animator$AnimatorListener;

    .line 183
    move-result-object v0

    .line 184
    .line 185
    move-object/from16 v1, p9

    .line 186
    .line 187
    .line 188
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    return-void
.end method

.method private v(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$e;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p5    # Lcom/google/android/material/transformation/FabTransformationBehavior$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$e;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p2, Lcom/google/android/material/circularreveal/d;

    .line 3
    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    instance-of v0, p1, Landroid/widget/ImageView;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    move-object v0, p2

    .line 11
    .line 12
    check-cast v0, Lcom/google/android/material/circularreveal/d;

    .line 13
    .line 14
    check-cast p1, Landroid/widget/ImageView;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    return-void

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 25
    .line 26
    const/16 v1, 0xff

    .line 27
    .line 28
    if-eqz p3, :cond_3

    .line 29
    .line 30
    if-nez p4, :cond_2

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 34
    .line 35
    :cond_2
    sget-object p3, Le3/e;->DRAWABLE_ALPHA_COMPAT:Landroid/util/Property;

    .line 36
    const/4 p4, 0x0

    .line 37
    .line 38
    .line 39
    filled-new-array {p4}, [I

    .line 40
    move-result-object p4

    .line 41
    .line 42
    .line 43
    invoke-static {p1, p3, p4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    .line 44
    move-result-object p3

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_3
    sget-object p3, Le3/e;->DRAWABLE_ALPHA_COMPAT:Landroid/util/Property;

    .line 48
    .line 49
    .line 50
    filled-new-array {v1}, [I

    .line 51
    move-result-object p4

    .line 52
    .line 53
    .line 54
    invoke-static {p1, p3, p4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    .line 55
    move-result-object p3

    .line 56
    .line 57
    :goto_0
    new-instance p4, Lcom/google/android/material/transformation/FabTransformationBehavior$b;

    .line 58
    .line 59
    .line 60
    invoke-direct {p4, p0, p2}, Lcom/google/android/material/transformation/FabTransformationBehavior$b;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Landroid/view/View;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 64
    .line 65
    iget-object p2, p5, Lcom/google/android/material/transformation/FabTransformationBehavior$e;->timings:Le3/h;

    .line 66
    .line 67
    const-string p4, "iconFade"

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, p4}, Le3/h;->h(Ljava/lang/String;)Le3/i;

    .line 71
    move-result-object p2

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, p3}, Le3/i;->a(Landroid/animation/Animator;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {p6, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    new-instance p2, Lcom/google/android/material/transformation/FabTransformationBehavior$c;

    .line 80
    .line 81
    .line 82
    invoke-direct {p2, p0, v0, p1}, Lcom/google/android/material/transformation/FabTransformationBehavior$c;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Lcom/google/android/material/circularreveal/d;Landroid/graphics/drawable/Drawable;)V

    .line 83
    .line 84
    .line 85
    invoke-interface {p7, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_4
    :goto_1
    return-void
.end method

.method private w(Landroid/view/View;JJJIIFLjava/util/List;)V
    .locals 0
    .param p11    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "JJJIIF",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 1
    add-long/2addr p2, p4

    .line 2
    .line 3
    cmp-long p4, p2, p6

    .line 4
    .line 5
    if-gez p4, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-static {p1, p8, p9, p10, p10}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2, p3}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 13
    sub-long/2addr p6, p2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p6, p7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 17
    .line 18
    .line 19
    invoke-interface {p11, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_0
    return-void
.end method

.method private x(Landroid/view/View;JIIFLjava/util/List;)V
    .locals 3
    .param p7    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "JIIF",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    cmp-long v2, p2, v0

    .line 5
    .line 6
    if-lez v2, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p4, p5, p6, p6}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 17
    .line 18
    .line 19
    invoke-interface {p7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_0
    return-void
.end method

.method private y(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$e;Ljava/util/List;Ljava/util/List;Landroid/graphics/RectF;)V
    .locals 16
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/material/transformation/FabTransformationBehavior$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$e;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;",
            "Landroid/graphics/RectF;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v10, p0

    .line 3
    .line 4
    move-object/from16 v0, p1

    .line 5
    .line 6
    move-object/from16 v1, p2

    .line 7
    .line 8
    move/from16 v2, p3

    .line 9
    .line 10
    move-object/from16 v3, p5

    .line 11
    .line 12
    move-object/from16 v11, p6

    .line 13
    .line 14
    iget-object v4, v3, Lcom/google/android/material/transformation/FabTransformationBehavior$e;->positioning:Le3/j;

    .line 15
    .line 16
    .line 17
    invoke-direct {v10, v0, v1, v4}, Lcom/google/android/material/transformation/FabTransformationBehavior;->m(Landroid/view/View;Landroid/view/View;Le3/j;)F

    .line 18
    move-result v4

    .line 19
    .line 20
    iget-object v5, v3, Lcom/google/android/material/transformation/FabTransformationBehavior$e;->positioning:Le3/j;

    .line 21
    .line 22
    .line 23
    invoke-direct {v10, v0, v1, v5}, Lcom/google/android/material/transformation/FabTransformationBehavior;->n(Landroid/view/View;Landroid/view/View;Le3/j;)F

    .line 24
    move-result v0

    .line 25
    .line 26
    .line 27
    invoke-direct {v10, v4, v0, v2, v3}, Lcom/google/android/material/transformation/FabTransformationBehavior;->j(FFZLcom/google/android/material/transformation/FabTransformationBehavior$e;)Landroid/util/Pair;

    .line 28
    move-result-object v5

    .line 29
    .line 30
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 31
    move-object v12, v6

    .line 32
    .line 33
    check-cast v12, Le3/i;

    .line 34
    .line 35
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 36
    move-object v13, v5

    .line 37
    .line 38
    check-cast v13, Le3/i;

    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v6, 0x1

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    if-nez p4, :cond_0

    .line 45
    neg-float v2, v4

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 49
    neg-float v2, v0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 53
    .line 54
    :cond_0
    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 55
    .line 56
    new-array v7, v6, [F

    .line 57
    const/4 v8, 0x0

    .line 58
    .line 59
    aput v8, v7, v5

    .line 60
    .line 61
    .line 62
    invoke-static {v1, v2, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 63
    move-result-object v14

    .line 64
    .line 65
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 66
    .line 67
    new-array v6, v6, [F

    .line 68
    .line 69
    aput v8, v6, v5

    .line 70
    .line 71
    .line 72
    invoke-static {v1, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 73
    move-result-object v15

    .line 74
    neg-float v5, v4

    .line 75
    neg-float v6, v0

    .line 76
    const/4 v7, 0x0

    .line 77
    .line 78
    move-object/from16 v0, p0

    .line 79
    .line 80
    move-object/from16 v1, p2

    .line 81
    .line 82
    move-object/from16 v2, p5

    .line 83
    move-object v3, v12

    .line 84
    move-object v4, v13

    .line 85
    .line 86
    move-object/from16 v9, p8

    .line 87
    .line 88
    .line 89
    invoke-direct/range {v0 .. v9}, Lcom/google/android/material/transformation/FabTransformationBehavior;->h(Landroid/view/View;Lcom/google/android/material/transformation/FabTransformationBehavior$e;Le3/i;Le3/i;FFFFLandroid/graphics/RectF;)V

    .line 90
    goto :goto_0

    .line 91
    .line 92
    :cond_1
    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 93
    .line 94
    new-array v3, v6, [F

    .line 95
    neg-float v4, v4

    .line 96
    .line 97
    aput v4, v3, v5

    .line 98
    .line 99
    .line 100
    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 101
    move-result-object v14

    .line 102
    .line 103
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 104
    .line 105
    new-array v3, v6, [F

    .line 106
    neg-float v0, v0

    .line 107
    .line 108
    aput v0, v3, v5

    .line 109
    .line 110
    .line 111
    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 112
    move-result-object v15

    .line 113
    .line 114
    .line 115
    :goto_0
    invoke-virtual {v12, v14}, Le3/i;->a(Landroid/animation/Animator;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v13, v15}, Le3/i;->a(Landroid/animation/Animator;)V

    .line 119
    .line 120
    .line 121
    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method

.method private z(Landroid/view/View;)I
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->u(Landroid/view/View;)Landroid/content/res/ColorStateList;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getDrawableState()[I

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 14
    move-result v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return p1
.end method


# virtual methods
.method protected abstract A(Landroid/content/Context;Z)Lcom/google/android/material/transformation/FabTransformationBehavior$e;
.end method

.method protected f(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
    .locals 15
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    move-object v10, p0

    .line 2
    .line 3
    move/from16 v11, p3

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, v11}, Lcom/google/android/material/transformation/FabTransformationBehavior;->A(Landroid/content/Context;Z)Lcom/google/android/material/transformation/FabTransformationBehavior$e;

    .line 11
    move-result-object v12

    .line 12
    .line 13
    if-eqz v11, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    .line 17
    move-result v0

    .line 18
    .line 19
    iput v0, v10, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationX:F

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    .line 23
    move-result v0

    .line 24
    .line 25
    iput v0, v10, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationY:F

    .line 26
    .line 27
    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    new-instance v14, Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 36
    move-object v0, p0

    .line 37
    .line 38
    move-object/from16 v1, p1

    .line 39
    .line 40
    move-object/from16 v2, p2

    .line 41
    .line 42
    move/from16 v3, p3

    .line 43
    .line 44
    move/from16 v4, p4

    .line 45
    move-object v5, v12

    .line 46
    move-object v6, v13

    .line 47
    move-object v7, v14

    .line 48
    .line 49
    .line 50
    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->t(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$e;Ljava/util/List;Ljava/util/List;)V

    .line 51
    .line 52
    iget-object v9, v10, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 53
    move-object v0, p0

    .line 54
    .line 55
    move-object/from16 v1, p1

    .line 56
    .line 57
    move-object/from16 v2, p2

    .line 58
    .line 59
    move/from16 v3, p3

    .line 60
    .line 61
    move/from16 v4, p4

    .line 62
    move-object v5, v12

    .line 63
    move-object v6, v13

    .line 64
    move-object v7, v14

    .line 65
    move-object v8, v9

    .line 66
    .line 67
    .line 68
    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/transformation/FabTransformationBehavior;->y(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$e;Ljava/util/List;Ljava/util/List;Landroid/graphics/RectF;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    .line 72
    move-result v8

    .line 73
    .line 74
    .line 75
    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    .line 76
    move-result v9

    .line 77
    move-object v4, v12

    .line 78
    move-object v5, v13

    .line 79
    .line 80
    .line 81
    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/transformation/FabTransformationBehavior;->s(Landroid/view/View;Landroid/view/View;ZLcom/google/android/material/transformation/FabTransformationBehavior$e;Ljava/util/List;)V

    .line 82
    .line 83
    move/from16 v4, p4

    .line 84
    move-object v5, v12

    .line 85
    .line 86
    .line 87
    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->v(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$e;Ljava/util/List;Ljava/util/List;)V

    .line 88
    move v6, v8

    .line 89
    move v7, v9

    .line 90
    move-object v8, v13

    .line 91
    move-object v9, v14

    .line 92
    .line 93
    .line 94
    invoke-direct/range {v0 .. v9}, Lcom/google/android/material/transformation/FabTransformationBehavior;->u(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$e;FFLjava/util/List;Ljava/util/List;)V

    .line 95
    move-object v6, v13

    .line 96
    move-object v7, v14

    .line 97
    .line 98
    .line 99
    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->r(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$e;Ljava/util/List;Ljava/util/List;)V

    .line 100
    .line 101
    .line 102
    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->q(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$e;Ljava/util/List;Ljava/util/List;)V

    .line 103
    .line 104
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 105
    .line 106
    .line 107
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-static {v0, v13}, Le3/b;->a(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 111
    .line 112
    new-instance v1, Lcom/google/android/material/transformation/FabTransformationBehavior$a;

    .line 113
    .line 114
    move-object/from16 v2, p1

    .line 115
    .line 116
    move-object/from16 v3, p2

    .line 117
    .line 118
    .line 119
    invoke-direct {v1, p0, v11, v3, v2}, Lcom/google/android/material/transformation/FabTransformationBehavior$a;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;ZLandroid/view/View;Landroid/view/View;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 123
    .line 124
    .line 125
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 126
    move-result v1

    .line 127
    const/4 v2, 0x0

    .line 128
    .line 129
    :goto_0
    if-ge v2, v1, :cond_1

    .line 130
    .line 131
    .line 132
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 133
    move-result-object v3

    .line 134
    .line 135
    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 139
    .line 140
    add-int/lit8 v2, v2, 0x1

    .line 141
    goto :goto_0

    .line 142
    :cond_1
    return-object v0
.end method

.method public layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 4
    move-result p1

    .line 5
    .line 6
    const/16 v0, 0x8

    .line 7
    .line 8
    if-eq p1, v0, :cond_2

    .line 9
    .line 10
    instance-of p1, p3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    check-cast p3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getExpandedComponentIdHint()I

    .line 19
    move-result p1

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 25
    move-result p2

    .line 26
    .line 27
    if-ne p1, p2, :cond_1

    .line 28
    :cond_0
    const/4 v0, 0x1

    .line 29
    :cond_1
    return v0

    .line 30
    .line 31
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    const-string p2, "This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead."

    .line 34
    .line 35
    .line 36
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    throw p1
.end method

.method public onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V
    .locals 1
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    .line 2
    iget v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/16 v0, 0x50

    .line 7
    .line 8
    iput v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 9
    :cond_0
    return-void
.end method
