.class public Lcom/narvii/widget/OverscrollListView;
.super Lcom/narvii/widget/NVListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/OverscrollListView$OverscrollListener;
    }
.end annotation


# instance fields
.field private dInited:Z

.field private downTouch:Z

.field private fixDragEmpty:Z

.field private isInTouch:Z

.field private listener:Lcom/narvii/widget/OverscrollListView$OverscrollListener;

.field private overscrollLock:Z

.field private overscrollY:I

.field private prevOSTouch:Z

.field private spring:Lcom/facebook/rebound/e;

.field private springEndValue:I

.field private springing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/NVListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/narvii/widget/OverscrollListView;->createSpring(Landroid/content/Context;)Lcom/facebook/rebound/e;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    iput-object p1, p0, Lcom/narvii/widget/OverscrollListView;->spring:Lcom/facebook/rebound/e;

    .line 10
    return-void
.end method

.method public static createSpring(Landroid/content/Context;)Lcom/facebook/rebound/e;
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/facebook/rebound/i;->g()Lcom/facebook/rebound/i;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/facebook/rebound/b;->c()Lcom/facebook/rebound/e;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/facebook/rebound/e;->p(Z)Lcom/facebook/rebound/e;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object p0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 20
    move-result-object p0

    .line 21
    .line 22
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 23
    .line 24
    const/high16 v1, 0x40c00000    # 6.0f

    .line 25
    mul-float/2addr p0, v1

    .line 26
    float-to-double v1, p0

    .line 27
    .line 28
    const-wide/high16 v3, 0x4020000000000000L    # 8.0

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v2, v3, v4}, Lcom/facebook/rebound/f;->a(DD)Lcom/facebook/rebound/f;

    .line 32
    move-result-object p0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p0}, Lcom/facebook/rebound/e;->r(Lcom/facebook/rebound/f;)Lcom/facebook/rebound/e;

    .line 36
    return-object v0
.end method

.method private startOverscroll(FF)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/widget/OverscrollListView;->springing:Z

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/widget/OverscrollListView;->spring:Lcom/facebook/rebound/e;

    .line 6
    float-to-double v1, p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/e;->m(D)Lcom/facebook/rebound/e;

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/widget/OverscrollListView;->spring:Lcom/facebook/rebound/e;

    .line 12
    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0, v1}, Lcom/facebook/rebound/e;->o(D)Lcom/facebook/rebound/e;

    .line 17
    const/4 p1, 0x0

    .line 18
    .line 19
    iput p1, p0, Lcom/narvii/widget/OverscrollListView;->springEndValue:I

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/widget/OverscrollListView;->spring:Lcom/facebook/rebound/e;

    .line 22
    .line 23
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 24
    mul-float/2addr p2, v0

    .line 25
    float-to-double v0, p2

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Lcom/facebook/rebound/e;->s(D)Lcom/facebook/rebound/e;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 32
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/OverscrollListView;->springing:Z

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/widget/OverscrollListView;->spring:Lcom/facebook/rebound/e;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/facebook/rebound/e;->c()D

    .line 10
    move-result-wide v0

    .line 11
    double-to-int v0, v0

    .line 12
    .line 13
    iget v1, p0, Lcom/narvii/widget/OverscrollListView;->overscrollY:I

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    if-eq v1, v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v2, v0, v2, v2}, Lcom/narvii/widget/OverscrollListView;->onOverScrolled(IIZZ)V

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/OverscrollListView;->spring:Lcom/facebook/rebound/e;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/facebook/rebound/e;->g()D

    .line 25
    move-result-wide v0

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    .line 29
    move-result-wide v0

    .line 30
    .line 31
    const-wide/high16 v3, 0x403e000000000000L    # 30.0

    .line 32
    .line 33
    cmpg-double v0, v0, v3

    .line 34
    .line 35
    if-gez v0, :cond_2

    .line 36
    .line 37
    iget v0, p0, Lcom/narvii/widget/OverscrollListView;->overscrollY:I

    .line 38
    .line 39
    iget v1, p0, Lcom/narvii/widget/OverscrollListView;->springEndValue:I

    .line 40
    sub-int/2addr v0, v1

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 44
    move-result v0

    .line 45
    const/4 v1, 0x4

    .line 46
    .line 47
    if-ge v0, v1, :cond_2

    .line 48
    .line 49
    iget v0, p0, Lcom/narvii/widget/OverscrollListView;->overscrollY:I

    .line 50
    .line 51
    iget v1, p0, Lcom/narvii/widget/OverscrollListView;->springEndValue:I

    .line 52
    .line 53
    if-eq v0, v1, :cond_1

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v2, v1, v2, v2}, Lcom/narvii/widget/OverscrollListView;->onOverScrolled(IIZZ)V

    .line 57
    .line 58
    :cond_1
    iput-boolean v2, p0, Lcom/narvii/widget/OverscrollListView;->springing:Z

    .line 59
    .line 60
    iget-object v0, p0, Lcom/narvii/widget/OverscrollListView;->listener:Lcom/narvii/widget/OverscrollListView$OverscrollListener;

    .line 61
    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    iget v1, p0, Lcom/narvii/widget/OverscrollListView;->overscrollY:I

    .line 65
    .line 66
    .line 67
    invoke-interface {v0, p0, v1}, Lcom/narvii/widget/OverscrollListView$OverscrollListener;->didSpringBack(Lcom/narvii/widget/OverscrollListView;I)V

    .line 68
    .line 69
    .line 70
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 71
    .line 72
    .line 73
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 74
    move-result v0

    .line 75
    .line 76
    iget v1, p0, Lcom/narvii/widget/OverscrollListView;->overscrollY:I

    .line 77
    .line 78
    if-eqz v1, :cond_4

    .line 79
    .line 80
    div-int/lit8 v1, v1, 0x2

    .line 81
    int-to-float v1, v1

    .line 82
    const/4 v2, 0x0

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 86
    .line 87
    .line 88
    :cond_4
    invoke-super {p0, p1}, Lcom/narvii/widget/NVListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 92
    return-void
.end method

.method public getOverscrollY()I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/OverscrollListView;->overscrollY:I

    .line 3
    .line 4
    div-int/lit8 v0, v0, 0x2

    .line 5
    return v0
.end method

.method public hasOverscrollLock()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/widget/OverscrollListView;->overscrollLock:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/narvii/widget/OverscrollListView;->springing:Z

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/narvii/widget/OverscrollListView;->prevOSTouch:Z

    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/narvii/widget/OverscrollListView;->overscrollLock:Z

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/narvii/widget/OverscrollListView;->releaseOverscrollLock(Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/widget/NVListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Lcom/narvii/widget/NVListView;->onLayout(ZIIII)V

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/narvii/widget/OverscrollListView;->dInited:Z

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 11
    move-result p1

    .line 12
    .line 13
    if-lez p1, :cond_0

    .line 14
    const/4 p1, 0x1

    .line 15
    .line 16
    iput-boolean p1, p0, Lcom/narvii/widget/OverscrollListView;->dInited:Z

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 20
    move-result p1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVListView;->setOverflingDistance(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 27
    move-result p1

    .line 28
    .line 29
    mul-int/lit8 p1, p1, 0x2

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollDistance(I)V

    .line 33
    :cond_0
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/widget/NVListView;->onOverScrolled(IIZZ)V

    .line 4
    .line 5
    iput p2, p0, Lcom/narvii/widget/OverscrollListView;->overscrollY:I

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/widget/OverscrollListView;->listener:Lcom/narvii/widget/OverscrollListView$OverscrollListener;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    div-int/lit8 p2, p2, 0x2

    .line 12
    .line 13
    iget-boolean p3, p0, Lcom/narvii/widget/OverscrollListView;->isInTouch:Z

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, p0, p2, p3}, Lcom/narvii/widget/OverscrollListView$OverscrollListener;->onOverscrolled(Lcom/narvii/widget/OverscrollListView;IZ)V

    .line 17
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/narvii/widget/OverscrollListView;->downTouch:Z

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/widget/NVListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 13
    move-result p1

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/narvii/widget/OverscrollListView;->downTouch:Z

    .line 17
    return p1
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/OverscrollListView;->springing:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/narvii/widget/OverscrollListView;->overscrollLock:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/widget/OverscrollListView;->prevOSTouch:Z

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    if-nez p9, :cond_2

    .line 17
    int-to-float p1, p4

    .line 18
    .line 19
    mul-int/lit8 p3, p2, 0x3c

    .line 20
    int-to-float p3, p3

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1, p3}, Lcom/narvii/widget/OverscrollListView;->startOverscroll(FF)V

    .line 24
    .line 25
    iput-boolean p9, p0, Lcom/narvii/widget/OverscrollListView;->prevOSTouch:Z

    .line 26
    .line 27
    iget-object p1, p0, Lcom/narvii/widget/OverscrollListView;->listener:Lcom/narvii/widget/OverscrollListView$OverscrollListener;

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    div-int/lit8 p4, p4, 0x2

    .line 32
    .line 33
    .line 34
    invoke-interface {p1, p0, p4, p2}, Lcom/narvii/widget/OverscrollListView$OverscrollListener;->willSpringBack(Lcom/narvii/widget/OverscrollListView;II)V

    .line 35
    :cond_1
    return v1

    .line 36
    .line 37
    :cond_2
    iput-boolean p9, p0, Lcom/narvii/widget/OverscrollListView;->prevOSTouch:Z

    .line 38
    .line 39
    iput-boolean p9, p0, Lcom/narvii/widget/OverscrollListView;->isInTouch:Z

    .line 40
    .line 41
    .line 42
    invoke-super/range {p0 .. p9}, Lcom/narvii/widget/NVListView;->overScrollBy(IIIIIIIIZ)Z

    .line 43
    move-result p1

    .line 44
    const/4 p2, 0x0

    .line 45
    .line 46
    iput-boolean p2, p0, Lcom/narvii/widget/OverscrollListView;->isInTouch:Z

    .line 47
    return p1

    .line 48
    :cond_3
    :goto_0
    return v1
.end method

.method public pointToPosition(II)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->pointToPosition(II)I

    .line 4
    move-result p1

    .line 5
    .line 6
    iget-boolean p2, p0, Lcom/narvii/widget/OverscrollListView;->fixDragEmpty:Z

    .line 7
    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    iget-boolean p2, p0, Lcom/narvii/widget/OverscrollListView;->downTouch:Z

    .line 11
    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    if-gez p1, :cond_1

    .line 15
    const/4 p1, 0x1

    .line 16
    .line 17
    :try_start_0
    const-class p2, Landroid/widget/AbsListView;

    .line 18
    .line 19
    const-string v0, "mTouchMode"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 30
    move-result v0

    .line 31
    .line 32
    if-gez v0, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p0, v0}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    :catch_0
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 40
    move-result p2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 44
    move-result v0

    .line 45
    add-int/2addr p2, v0

    .line 46
    sub-int/2addr p2, p1

    .line 47
    return p2

    .line 48
    :cond_1
    return p1
.end method

.method public releaseOverscrollLock(Z)V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/OverscrollListView;->overscrollLock:Z

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/narvii/widget/OverscrollListView;->overscrollLock:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    const/4 p1, 0x1

    .line 11
    .line 12
    iput-boolean p1, p0, Lcom/narvii/widget/OverscrollListView;->springing:Z

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/widget/OverscrollListView;->spring:Lcom/facebook/rebound/e;

    .line 15
    .line 16
    const-wide/16 v1, 0x0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v1, v2}, Lcom/facebook/rebound/e;->o(D)Lcom/facebook/rebound/e;

    .line 20
    .line 21
    iput v0, p0, Lcom/narvii/widget/OverscrollListView;->springEndValue:I

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 25
    :cond_1
    return-void
.end method

.method public setFixDragEmptyIssue(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/widget/OverscrollListView;->fixDragEmpty:Z

    return-void
.end method

.method public setOverscrollListener(Lcom/narvii/widget/OverscrollListView$OverscrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/OverscrollListView;->listener:Lcom/narvii/widget/OverscrollListView$OverscrollListener;

    return-void
.end method

.method public setOverscrollLock(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/widget/OverscrollListView;->springing:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    .line 9
    :goto_0
    iput-boolean v0, p0, Lcom/narvii/widget/OverscrollListView;->overscrollLock:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/widget/OverscrollListView;->spring:Lcom/facebook/rebound/e;

    .line 12
    .line 13
    iget v1, p0, Lcom/narvii/widget/OverscrollListView;->overscrollY:I

    .line 14
    int-to-double v1, v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/e;->m(D)Lcom/facebook/rebound/e;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/widget/OverscrollListView;->spring:Lcom/facebook/rebound/e;

    .line 20
    .line 21
    mul-int/lit8 p1, p1, 0x2

    .line 22
    int-to-double v1, p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/e;->o(D)Lcom/facebook/rebound/e;

    .line 26
    .line 27
    iput p1, p0, Lcom/narvii/widget/OverscrollListView;->springEndValue:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 31
    return-void
.end method

.method public setOverscrollY(I)V
    .locals 1

    .line 1
    .line 2
    mul-int/lit8 p1, p1, 0x2

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, p1, v0, v0}, Lcom/narvii/widget/OverscrollListView;->onOverScrolled(IIZZ)V

    .line 7
    return-void
.end method
