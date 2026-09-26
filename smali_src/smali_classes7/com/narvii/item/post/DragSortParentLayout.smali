.class public Lcom/narvii/item/post/DragSortParentLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field drawTop:Landroid/view/View;

.field layoutId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 8
    .line 9
    sget-object v0, Lcom/narvii/amino/R$styleable;->DragSortParentLayout:[I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 13
    move-result-object p1

    .line 14
    const/4 p2, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 18
    move-result p1

    .line 19
    .line 20
    iput p1, p0, Lcom/narvii/item/post/DragSortParentLayout;->layoutId:I

    .line 21
    return-void
.end method


# virtual methods
.method protected getChildDrawingOrder(II)I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/item/post/DragSortParentLayout;->drawTop:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    :goto_0
    if-ge v0, p1, :cond_3

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    iget-object v2, p0, Lcom/narvii/item/post/DragSortParentLayout;->drawTop:Landroid/view/View;

    .line 14
    .line 15
    if-ne v1, v2, :cond_2

    .line 16
    .line 17
    if-ge p2, v0, :cond_0

    .line 18
    return p2

    .line 19
    .line 20
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 21
    .line 22
    if-ne p2, p1, :cond_1

    .line 23
    return v0

    .line 24
    .line 25
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 26
    return p2

    .line 27
    .line 28
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 29
    goto :goto_0

    .line 30
    .line 31
    .line 32
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->getChildDrawingOrder(II)I

    .line 33
    move-result p1

    .line 34
    return p1
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 4
    .line 5
    iget v0, p0, Lcom/narvii/item/post/DragSortParentLayout;->layoutId:I

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/item/post/DragSortParentLayout;->drawTop:Landroid/view/View;

    .line 14
    :cond_0
    return-void
.end method
