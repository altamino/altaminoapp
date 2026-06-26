.class public Lcom/narvii/nested/NVAppBarLayout$ScrollingViewBehavior;
.super Lcom/narvii/nested/behavior/HeaderScrollingViewBehavior;
.source "NVAppBarLayout.java"


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

    .line 1296
    invoke-direct {p0}, Lcom/narvii/nested/behavior/HeaderScrollingViewBehavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1300
    invoke-direct {p0, p1, p2}, Lcom/narvii/nested/behavior/HeaderScrollingViewBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1302
    sget-object v0, Lcom/narvii/lib/R$styleable;->ScrollingViewBehavior_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1304
    sget p2, Lcom/narvii/lib/R$styleable;->ScrollingViewBehavior_Layout_behavior_overlapTop:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/narvii/nested/behavior/HeaderScrollingViewBehavior;->setOverlayTop(I)V

    .line 1306
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static getAppBarLayoutOffset(Lcom/narvii/nested/NVAppBarLayout;)I
    .locals 1

    .line 1381
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object p0

    .line 1382
    instance-of v0, p0, Lcom/narvii/nested/NVAppBarLayout$Behavior;

    if-eqz v0, :cond_0

    .line 1383
    check-cast p0, Lcom/narvii/nested/NVAppBarLayout$Behavior;

    invoke-virtual {p0}, Lcom/narvii/nested/NVAppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private offsetChildAsNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 1345
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object p1

    .line 1346
    instance-of v0, p1, Lcom/narvii/nested/NVAppBarLayout$Behavior;

    if-eqz v0, :cond_0

    .line 1349
    check-cast p1, Lcom/narvii/nested/NVAppBarLayout$Behavior;

    .line 1350
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1351
    invoke-static {p1}, Lcom/narvii/nested/NVAppBarLayout$Behavior;->access$000(Lcom/narvii/nested/NVAppBarLayout$Behavior;)I

    move-result p1

    add-int/2addr v0, p1

    .line 1352
    invoke-virtual {p0}, Lcom/narvii/nested/behavior/HeaderScrollingViewBehavior;->getVerticalLayoutGap()I

    move-result p1

    add-int/2addr v0, p1

    .line 1353
    invoke-virtual {p0, p3}, Lcom/narvii/nested/behavior/HeaderScrollingViewBehavior;->getOverlapPixelsForOffset(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v0, p1

    .line 1350
    invoke-static {p2, v0}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic findFirstDependency(Ljava/util/List;)Landroid/view/View;
    .locals 0

    .line 1294
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

    .line 1390
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1391
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1392
    instance-of v3, v2, Lcom/narvii/nested/NVAppBarLayout;

    if-eqz v3, :cond_0

    .line 1393
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

    .line 1359
    instance-of v0, p1, Lcom/narvii/nested/NVAppBarLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1360
    check-cast p1, Lcom/narvii/nested/NVAppBarLayout;

    .line 1361
    invoke-virtual {p1}, Lcom/narvii/nested/NVAppBarLayout;->getTotalScrollRange()I

    move-result v0

    .line 1362
    invoke-virtual {p1}, Lcom/narvii/nested/NVAppBarLayout;->getDownNestedPreScrollRange()I

    move-result v2

    .line 1363
    invoke-static {p1}, Lcom/narvii/nested/NVAppBarLayout$ScrollingViewBehavior;->getAppBarLayoutOffset(Lcom/narvii/nested/NVAppBarLayout;)I

    move-result p1

    if-eqz v2, :cond_0

    add-int v3, v0, p1

    if-gt v3, v2, :cond_0

    return v1

    :cond_0
    sub-int/2addr v0, v2

    if-eqz v0, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    add-float/2addr p1, v1

    return p1

    :cond_1
    return v1
.end method

.method public getScrollRange(Landroid/view/View;)I
    .locals 1

    .line 1401
    instance-of v0, p1, Lcom/narvii/nested/NVAppBarLayout;

    if-eqz v0, :cond_0

    .line 1402
    check-cast p1, Lcom/narvii/nested/NVAppBarLayout;

    invoke-virtual {p1}, Lcom/narvii/nested/NVAppBarLayout;->getTotalScrollRange()I

    move-result p1

    return p1

    .line 1404
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/nested/behavior/HeaderScrollingViewBehavior;->getScrollRange(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1312
    instance-of p1, p3, Lcom/narvii/nested/NVAppBarLayout;

    return p1
.end method

.method public onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1318
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/nested/NVAppBarLayout$ScrollingViewBehavior;->offsetChildAsNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onRequestChildRectangleOnScreen(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3

    .line 1325
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/narvii/nested/NVAppBarLayout$ScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Lcom/narvii/nested/NVAppBarLayout;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1328
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p3, v2, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 1330
    iget-object p2, p0, Lcom/narvii/nested/behavior/HeaderScrollingViewBehavior;->mTempRect1:Landroid/graphics/Rect;

    .line 1331
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    invoke-virtual {p2, v1, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1333
    invoke-virtual {p2, p3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    xor-int/lit8 p2, p4, 0x1

    .line 1336
    invoke-virtual {v0, v1, p2}, Lcom/narvii/nested/NVAppBarLayout;->setExpanded(ZZ)V

    return p1

    :cond_0
    return v1
.end method
