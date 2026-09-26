.class Lcom/google/android/material/behavior/SwipeDismissBehavior$a;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/behavior/SwipeDismissBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final INVALID_POINTER_ID:I = -0x1


# instance fields
.field private activePointerId:I

.field private originalCapturedViewLeft:I

.field final synthetic this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;


# direct methods
.method constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    .line 6
    const/4 p1, -0x1

    .line 7
    .line 8
    iput p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->activePointerId:I

    .line 9
    return-void
.end method

.method private a(Landroid/view/View;F)Z
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    cmpl-float v1, p2, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    .line 7
    if-eqz v1, :cond_7

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->D(Landroid/view/View;)I

    .line 11
    move-result p1

    .line 12
    .line 13
    if-ne p1, v3, :cond_0

    .line 14
    move p1, v3

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move p1, v2

    .line 17
    .line 18
    :goto_0
    iget-object v4, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 19
    .line 20
    iget v4, v4, Lcom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    .line 21
    const/4 v5, 0x2

    .line 22
    .line 23
    if-ne v4, v5, :cond_1

    .line 24
    return v3

    .line 25
    .line 26
    :cond_1
    if-nez v4, :cond_4

    .line 27
    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    cmpg-float p1, p2, v0

    .line 31
    .line 32
    if-gez p1, :cond_3

    .line 33
    :goto_1
    move v2, v3

    .line 34
    goto :goto_2

    .line 35
    .line 36
    :cond_2
    if-lez v1, :cond_3

    .line 37
    goto :goto_1

    .line 38
    :cond_3
    :goto_2
    return v2

    .line 39
    .line 40
    :cond_4
    if-ne v4, v3, :cond_6

    .line 41
    .line 42
    if-eqz p1, :cond_5

    .line 43
    .line 44
    if-lez v1, :cond_6

    .line 45
    :goto_3
    move v2, v3

    .line 46
    goto :goto_4

    .line 47
    .line 48
    :cond_5
    cmpg-float p1, p2, v0

    .line 49
    .line 50
    if-gez p1, :cond_6

    .line 51
    goto :goto_3

    .line 52
    :cond_6
    :goto_4
    return v2

    .line 53
    .line 54
    .line 55
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 56
    move-result p2

    .line 57
    .line 58
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->originalCapturedViewLeft:I

    .line 59
    sub-int/2addr p2, v0

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 63
    move-result p1

    .line 64
    int-to-float p1, p1

    .line 65
    .line 66
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 67
    .line 68
    iget v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->dragDismissThreshold:F

    .line 69
    mul-float/2addr p1, v0

    .line 70
    .line 71
    .line 72
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 73
    move-result p1

    .line 74
    .line 75
    .line 76
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 77
    move-result p2

    .line 78
    .line 79
    if-lt p2, p1, :cond_8

    .line 80
    move v2, v3

    .line 81
    :cond_8
    return v2
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->D(Landroid/view/View;)I

    .line 4
    move-result p3

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    if-ne p3, v0, :cond_0

    .line 8
    move p3, v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p3, 0x0

    .line 11
    .line 12
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 13
    .line 14
    iget v1, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    .line 15
    .line 16
    if-nez v1, :cond_2

    .line 17
    .line 18
    if-eqz p3, :cond_1

    .line 19
    .line 20
    iget p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->originalCapturedViewLeft:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 24
    move-result p1

    .line 25
    sub-int/2addr p3, p1

    .line 26
    .line 27
    iget p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->originalCapturedViewLeft:I

    .line 28
    goto :goto_2

    .line 29
    .line 30
    :cond_1
    iget p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->originalCapturedViewLeft:I

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 34
    move-result p1

    .line 35
    :goto_1
    add-int/2addr p1, p3

    .line 36
    goto :goto_2

    .line 37
    .line 38
    :cond_2
    if-ne v1, v0, :cond_4

    .line 39
    .line 40
    if-eqz p3, :cond_3

    .line 41
    .line 42
    iget p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->originalCapturedViewLeft:I

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 46
    move-result p1

    .line 47
    goto :goto_1

    .line 48
    .line 49
    :cond_3
    iget p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->originalCapturedViewLeft:I

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 53
    move-result p1

    .line 54
    sub-int/2addr p3, p1

    .line 55
    .line 56
    iget p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->originalCapturedViewLeft:I

    .line 57
    goto :goto_2

    .line 58
    .line 59
    :cond_4
    iget p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->originalCapturedViewLeft:I

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 63
    move-result v0

    .line 64
    sub-int/2addr p3, v0

    .line 65
    .line 66
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->originalCapturedViewLeft:I

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 70
    move-result p1

    .line 71
    add-int/2addr p1, v0

    .line 72
    .line 73
    .line 74
    :goto_2
    invoke-static {p3, p2, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->clamp(III)I

    .line 75
    move-result p1

    .line 76
    return p1
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iput p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->activePointerId:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 6
    move-result p2

    .line 7
    .line 8
    iput p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->originalCapturedViewLeft:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    const/4 p2, 0x1

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 19
    :cond_0
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->listener:Lcom/google/android/material/behavior/SwipeDismissBehavior$c;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior$c;->b(I)V

    .line 10
    :cond_0
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->originalCapturedViewLeft:I

    .line 3
    int-to-float p3, p3

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 7
    move-result p4

    .line 8
    int-to-float p4, p4

    .line 9
    .line 10
    iget-object p5, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 11
    .line 12
    iget p5, p5, Lcom/google/android/material/behavior/SwipeDismissBehavior;->alphaStartSwipeDistance:F

    .line 13
    mul-float/2addr p4, p5

    .line 14
    add-float/2addr p3, p4

    .line 15
    .line 16
    iget p4, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->originalCapturedViewLeft:I

    .line 17
    int-to-float p4, p4

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 21
    move-result p5

    .line 22
    int-to-float p5, p5

    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 25
    .line 26
    iget v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->alphaEndSwipeDistance:F

    .line 27
    mul-float/2addr p5, v0

    .line 28
    add-float/2addr p4, p5

    .line 29
    int-to-float p2, p2

    .line 30
    .line 31
    cmpg-float p5, p2, p3

    .line 32
    .line 33
    const/high16 v0, 0x3f800000    # 1.0f

    .line 34
    .line 35
    if-gtz p5, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_0
    cmpl-float p5, p2, p4

    .line 42
    const/4 v1, 0x0

    .line 43
    .line 44
    if-ltz p5, :cond_1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 48
    goto :goto_0

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-static {p3, p4, p2}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->d(FFF)F

    .line 52
    move-result p2

    .line 53
    .line 54
    sub-float p2, v0, p2

    .line 55
    .line 56
    .line 57
    invoke-static {v1, p2, v0}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b(FFF)F

    .line 58
    move-result p2

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 62
    :goto_0
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 p3, -0x1

    .line 2
    .line 3
    iput p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->activePointerId:I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 7
    move-result p3

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->a(Landroid/view/View;F)Z

    .line 11
    move-result p2

    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 17
    move-result p2

    .line 18
    .line 19
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->originalCapturedViewLeft:I

    .line 20
    .line 21
    if-ge p2, v0, :cond_0

    .line 22
    sub-int/2addr v0, p3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    add-int/2addr v0, p3

    .line 25
    :goto_0
    const/4 p2, 0x1

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :cond_1
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->originalCapturedViewLeft:I

    .line 29
    const/4 p2, 0x0

    .line 30
    .line 31
    :goto_1
    iget-object p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 32
    .line 33
    iget-object p3, p3, Lcom/google/android/material/behavior/SwipeDismissBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 37
    move-result v1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3, v0, v1}, Landroidx/customview/widget/ViewDragHelper;->P(II)Z

    .line 41
    move-result p3

    .line 42
    .line 43
    if-eqz p3, :cond_2

    .line 44
    .line 45
    new-instance p3, Lcom/google/android/material/behavior/SwipeDismissBehavior$d;

    .line 46
    .line 47
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 48
    .line 49
    .line 50
    invoke-direct {p3, v0, p1, p2}, Lcom/google/android/material/behavior/SwipeDismissBehavior$d;-><init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;Landroid/view/View;Z)V

    .line 51
    .line 52
    .line 53
    invoke-static {p1, p3}, Landroidx/core/view/ViewCompat;->l0(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 54
    goto :goto_2

    .line 55
    .line 56
    :cond_2
    if-eqz p2, :cond_3

    .line 57
    .line 58
    iget-object p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 59
    .line 60
    iget-object p2, p2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->listener:Lcom/google/android/material/behavior/SwipeDismissBehavior$c;

    .line 61
    .line 62
    if-eqz p2, :cond_3

    .line 63
    .line 64
    .line 65
    invoke-interface {p2, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior$c;->a(Landroid/view/View;)V

    .line 66
    :cond_3
    :goto_2
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->activePointerId:I

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    if-ne v0, p2, :cond_1

    .line 8
    .line 9
    :cond_0
    iget-object p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a(Landroid/view/View;)Z

    .line 13
    move-result p1

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    const/4 p1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 p1, 0x0

    .line 19
    :goto_0
    return p1
.end method
