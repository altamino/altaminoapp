.class public Lcom/narvii/nested/NVAppBarLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/nested/NVAppBarLayout$LayoutParams;,
        Lcom/narvii/nested/NVAppBarLayout$OnOffsetChangedListener;,
        Lcom/narvii/nested/NVAppBarLayout$CollapseStatusChangeListener;,
        Lcom/narvii/nested/NVAppBarLayout$ScrollingViewBehavior;,
        Lcom/narvii/nested/NVAppBarLayout$Behavior;
    }
.end annotation


# static fields
.field private static final INVALID_SCROLL_RANGE:I = -0x1

.field static final PENDING_ACTION_ANIMATE_ENABLED:I = 0x4

.field static final PENDING_ACTION_COLLAPSED:I = 0x2

.field static final PENDING_ACTION_EXPANDED:I = 0x1

.field static final PENDING_ACTION_FORCE:I = 0x8

.field static final PENDING_ACTION_NONE:I


# instance fields
.field collapseEventDispatcher:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/nested/NVAppBarLayout$CollapseStatusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCollapsed:Z

.field private mCollapsible:Z

.field private mDownPreScrollRange:I

.field private mDownScrollRange:I

.field private mHaveChildWithInterpolator:Z

.field private mLastInsets:Landroidx/core/view/WindowInsetsCompat;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/nested/NVAppBarLayout$OnOffsetChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingAction:I

.field private mTmpStatesArray:[I

.field private mTotalScrollRange:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/nested/NVAppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mTotalScrollRange:I

    iput v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mDownPreScrollRange:I

    iput v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mDownScrollRange:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mPendingAction:I

    .line 3
    new-instance v1, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v1}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object v1, p0, Lcom/narvii/nested/NVAppBarLayout;->collapseEventDispatcher:Lcom/narvii/util/EventDispatcher;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v1}, Lcom/narvii/nested/NVAppBarLayout;->setOrientation(I)V

    .line 5
    sget-object v2, Lcom/narvii/lib/R$styleable;->NVAppBarLayout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 6
    sget p2, Lcom/narvii/lib/R$styleable;->NVAppBarLayout_android_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->y0(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 7
    sget p2, Lcom/narvii/lib/R$styleable;->NVAppBarLayout_expanded:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-direct {p0, p2, v0, v0}, Lcom/narvii/nested/NVAppBarLayout;->setExpanded(ZZZ)V

    :cond_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p2, v1, :cond_2

    .line 9
    sget p2, Lcom/narvii/lib/R$styleable;->NVAppBarLayout_android_keyboardNavigationCluster:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-static {p0, p2}, Lcom/narvii/nested/f;->a(Lcom/narvii/nested/NVAppBarLayout;Z)V

    .line 11
    :cond_1
    sget p2, Lcom/narvii/lib/R$styleable;->NVAppBarLayout_android_touchscreenBlocksFocus:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocus(Z)V

    .line 13
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 14
    new-instance p1, Lcom/narvii/nested/h;

    invoke-direct {p1, p0}, Lcom/narvii/nested/h;-><init>(Lcom/narvii/nested/NVAppBarLayout;)V

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->L0(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/narvii/nested/NVAppBarLayout;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/nested/NVAppBarLayout;->lambda$new$0(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(ZLcom/narvii/nested/NVAppBarLayout$CollapseStatusChangeListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/nested/NVAppBarLayout;->lambda$setCollapsedState$1(ZLcom/narvii/nested/NVAppBarLayout$CollapseStatusChangeListener;)V

    return-void
.end method

.method private invalidateScrollRanges()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mTotalScrollRange:I

    iput v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mDownPreScrollRange:I

    iput v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mDownScrollRange:I

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/narvii/nested/NVAppBarLayout;->onWindowInsetChanged(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method private static synthetic lambda$setCollapsedState$1(ZLcom/narvii/nested/NVAppBarLayout$CollapseStatusChangeListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p0}, Lcom/narvii/nested/NVAppBarLayout$CollapseStatusChangeListener;->onCollapseStatusChanged(Z)V

    .line 4
    return-void
.end method

.method private setCollapsibleState(Z)Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mCollapsible:Z

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/narvii/nested/NVAppBarLayout;->mCollapsible:Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 10
    const/4 p1, 0x1

    .line 11
    return p1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return p1
.end method

.method private setExpanded(ZZZ)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 p2, 0x4

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    or-int/2addr p1, p2

    if-eqz p3, :cond_2

    const/16 v0, 0x8

    :cond_2
    or-int/2addr p1, v0

    iput p1, p0, Lcom/narvii/nested/NVAppBarLayout;->mPendingAction:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private updateCollapsible()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    .line 8
    :goto_0
    if-ge v2, v0, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    move-result-object v3

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    move-result-object v3

    .line 17
    .line 18
    check-cast v3, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;->isCollapsible()Z

    .line 22
    move-result v3

    .line 23
    .line 24
    if-eqz v3, :cond_0

    .line 25
    const/4 v1, 0x1

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 29
    goto :goto_0

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_1
    invoke-direct {p0, v1}, Lcom/narvii/nested/NVAppBarLayout;->setCollapsibleState(Z)Z

    .line 33
    return-void
.end method


# virtual methods
.method public addCollapseListener(Lcom/narvii/nested/NVAppBarLayout$CollapseStatusChangeListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nested/NVAppBarLayout;->collapseEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public addOnOffsetChangedListener(Lcom/narvii/nested/NVAppBarLayout$OnOffsetChangedListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mListeners:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mListeners:Ljava/util/List;

    .line 12
    .line 13
    :cond_0
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mListeners:Ljava/util/List;

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mListeners:Ljava/util/List;

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_1
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    .line 2
    instance-of p1, p1, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;

    .line 3
    return p1
.end method

.method public dispatchOffsetUpdates(I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mListeners:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    :goto_0
    if-ge v1, v0, :cond_1

    .line 12
    .line 13
    iget-object v2, p0, Lcom/narvii/nested/NVAppBarLayout;->mListeners:Ljava/util/List;

    .line 14
    .line 15
    .line 16
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    check-cast v2, Lcom/narvii/nested/NVAppBarLayout$OnOffsetChangedListener;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-interface {v2, p0, p1}, Lcom/narvii/nested/NVAppBarLayout$OnOffsetChangedListener;->onOffsetChanged(Lcom/narvii/nested/NVAppBarLayout;I)V

    .line 25
    .line 26
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/narvii/nested/NVAppBarLayout;->generateDefaultLayoutParams()Lcom/narvii/nested/NVAppBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/narvii/nested/NVAppBarLayout;->generateDefaultLayoutParams()Lcom/narvii/nested/NVAppBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/narvii/nested/NVAppBarLayout$LayoutParams;
    .locals 3

    .line 3
    new-instance v0, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/nested/NVAppBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/narvii/nested/NVAppBarLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/narvii/nested/NVAppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/narvii/nested/NVAppBarLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/nested/NVAppBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/narvii/nested/NVAppBarLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/narvii/nested/NVAppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/narvii/nested/NVAppBarLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/narvii/nested/NVAppBarLayout$LayoutParams;
    .locals 2

    .line 5
    new-instance v0, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/narvii/nested/NVAppBarLayout$LayoutParams;
    .locals 1

    .line 6
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object v0

    .line 8
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 9
    new-instance v0, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 10
    :cond_1
    new-instance v0, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method getDownNestedPreScrollRange()I
    .locals 9

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mDownPreScrollRange:I

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    return v0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    move-result v0

    .line 11
    .line 12
    add-int/lit8 v0, v0, -0x1

    .line 13
    const/4 v1, 0x0

    .line 14
    move v2, v1

    .line 15
    .line 16
    :goto_0
    if-ltz v0, :cond_5

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 20
    move-result-object v3

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 24
    move-result-object v4

    .line 25
    .line 26
    check-cast v4, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 30
    move-result v5

    .line 31
    .line 32
    iget v6, v4, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;->mScrollFlags:I

    .line 33
    .line 34
    and-int/lit8 v7, v6, 0x5

    .line 35
    const/4 v8, 0x5

    .line 36
    .line 37
    if-ne v7, v8, :cond_3

    .line 38
    .line 39
    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 40
    .line 41
    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 42
    add-int/2addr v7, v4

    .line 43
    add-int/2addr v2, v7

    .line 44
    .line 45
    and-int/lit8 v4, v6, 0x8

    .line 46
    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    .line 50
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->E(Landroid/view/View;)I

    .line 51
    move-result v3

    .line 52
    add-int/2addr v2, v3

    .line 53
    goto :goto_2

    .line 54
    .line 55
    :cond_1
    and-int/lit8 v4, v6, 0x2

    .line 56
    .line 57
    if-eqz v4, :cond_2

    .line 58
    .line 59
    .line 60
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->E(Landroid/view/View;)I

    .line 61
    move-result v3

    .line 62
    :goto_1
    sub-int/2addr v5, v3

    .line 63
    add-int/2addr v2, v5

    .line 64
    goto :goto_2

    .line 65
    .line 66
    .line 67
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/nested/NVAppBarLayout;->getTopInset()I

    .line 68
    move-result v3

    .line 69
    goto :goto_1

    .line 70
    .line 71
    :cond_3
    if-lez v2, :cond_4

    .line 72
    goto :goto_3

    .line 73
    .line 74
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, -0x1

    .line 75
    goto :goto_0

    .line 76
    .line 77
    .line 78
    :cond_5
    :goto_3
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 79
    move-result v0

    .line 80
    .line 81
    iput v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mDownPreScrollRange:I

    .line 82
    return v0
.end method

.method public getDownNestedScrollRange()I
    .locals 9

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mDownScrollRange:I

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    return v0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    move v3, v2

    .line 14
    .line 15
    :goto_0
    if-ge v2, v0, :cond_2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    move-result-object v4

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    move-result-object v5

    .line 24
    .line 25
    check-cast v5, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 29
    move-result v6

    .line 30
    .line 31
    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 32
    .line 33
    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 34
    add-int/2addr v7, v8

    .line 35
    add-int/2addr v6, v7

    .line 36
    .line 37
    iget v5, v5, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;->mScrollFlags:I

    .line 38
    .line 39
    and-int/lit8 v7, v5, 0x1

    .line 40
    .line 41
    if-eqz v7, :cond_2

    .line 42
    add-int/2addr v3, v6

    .line 43
    .line 44
    and-int/lit8 v5, v5, 0x2

    .line 45
    .line 46
    if-eqz v5, :cond_1

    .line 47
    .line 48
    .line 49
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->E(Landroid/view/View;)I

    .line 50
    move-result v0

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/narvii/nested/NVAppBarLayout;->getTopInset()I

    .line 54
    move-result v2

    .line 55
    add-int/2addr v0, v2

    .line 56
    sub-int/2addr v3, v0

    .line 57
    goto :goto_1

    .line 58
    .line 59
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 60
    goto :goto_0

    .line 61
    .line 62
    .line 63
    :cond_2
    :goto_1
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 64
    move-result v0

    .line 65
    .line 66
    iput v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mDownScrollRange:I

    .line 67
    return v0
.end method

.method final getMinimumHeightForVisibleOverlappingContent()I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/nested/NVAppBarLayout;->getTopInset()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->E(Landroid/view/View;)I

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    :goto_0
    mul-int/lit8 v1, v1, 0x2

    .line 13
    add-int/2addr v1, v0

    .line 14
    return v1

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x1

    .line 20
    .line 21
    if-lt v1, v2, :cond_1

    .line 22
    sub-int/2addr v1, v2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->E(Landroid/view/View;)I

    .line 30
    move-result v1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 v1, 0x0

    .line 33
    .line 34
    :goto_1
    if-eqz v1, :cond_2

    .line 35
    goto :goto_0

    .line 36
    .line 37
    .line 38
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 39
    move-result v0

    .line 40
    .line 41
    div-int/lit8 v0, v0, 0x3

    .line 42
    return v0
.end method

.method getPendingAction()I
    .locals 1

    iget v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mPendingAction:I

    return v0
.end method

.method public getTargetElevation()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final getTopInset()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->m()I

    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public final getTotalScrollRange()I
    .locals 9

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mTotalScrollRange:I

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    return v0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    move v3, v2

    .line 14
    .line 15
    :goto_0
    if-ge v2, v0, :cond_2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    move-result-object v4

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    move-result-object v5

    .line 24
    .line 25
    check-cast v5, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 29
    move-result v6

    .line 30
    .line 31
    iget v7, v5, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;->mScrollFlags:I

    .line 32
    .line 33
    and-int/lit8 v8, v7, 0x1

    .line 34
    .line 35
    if-eqz v8, :cond_2

    .line 36
    .line 37
    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 38
    add-int/2addr v6, v8

    .line 39
    .line 40
    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 41
    add-int/2addr v6, v5

    .line 42
    add-int/2addr v3, v6

    .line 43
    .line 44
    and-int/lit8 v5, v7, 0x2

    .line 45
    .line 46
    if-eqz v5, :cond_1

    .line 47
    .line 48
    .line 49
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->E(Landroid/view/View;)I

    .line 50
    move-result v0

    .line 51
    sub-int/2addr v3, v0

    .line 52
    goto :goto_1

    .line 53
    .line 54
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 55
    goto :goto_0

    .line 56
    .line 57
    .line 58
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/nested/NVAppBarLayout;->getTopInset()I

    .line 59
    move-result v0

    .line 60
    sub-int/2addr v3, v0

    .line 61
    .line 62
    .line 63
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 64
    move-result v0

    .line 65
    .line 66
    iput v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mTotalScrollRange:I

    .line 67
    return v0
.end method

.method getUpNestedPreScrollRange()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/nested/NVAppBarLayout;->getTotalScrollRange()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public hasChildWithInterpolator()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mHaveChildWithInterpolator:Z

    return v0
.end method

.method hasScrollableChildren()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/nested/NVAppBarLayout;->getTotalScrollRange()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mTmpStatesArray:[I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x2

    .line 6
    .line 7
    new-array v0, v0, [I

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mTmpStatesArray:[I

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mTmpStatesArray:[I

    .line 12
    array-length v1, v0

    .line 13
    add-int/2addr p1, v1

    .line 14
    .line 15
    .line 16
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    .line 17
    move-result-object p1

    .line 18
    .line 19
    iget-boolean v1, p0, Lcom/narvii/nested/NVAppBarLayout;->mCollapsible:Z

    .line 20
    .line 21
    sget v2, Lcom/narvii/lib/R$attr;->state_collapsible:I

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    neg-int v2, v2

    .line 26
    :goto_0
    const/4 v3, 0x0

    .line 27
    .line 28
    aput v2, v0, v3

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    iget-boolean v1, p0, Lcom/narvii/nested/NVAppBarLayout;->mCollapsed:Z

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    sget v1, Lcom/narvii/lib/R$attr;->state_collapsed:I

    .line 37
    goto :goto_1

    .line 38
    .line 39
    :cond_2
    sget v1, Lcom/narvii/lib/R$attr;->state_collapsed:I

    .line 40
    neg-int v1, v1

    .line 41
    :goto_1
    const/4 v2, 0x1

    .line 42
    .line 43
    aput v1, v0, v2

    .line 44
    .line 45
    .line 46
    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 47
    move-result-object p1

    .line 48
    return-object p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/nested/NVAppBarLayout;->invalidateScrollRanges()V

    .line 7
    const/4 p1, 0x0

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/narvii/nested/NVAppBarLayout;->mHaveChildWithInterpolator:Z

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    move-result p2

    .line 14
    .line 15
    :goto_0
    if-ge p1, p2, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    move-result-object p3

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    move-result-object p3

    .line 24
    .line 25
    check-cast p3, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3}, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;->getScrollInterpolator()Landroid/view/animation/Interpolator;

    .line 29
    move-result-object p3

    .line 30
    .line 31
    if-eqz p3, :cond_0

    .line 32
    const/4 p1, 0x1

    .line 33
    .line 34
    iput-boolean p1, p0, Lcom/narvii/nested/NVAppBarLayout;->mHaveChildWithInterpolator:Z

    .line 35
    goto :goto_1

    .line 36
    .line 37
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 38
    goto :goto_0

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/narvii/nested/NVAppBarLayout;->updateCollapsible()V

    .line 42
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/nested/NVAppBarLayout;->invalidateScrollRanges()V

    .line 7
    return-void
.end method

.method onWindowInsetChanged(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->A(Landroid/view/View;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    move-object v0, p1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    .line 11
    :goto_0
    iget-object v1, p0, Lcom/narvii/nested/NVAppBarLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v0}, Landroidx/core/util/ObjectsCompat;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mLastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/narvii/nested/NVAppBarLayout;->invalidateScrollRanges()V

    .line 23
    :cond_1
    return-object p1
.end method

.method public removeCollapseListener(Lcom/narvii/nested/NVAppBarLayout$CollapseStatusChangeListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nested/NVAppBarLayout;->collapseEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public removeOnOffsetChangedListener(Lcom/narvii/nested/NVAppBarLayout$OnOffsetChangedListener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mListeners:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 10
    :cond_0
    return-void
.end method

.method resetPendingAction()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mPendingAction:I

    return-void
.end method

.method public setCollapsedState(Z)Z
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mCollapsed:Z

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/narvii/nested/NVAppBarLayout;->mCollapsed:Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/nested/NVAppBarLayout;->collapseEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 12
    .line 13
    new-instance v1, Lcom/narvii/nested/g;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, p1}, Lcom/narvii/nested/g;-><init>(Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 20
    const/4 p1, 0x1

    .line 21
    return p1

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    return p1
.end method

.method public setExpanded(Z)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->X(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/narvii/nested/NVAppBarLayout;->setExpanded(ZZ)V

    return-void
.end method

.method public setExpanded(ZZ)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/nested/NVAppBarLayout;->setExpanded(ZZZ)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    const-string v0, "AppBarLayout is always vertical and does not support horizontal orientation"

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    throw p1
.end method

.method public setTargetElevation(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/narvii/nested/utils/ViewUtilsLollipop;->setDefaultAppBarLayoutStateListAnimator(Landroid/view/View;F)V

    .line 4
    return-void
.end method
