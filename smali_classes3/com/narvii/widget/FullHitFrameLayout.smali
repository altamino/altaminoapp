.class public Lcom/narvii/widget/FullHitFrameLayout;
.super Landroid/widget/FrameLayout;
.source "FullHitFrameLayout.java"


# instance fields
.field private target:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto/16 :goto_5

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/FullHitFrameLayout;->target:Landroid/view/View;

    if-nez v0, :cond_1

    goto/16 :goto_5

    .line 49
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    goto/16 :goto_5

    .line 51
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    goto/16 :goto_5

    .line 53
    :cond_3
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 55
    iget-object v3, p0, Lcom/narvii/widget/FullHitFrameLayout;->target:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gez v3, :cond_4

    .line 56
    iget-object v2, p0, Lcom/narvii/widget/FullHitFrameLayout;->target:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    :goto_0
    int-to-float v2, v2

    goto :goto_1

    .line 57
    :cond_4
    iget-object v3, p0, Lcom/narvii/widget/FullHitFrameLayout;->target:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_5

    .line 58
    iget-object v2, p0, Lcom/narvii/widget/FullHitFrameLayout;->target:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int/2addr v2, v1

    goto :goto_0

    .line 59
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/narvii/widget/FullHitFrameLayout;->target:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_6

    .line 60
    iget-object p1, p0, Lcom/narvii/widget/FullHitFrameLayout;->target:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    :goto_2
    int-to-float p1, p1

    goto :goto_3

    .line 61
    :cond_6
    iget-object v3, p0, Lcom/narvii/widget/FullHitFrameLayout;->target:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_7

    .line 62
    iget-object p1, p0, Lcom/narvii/widget/FullHitFrameLayout;->target:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    sub-int/2addr p1, v1

    goto :goto_2

    .line 63
    :cond_7
    :goto_3
    invoke-virtual {v0, v2, p1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 64
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 28
    :cond_8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    :goto_4
    iput-object v0, p0, Lcom/narvii/widget/FullHitFrameLayout;->target:Landroid/view/View;

    .line 29
    iget-object v0, p0, Lcom/narvii/widget/FullHitFrameLayout;->target:Landroid/view/View;

    if-nez v0, :cond_b

    .line 67
    :cond_a
    :goto_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 31
    :cond_b
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 33
    iget-object v3, p0, Lcom/narvii/widget/FullHitFrameLayout;->target:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gez v3, :cond_c

    .line 34
    iget-object v2, p0, Lcom/narvii/widget/FullHitFrameLayout;->target:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    :goto_6
    int-to-float v2, v2

    goto :goto_7

    .line 35
    :cond_c
    iget-object v3, p0, Lcom/narvii/widget/FullHitFrameLayout;->target:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_d

    .line 36
    iget-object v2, p0, Lcom/narvii/widget/FullHitFrameLayout;->target:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int/2addr v2, v1

    goto :goto_6

    .line 37
    :cond_d
    :goto_7
    iget-object v3, p0, Lcom/narvii/widget/FullHitFrameLayout;->target:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_e

    .line 38
    iget-object p1, p0, Lcom/narvii/widget/FullHitFrameLayout;->target:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    :goto_8
    int-to-float p1, p1

    goto :goto_9

    .line 39
    :cond_e
    iget-object v3, p0, Lcom/narvii/widget/FullHitFrameLayout;->target:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_f

    .line 40
    iget-object p1, p0, Lcom/narvii/widget/FullHitFrameLayout;->target:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    sub-int/2addr p1, v1

    goto :goto_8

    .line 41
    :cond_f
    :goto_9
    invoke-virtual {v0, v2, p1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 42
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
