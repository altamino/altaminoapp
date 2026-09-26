.class public Lcom/narvii/util/recycleview/DividerItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field private mDivider:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/util/recycleview/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 6
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 7
    move-result p2

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    :cond_0
    iget-object p2, p0, Lcom/narvii/util/recycleview/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 16
    move-result p2

    .line 17
    .line 18
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 19
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    .line 7
    move-result p3

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 11
    move-result v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    .line 15
    move-result v1

    .line 16
    sub-int/2addr v0, v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    .line 23
    :goto_0
    add-int/lit8 v3, v1, -0x1

    .line 24
    .line 25
    if-ge v2, v3, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 33
    move-result-object v4

    .line 34
    .line 35
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 39
    move-result v3

    .line 40
    .line 41
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 42
    add-int/2addr v3, v4

    .line 43
    .line 44
    iget-object v4, p0, Lcom/narvii/util/recycleview/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 48
    move-result v4

    .line 49
    add-int/2addr v4, v3

    .line 50
    .line 51
    iget-object v5, p0, Lcom/narvii/util/recycleview/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, v3, p3, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 55
    .line 56
    iget-object v3, p0, Lcom/narvii/util/recycleview/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 60
    .line 61
    add-int/lit8 v2, v2, 0x1

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    return-void
.end method
