.class public Lcom/narvii/item/post/DragSortParentLayout;
.super Landroid/widget/LinearLayout;
.source "DragSortParentLayout.java"


# instance fields
.field drawTop:Landroid/view/View;

.field layoutId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 20
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setChildrenDrawingOrderEnabled(Z)V

    .line 21
    sget-object v0, Lcom/narvii/amino/R$styleable;->DragSortParentLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 22
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/narvii/item/post/DragSortParentLayout;->layoutId:I

    return-void
.end method


# virtual methods
.method protected getChildDrawingOrder(II)I
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/narvii/item/post/DragSortParentLayout;->drawTop:Landroid/view/View;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_3

    .line 37
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 38
    iget-object v2, p0, Lcom/narvii/item/post/DragSortParentLayout;->drawTop:Landroid/view/View;

    if-ne v1, v2, :cond_2

    if-ge p2, v0, :cond_0

    return p2

    :cond_0
    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_1

    return v0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    return p2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->getChildDrawingOrder(II)I

    move-result p1

    return p1
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 27
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 28
    iget v0, p0, Lcom/narvii/item/post/DragSortParentLayout;->layoutId:I

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/item/post/DragSortParentLayout;->drawTop:Landroid/view/View;

    :cond_0
    return-void
.end method
