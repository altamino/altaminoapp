.class public Lcom/narvii/nested/NVAppBarLayout$ScrollingViewBehavior;
.super Lcom/narvii/nested/behavior/HeaderScrollingViewBehavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/nested/NVAppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollingViewBehavior"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/nested/behavior/HeaderScrollingViewBehavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/narvii/nested/behavior/HeaderScrollingViewBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    sget-object v0, Lcom/narvii/lib/R$styleable;->ScrollingViewBehavior_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 4
    sget p2, Lcom/narvii/lib/R$styleable;->ScrollingViewBehavior_Layout_behavior_overlapTop:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/narvii/nested/behavior/HeaderScrollingViewBehavior;->setOverlayTop(I)V

    .line 5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static getAppBarLayoutOffset(Lcom/narvii/nested/NVAppBarLayout;)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->f()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    instance-of v0, p0, Lcom/narvii/nested/NVAppBarLayout$Behavior;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    check-cast p0, Lcom/narvii/nested/NVAppBarLayout$Behavior;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/narvii/nested/NVAppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    .line 20
    move-result p0

    .line 21
    return p0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method private offsetChildAsNeeded(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->f()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    instance-of v0, p1, Lcom/narvii/nested/NVAppBarLayout$Behavior;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    check-cast p1, Lcom/narvii/nested/NVAppBarLayout$Behavior;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    .line 20
    move-result v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 24
    move-result v1

    .line 25
    sub-int/2addr v0, v1

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lcom/narvii/nested/NVAppBarLayout$Behavior;->a(Lcom/narvii/nested/NVAppBarLayout$Behavior;)I

    .line 29
    move-result p1

    .line 30
    add-int/2addr v0, p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/narvii/nested/behavior/HeaderScrollingViewBehavior;->getVerticalLayoutGap()I

    .line 34
    move-result p1

    .line 35
    add-int/2addr v0, p1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p3}, Lcom/narvii/nested/behavior/HeaderScrollingViewBehavior;->getOverlapPixelsForOffset(Landroid/view/View;)I

    .line 39
    move-result p1

    .line 40
    sub-int/2addr v0, p1

    .line 41
    .line 42
    .line 43
    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->e0(Landroid/view/View;I)V

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic findFirstDependency(Ljava/util/List;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/nested/NVAppBarLayout$ScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Lcom/narvii/nested/NVAppBarLayout;

    move-result-object p1

    return-object p1
.end method

.method public findFirstDependency(Ljava/util/List;)Lcom/narvii/nested/NVAppBarLayout;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Lcom/narvii/nested/NVAppBarLayout;"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 4
    instance-of v3, v2, Lcom/narvii/nested/NVAppBarLayout;

    if-eqz v3, :cond_0

    .line 5
    check-cast v2, Lcom/narvii/nested/NVAppBarLayout;

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getOverlapRatioForOffset(Landroid/view/View;)F
    .locals 4

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/nested/NVAppBarLayout;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    check-cast p1, Lcom/narvii/nested/NVAppBarLayout;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/nested/NVAppBarLayout;->getTotalScrollRange()I

    .line 11
    move-result v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/nested/NVAppBarLayout;->getDownNestedPreScrollRange()I

    .line 15
    move-result v2

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/narvii/nested/NVAppBarLayout$ScrollingViewBehavior;->getAppBarLayoutOffset(Lcom/narvii/nested/NVAppBarLayout;)I

    .line 19
    move-result p1

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    add-int v3, v0, p1

    .line 24
    .line 25
    if-gt v3, v2, :cond_0

    .line 26
    return v1

    .line 27
    :cond_0
    sub-int/2addr v0, v2

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    int-to-float p1, p1

    .line 31
    int-to-float v0, v0

    .line 32
    div-float/2addr p1, v0

    .line 33
    .line 34
    const/high16 v0, 0x3f800000    # 1.0f

    .line 35
    add-float/2addr p1, v0

    .line 36
    return p1

    .line 37
    :cond_1
    return v1
.end method

.method public getScrollRange(Landroid/view/View;)I
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/nested/NVAppBarLayout;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/nested/NVAppBarLayout;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/narvii/nested/NVAppBarLayout;->getTotalScrollRange()I

    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/nested/behavior/HeaderScrollingViewBehavior;->getScrollRange(Landroid/view/View;)I

    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    .line 2
    instance-of p1, p3, Lcom/narvii/nested/NVAppBarLayout;

    .line 3
    return p1
.end method

.method public onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/nested/NVAppBarLayout$ScrollingViewBehavior;->offsetChildAsNeeded(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    return p1
.end method

.method public onRequestChildRectangleOnScreen(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/narvii/nested/NVAppBarLayout$ScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Lcom/narvii/nested/NVAppBarLayout;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 15
    move-result v2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 19
    move-result p2

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3, v2, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 23
    .line 24
    iget-object p2, p0, Lcom/narvii/nested/behavior/HeaderScrollingViewBehavior;->mTempRect1:Landroid/graphics/Rect;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 28
    move-result v2

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 32
    move-result p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v1, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, p3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 39
    move-result p1

    .line 40
    .line 41
    if-nez p1, :cond_0

    .line 42
    const/4 p1, 0x1

    .line 43
    .line 44
    xor-int/lit8 p2, p4, 0x1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1, p2}, Lcom/narvii/nested/NVAppBarLayout;->setExpanded(ZZ)V

    .line 48
    return p1

    .line 49
    :cond_0
    return v1
.end method
