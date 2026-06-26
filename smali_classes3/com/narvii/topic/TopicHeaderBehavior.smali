.class public Lcom/narvii/topic/TopicHeaderBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;
.source "TopicHeaderBehavior.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 34
    instance-of p1, p3, Lcom/narvii/nested/NVAppBarLayout;

    return p1
.end method

.method public onAttachedToLayoutParams(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;)V
    .locals 1

    .line 27
    iget v0, p1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    if-nez v0, :cond_0

    const/16 v0, 0x30

    .line 28
    iput v0, p1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    :cond_0
    return-void
.end method

.method public onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .line 39
    invoke-virtual {p3}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    const v1, 0x7f0902e6

    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 43
    invoke-virtual {v2}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    :cond_0
    if-nez v0, :cond_2

    .line 46
    instance-of v2, p3, Lcom/narvii/nested/NVAppBarLayout;

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 47
    :goto_0
    move-object v3, p3

    check-cast v3, Lcom/narvii/nested/NVAppBarLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 48
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 49
    invoke-virtual {v3, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    .line 50
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_1

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 51
    invoke-virtual {v3}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    :cond_2
    :goto_1
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v1

    if-gez v1, :cond_3

    .line 58
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v1, v0

    int-to-float v1, v1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v0, v0, v2

    div-float/2addr v1, v0

    sub-float/2addr v2, v1

    .line 59
    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 61
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 63
    :goto_2
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
