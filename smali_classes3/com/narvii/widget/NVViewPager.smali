.class public Lcom/narvii/widget/NVViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "NVViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/NVViewPager$ScrollCheckListener;
    }
.end annotation


# instance fields
.field private adapter:Landroid/support/v4/view/PagerAdapter;

.field public disableScroll:Z

.field public disableScrollRect:Landroid/graphics/RectF;

.field private mActivePointerId:I

.field private final observer:Landroid/database/DataSetObserver;

.field scrollCheckListener:Lcom/narvii/widget/NVViewPager$ScrollCheckListener;

.field private touchEventPassView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/NVViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 22
    iput p1, p0, Lcom/narvii/widget/NVViewPager;->mActivePointerId:I

    .line 45
    new-instance p1, Lcom/narvii/widget/NVViewPager$1;

    invoke-direct {p1, p0}, Lcom/narvii/widget/NVViewPager$1;-><init>(Lcom/narvii/widget/NVViewPager;)V

    iput-object p1, p0, Lcom/narvii/widget/NVViewPager;->observer:Landroid/database/DataSetObserver;

    return-void
.end method


# virtual methods
.method public canScrollHorizontally(I)Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcom/narvii/widget/NVViewPager;->disableScroll:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 95
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->canScrollHorizontally(I)Z

    move-result p1

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 100
    iget-boolean v0, p0, Lcom/narvii/widget/NVViewPager;->disableScroll:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVViewPager;->disableScrollRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/NVViewPager;->scrollCheckListener:Lcom/narvii/widget/NVViewPager$ScrollCheckListener;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/narvii/widget/NVViewPager$ScrollCheckListener;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 108
    :cond_2
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    goto :goto_1

    .line 114
    :cond_3
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v0

    if-le v0, v2, :cond_8

    return v1

    .line 119
    :cond_4
    iget v0, p0, Lcom/narvii/widget/NVViewPager;->mActivePointerId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_6

    .line 120
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v3

    if-gt v0, v3, :cond_6

    .line 121
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v0

    if-le v0, v2, :cond_5

    goto :goto_0

    .line 124
    :cond_5
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_6
    :goto_0
    return v1

    .line 111
    :cond_7
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/narvii/widget/NVViewPager;->mActivePointerId:I

    .line 127
    :cond_8
    :goto_1
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 137
    iget-boolean v0, p0, Lcom/narvii/widget/NVViewPager;->disableScroll:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVViewPager;->disableScrollRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/NVViewPager;->scrollCheckListener:Lcom/narvii/widget/NVViewPager$ScrollCheckListener;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/narvii/widget/NVViewPager$ScrollCheckListener;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 144
    iget-object v0, p0, Lcom/narvii/widget/NVViewPager;->touchEventPassView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 145
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_2
    return v1

    .line 151
    :cond_3
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "view pager onTouchEvent error"

    .line 153
    invoke-static {v2, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    :goto_0
    iget-object v0, p0, Lcom/narvii/widget/NVViewPager;->touchEventPassView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 157
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_4
    return v1
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/narvii/widget/NVViewPager;->adapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_0

    .line 58
    iget-object v1, p0, Lcom/narvii/widget/NVViewPager;->observer:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 60
    :cond_0
    iput-object p1, p0, Lcom/narvii/widget/NVViewPager;->adapter:Landroid/support/v4/view/PagerAdapter;

    .line 61
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    if-eqz p1, :cond_1

    .line 63
    iget-object v0, p0, Lcom/narvii/widget/NVViewPager;->observer:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 65
    :cond_1
    iget-object p1, p0, Lcom/narvii/widget/NVViewPager;->observer:Landroid/database/DataSetObserver;

    invoke-virtual {p1}, Landroid/database/DataSetObserver;->onChanged()V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    .line 71
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/widget/NVViewPager;->adapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/narvii/widget/NVViewPager;->adapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    .line 74
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 84
    iget-object v0, p0, Lcom/narvii/widget/NVViewPager;->adapter:Landroid/support/v4/view/PagerAdapter;

    instance-of v0, v0, Lcom/narvii/util/LazyFragmentPagerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/narvii/widget/NVViewPager;->adapter:Landroid/support/v4/view/PagerAdapter;

    check-cast v0, Lcom/narvii/util/LazyFragmentPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/util/LazyFragmentPagerAdapter;->prepareForJump(I)V

    .line 87
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setCurrentPosition(I)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public setScrollCheckListener(Lcom/narvii/widget/NVViewPager$ScrollCheckListener;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/narvii/widget/NVViewPager;->scrollCheckListener:Lcom/narvii/widget/NVViewPager$ScrollCheckListener;

    return-void
.end method

.method public setTouchEventPassView(Landroid/view/View;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/narvii/widget/NVViewPager;->touchEventPassView:Landroid/view/View;

    return-void
.end method
