.class public Lcom/narvii/widget/OrderedLinearLayout;
.super Landroid/widget/LinearLayout;
.source "OrderedLinearLayout.java"


# instance fields
.field private topIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 13
    iput p1, p0, Lcom/narvii/widget/OrderedLinearLayout;->topIndex:I

    const/4 p1, 0x1

    .line 17
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setChildrenDrawingOrderEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected getChildDrawingOrder(II)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_3

    .line 30
    iget v1, p0, Lcom/narvii/widget/OrderedLinearLayout;->topIndex:I

    if-ne v0, v1, :cond_2

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

    :cond_3
    return p2
.end method

.method public setTopChildIndex(I)V
    .locals 1

    .line 21
    iget v0, p0, Lcom/narvii/widget/OrderedLinearLayout;->topIndex:I

    if-eq v0, p1, :cond_0

    .line 22
    iput p1, p0, Lcom/narvii/widget/OrderedLinearLayout;->topIndex:I

    .line 23
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_0
    return-void
.end method
