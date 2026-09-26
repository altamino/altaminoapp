.class public Lcom/narvii/widget/UserClickView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private avatar:Landroid/view/View;

.field private nickname:Landroid/view/View;

.field private parent:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    return-void
.end method

.method private init()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/UserClickView;->parent:Landroid/view/View;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    instance-of v0, v0, Landroid/view/ViewGroup;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Landroid/view/View;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/widget/UserClickView;->parent:Landroid/view/View;

    .line 21
    .line 22
    .line 23
    const v1, 0x7f0a0171

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    iput-object v0, p0, Lcom/narvii/widget/UserClickView;->avatar:Landroid/view/View;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/widget/UserClickView;->parent:Landroid/view/View;

    .line 32
    .line 33
    .line 34
    const v1, 0x7f0a09f9

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    iput-object v0, p0, Lcom/narvii/widget/UserClickView;->nickname:Landroid/view/View;

    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v2}, Lcom/narvii/widget/UserClickView;->setPressed(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/narvii/widget/UserClickView;->init()V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/widget/UserClickView;->avatar:Landroid/view/View;

    .line 17
    .line 18
    .line 19
    const v1, 0x7fffffff

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 25
    move-result v0

    .line 26
    .line 27
    iget-object v3, p0, Lcom/narvii/widget/UserClickView;->avatar:Landroid/view/View;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 31
    move-result v3

    .line 32
    add-int/2addr v0, v3

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move v0, v1

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 38
    move-result v3

    .line 39
    sub-int/2addr v0, v3

    .line 40
    .line 41
    iget-object v3, p0, Lcom/narvii/widget/UserClickView;->nickname:Landroid/view/View;

    .line 42
    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 47
    move-result v1

    .line 48
    .line 49
    iget-object v3, p0, Lcom/narvii/widget/UserClickView;->nickname:Landroid/view/View;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 53
    move-result v3

    .line 54
    add-int/2addr v1, v3

    .line 55
    .line 56
    .line 57
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 58
    move-result v3

    .line 59
    sub-int/2addr v1, v3

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 63
    move-result v3

    .line 64
    int-to-float v0, v0

    .line 65
    .line 66
    cmpl-float v0, v3, v0

    .line 67
    .line 68
    if-lez v0, :cond_3

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 72
    move-result v0

    .line 73
    int-to-float v1, v1

    .line 74
    .line 75
    cmpl-float v0, v0, v1

    .line 76
    .line 77
    if-lez v0, :cond_3

    .line 78
    return v2

    .line 79
    .line 80
    .line 81
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 82
    move-result p1

    .line 83
    return p1
.end method

.method public setPressed(Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/widget/UserClickView;->avatar:Landroid/view/View;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/UserClickView;->nickname:Landroid/view/View;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 18
    :cond_1
    return-void
.end method
