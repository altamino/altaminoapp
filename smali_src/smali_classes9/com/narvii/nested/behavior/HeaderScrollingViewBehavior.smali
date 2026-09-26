.class public abstract Lcom/narvii/nested/behavior/HeaderScrollingViewBehavior;
.super Lcom/narvii/nested/behavior/ViewOffsetBehavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/nested/behavior/ViewOffsetBehavior<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private mOverlayTop:I

.field public final mTempRect1:Landroid/graphics/Rect;

.field public final mTempRect2:Landroid/graphics/Rect;

.field private mVerticalLayoutGap:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/narvii/nested/behavior/ViewOffsetBehavior;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/narvii/nested/behavior/HeaderScrollingViewBehavior;->mTempRect1:Landroid/graphics/Rect;

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/narvii/nested/behavior/HeaderScrollingViewBehavior;->mTempRect2:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/narvii/nested/behavior/HeaderScrollingViewBehavior;->mVerticalLayoutGap:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/narvii/nested/behavior/ViewOffsetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/narvii/nested/behavior/HeaderScrollingViewBehavior;->mTempRect1:Landroid/graphics/Rect;

    .line 6
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/narvii/nested/behavior/HeaderScrollingViewBehavior;->mTempRect2:Landroid/graphics/Rect;

    const/4 p1, 0x0

    iput p1, p0, Lcom/narvii/nested/behavior/HeaderScrollingViewBehavior;->mVerticalLayoutGap:I

    return-void
.end method

.method private static resolveGravity(I)I
    .locals 0

    if-nez p0, :cond_0

    const p0, 0x800033

    :cond_0
    return p0
.end method


# virtual methods
.method public abstract findFirstDependency(Ljava/util/List;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method public final getOverlapPixelsForOffset(Landroid/view/View;)I
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/nested/behavior/HeaderScrollingViewBehavior;->mOverlayTop:I

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/nested/behavior/HeaderScrollingViewBehavior;->getOverlapRatioForOffset(Landroid/view/View;)F

    .line 10
    move-result p1

    .line 11
    .line 12
    iget v0, p0, Lcom/narvii/nested/behavior/HeaderScrollingViewBehavior;->mOverlayTop:I

    .line 13
    int-to-float v2, v0

    .line 14
    mul-float/2addr p1, v2

    .line 15
    float-to-int p1, p1

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v1, v0}, Landroidx/core/math/MathUtils;->b(III)I

    .line 19
    move-result v1

    .line 20
    :goto_0
    return v1
.end method

.method public getOverlapRatioForOffset(Landroid/view/View;)F
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public final getOverlayTop()I
    .locals 1

    iget v0, p0, Lcom/narvii/nested/behavior/HeaderScrollingViewBehavior;->mOverlayTop:I

    return v0
.end method

.method public getScrollRange(Landroid/view/View;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final getVerticalLayoutGap()I
    .locals 1

    iget v0, p0, Lcom/narvii/nested/behavior/HeaderScrollingViewBehavior;->mVerticalLayoutGap:I

    return v0
.end method

.method protected layoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/narvii/nested/behavior/HeaderScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 17
    .line 18
    iget-object v5, p0, Lcom/narvii/nested/behavior/HeaderScrollingViewBehavior;->mTempRect1:Landroid/graphics/Rect;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 22
    move-result v2

    .line 23
    .line 24
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 25
    add-int/2addr v2, v3

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 29
    move-result v3

    .line 30
    .line 31
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 32
    add-int/2addr v3, v4

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 36
    move-result v4

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 40
    move-result v6

    .line 41
    sub-int/2addr v4, v6

    .line 42
    .line 43
    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 44
    sub-int/2addr v4, v6

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 48
    move-result v6

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 52
    move-result v7

    .line 53
    add-int/2addr v6, v7

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 57
    move-result v7

    .line 58
    sub-int/2addr v6, v7

    .line 59
    .line 60
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 61
    sub-int/2addr v6, v7

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5, v2, v3, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getLastWindowInsets()Landroidx/core/view/WindowInsetsCompat;

    .line 68
    move-result-object v2

    .line 69
    .line 70
    if-eqz v2, :cond_0

    .line 71
    .line 72
    .line 73
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->A(Landroid/view/View;)Z

    .line 74
    move-result p1

    .line 75
    .line 76
    if-eqz p1, :cond_0

    .line 77
    .line 78
    .line 79
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->A(Landroid/view/View;)Z

    .line 80
    move-result p1

    .line 81
    .line 82
    if-nez p1, :cond_0

    .line 83
    .line 84
    iget p1, v5, Landroid/graphics/Rect;->left:I

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat;->k()I

    .line 88
    move-result v3

    .line 89
    add-int/2addr p1, v3

    .line 90
    .line 91
    iput p1, v5, Landroid/graphics/Rect;->left:I

    .line 92
    .line 93
    iget p1, v5, Landroid/graphics/Rect;->right:I

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat;->l()I

    .line 97
    move-result v2

    .line 98
    sub-int/2addr p1, v2

    .line 99
    .line 100
    iput p1, v5, Landroid/graphics/Rect;->right:I

    .line 101
    .line 102
    :cond_0
    iget-object p1, p0, Lcom/narvii/nested/behavior/HeaderScrollingViewBehavior;->mTempRect2:Landroid/graphics/Rect;

    .line 103
    .line 104
    iget v1, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 105
    .line 106
    .line 107
    invoke-static {v1}, Lcom/narvii/nested/behavior/HeaderScrollingViewBehavior;->resolveGravity(I)I

    .line 108
    move-result v2

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 112
    move-result v3

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 116
    move-result v4

    .line 117
    move-object v6, p1

    .line 118
    move v7, p3

    .line 119
    .line 120
    .line 121
    invoke-static/range {v2 .. v7}, Landroidx/core/view/GravityCompat;->a(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v0}, Lcom/narvii/nested/behavior/HeaderScrollingViewBehavior;->getOverlapPixelsForOffset(Landroid/view/View;)I

    .line 125
    move-result p3

    .line 126
    .line 127
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 128
    .line 129
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 130
    sub-int/2addr v2, p3

    .line 131
    .line 132
    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 133
    .line 134
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 135
    sub-int/2addr v4, p3

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 139
    .line 140
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 144
    move-result p2

    .line 145
    sub-int/2addr p1, p2

    .line 146
    .line 147
    iput p1, p0, Lcom/narvii/nested/behavior/HeaderScrollingViewBehavior;->mVerticalLayoutGap:I

    .line 148
    goto :goto_0

    .line 149
    .line 150
    .line 151
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/nested/behavior/ViewOffsetBehavior;->layoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    .line 152
    const/4 p1, 0x0

    .line 153
    .line 154
    iput p1, p0, Lcom/narvii/nested/behavior/HeaderScrollingViewBehavior;->mVerticalLayoutGap:I

    .line 155
    :goto_0
    return-void
.end method

.method public onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 5
    move-result-object v1

    .line 6
    .line 7
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 8
    const/4 v2, -0x1

    .line 9
    .line 10
    if-eq v1, v2, :cond_0

    .line 11
    const/4 v3, -0x2

    .line 12
    .line 13
    if-ne v1, v3, :cond_5

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    .line 17
    move-result-object v3

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v3}, Lcom/narvii/nested/behavior/HeaderScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Landroid/view/View;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    if-eqz v3, :cond_5

    .line 24
    .line 25
    .line 26
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->A(Landroid/view/View;)Z

    .line 27
    move-result v4

    .line 28
    const/4 v5, 0x1

    .line 29
    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->A(Landroid/view/View;)Z

    .line 34
    move-result v4

    .line 35
    .line 36
    if-nez v4, :cond_1

    .line 37
    move-object v4, p2

    .line 38
    .line 39
    .line 40
    invoke-static {p2, v5}, Landroidx/core/view/ViewCompat;->D0(Landroid/view/View;Z)V

    .line 41
    .line 42
    .line 43
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->A(Landroid/view/View;)Z

    .line 44
    move-result v6

    .line 45
    .line 46
    if-eqz v6, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 50
    return v5

    .line 51
    :cond_1
    move-object v4, p2

    .line 52
    .line 53
    .line 54
    :cond_2
    invoke-static/range {p5 .. p5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 55
    move-result v6

    .line 56
    .line 57
    if-nez v6, :cond_3

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 61
    move-result v6

    .line 62
    .line 63
    .line 64
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 65
    move-result v7

    .line 66
    sub-int/2addr v6, v7

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v3}, Lcom/narvii/nested/behavior/HeaderScrollingViewBehavior;->getScrollRange(Landroid/view/View;)I

    .line 70
    move-result v3

    .line 71
    add-int/2addr v6, v3

    .line 72
    .line 73
    if-ne v1, v2, :cond_4

    .line 74
    .line 75
    const/high16 v1, 0x40000000    # 2.0f

    .line 76
    goto :goto_0

    .line 77
    .line 78
    :cond_4
    const/high16 v1, -0x80000000

    .line 79
    .line 80
    .line 81
    :goto_0
    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 82
    move-result v10

    .line 83
    move-object v6, p1

    .line 84
    move-object v7, p2

    .line 85
    move v8, p3

    .line 86
    .line 87
    move/from16 v9, p4

    .line 88
    .line 89
    move/from16 v11, p6

    .line 90
    .line 91
    .line 92
    invoke-virtual/range {v6 .. v11}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    .line 93
    return v5

    .line 94
    :cond_5
    const/4 v1, 0x0

    .line 95
    return v1
.end method

.method public final setOverlayTop(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/nested/behavior/HeaderScrollingViewBehavior;->mOverlayTop:I

    return-void
.end method
