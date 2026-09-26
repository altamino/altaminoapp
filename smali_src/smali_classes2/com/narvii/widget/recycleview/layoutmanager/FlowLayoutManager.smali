.class public Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;,
        Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutFrom;,
        Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$AlignMode;
    }
.end annotation


# static fields
.field public static final CENTER:I = 0x3

.field public static final LEFT:I = 0x1

.field public static final RIGHT:I = 0x2

.field public static final TWO_SIDE:I


# instance fields
.field private layoutHelper:Lcom/narvii/widget/recycleview/layoutmanager/ILayoutHelper;

.field private layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

.field private rowViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    .line 3
    new-instance v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    invoke-direct {v0}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 4
    new-instance v0, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;

    invoke-direct {v0}, Lcom/narvii/widget/recycleview/layoutmanager/LayoutHelperImpl;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutHelper:Lcom/narvii/widget/recycleview/layoutmanager/ILayoutHelper;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->rowViews:Ljava/util/List;

    iget-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 6
    iput p1, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->alignMode:I

    return-void
.end method

.method private checkoutBottomOutofRange(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->findCloestVisibleView(Z)Landroid/view/View;

    .line 5
    move-result-object v0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 9
    move-result v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->b()I

    .line 13
    move-result p1

    .line 14
    .line 15
    add-int/lit8 p1, p1, -0x1

    .line 16
    .line 17
    if-ne v1, p1, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 21
    move-result p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 25
    move-result v1

    .line 26
    sub-int/2addr p1, v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getViewBottomWithMargin(Landroid/view/View;)I

    .line 30
    move-result v1

    .line 31
    .line 32
    iget-object v2, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 33
    .line 34
    iget v3, v2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->pendingScrollDistance:I

    .line 35
    sub-int/2addr v1, v3

    .line 36
    sub-int/2addr p1, v1

    .line 37
    .line 38
    if-lez p1, :cond_0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getViewBottomWithMargin(Landroid/view/View;)I

    .line 42
    move-result p1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 46
    move-result v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 50
    move-result v1

    .line 51
    sub-int/2addr v0, v1

    .line 52
    sub-int/2addr p1, v0

    .line 53
    .line 54
    iput p1, v2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->pendingScrollDistance:I

    .line 55
    :cond_0
    return-void
.end method

.method private checkoutTopOutofRange(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 4

    .line 1
    const/4 p1, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->findCloestVisibleView(Z)Landroid/view/View;

    .line 5
    move-result-object p1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 9
    move-result v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 15
    move-result v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getViewTopWithMargin(Landroid/view/View;)I

    .line 19
    move-result v1

    .line 20
    .line 21
    iget-object v2, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 22
    .line 23
    iget v3, v2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->pendingScrollDistance:I

    .line 24
    add-int/2addr v1, v3

    .line 25
    sub-int/2addr v0, v1

    .line 26
    .line 27
    if-gez v0, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getViewTopWithMargin(Landroid/view/View;)I

    .line 31
    move-result p1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 35
    move-result v0

    .line 36
    sub-int/2addr p1, v0

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 40
    move-result p1

    .line 41
    .line 42
    iput p1, v2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->pendingScrollDistance:I

    .line 43
    :cond_0
    return-void
.end method

.method private layoutFromDownToUp(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 3
    .line 4
    iget v1, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutAnchor:I

    .line 5
    .line 6
    iget v0, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->pendingScrollDistance:I

    .line 7
    add-int/2addr v1, v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 11
    move-result v0

    .line 12
    .line 13
    if-gt v1, v0, :cond_0

    .line 14
    return-void

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutHelper:Lcom/narvii/widget/recycleview/layoutmanager/ILayoutHelper;

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, p1, p2, p0}, Lcom/narvii/widget/recycleview/layoutmanager/ILayoutHelper;->layoutReverse(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p2}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->checkoutTopOutofRange(Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 23
    return-void
.end method

.method private layoutFromUpToDown(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 9
    .line 10
    iget v1, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutAnchor:I

    .line 11
    .line 12
    iget v0, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->pendingScrollDistance:I

    .line 13
    sub-int/2addr v1, v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 17
    move-result v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 21
    move-result v2

    .line 22
    sub-int/2addr v0, v2

    .line 23
    .line 24
    if-lt v1, v0, :cond_0

    .line 25
    return-void

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 29
    move-result v0

    .line 30
    .line 31
    iget-object v1, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 32
    .line 33
    iget-boolean v2, v1, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutByScroll:Z

    .line 34
    const/4 v3, 0x0

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    iget v1, v1, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->startLayoutPos:I

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move v1, v3

    .line 41
    .line 42
    :goto_0
    if-nez v2, :cond_2

    .line 43
    .line 44
    iget-object v2, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutHelper:Lcom/narvii/widget/recycleview/layoutmanager/ILayoutHelper;

    .line 45
    .line 46
    .line 47
    invoke-interface {v2}, Lcom/narvii/widget/recycleview/layoutmanager/ILayoutHelper;->willCalculateUnVisibleViews()V

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->b()I

    .line 51
    move-result v2

    .line 52
    .line 53
    if-ge v1, v2, :cond_c

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->o(I)Landroid/view/View;

    .line 57
    move-result-object v2

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v2, v3, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v2}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    .line 67
    move-result v4

    .line 68
    add-int/2addr v0, v4

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getContentHorizontalSpace()I

    .line 72
    move-result v5

    .line 73
    const/4 v6, 0x1

    .line 74
    .line 75
    if-gt v0, v5, :cond_5

    .line 76
    .line 77
    iget-object v4, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->rowViews:Ljava/util/List;

    .line 78
    .line 79
    .line 80
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->b()I

    .line 84
    move-result v2

    .line 85
    sub-int/2addr v2, v6

    .line 86
    .line 87
    if-ne v1, v2, :cond_b

    .line 88
    .line 89
    iget-object v2, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 90
    .line 91
    iget-boolean v4, v2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutByScroll:Z

    .line 92
    .line 93
    if-nez v4, :cond_4

    .line 94
    .line 95
    iget v4, v2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->startLayoutPos:I

    .line 96
    .line 97
    if-ge v1, v4, :cond_3

    .line 98
    move v4, v6

    .line 99
    goto :goto_2

    .line 100
    :cond_3
    move v4, v3

    .line 101
    .line 102
    :goto_2
    iput-boolean v4, v2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->justCalculate:Z

    .line 103
    .line 104
    :cond_4
    iget-object v2, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutHelper:Lcom/narvii/widget/recycleview/layoutmanager/ILayoutHelper;

    .line 105
    .line 106
    iget-object v4, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->rowViews:Ljava/util/List;

    .line 107
    .line 108
    .line 109
    invoke-interface {v2, v4, p1, p0, v6}, Lcom/narvii/widget/recycleview/layoutmanager/ILayoutHelper;->layoutARow(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;Z)V

    .line 110
    goto :goto_5

    .line 111
    .line 112
    :cond_5
    iget-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 113
    .line 114
    iget-boolean v5, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutByScroll:Z

    .line 115
    .line 116
    if-nez v5, :cond_7

    .line 117
    .line 118
    add-int/lit8 v5, v1, -0x1

    .line 119
    .line 120
    iget v7, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->startLayoutPos:I

    .line 121
    .line 122
    if-ge v5, v7, :cond_6

    .line 123
    move v5, v6

    .line 124
    goto :goto_3

    .line 125
    :cond_6
    move v5, v3

    .line 126
    .line 127
    :goto_3
    iput-boolean v5, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->justCalculate:Z

    .line 128
    .line 129
    :cond_7
    iget-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutHelper:Lcom/narvii/widget/recycleview/layoutmanager/ILayoutHelper;

    .line 130
    .line 131
    iget-object v5, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->rowViews:Ljava/util/List;

    .line 132
    .line 133
    .line 134
    invoke-interface {v0, v5, p1, p0, v3}, Lcom/narvii/widget/recycleview/layoutmanager/ILayoutHelper;->layoutARow(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;Z)V

    .line 135
    .line 136
    iget-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 137
    .line 138
    iget v5, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutAnchor:I

    .line 139
    .line 140
    iget v0, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->pendingScrollDistance:I

    .line 141
    sub-int/2addr v5, v0

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 145
    move-result v0

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 149
    move-result v7

    .line 150
    sub-int/2addr v0, v7

    .line 151
    .line 152
    if-lt v5, v0, :cond_8

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 156
    goto :goto_6

    .line 157
    .line 158
    .line 159
    :cond_8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 160
    move-result v0

    .line 161
    .line 162
    iget-object v5, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->rowViews:Ljava/util/List;

    .line 163
    .line 164
    .line 165
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    add-int/2addr v0, v4

    .line 167
    .line 168
    .line 169
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->b()I

    .line 170
    move-result v2

    .line 171
    sub-int/2addr v2, v6

    .line 172
    .line 173
    if-ne v1, v2, :cond_b

    .line 174
    .line 175
    iget-object v2, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 176
    .line 177
    iget-boolean v4, v2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutByScroll:Z

    .line 178
    .line 179
    if-nez v4, :cond_a

    .line 180
    .line 181
    iget v4, v2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->startLayoutPos:I

    .line 182
    .line 183
    if-ge v1, v4, :cond_9

    .line 184
    move v4, v6

    .line 185
    goto :goto_4

    .line 186
    :cond_9
    move v4, v3

    .line 187
    .line 188
    :goto_4
    iput-boolean v4, v2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->justCalculate:Z

    .line 189
    .line 190
    :cond_a
    iget-object v2, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutHelper:Lcom/narvii/widget/recycleview/layoutmanager/ILayoutHelper;

    .line 191
    .line 192
    iget-object v4, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->rowViews:Ljava/util/List;

    .line 193
    .line 194
    .line 195
    invoke-interface {v2, v4, p1, p0, v6}, Lcom/narvii/widget/recycleview/layoutmanager/ILayoutHelper;->layoutARow(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;Z)V

    .line 196
    .line 197
    :cond_b
    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 198
    .line 199
    goto/16 :goto_1

    .line 200
    .line 201
    :cond_c
    :goto_6
    iget-object p1, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 202
    .line 203
    iget p1, p1, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->pendingScrollDistance:I

    .line 204
    .line 205
    if-eqz p1, :cond_d

    .line 206
    .line 207
    .line 208
    invoke-direct {p0, p2}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->checkoutBottomOutofRange(Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 209
    :cond_d
    return-void
.end method

.method private resetLayoutInfo()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->findCloestVisibleView(Z)Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iget-object v3, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getViewTopWithMargin(Landroid/view/View;)I

    .line 18
    move-result v4

    .line 19
    .line 20
    iput v4, v3, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->firstVisibleViewTop:I

    .line 21
    .line 22
    iget-object v3, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 26
    move-result v0

    .line 27
    .line 28
    iput v0, v3, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->startLayoutPos:I

    .line 29
    .line 30
    iget-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 31
    .line 32
    iget v0, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->startLayoutPos:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 36
    move-result v3

    .line 37
    .line 38
    if-lt v0, v3, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 41
    .line 42
    iput v2, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->startLayoutPos:I

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 49
    move-result v3

    .line 50
    .line 51
    iput v3, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->firstVisibleViewTop:I

    .line 52
    .line 53
    iget-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 54
    .line 55
    iput v2, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->startLayoutPos:I

    .line 56
    .line 57
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 58
    .line 59
    iget v3, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->firstVisibleViewTop:I

    .line 60
    .line 61
    iput v3, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutAnchor:I

    .line 62
    .line 63
    iput v2, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->pendingScrollDistance:I

    .line 64
    .line 65
    iput v1, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutFrom:I

    .line 66
    .line 67
    iput-boolean v2, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutByScroll:Z

    .line 68
    .line 69
    iput-boolean v2, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->justCalculate:Z

    .line 70
    return-void
.end method

.method private startLayout(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 3
    .line 4
    iget v0, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutFrom:I

    .line 5
    const/4 v1, -0x1

    .line 6
    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutFromUpToDown(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutFromDownToUp(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 19
    :goto_0
    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected findCloestVisibleView(Z)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 8
    move-result p1

    .line 9
    .line 10
    add-int/lit8 p1, p1, -0x1

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 3
    const/4 v1, -0x2

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 7
    return-object v0
.end method

.method protected getContentHorizontalSpace()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    .line 13
    move-result v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    return v0
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 10
    move-result v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    .line 14
    move-result v2

    .line 15
    sub-int/2addr v1, v2

    .line 16
    .line 17
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 18
    sub-int/2addr v1, v2

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 22
    move-result v2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    .line 26
    move-result v3

    .line 27
    sub-int/2addr v2, v3

    .line 28
    .line 29
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 30
    sub-int/2addr v2, v3

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 34
    move-result v3

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    .line 38
    move-result v4

    .line 39
    add-int/2addr v3, v4

    .line 40
    .line 41
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 42
    add-int/2addr v3, v4

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 46
    move-result v4

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    .line 50
    move-result p1

    .line 51
    add-int/2addr v4, p1

    .line 52
    .line 53
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 54
    add-int/2addr v4, p1

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 58
    return-void
.end method

.method protected getHeightWithMargins(Landroid/view/View;)I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    .line 10
    move-result p1

    .line 11
    .line 12
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 13
    add-int/2addr p1, v1

    .line 14
    .line 15
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 16
    add-int/2addr p1, v0

    .line 17
    return p1
.end method

.method protected getLayoutInfo()Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;
    .locals 1

    iget-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    return-object v0
.end method

.method protected getViewBottomWithMargin(Landroid/view/View;)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    .line 10
    move-result p1

    .line 11
    .line 12
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 13
    add-int/2addr p1, v0

    .line 14
    return p1
.end method

.method protected getViewTopWithMargin(Landroid/view/View;)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    .line 10
    move-result p1

    .line 11
    .line 12
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 13
    sub-int/2addr p1, v0

    .line 14
    return p1
.end method

.method protected getWidthWithMargins(Landroid/view/View;)I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    .line 10
    move-result p1

    .line 11
    .line 12
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 13
    add-int/2addr p1, v1

    .line 14
    .line 15
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 16
    add-int/2addr p1, v0

    .line 17
    return p1
.end method

.method public layoutDecoratedWithMargins(Landroid/view/View;IIII)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    .line 10
    move-result v1

    .line 11
    add-int/2addr p2, v1

    .line 12
    .line 13
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 14
    add-int/2addr p2, v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    .line 18
    move-result v1

    .line 19
    add-int/2addr p3, v1

    .line 20
    .line 21
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 22
    add-int/2addr p3, v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    .line 26
    move-result v1

    .line 27
    sub-int/2addr p4, v1

    .line 28
    .line 29
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 30
    sub-int/2addr p4, v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    .line 34
    move-result v1

    .line 35
    sub-int/2addr p5, v1

    .line 36
    .line 37
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 38
    sub-int/2addr p5, v0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 42
    return-void
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 3
    const/4 p2, 0x1

    .line 4
    .line 5
    iput-boolean p2, p1, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->haveReseted:Z

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->resetLayoutInfo()V

    .line 9
    return-void
.end method

.method public onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    iput-boolean v0, p1, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->haveReseted:Z

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->resetLayoutInfo()V

    .line 9
    return-void
.end method

.method public onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 3
    const/4 p2, 0x1

    .line 4
    .line 5
    iput-boolean p2, p1, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->haveReseted:Z

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->resetLayoutInfo()V

    .line 9
    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 3
    const/4 p2, 0x1

    .line 4
    .line 5
    iput-boolean p2, p1, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->haveReseted:Z

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->resetLayoutInfo()V

    .line 9
    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    iget-object p1, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    const/4 p2, 0x1

    .line 1
    iput-boolean p2, p1, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->haveReseted:Z

    .line 2
    invoke-direct {p0}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->resetLayoutInfo()V

    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    iget-object p1, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p1, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->haveReseted:Z

    .line 4
    invoke-direct {p0}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->resetLayoutInfo()V

    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->b()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 10
    return-void

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 13
    .line 14
    iget-boolean v1, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->haveReseted:Z

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    iput-boolean v1, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->haveReseted:Z

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-direct {p0}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->resetLayoutInfo()V

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->startLayout(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 30
    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 8
    move-result v1

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    return v0

    .line 12
    :cond_1
    const/4 v1, 0x1

    .line 13
    .line 14
    if-lez p1, :cond_4

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->findCloestVisibleView(Z)Landroid/view/View;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 22
    move-result v3

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$State;->b()I

    .line 26
    move-result v4

    .line 27
    sub-int/2addr v4, v1

    .line 28
    .line 29
    if-ne v3, v4, :cond_7

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 33
    move-result v3

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 37
    move-result v4

    .line 38
    sub-int/2addr v3, v4

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v2}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getViewBottomWithMargin(Landroid/view/View;)I

    .line 42
    move-result v2

    .line 43
    sub-int/2addr v3, v2

    .line 44
    .line 45
    if-nez v3, :cond_2

    .line 46
    return v0

    .line 47
    .line 48
    :cond_2
    if-gez v3, :cond_3

    .line 49
    neg-int v2, v3

    .line 50
    .line 51
    .line 52
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    .line 53
    move-result p1

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    return v0

    .line 56
    .line 57
    .line 58
    :cond_4
    invoke-virtual {p0, v1}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->findCloestVisibleView(Z)Landroid/view/View;

    .line 59
    move-result-object v2

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 63
    move-result v3

    .line 64
    .line 65
    if-nez v3, :cond_7

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 69
    move-result v3

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v2}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getViewTopWithMargin(Landroid/view/View;)I

    .line 73
    move-result v2

    .line 74
    sub-int/2addr v3, v2

    .line 75
    .line 76
    if-nez v3, :cond_5

    .line 77
    return v0

    .line 78
    .line 79
    :cond_5
    if-lez v3, :cond_6

    .line 80
    neg-int v2, v3

    .line 81
    .line 82
    .line 83
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    .line 84
    move-result p1

    .line 85
    goto :goto_0

    .line 86
    :cond_6
    return v0

    .line 87
    .line 88
    :cond_7
    :goto_0
    if-lez p1, :cond_8

    .line 89
    .line 90
    iget-object v2, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v0}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->findCloestVisibleView(Z)Landroid/view/View;

    .line 94
    move-result-object v3

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v3}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getViewBottomWithMargin(Landroid/view/View;)I

    .line 98
    move-result v3

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 102
    move-result v4

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 106
    move-result v5

    .line 107
    sub-int/2addr v4, v5

    .line 108
    sub-int/2addr v3, v4

    .line 109
    .line 110
    .line 111
    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    .line 112
    move-result v3

    .line 113
    .line 114
    iput v3, v2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->pendingScrollDistance:I

    .line 115
    .line 116
    iget-object v2, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 117
    .line 118
    iput v1, v2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutFrom:I

    .line 119
    goto :goto_1

    .line 120
    .line 121
    :cond_8
    iget-object v2, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 125
    move-result v3

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v1}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->findCloestVisibleView(Z)Landroid/view/View;

    .line 129
    move-result-object v4

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, v4}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getViewTopWithMargin(Landroid/view/View;)I

    .line 133
    move-result v4

    .line 134
    sub-int/2addr v3, v4

    .line 135
    .line 136
    .line 137
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 138
    move-result v3

    .line 139
    neg-int v4, p1

    .line 140
    .line 141
    .line 142
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 143
    move-result v3

    .line 144
    .line 145
    iput v3, v2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->pendingScrollDistance:I

    .line 146
    .line 147
    iget-object v2, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 148
    const/4 v3, -0x1

    .line 149
    .line 150
    iput v3, v2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutFrom:I

    .line 151
    .line 152
    :goto_1
    iget-object v2, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutHelper:Lcom/narvii/widget/recycleview/layoutmanager/ILayoutHelper;

    .line 153
    .line 154
    .line 155
    invoke-interface {v2, p2, p3, p0}, Lcom/narvii/widget/recycleview/layoutmanager/ILayoutHelper;->recycleUnvisibleViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;)V

    .line 156
    .line 157
    iget-object v2, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 158
    .line 159
    .line 160
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 161
    move-result v3

    .line 162
    .line 163
    iput v3, v2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->pendingScrollDistance:I

    .line 164
    .line 165
    if-lez p1, :cond_9

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0, v0}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->findCloestVisibleView(Z)Landroid/view/View;

    .line 169
    move-result-object v0

    .line 170
    .line 171
    iget-object v2, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, v0}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getViewBottomWithMargin(Landroid/view/View;)I

    .line 175
    move-result v3

    .line 176
    .line 177
    iput v3, v2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutAnchor:I

    .line 178
    .line 179
    iget-object v2, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 183
    move-result v0

    .line 184
    add-int/2addr v0, v1

    .line 185
    .line 186
    iput v0, v2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->startLayoutPos:I

    .line 187
    goto :goto_2

    .line 188
    .line 189
    .line 190
    :cond_9
    invoke-virtual {p0, v1}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->findCloestVisibleView(Z)Landroid/view/View;

    .line 191
    move-result-object v0

    .line 192
    .line 193
    iget-object v2, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0, v0}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->getViewTopWithMargin(Landroid/view/View;)I

    .line 197
    move-result v3

    .line 198
    .line 199
    iput v3, v2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutAnchor:I

    .line 200
    .line 201
    iget-object v2, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 205
    move-result v0

    .line 206
    sub-int/2addr v0, v1

    .line 207
    .line 208
    iput v0, v2, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->startLayoutPos:I

    .line 209
    .line 210
    :goto_2
    iget-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 211
    .line 212
    iput-boolean v1, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->layoutByScroll:Z

    .line 213
    .line 214
    .line 215
    invoke-direct {p0, p2, p3}, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->startLayout(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 216
    .line 217
    if-lez p1, :cond_a

    .line 218
    .line 219
    iget-object p1, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 220
    .line 221
    iget p1, p1, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->pendingScrollDistance:I

    .line 222
    goto :goto_3

    .line 223
    .line 224
    :cond_a
    iget-object p1, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 225
    .line 226
    iget p1, p1, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->pendingScrollDistance:I

    .line 227
    neg-int p1, p1

    .line 228
    :goto_3
    neg-int p2, p1

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->offsetChildrenVertical(I)V

    .line 232
    return p1
.end method

.method public setAlignMode(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager;->layoutInfo:Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;

    .line 3
    .line 4
    iget v1, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->alignMode:I

    .line 5
    .line 6
    if-ne p1, v1, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iput p1, v0, Lcom/narvii/widget/recycleview/layoutmanager/FlowLayoutManager$LayoutInfo;->alignMode:I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 13
    return-void
.end method
