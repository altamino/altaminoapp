.class public Lcom/narvii/nested/NVAppBarLayout;
.super Landroid/widget/LinearLayout;
.source "NVAppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/nested/NVAppBarLayout$ScrollingViewBehavior;,
        Lcom/narvii/nested/NVAppBarLayout$Behavior;,
        Lcom/narvii/nested/NVAppBarLayout$LayoutParams;,
        Lcom/narvii/nested/NVAppBarLayout$CollapseStatusChangeListener;,
        Lcom/narvii/nested/NVAppBarLayout$OnOffsetChangedListener;
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

.field private mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

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

    .line 100
    invoke-direct {p0, p1, v0}, Lcom/narvii/nested/NVAppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 104
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 52
    iput v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mTotalScrollRange:I

    .line 53
    iput v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mDownPreScrollRange:I

    .line 54
    iput v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mDownScrollRange:I

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mPendingAction:I

    .line 69
    new-instance v1, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v1}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object v1, p0, Lcom/narvii/nested/NVAppBarLayout;->collapseEventDispatcher:Lcom/narvii/util/EventDispatcher;

    const/4 v1, 0x1

    .line 105
    invoke-virtual {p0, v1}, Lcom/narvii/nested/NVAppBarLayout;->setOrientation(I)V

    .line 106
    sget-object v2, Lcom/narvii/lib/R$styleable;->NVAppBarLayout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 107
    sget p2, Lcom/narvii/lib/R$styleable;->NVAppBarLayout_android_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 108
    sget p2, Lcom/narvii/lib/R$styleable;->NVAppBarLayout_expanded:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 109
    sget p2, Lcom/narvii/lib/R$styleable;->NVAppBarLayout_expanded:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-direct {p0, p2, v0, v0}, Lcom/narvii/nested/NVAppBarLayout;->setExpanded(ZZZ)V

    .line 111
    :cond_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p2, v1, :cond_2

    .line 114
    sget p2, Lcom/narvii/lib/R$styleable;->NVAppBarLayout_android_keyboardNavigationCluster:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 115
    sget p2, Lcom/narvii/lib/R$styleable;->NVAppBarLayout_android_keyboardNavigationCluster:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setKeyboardNavigationCluster(Z)V

    .line 118
    :cond_1
    sget p2, Lcom/narvii/lib/R$styleable;->NVAppBarLayout_android_touchscreenBlocksFocus:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 119
    sget p2, Lcom/narvii/lib/R$styleable;->NVAppBarLayout_android_touchscreenBlocksFocus:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setTouchscreenBlocksFocus(Z)V

    .line 123
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 125
    new-instance p1, Lcom/narvii/nested/-$$Lambda$NVAppBarLayout$dXVMqAW9zh5XqbOCGnz7HDDVipE;

    invoke-direct {p1, p0}, Lcom/narvii/nested/-$$Lambda$NVAppBarLayout$dXVMqAW9zh5XqbOCGnz7HDDVipE;-><init>(Lcom/narvii/nested/NVAppBarLayout;)V

    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private invalidateScrollRanges()V
    .locals 1

    const/4 v0, -0x1

    .line 186
    iput v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mTotalScrollRange:I

    .line 187
    iput v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mDownPreScrollRange:I

    .line 188
    iput v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mDownScrollRange:I

    return-void
.end method

.method static synthetic lambda$setCollapsedState$1(ZLcom/narvii/nested/NVAppBarLayout$CollapseStatusChangeListener;)V
    .locals 0

    .line 479
    invoke-interface {p1, p0}, Lcom/narvii/nested/NVAppBarLayout$CollapseStatusChangeListener;->onCollapseStatusChanged(Z)V

    return-void
.end method

.method private setCollapsibleState(Z)Z
    .locals 1

    .line 462
    iget-boolean v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mCollapsible:Z

    if-eq v0, p1, :cond_0

    .line 463
    iput-boolean p1, p0, Lcom/narvii/nested/NVAppBarLayout;->mCollapsible:Z

    .line 464
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->refreshDrawableState()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

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
    const/4 p2, 0x0

    :goto_1
    or-int/2addr p1, p2

    if-eqz p3, :cond_2

    const/16 v0, 0x8

    :cond_2
    or-int/2addr p1, v0

    .line 243
    iput p1, p0, Lcom/narvii/nested/NVAppBarLayout;->mPendingAction:I

    .line 246
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method private updateCollapsible()V
    .locals 4

    .line 174
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 175
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;

    invoke-virtual {v3}, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;->isCollapsible()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    :cond_1
    :goto_1
    invoke-direct {p0, v1}, Lcom/narvii/nested/NVAppBarLayout;->setCollapsibleState(Z)Z

    return-void
.end method


# virtual methods
.method public addCollapseListener(Lcom/narvii/nested/NVAppBarLayout$CollapseStatusChangeListener;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/narvii/nested/NVAppBarLayout;->collapseEventDispatcher:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    return-void
.end method

.method public addOnOffsetChangedListener(Lcom/narvii/nested/NVAppBarLayout$OnOffsetChangedListener;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mListeners:Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_1

    .line 139
    iget-object v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 251
    instance-of p1, p1, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;

    return p1
.end method

.method public dispatchOffsetUpdates(I)V
    .locals 3

    .line 407
    iget-object v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 408
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 409
    iget-object v2, p0, Lcom/narvii/nested/NVAppBarLayout;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/nested/NVAppBarLayout$OnOffsetChangedListener;

    if-eqz v2, :cond_0

    .line 411
    invoke-interface {v2, p0, p1}, Lcom/narvii/nested/NVAppBarLayout$OnOffsetChangedListener;->onOffsetChanged(Lcom/narvii/nested/NVAppBarLayout;I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/narvii/nested/NVAppBarLayout;->generateDefaultLayoutParams()Lcom/narvii/nested/NVAppBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/narvii/nested/NVAppBarLayout;->generateDefaultLayoutParams()Lcom/narvii/nested/NVAppBarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/narvii/nested/NVAppBarLayout$LayoutParams;
    .locals 3

    .line 256
    new-instance v0, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/narvii/nested/NVAppBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/narvii/nested/NVAppBarLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/narvii/nested/NVAppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/narvii/nested/NVAppBarLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/narvii/nested/NVAppBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/narvii/nested/NVAppBarLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/narvii/nested/NVAppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/narvii/nested/NVAppBarLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/narvii/nested/NVAppBarLayout$LayoutParams;
    .locals 2

    .line 262
    new-instance v0, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/narvii/nested/NVAppBarLayout$LayoutParams;
    .locals 2

    .line 267
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 268
    new-instance v0, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object v0

    .line 269
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 270
    new-instance v0, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 272
    :cond_1
    new-instance v0, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method getDownNestedPreScrollRange()I
    .locals 9

    .line 331
    iget v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mDownPreScrollRange:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 337
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_5

    .line 338
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 339
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;

    .line 340
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 341
    iget v6, v4, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;->mScrollFlags:I

    and-int/lit8 v7, v6, 0x5

    const/4 v8, 0x5

    if-ne v7, v8, :cond_3

    .line 345
    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v4

    add-int/2addr v2, v7

    and-int/lit8 v4, v6, 0x8

    if-eqz v4, :cond_1

    .line 349
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_2

    :cond_1
    and-int/lit8 v4, v6, 0x2

    if-eqz v4, :cond_2

    .line 352
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v3

    goto :goto_1

    .line 355
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/nested/NVAppBarLayout;->getTopInset()I

    move-result v3

    :goto_1
    sub-int/2addr v5, v3

    add-int/2addr v2, v5

    goto :goto_2

    :cond_3
    if-lez v2, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 363
    :cond_5
    :goto_3
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mDownPreScrollRange:I

    return v0
.end method

.method public getDownNestedScrollRange()I
    .locals 9

    .line 370
    iget v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mDownScrollRange:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 376
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 377
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 378
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;

    .line 379
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 380
    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 382
    iget v5, v5, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;->mScrollFlags:I

    and-int/lit8 v7, v5, 0x1

    if-eqz v7, :cond_2

    add-int/2addr v3, v6

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    .line 392
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/nested/NVAppBarLayout;->getTopInset()I

    move-result v2

    add-int/2addr v0, v2

    sub-int/2addr v3, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 401
    :cond_2
    :goto_1
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mDownScrollRange:I

    return v0
.end method

.method final getMinimumHeightForVisibleOverlappingContent()I
    .locals 3

    .line 418
    invoke-virtual {p0}, Lcom/narvii/nested/NVAppBarLayout;->getTopInset()I

    move-result v0

    .line 419
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    return v1

    .line 426
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    sub-int/2addr v1, v2

    .line 428
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_0

    .line 435
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method getPendingAction()I
    .locals 1

    .line 510
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

    .line 518
    iget-object v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getTotalScrollRange()I
    .locals 9

    .line 285
    iget v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mTotalScrollRange:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 290
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 291
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 292
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;

    .line 293
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 294
    iget v7, v5, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;->mScrollFlags:I

    and-int/lit8 v8, v7, 0x1

    if-eqz v8, :cond_2

    .line 298
    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v8

    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v5

    add-int/2addr v3, v6

    and-int/lit8 v5, v7, 0x2

    if-eqz v5, :cond_1

    .line 304
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v3, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 313
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/nested/NVAppBarLayout;->getTopInset()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mTotalScrollRange:I

    return v0
.end method

.method getUpNestedPreScrollRange()I
    .locals 1

    .line 324
    invoke-virtual {p0}, Lcom/narvii/nested/NVAppBarLayout;->getTotalScrollRange()I

    move-result v0

    return v0
.end method

.method public hasChildWithInterpolator()Z
    .locals 1

    .line 276
    iget-boolean v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mHaveChildWithInterpolator:Z

    return v0
.end method

.method hasScrollableChildren()Z
    .locals 1

    .line 317
    invoke-virtual {p0}, Lcom/narvii/nested/NVAppBarLayout;->getTotalScrollRange()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$new$0$NVAppBarLayout(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 0

    .line 126
    invoke-virtual {p0, p2}, Lcom/narvii/nested/NVAppBarLayout;->onWindowInsetChanged(Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method

.method protected onCreateDrawableState(I)[I
    .locals 3

    .line 440
    iget-object v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mTmpStatesArray:[I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 444
    iput-object v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mTmpStatesArray:[I

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mTmpStatesArray:[I

    .line 447
    array-length v1, v0

    add-int/2addr p1, v1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    const/4 v1, 0x0

    .line 449
    iget-boolean v2, p0, Lcom/narvii/nested/NVAppBarLayout;->mCollapsible:Z

    if-eqz v2, :cond_1

    sget v2, Lcom/narvii/lib/R$attr;->state_collapsible:I

    goto :goto_0

    :cond_1
    sget v2, Lcom/narvii/lib/R$attr;->state_collapsible:I

    neg-int v2, v2

    :goto_0
    aput v2, v0, v1

    const/4 v1, 0x1

    .line 450
    iget-boolean v2, p0, Lcom/narvii/nested/NVAppBarLayout;->mCollapsible:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/narvii/nested/NVAppBarLayout;->mCollapsed:Z

    if-eqz v2, :cond_2

    sget v2, Lcom/narvii/lib/R$attr;->state_collapsed:I

    goto :goto_1

    :cond_2
    sget v2, Lcom/narvii/lib/R$attr;->state_collapsed:I

    neg-int v2, v2

    :goto_1
    aput v2, v0, v1

    .line 453
    invoke-static {p1, v0}, Landroid/widget/LinearLayout;->mergeDrawableStates([I[I)[I

    move-result-object p1

    return-object p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 153
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 154
    invoke-direct {p0}, Lcom/narvii/nested/NVAppBarLayout;->invalidateScrollRanges()V

    const/4 p1, 0x0

    .line 156
    iput-boolean p1, p0, Lcom/narvii/nested/NVAppBarLayout;->mHaveChildWithInterpolator:Z

    .line 157
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p2

    :goto_0
    if-ge p1, p2, :cond_1

    .line 158
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 159
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;

    .line 160
    invoke-virtual {p3}, Lcom/narvii/nested/NVAppBarLayout$LayoutParams;->getScrollInterpolator()Landroid/view/animation/Interpolator;

    move-result-object p3

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    .line 163
    iput-boolean p1, p0, Lcom/narvii/nested/NVAppBarLayout;->mHaveChildWithInterpolator:Z

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 168
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/narvii/nested/NVAppBarLayout;->updateCollapsible()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 146
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 147
    invoke-direct {p0}, Lcom/narvii/nested/NVAppBarLayout;->invalidateScrollRanges()V

    return-void
.end method

.method onWindowInsetChanged(Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 2

    .line 524
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 530
    :goto_0
    iget-object v1, p0, Lcom/narvii/nested/NVAppBarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-static {v1, v0}, Landroid/support/v4/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 531
    iput-object v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    .line 532
    invoke-direct {p0}, Lcom/narvii/nested/NVAppBarLayout;->invalidateScrollRanges()V

    :cond_1
    return-object p1
.end method

.method public removeCollapseListener(Lcom/narvii/nested/NVAppBarLayout$CollapseStatusChangeListener;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/narvii/nested/NVAppBarLayout;->collapseEventDispatcher:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public removeOnOffsetChangedListener(Lcom/narvii/nested/NVAppBarLayout$OnOffsetChangedListener;)V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 208
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method resetPendingAction()V
    .locals 1

    const/4 v0, 0x0

    .line 514
    iput v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mPendingAction:I

    return-void
.end method

.method public setCollapsedState(Z)Z
    .locals 2

    .line 476
    iget-boolean v0, p0, Lcom/narvii/nested/NVAppBarLayout;->mCollapsed:Z

    if-eq v0, p1, :cond_0

    .line 477
    iput-boolean p1, p0, Lcom/narvii/nested/NVAppBarLayout;->mCollapsed:Z

    .line 478
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->refreshDrawableState()V

    .line 479
    iget-object v0, p0, Lcom/narvii/nested/NVAppBarLayout;->collapseEventDispatcher:Lcom/narvii/util/EventDispatcher;

    new-instance v1, Lcom/narvii/nested/-$$Lambda$NVAppBarLayout$fDv-7dIdXG9D3tIS55W4QxYUvFY;

    invoke-direct {v1, p1}, Lcom/narvii/nested/-$$Lambda$NVAppBarLayout$fDv-7dIdXG9D3tIS55W4QxYUvFY;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setExpanded(Z)V
    .locals 1

    .line 224
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/narvii/nested/NVAppBarLayout;->setExpanded(ZZ)V

    return-void
.end method

.method public setExpanded(ZZ)V
    .locals 1

    const/4 v0, 0x1

    .line 239
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/nested/NVAppBarLayout;->setExpanded(ZZZ)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 197
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void

    .line 194
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "AppBarLayout is always vertical and does not support horizontal orientation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTargetElevation(F)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 494
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 495
    invoke-static {p0, p1}, Lcom/narvii/nested/utils/ViewUtilsLollipop;->setDefaultAppBarLayoutStateListAnimator(Landroid/view/View;F)V

    :cond_0
    return-void
.end method
