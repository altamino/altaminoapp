.class public Lcom/narvii/widget/NVViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/NVViewPager$ScrollCheckListener;
    }
.end annotation


# instance fields
.field private adapter:Landroidx/viewpager/widget/PagerAdapter;

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

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/NVViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/narvii/widget/NVViewPager;->mActivePointerId:I

    .line 3
    new-instance p1, Lcom/narvii/widget/NVViewPager$1;

    invoke-direct {p1, p0}, Lcom/narvii/widget/NVViewPager$1;-><init>(Lcom/narvii/widget/NVViewPager;)V

    iput-object p1, p0, Lcom/narvii/widget/NVViewPager;->observer:Landroid/database/DataSetObserver;

    return-void
.end method


# virtual methods
.method public canScrollHorizontally(I)Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/NVViewPager;->disableScroll:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/NVViewPager;->disableScroll:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVViewPager;->disableScrollRect:Landroid/graphics/RectF;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 14
    move-result v2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 18
    move-result v3

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    return v1

    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/NVViewPager;->scrollCheckListener:Lcom/narvii/widget/NVViewPager$ScrollCheckListener;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Lcom/narvii/widget/NVViewPager$ScrollCheckListener;->isScrolling()Z

    .line 33
    move-result v0

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    return v1

    .line 37
    .line 38
    .line 39
    :cond_2
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->c(Landroid/view/MotionEvent;)I

    .line 40
    move-result v0

    .line 41
    .line 42
    if-eqz v0, :cond_7

    .line 43
    const/4 v2, 0x1

    .line 44
    .line 45
    if-eq v0, v2, :cond_4

    .line 46
    const/4 v3, 0x2

    .line 47
    .line 48
    if-eq v0, v3, :cond_3

    .line 49
    goto :goto_1

    .line 50
    .line 51
    .line 52
    :cond_3
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->d(Landroid/view/MotionEvent;)I

    .line 53
    move-result v0

    .line 54
    .line 55
    if-le v0, v2, :cond_8

    .line 56
    return v1

    .line 57
    .line 58
    :cond_4
    iget v0, p0, Lcom/narvii/widget/NVViewPager;->mActivePointerId:I

    .line 59
    .line 60
    .line 61
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->a(Landroid/view/MotionEvent;I)I

    .line 62
    move-result v0

    .line 63
    const/4 v3, -0x1

    .line 64
    .line 65
    if-eq v0, v3, :cond_6

    .line 66
    .line 67
    .line 68
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->d(Landroid/view/MotionEvent;)I

    .line 69
    move-result v3

    .line 70
    .line 71
    if-gt v0, v3, :cond_6

    .line 72
    .line 73
    .line 74
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->d(Landroid/view/MotionEvent;)I

    .line 75
    move-result v0

    .line 76
    .line 77
    if-le v0, v2, :cond_5

    .line 78
    goto :goto_0

    .line 79
    .line 80
    .line 81
    :cond_5
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 82
    move-result p1

    .line 83
    return p1

    .line 84
    :cond_6
    :goto_0
    return v1

    .line 85
    .line 86
    .line 87
    :cond_7
    invoke-static {p1, v1}, Landroidx/core/view/MotionEventCompat;->e(Landroid/view/MotionEvent;I)I

    .line 88
    move-result v0

    .line 89
    .line 90
    iput v0, p0, Lcom/narvii/widget/NVViewPager;->mActivePointerId:I

    .line 91
    .line 92
    .line 93
    :cond_8
    :goto_1
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 94
    move-result p1

    .line 95
    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/NVViewPager;->disableScroll:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVViewPager;->disableScrollRect:Landroid/graphics/RectF;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 14
    move-result v2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 18
    move-result v3

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    return v1

    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/NVViewPager;->scrollCheckListener:Lcom/narvii/widget/NVViewPager$ScrollCheckListener;

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Lcom/narvii/widget/NVViewPager$ScrollCheckListener;->isScrolling()Z

    .line 33
    move-result v0

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/widget/NVViewPager;->touchEventPassView:Landroid/view/View;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 43
    :cond_2
    return v1

    .line 44
    .line 45
    .line 46
    :cond_3
    :try_start_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 47
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .line 51
    .line 52
    const-string/jumbo v2, "view pager onTouchEvent error"

    .line 53
    .line 54
    .line 55
    invoke-static {v2, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    .line 57
    :goto_0
    iget-object v0, p0, Lcom/narvii/widget/NVViewPager;->touchEventPassView:Landroid/view/View;

    .line 58
    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 63
    :cond_4
    return v1
.end method

.method public setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVViewPager;->adapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/widget/NVViewPager;->observer:Landroid/database/DataSetObserver;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 10
    .line 11
    :cond_0
    iput-object p1, p0, Lcom/narvii/widget/NVViewPager;->adapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 12
    .line 13
    .line 14
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/widget/NVViewPager;->observer:Landroid/database/DataSetObserver;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 22
    .line 23
    :cond_1
    iget-object p1, p0, Lcom/narvii/widget/NVViewPager;->observer:Landroid/database/DataSetObserver;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/database/DataSetObserver;->onChanged()V

    .line 27
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/widget/NVViewPager;->adapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/widget/NVViewPager;->adapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 2
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/narvii/widget/NVViewPager;->adapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 4
    instance-of v0, v0, Lcom/narvii/util/LazyFragmentPagerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/narvii/widget/NVViewPager;->adapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 5
    check-cast v0, Lcom/narvii/util/LazyFragmentPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/util/LazyFragmentPagerAdapter;->prepareForJump(I)V

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setCurrentPosition(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 4
    return-void
.end method

.method public setScrollCheckListener(Lcom/narvii/widget/NVViewPager$ScrollCheckListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/NVViewPager;->scrollCheckListener:Lcom/narvii/widget/NVViewPager$ScrollCheckListener;

    return-void
.end method

.method public setTouchEventPassView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/NVViewPager;->touchEventPassView:Landroid/view/View;

    return-void
.end method
