.class public Lcom/narvii/widget/VerticalViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "VerticalViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/VerticalViewPager$VerticalPageTransformer;
    }
.end annotation


# instance fields
.field public disableScroll:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/VerticalViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-direct {p0}, Lcom/narvii/widget/VerticalViewPager;->init()V

    return-void
.end method

.method private flipXY(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 4

    .line 68
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 69
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 70
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    div-float/2addr v2, v1

    mul-float v2, v2, v0

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    div-float/2addr v3, v0

    mul-float v3, v3, v1

    .line 72
    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    return-object p1
.end method

.method private init()V
    .locals 2

    .line 43
    new-instance v0, Lcom/narvii/widget/VerticalViewPager$VerticalPageTransformer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/widget/VerticalViewPager$VerticalPageTransformer;-><init>(Lcom/narvii/widget/VerticalViewPager$1;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    const/4 v0, 0x2

    .line 45
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    return-void
.end method


# virtual methods
.method public canScrollHorizontally(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public canScrollVertically(I)Z
    .locals 0

    .line 38
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/narvii/widget/VerticalViewPager;->disableScroll:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/narvii/widget/VerticalViewPager;->disableScroll:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 53
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/widget/VerticalViewPager;->flipXY(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 55
    invoke-direct {p0, p1}, Lcom/narvii/widget/VerticalViewPager;->flipXY(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 61
    invoke-direct {p0, p1}, Lcom/narvii/widget/VerticalViewPager;->flipXY(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 63
    invoke-direct {p0, p1}, Lcom/narvii/widget/VerticalViewPager;->flipXY(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    return v0
.end method
