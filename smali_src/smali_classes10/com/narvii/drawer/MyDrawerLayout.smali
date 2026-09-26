.class public Lcom/narvii/drawer/MyDrawerLayout;
.super Lcom/narvii/drawer/DrawerLayout;
.source "SourceFile"


# instance fields
.field private leftDrawer:Landroid/view/View;

.field private rightDrawer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/drawer/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    return-void
.end method


# virtual methods
.method public closeDrawersDirectly()V
    .locals 7

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
    move v3, v2

    .line 8
    .line 9
    :goto_0
    if-ge v2, v0, :cond_2

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 13
    move-result-object v4

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v4}, Lcom/narvii/drawer/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    .line 17
    move-result v5

    .line 18
    .line 19
    if-eqz v5, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    move-result-object v4

    .line 24
    .line 25
    check-cast v4, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    .line 26
    .line 27
    iget v5, v4, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->openState:I

    .line 28
    const/4 v6, 0x0

    .line 29
    .line 30
    if-nez v5, :cond_0

    .line 31
    .line 32
    iget v5, v4, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->onScreen:F

    .line 33
    .line 34
    cmpl-float v5, v5, v6

    .line 35
    .line 36
    if-eqz v5, :cond_1

    .line 37
    .line 38
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 39
    .line 40
    iput v6, v4, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->onScreen:F

    .line 41
    .line 42
    iput v1, v4, Lcom/narvii/drawer/DrawerLayout$LayoutParams;->openState:I

    .line 43
    .line 44
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_2
    if-lez v3, :cond_3

    .line 48
    .line 49
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->a()V

    .line 53
    .line 54
    iget-object v0, p0, Lcom/narvii/drawer/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->a()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/narvii/drawer/DrawerLayout;->requestLayout()V

    .line 61
    :cond_3
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-le v0, v1, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 11
    move-result v0

    .line 12
    .line 13
    .line 14
    const v1, 0xff00

    .line 15
    and-int/2addr v0, v1

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/drawer/MyDrawerLayout;->leftDrawer:Landroid/view/View;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/narvii/drawer/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/drawer/MyDrawerLayout;->rightDrawer:Landroid/view/View;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/narvii/drawer/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    .line 31
    move-result v0

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    :cond_0
    const/4 p1, 0x0

    .line 35
    return p1

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 39
    move-result p1

    .line 40
    return p1
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 4
    .line 5
    const/high16 v0, 0x55000000

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/drawer/DrawerLayout;->setScrimColor(I)V

    .line 9
    .line 10
    .line 11
    const v0, 0x7f080272

    .line 12
    .line 13
    .line 14
    const v1, 0x800003

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/narvii/drawer/DrawerLayout;->setDrawerShadow(II)V

    .line 18
    .line 19
    .line 20
    const v0, 0x7f080276

    .line 21
    .line 22
    .line 23
    const v1, 0x800005

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0, v1}, Lcom/narvii/drawer/DrawerLayout;->setDrawerShadow(II)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lcom/narvii/util/Utils;->getStatusBarHeight(Landroid/content/Context;)I

    .line 34
    move-result v0

    .line 35
    .line 36
    .line 37
    const v1, 0x7f0a0483

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    iput-object v1, p0, Lcom/narvii/drawer/MyDrawerLayout;->leftDrawer:Landroid/view/View;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 50
    .line 51
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 52
    .line 53
    .line 54
    const v1, 0x7f0a0490

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    iput-object v1, p0, Lcom/narvii/drawer/MyDrawerLayout;->rightDrawer:Landroid/view/View;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 67
    .line 68
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 69
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-super {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return p1

    .line 6
    :catch_0
    move-exception p1

    .line 7
    .line 8
    const-string v0, "drawer layout touch exception"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    const/4 p1, 0x0

    .line 13
    return p1
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    :goto_0
    if-ge v2, v0, :cond_3

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    move-result-object v3

    .line 13
    .line 14
    if-nez v3, :cond_0

    .line 15
    goto :goto_1

    .line 16
    .line 17
    :cond_0
    if-nez v1, :cond_1

    .line 18
    .line 19
    .line 20
    const v4, 0x1020002

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object v4

    .line 25
    .line 26
    if-eqz v4, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 30
    move-result-object v4

    .line 31
    .line 32
    instance-of v4, v4, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    .line 33
    .line 34
    if-eqz v4, :cond_2

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    check-cast v1, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    .line 41
    goto :goto_1

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 45
    move-result-object v4

    .line 46
    .line 47
    instance-of v4, v4, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    .line 48
    .line 49
    if-eqz v4, :cond_2

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 53
    move-result-object v3

    .line 54
    .line 55
    check-cast v3, Lcom/narvii/drawer/DrawerLayout$LayoutParams;

    .line 56
    .line 57
    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 58
    .line 59
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 60
    .line 61
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 62
    goto :goto_0

    .line 63
    .line 64
    .line 65
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/narvii/drawer/DrawerLayout;->onMeasure(II)V

    .line 66
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-super {p0, p1}, Lcom/narvii/drawer/DrawerLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return p1

    .line 6
    :catch_0
    move-exception p1

    .line 7
    .line 8
    const-string v0, "drawer layout touch exception"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    const/4 p1, 0x0

    .line 13
    return p1
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
