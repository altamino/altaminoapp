.class public Lcom/narvii/widget/OverscrollListView;
.super Lcom/narvii/widget/NVListView;
.source "OverscrollListView.java"


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

.field private spring:Lcom/facebook/rebound/Spring;

.field private springEndValue:I

.field private springing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/NVListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-static {p1}, Lcom/narvii/widget/OverscrollListView;->createSpring(Landroid/content/Context;)Lcom/facebook/rebound/Spring;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/OverscrollListView;->spring:Lcom/facebook/rebound/Spring;

    return-void
.end method

.method public static createSpring(Landroid/content/Context;)Lcom/facebook/rebound/Spring;
    .locals 5

    .line 43
    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/rebound/BaseSpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v0

    const/4 v1, 0x1

    .line 44
    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->setOvershootClampingEnabled(Z)Lcom/facebook/rebound/Spring;

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float p0, p0, v1

    float-to-double v1, p0

    const-wide/high16 v3, 0x4020000000000000L    # 8.0

    .line 46
    invoke-static {v1, v2, v3, v4}, Lcom/facebook/rebound/SpringConfig;->fromOrigamiTensionAndFriction(DD)Lcom/facebook/rebound/SpringConfig;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    return-object v0
.end method

.method private startOverscroll(FF)V
    .locals 3

    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Lcom/narvii/widget/OverscrollListView;->springing:Z

    .line 141
    iget-object v0, p0, Lcom/narvii/widget/OverscrollListView;->spring:Lcom/facebook/rebound/Spring;

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    .line 142
    iget-object p1, p0, Lcom/narvii/widget/OverscrollListView;->spring:Lcom/facebook/rebound/Spring;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    const/4 p1, 0x0

    .line 143
    iput p1, p0, Lcom/narvii/widget/OverscrollListView;->springEndValue:I

    .line 144
    iget-object p1, p0, Lcom/narvii/widget/OverscrollListView;->spring:Lcom/facebook/rebound/Spring;

    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float p2, p2, v0

    float-to-double v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/facebook/rebound/Spring;->setVelocity(D)Lcom/facebook/rebound/Spring;

    .line 145
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 102
    iget-boolean v0, p0, Lcom/narvii/widget/OverscrollListView;->springing:Z

    if-eqz v0, :cond_3

    .line 103
    iget-object v0, p0, Lcom/narvii/widget/OverscrollListView;->spring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    double-to-int v0, v0

    .line 104
    iget v1, p0, Lcom/narvii/widget/OverscrollListView;->overscrollY:I

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    .line 105
    invoke-virtual {p0, v2, v0, v2, v2}, Lcom/narvii/widget/OverscrollListView;->onOverScrolled(IIZZ)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/OverscrollListView;->spring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->getVelocity()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v3, 0x403e000000000000L    # 30.0

    cmpg-double v5, v0, v3

    if-gez v5, :cond_2

    iget v0, p0, Lcom/narvii/widget/OverscrollListView;->overscrollY:I

    iget v1, p0, Lcom/narvii/widget/OverscrollListView;->springEndValue:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    .line 108
    iget v0, p0, Lcom/narvii/widget/OverscrollListView;->overscrollY:I

    iget v1, p0, Lcom/narvii/widget/OverscrollListView;->springEndValue:I

    if-eq v0, v1, :cond_1

    .line 109
    invoke-virtual {p0, v2, v1, v2, v2}, Lcom/narvii/widget/OverscrollListView;->onOverScrolled(IIZZ)V

    .line 111
    :cond_1
    iput-boolean v2, p0, Lcom/narvii/widget/OverscrollListView;->springing:Z

    .line 112
    iget-object v0, p0, Lcom/narvii/widget/OverscrollListView;->listener:Lcom/narvii/widget/OverscrollListView$OverscrollListener;

    if-eqz v0, :cond_2

    .line 113
    iget v1, p0, Lcom/narvii/widget/OverscrollListView;->overscrollY:I

    invoke-interface {v0, p0, v1}, Lcom/narvii/widget/OverscrollListView$OverscrollListener;->didSpringBack(Lcom/narvii/widget/OverscrollListView;I)V

    .line 116
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 119
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 120
    iget v1, p0, Lcom/narvii/widget/OverscrollListView;->overscrollY:I

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    .line 121
    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 123
    :cond_4
    invoke-super {p0, p1}, Lcom/narvii/widget/NVListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 124
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getOverscrollY()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/narvii/widget/OverscrollListView;->overscrollY:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public hasOverscrollLock()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/narvii/widget/OverscrollListView;->overscrollLock:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 129
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/narvii/widget/OverscrollListView;->springing:Z

    const/4 v1, 0x1

    .line 131
    iput-boolean v1, p0, Lcom/narvii/widget/OverscrollListView;->prevOSTouch:Z

    .line 132
    iget-boolean v1, p0, Lcom/narvii/widget/OverscrollListView;->overscrollLock:Z

    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {p0, v0}, Lcom/narvii/widget/OverscrollListView;->releaseOverscrollLock(Z)V

    .line 136
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/widget/NVListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 64
    invoke-super/range {p0 .. p5}, Lcom/narvii/widget/NVListView;->onLayout(ZIIII)V

    .line 65
    iget-boolean p1, p0, Lcom/narvii/widget/OverscrollListView;->dInited:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 66
    iput-boolean p1, p0, Lcom/narvii/widget/OverscrollListView;->dInited:Z

    .line 67
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVListView;->setOverflingDistance(I)V

    .line 68
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVListView;->setOverscrollDistance(I)V

    :cond_0
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 0

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/widget/NVListView;->onOverScrolled(IIZZ)V

    .line 75
    iput p2, p0, Lcom/narvii/widget/OverscrollListView;->overscrollY:I

    .line 76
    iget-object p1, p0, Lcom/narvii/widget/OverscrollListView;->listener:Lcom/narvii/widget/OverscrollListView$OverscrollListener;

    if-eqz p1, :cond_0

    .line 77
    div-int/lit8 p2, p2, 0x2

    iget-boolean p3, p0, Lcom/narvii/widget/OverscrollListView;->isInTouch:Z

    invoke-interface {p1, p0, p2, p3}, Lcom/narvii/widget/OverscrollListView$OverscrollListener;->onOverscrolled(Lcom/narvii/widget/OverscrollListView;IZ)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 205
    iput-boolean v0, p0, Lcom/narvii/widget/OverscrollListView;->downTouch:Z

    .line 207
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/widget/NVListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 v0, 0x0

    .line 208
    iput-boolean v0, p0, Lcom/narvii/widget/OverscrollListView;->downTouch:Z

    return p1
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 2

    .line 83
    iget-boolean v0, p0, Lcom/narvii/widget/OverscrollListView;->springing:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/narvii/widget/OverscrollListView;->overscrollLock:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/widget/OverscrollListView;->prevOSTouch:Z

    if-eqz v0, :cond_2

    if-nez p9, :cond_2

    int-to-float p1, p4

    mul-int/lit8 p3, p2, 0x3c

    int-to-float p3, p3

    .line 86
    invoke-direct {p0, p1, p3}, Lcom/narvii/widget/OverscrollListView;->startOverscroll(FF)V

    .line 87
    iput-boolean p9, p0, Lcom/narvii/widget/OverscrollListView;->prevOSTouch:Z

    .line 88
    iget-object p1, p0, Lcom/narvii/widget/OverscrollListView;->listener:Lcom/narvii/widget/OverscrollListView$OverscrollListener;

    if-eqz p1, :cond_1

    .line 89
    div-int/lit8 p4, p4, 0x2

    invoke-interface {p1, p0, p4, p2}, Lcom/narvii/widget/OverscrollListView$OverscrollListener;->willSpringBack(Lcom/narvii/widget/OverscrollListView;II)V

    :cond_1
    return v1

    .line 93
    :cond_2
    iput-boolean p9, p0, Lcom/narvii/widget/OverscrollListView;->prevOSTouch:Z

    .line 94
    iput-boolean p9, p0, Lcom/narvii/widget/OverscrollListView;->isInTouch:Z

    .line 95
    invoke-super/range {p0 .. p9}, Lcom/narvii/widget/NVListView;->overScrollBy(IIIIIIIIZ)Z

    move-result p1

    const/4 p2, 0x0

    .line 96
    iput-boolean p2, p0, Lcom/narvii/widget/OverscrollListView;->isInTouch:Z

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public pointToPosition(II)I
    .locals 1

    .line 187
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result p1

    .line 188
    iget-boolean p2, p0, Lcom/narvii/widget/OverscrollListView;->fixDragEmpty:Z

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lcom/narvii/widget/OverscrollListView;->downTouch:Z

    if-eqz p2, :cond_1

    if-gez p1, :cond_1

    const/4 p1, 0x1

    .line 190
    :try_start_0
    const-class p2, Landroid/widget/AbsListView;

    const-string v0, "mTouchMode"

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    .line 191
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 192
    invoke-virtual {p2, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 193
    invoke-virtual {p2, p0, v0}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :catch_0
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    add-int/2addr p2, v0

    sub-int/2addr p2, p1

    return p2

    :cond_1
    return p1
.end method

.method public releaseOverscrollLock(Z)V
    .locals 3

    .line 162
    iget-boolean v0, p0, Lcom/narvii/widget/OverscrollListView;->overscrollLock:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lcom/narvii/widget/OverscrollListView;->overscrollLock:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 165
    iput-boolean p1, p0, Lcom/narvii/widget/OverscrollListView;->springing:Z

    .line 166
    iget-object p1, p0, Lcom/narvii/widget/OverscrollListView;->spring:Lcom/facebook/rebound/Spring;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    .line 167
    iput v0, p0, Lcom/narvii/widget/OverscrollListView;->springEndValue:I

    .line 169
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    :cond_1
    return-void
.end method

.method public setFixDragEmptyIssue(Z)V
    .locals 0

    .line 182
    iput-boolean p1, p0, Lcom/narvii/widget/OverscrollListView;->fixDragEmpty:Z

    return-void
.end method

.method public setOverscrollListener(Lcom/narvii/widget/OverscrollListView$OverscrollListener;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/narvii/widget/OverscrollListView;->listener:Lcom/narvii/widget/OverscrollListView$OverscrollListener;

    return-void
.end method

.method public setOverscrollLock(I)V
    .locals 3

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lcom/narvii/widget/OverscrollListView;->springing:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 150
    :goto_0
    iput-boolean v0, p0, Lcom/narvii/widget/OverscrollListView;->overscrollLock:Z

    .line 151
    iget-object v0, p0, Lcom/narvii/widget/OverscrollListView;->spring:Lcom/facebook/rebound/Spring;

    iget v1, p0, Lcom/narvii/widget/OverscrollListView;->overscrollY:I

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    .line 152
    iget-object v0, p0, Lcom/narvii/widget/OverscrollListView;->spring:Lcom/facebook/rebound/Spring;

    mul-int/lit8 p1, p1, 0x2

    int-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    .line 153
    iput p1, p0, Lcom/narvii/widget/OverscrollListView;->springEndValue:I

    .line 154
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    return-void
.end method

.method public setOverscrollY(I)V
    .locals 1

    mul-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, v0, p1, v0, v0}, Lcom/narvii/widget/OverscrollListView;->onOverScrolled(IIZZ)V

    return-void
.end method
