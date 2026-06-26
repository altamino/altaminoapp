.class public Lcom/narvii/widget/UserClickView;
.super Landroid/view/View;
.source "UserClickView.java"


# instance fields
.field private avatar:Landroid/view/View;

.field private nickname:Landroid/view/View;

.field private parent:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/narvii/widget/UserClickView;->parent:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/narvii/widget/UserClickView;->parent:Landroid/view/View;

    .line 35
    iget-object v0, p0, Lcom/narvii/widget/UserClickView;->parent:Landroid/view/View;

    const v1, 0x7f0900e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/UserClickView;->avatar:Landroid/view/View;

    .line 36
    iget-object v0, p0, Lcom/narvii/widget/UserClickView;->parent:Landroid/view/View;

    const v1, 0x7f090764

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/UserClickView;->nickname:Landroid/view/View;

    :cond_0
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 43
    invoke-virtual {p0, v1}, Lcom/narvii/widget/UserClickView;->setPressed(Z)V

    .line 45
    :cond_0
    invoke-direct {p0}, Lcom/narvii/widget/UserClickView;->init()V

    .line 47
    iget-object v0, p0, Lcom/narvii/widget/UserClickView;->avatar:Landroid/view/View;

    const v2, 0x7fffffff

    if-eqz v0, :cond_1

    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v3, p0, Lcom/narvii/widget/UserClickView;->avatar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    :cond_1
    const v0, 0x7fffffff

    .line 50
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v0, v3

    .line 52
    iget-object v3, p0, Lcom/narvii/widget/UserClickView;->nickname:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 53
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/narvii/widget/UserClickView;->nickname:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 55
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    int-to-float v0, v0

    cmpl-float v0, v3, v0

    if-lez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    return v1

    .line 59
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setPressed(Z)V
    .locals 1

    .line 23
    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 24
    iget-object v0, p0, Lcom/narvii/widget/UserClickView;->avatar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/UserClickView;->nickname:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    :cond_1
    return-void
.end method
