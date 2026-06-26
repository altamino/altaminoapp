.class public Lcom/narvii/drawer/MyDrawerLayout;
.super Lcom/narvii/drawer/DrawerLayout;
.source "MyDrawerLayout.java"


# instance fields
.field private leftDrawer:Landroid/view/View;

.field private rightDrawer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/narvii/drawer/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public closeDrawersDirectly()V
    .locals 7

    .line 24
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 25
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 26
    invoke-virtual {p0, v4}, Lcom/narvii/drawer/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 27
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    .line 28
    iget v5, v4, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->openState:I

    const/4 v6, 0x0

    if-nez v5, :cond_0

    iget v5, v4, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->onScreen:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 30
    iput v6, v4, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->onScreen:F

    .line 31
    iput v1, v4, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->openState:I

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-lez v3, :cond_3

    .line 36
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->abort()V

    .line 37
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->abort()V

    .line 38
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerLayout;->requestLayout()V

    :cond_3
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/drawer/MyDrawerLayout;->leftDrawer:Landroid/view/View;

    .line 64
    invoke-virtual {p0, v0}, Lcom/narvii/drawer/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/drawer/MyDrawerLayout;->rightDrawer:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/narvii/drawer/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 67
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 44
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const/high16 v0, 0x55000000

    .line 46
    invoke-virtual {p0, v0}, Lcom/narvii/drawer/DrawerLayout;->setScrimColor(I)V

    const v0, 0x7f0801e6

    const v1, 0x800003

    .line 47
    invoke-virtual {p0, v0, v1}, Lcom/narvii/drawer/DrawerLayout;->setDrawerShadow(II)V

    const v0, 0x7f0801ea

    const v1, 0x800005

    .line 48
    invoke-virtual {p0, v0, v1}, Lcom/narvii/drawer/DrawerLayout;->setDrawerShadow(II)V

    .line 50
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    const v1, 0x7f090394

    .line 51
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/drawer/MyDrawerLayout;->leftDrawer:Landroid/view/View;

    .line 52
    iget-object v1, p0, Lcom/narvii/drawer/MyDrawerLayout;->leftDrawer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 53
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const v1, 0x7f0903a1

    .line 55
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/drawer/MyDrawerLayout;->rightDrawer:Landroid/view/View;

    .line 56
    iget-object v1, p0, Lcom/narvii/drawer/MyDrawerLayout;->rightDrawer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 57
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 83
    :try_start_0
    invoke-super {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "drawer layout touch exception"

    .line 85
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 92
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 95
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    const v4, 0x1020002

    .line 99
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v4, v4, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    if-eqz v4, :cond_2

    .line 100
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    goto :goto_1

    .line 103
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v4, v4, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    if-eqz v4, :cond_2

    .line 104
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    .line 105
    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/narvii/drawer/DrawerLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 73
    :try_start_0
    invoke-super {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "drawer layout touch exception"

    .line 75
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
