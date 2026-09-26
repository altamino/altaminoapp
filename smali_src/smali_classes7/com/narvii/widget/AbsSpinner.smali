.class public abstract Lcom/narvii/widget/AbsSpinner;
.super Lcom/narvii/widget/AdapterView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/AbsSpinner$RecycleBin;,
        Lcom/narvii/widget/AbsSpinner$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/widget/AdapterView<",
        "Landroid/widget/SpinnerAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field mAdapter:Landroid/widget/SpinnerAdapter;

.field mBlockLayoutRequests:Z

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field mHeightMeasureSpec:I

.field mInterpolator:Landroid/view/animation/Interpolator;

.field mRecycler:Lcom/narvii/widget/AbsSpinner$RecycleBin;

.field mSelectedView:Landroid/view/View;

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSpinnerPadding:Landroid/graphics/Rect;

.field private mTouchFrame:Landroid/graphics/Rect;

.field mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/widget/AdapterView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/narvii/widget/AbsSpinner;->mSelectionLeftPadding:I

    iput p1, p0, Lcom/narvii/widget/AbsSpinner;->mSelectionTopPadding:I

    iput p1, p0, Lcom/narvii/widget/AbsSpinner;->mSelectionRightPadding:I

    iput p1, p0, Lcom/narvii/widget/AbsSpinner;->mSelectionBottomPadding:I

    .line 2
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/narvii/widget/AbsSpinner;->mSelectedView:Landroid/view/View;

    .line 3
    new-instance p1, Lcom/narvii/widget/AbsSpinner$RecycleBin;

    invoke-direct {p1, p0}, Lcom/narvii/widget/AbsSpinner$RecycleBin;-><init>(Lcom/narvii/widget/AbsSpinner;)V

    iput-object p1, p0, Lcom/narvii/widget/AbsSpinner;->mRecycler:Lcom/narvii/widget/AbsSpinner$RecycleBin;

    .line 4
    invoke-direct {p0}, Lcom/narvii/widget/AbsSpinner;->initAbsSpinner()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/narvii/widget/AbsSpinner;->mSelectionLeftPadding:I

    iput p1, p0, Lcom/narvii/widget/AbsSpinner;->mSelectionTopPadding:I

    iput p1, p0, Lcom/narvii/widget/AbsSpinner;->mSelectionRightPadding:I

    iput p1, p0, Lcom/narvii/widget/AbsSpinner;->mSelectionBottomPadding:I

    .line 7
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/narvii/widget/AbsSpinner;->mSelectedView:Landroid/view/View;

    .line 8
    new-instance p1, Lcom/narvii/widget/AbsSpinner$RecycleBin;

    invoke-direct {p1, p0}, Lcom/narvii/widget/AbsSpinner$RecycleBin;-><init>(Lcom/narvii/widget/AbsSpinner;)V

    iput-object p1, p0, Lcom/narvii/widget/AbsSpinner;->mRecycler:Lcom/narvii/widget/AbsSpinner$RecycleBin;

    .line 9
    invoke-direct {p0}, Lcom/narvii/widget/AbsSpinner;->initAbsSpinner()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/widget/AbsSpinner;Landroid/view/View;Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    .line 4
    return-void
.end method

.method private initAbsSpinner()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/narvii/widget/AdapterView;->setFocusable(Z)V

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 9
    return-void
.end method


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, -0x2

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 8
    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/narvii/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public final getAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method final getChildHeight(Landroid/view/View;)I
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

.method final getChildWidth(Landroid/view/View;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final getCount()I
    .locals 1

    iget v0, p0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    return v0
.end method

.method public final getSelectedView()Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    .line 7
    .line 8
    if-ltz v0, :cond_0

    .line 9
    .line 10
    iget v1, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    .line 11
    sub-int/2addr v0, v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    move-result-object v0

    .line 16
    return-object v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return-object v0
.end method

.method final handleDataChanged()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/widget/AdapterView;->handleDataChanged()V

    .line 4
    return-void
.end method

.method abstract layout(IZ)V
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 10
    move-result v2

    .line 11
    .line 12
    iget v3, p0, Lcom/narvii/widget/AbsSpinner;->mSelectionLeftPadding:I

    .line 13
    .line 14
    if-le v2, v3, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 18
    move-result v3

    .line 19
    .line 20
    :cond_0
    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 26
    move-result v2

    .line 27
    .line 28
    iget v3, p0, Lcom/narvii/widget/AbsSpinner;->mSelectionTopPadding:I

    .line 29
    .line 30
    if-le v2, v3, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 34
    move-result v3

    .line 35
    .line 36
    :cond_1
    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 37
    .line 38
    iget-object v1, p0, Lcom/narvii/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 42
    move-result v2

    .line 43
    .line 44
    iget v3, p0, Lcom/narvii/widget/AbsSpinner;->mSelectionRightPadding:I

    .line 45
    .line 46
    if-le v2, v3, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 50
    move-result v3

    .line 51
    .line 52
    :cond_2
    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 53
    .line 54
    iget-object v1, p0, Lcom/narvii/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 58
    move-result v2

    .line 59
    .line 60
    iget v3, p0, Lcom/narvii/widget/AbsSpinner;->mSelectionBottomPadding:I

    .line 61
    .line 62
    if-le v2, v3, :cond_3

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 66
    move-result v3

    .line 67
    .line 68
    :cond_3
    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 69
    .line 70
    iget-boolean v1, p0, Lcom/narvii/widget/AdapterView;->mDataChanged:Z

    .line 71
    .line 72
    if-eqz v1, :cond_4

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/narvii/widget/AbsSpinner;->handleDataChanged()V

    .line 76
    .line 77
    .line 78
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->getSelectedItemPosition()I

    .line 79
    move-result v1

    .line 80
    const/4 v2, 0x1

    .line 81
    const/4 v3, 0x0

    .line 82
    .line 83
    if-ltz v1, :cond_8

    .line 84
    .line 85
    iget-object v4, p0, Lcom/narvii/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 86
    .line 87
    if-eqz v4, :cond_8

    .line 88
    .line 89
    iget-object v4, p0, Lcom/narvii/widget/AbsSpinner;->mRecycler:Lcom/narvii/widget/AbsSpinner$RecycleBin;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4, v1}, Lcom/narvii/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    .line 93
    move-result-object v4

    .line 94
    .line 95
    if-nez v4, :cond_5

    .line 96
    .line 97
    iget-object v4, p0, Lcom/narvii/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 98
    const/4 v5, 0x0

    .line 99
    .line 100
    .line 101
    invoke-interface {v4, v1, v5, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 102
    move-result-object v4

    .line 103
    .line 104
    :cond_5
    if-eqz v4, :cond_6

    .line 105
    .line 106
    iget-object v5, p0, Lcom/narvii/widget/AbsSpinner;->mRecycler:Lcom/narvii/widget/AbsSpinner$RecycleBin;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5, v1, v4}, Lcom/narvii/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 110
    .line 111
    :cond_6
    if-eqz v4, :cond_8

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 115
    move-result-object v1

    .line 116
    .line 117
    if-nez v1, :cond_7

    .line 118
    .line 119
    iput-boolean v2, p0, Lcom/narvii/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/narvii/widget/AbsSpinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 123
    move-result-object v1

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    .line 128
    iput-boolean v3, p0, Lcom/narvii/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 129
    .line 130
    .line 131
    :cond_7
    invoke-virtual {p0, v4, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, v4}, Lcom/narvii/widget/AbsSpinner;->getChildHeight(Landroid/view/View;)I

    .line 135
    move-result v1

    .line 136
    .line 137
    iget-object v2, p0, Lcom/narvii/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 138
    .line 139
    iget v5, v2, Landroid/graphics/Rect;->top:I

    .line 140
    add-int/2addr v1, v5

    .line 141
    .line 142
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 143
    add-int/2addr v1, v2

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v4}, Lcom/narvii/widget/AbsSpinner;->getChildWidth(Landroid/view/View;)I

    .line 147
    move-result v2

    .line 148
    .line 149
    iget-object v4, p0, Lcom/narvii/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 150
    .line 151
    iget v5, v4, Landroid/graphics/Rect;->left:I

    .line 152
    add-int/2addr v2, v5

    .line 153
    .line 154
    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 155
    add-int/2addr v2, v4

    .line 156
    move v6, v3

    .line 157
    move v3, v1

    .line 158
    move v1, v2

    .line 159
    move v2, v6

    .line 160
    goto :goto_0

    .line 161
    :cond_8
    move v1, v3

    .line 162
    .line 163
    :goto_0
    if-eqz v2, :cond_9

    .line 164
    .line 165
    iget-object v2, p0, Lcom/narvii/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 166
    .line 167
    iget v3, v2, Landroid/graphics/Rect;->top:I

    .line 168
    .line 169
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 170
    add-int/2addr v3, v4

    .line 171
    .line 172
    if-nez v0, :cond_9

    .line 173
    .line 174
    iget v0, v2, Landroid/graphics/Rect;->left:I

    .line 175
    .line 176
    iget v1, v2, Landroid/graphics/Rect;->right:I

    .line 177
    add-int/2addr v1, v0

    .line 178
    .line 179
    .line 180
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    .line 181
    move-result v0

    .line 182
    .line 183
    .line 184
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    .line 185
    move-result v0

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 189
    move-result v2

    .line 190
    .line 191
    .line 192
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 193
    move-result v1

    .line 194
    .line 195
    .line 196
    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    .line 197
    move-result v0

    .line 198
    .line 199
    .line 200
    invoke-static {v1, p1}, Landroid/view/View;->resolveSize(II)I

    .line 201
    move-result v1

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 205
    .line 206
    iput p2, p0, Lcom/narvii/widget/AbsSpinner;->mHeightMeasureSpec:I

    .line 207
    .line 208
    iput p1, p0, Lcom/narvii/widget/AbsSpinner;->mWidthMeasureSpec:I

    .line 209
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .line 1
    .line 2
    check-cast p1, Lcom/narvii/widget/AbsSpinner$SavedState;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 10
    .line 11
    iget-wide v0, p1, Lcom/narvii/widget/AbsSpinner$SavedState;->selectedId:J

    .line 12
    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    cmp-long v2, v0, v2

    .line 16
    .line 17
    if-ltz v2, :cond_0

    .line 18
    const/4 v2, 0x1

    .line 19
    .line 20
    iput-boolean v2, p0, Lcom/narvii/widget/AdapterView;->mDataChanged:Z

    .line 21
    .line 22
    iput-boolean v2, p0, Lcom/narvii/widget/AdapterView;->mNeedSync:Z

    .line 23
    .line 24
    iput-wide v0, p0, Lcom/narvii/widget/AdapterView;->mSyncRowId:J

    .line 25
    .line 26
    iget p1, p1, Lcom/narvii/widget/AbsSpinner$SavedState;->position:I

    .line 27
    .line 28
    iput p1, p0, Lcom/narvii/widget/AdapterView;->mSyncPosition:I

    .line 29
    const/4 p1, 0x0

    .line 30
    .line 31
    iput p1, p0, Lcom/narvii/widget/AdapterView;->mSyncMode:I

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/narvii/widget/AbsSpinner;->requestLayout()V

    .line 35
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/narvii/widget/AbsSpinner$SavedState;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v0}, Lcom/narvii/widget/AbsSpinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->getSelectedItemId()J

    .line 13
    move-result-wide v2

    .line 14
    .line 15
    iput-wide v2, v1, Lcom/narvii/widget/AbsSpinner$SavedState;->selectedId:J

    .line 16
    .line 17
    const-wide/16 v4, 0x0

    .line 18
    .line 19
    cmp-long v0, v2, v4

    .line 20
    .line 21
    if-ltz v0, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->getSelectedItemPosition()I

    .line 25
    move-result v0

    .line 26
    .line 27
    iput v0, v1, Lcom/narvii/widget/AbsSpinner$SavedState;->position:I

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, -0x1

    .line 30
    .line 31
    iput v0, v1, Lcom/narvii/widget/AbsSpinner$SavedState;->position:I

    .line 32
    :goto_0
    return-object v1
.end method

.method public final pointToPosition(II)I
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroid/graphics/Rect;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 15
    move-result v1

    .line 16
    .line 17
    add-int/lit8 v1, v1, -0x1

    .line 18
    .line 19
    :goto_0
    if-ltz v1, :cond_2

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 27
    move-result v3

    .line 28
    .line 29
    if-nez v3, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    .line 36
    move-result v2

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    iget p1, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    .line 41
    add-int/2addr p1, v1

    .line 42
    return p1

    .line 43
    .line 44
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const/4 p1, -0x1

    .line 47
    return p1
.end method

.method final recycleAllViews()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/widget/AbsSpinner;->mRecycler:Lcom/narvii/widget/AbsSpinner$RecycleBin;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    :goto_0
    if-ge v2, v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 13
    move-result-object v3

    .line 14
    .line 15
    iget v4, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    .line 16
    add-int/2addr v4, v2

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v4, v3}, Lcom/narvii/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public final requestLayout()V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 8
    :cond_0
    return-void
.end method

.method final resetList()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/widget/AdapterView;->mDataChanged:Z

    .line 4
    .line 5
    iput-boolean v0, p0, Lcom/narvii/widget/AdapterView;->mNeedSync:Z

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 9
    const/4 v0, -0x1

    .line 10
    .line 11
    iput v0, p0, Lcom/narvii/widget/AdapterView;->mOldSelectedPosition:I

    .line 12
    .line 13
    const-wide/high16 v1, -0x8000000000000000L

    .line 14
    .line 15
    iput-wide v1, p0, Lcom/narvii/widget/AdapterView;->mOldSelectedRowId:J

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/narvii/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/narvii/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 25
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Lcom/narvii/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 3

    iget-object v0, p0, Lcom/narvii/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 2
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3
    invoke-virtual {p0}, Lcom/narvii/widget/AbsSpinner;->resetList()V

    :cond_0
    iput-object p1, p0, Lcom/narvii/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v0, -0x1

    iput v0, p0, Lcom/narvii/widget/AdapterView;->mOldSelectedPosition:I

    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lcom/narvii/widget/AdapterView;->mOldSelectedRowId:J

    if-eqz p1, :cond_2

    iget v1, p0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    iput v1, p0, Lcom/narvii/widget/AdapterView;->mOldItemCount:I

    .line 4
    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    .line 5
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->checkFocus()V

    .line 6
    new-instance p1, Lcom/narvii/widget/AdapterView$AdapterDataSetObserver;

    invoke-direct {p1, p0}, Lcom/narvii/widget/AdapterView$AdapterDataSetObserver;-><init>(Lcom/narvii/widget/AdapterView;)V

    iput-object p1, p0, Lcom/narvii/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    iget-object v1, p0, Lcom/narvii/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 7
    invoke-interface {v1, p1}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget p1, p0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    if-lez p1, :cond_1

    const/4 v0, 0x0

    .line 8
    :cond_1
    invoke-virtual {p0, v0}, Lcom/narvii/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 9
    invoke-virtual {p0, v0}, Lcom/narvii/widget/AdapterView;->setNextSelectedPositionInt(I)V

    iget p1, p0, Lcom/narvii/widget/AdapterView;->mItemCount:I

    if-nez p1, :cond_3

    .line 10
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->checkSelectionChanged()V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->checkFocus()V

    .line 12
    invoke-virtual {p0}, Lcom/narvii/widget/AbsSpinner;->resetList()V

    .line 13
    invoke-virtual {p0}, Lcom/narvii/widget/AdapterView;->checkSelectionChanged()V

    .line 14
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/widget/AbsSpinner;->requestLayout()V

    return-void
.end method

.method public final setSelection(I)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 4
    invoke-virtual {p0}, Lcom/narvii/widget/AbsSpinner;->requestLayout()V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setSelection(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/narvii/widget/AdapterView;->mFirstPosition:I

    if-gt p2, p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/2addr p2, v0

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    if-gt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/narvii/widget/AbsSpinner;->setSelectionInt(IZ)V

    return-void
.end method

.method final setSelectionInt(IZ)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/AdapterView;->mOldSelectedPosition:I

    .line 3
    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/narvii/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 8
    .line 9
    iget v0, p0, Lcom/narvii/widget/AdapterView;->mSelectedPosition:I

    .line 10
    .line 11
    sub-int v0, p1, v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0, p2}, Lcom/narvii/widget/AbsSpinner;->layout(IZ)V

    .line 18
    const/4 p1, 0x0

    .line 19
    .line 20
    iput-boolean p1, p0, Lcom/narvii/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 21
    :cond_0
    return-void
.end method
