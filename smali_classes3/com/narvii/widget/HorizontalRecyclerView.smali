.class public Lcom/narvii/widget/HorizontalRecyclerView;
.super Lcom/narvii/widget/recycleview/NVRecyclerView;
.source "HorizontalRecyclerView.java"


# instance fields
.field public disableTouch:Z

.field disallowed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/recycleview/NVRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 37
    iget-boolean v0, p0, Lcom/narvii/widget/HorizontalRecyclerView;->disableTouch:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 40
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 43
    :cond_1
    iget-boolean v0, p0, Lcom/narvii/widget/HorizontalRecyclerView;->disallowed:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/narvii/widget/HorizontalRecyclerView;->disallowed:Z

    .line 45
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    .line 50
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 24
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 26
    iput-boolean v1, p0, Lcom/narvii/widget/HorizontalRecyclerView;->disallowed:Z

    .line 27
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    .line 29
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    .line 30
    sput-boolean v1, Lcom/narvii/drawer/DrawerLayout;->disallowIntercept:Z

    :cond_1
    return v0
.end method
