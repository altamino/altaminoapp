.class public Lcom/narvii/topic/TopicHeaderBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    .line 2
    instance-of p1, p3, Lcom/narvii/nested/NVAppBarLayout;

    .line 3
    return p1
.end method

.method public onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V
    .locals 1
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/16 v0, 0x30

    .line 7
    .line 8
    iput v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 9
    :cond_0
    return-void
.end method

.method public onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p3}, Landroid/view/View;->getMinimumHeight()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f0a03b6

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/view/View;->getMinimumHeight()I

    .line 19
    move-result v0

    .line 20
    .line 21
    :cond_0
    if-nez v0, :cond_2

    .line 22
    .line 23
    instance-of v2, p3, Lcom/narvii/nested/NVAppBarLayout;

    .line 24
    .line 25
    if-eqz v2, :cond_2

    .line 26
    const/4 v2, 0x0

    .line 27
    :goto_0
    move-object v3, p3

    .line 28
    .line 29
    check-cast v3, Lcom/narvii/nested/NVAppBarLayout;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 33
    move-result v4

    .line 34
    .line 35
    if-ge v2, v4, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 39
    move-result-object v3

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 43
    move-result-object v4

    .line 44
    .line 45
    instance-of v5, v4, Ljava/lang/Boolean;

    .line 46
    .line 47
    if-eqz v5, :cond_1

    .line 48
    .line 49
    check-cast v4, Ljava/lang/Boolean;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 53
    move-result v4

    .line 54
    .line 55
    if-eqz v4, :cond_1

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Landroid/view/View;->getMinimumHeight()I

    .line 59
    move-result v0

    .line 60
    goto :goto_1

    .line 61
    .line 62
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 63
    goto :goto_0

    .line 64
    .line 65
    .line 66
    :cond_2
    :goto_1
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    .line 67
    move-result v1

    .line 68
    .line 69
    if-gez v1, :cond_3

    .line 70
    .line 71
    .line 72
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 73
    move-result v1

    .line 74
    .line 75
    .line 76
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    .line 77
    move-result v2

    .line 78
    add-int/2addr v1, v2

    .line 79
    sub-int/2addr v1, v0

    .line 80
    int-to-float v1, v1

    .line 81
    .line 82
    .line 83
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 84
    move-result v2

    .line 85
    sub-int/2addr v2, v0

    .line 86
    int-to-float v0, v2

    .line 87
    .line 88
    const/high16 v2, 0x3f800000    # 1.0f

    .line 89
    mul-float/2addr v0, v2

    .line 90
    div-float/2addr v1, v0

    .line 91
    sub-float/2addr v2, v1

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    .line 95
    goto :goto_2

    .line 96
    :cond_3
    const/4 v0, 0x0

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 100
    .line 101
    .line 102
    :goto_2
    invoke-super {p0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 103
    move-result p1

    .line 104
    return p1
.end method
