.class public Lcom/narvii/widget/BoundedLinearLayout;
.super Landroid/widget/LinearLayout;
.source "BoundedLinearLayout.java"


# static fields
.field private static final NOT_SPECIFIED:I = -0x1


# instance fields
.field private final mMaxHeight:I

.field private final mMaxWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    sget-object v0, Lcom/narvii/amino/R$styleable;->BoundedLinearLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, -0x1

    const/4 v0, 0x1

    .line 24
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    const/4 v1, 0x0

    .line 25
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 26
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-gtz v0, :cond_0

    const/4 v0, -0x1

    .line 29
    :cond_0
    iput v0, p0, Lcom/narvii/widget/BoundedLinearLayout;->mMaxWidth:I

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    move p2, v1

    .line 30
    :goto_0
    iput p2, p0, Lcom/narvii/widget/BoundedLinearLayout;->mMaxHeight:I

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4

    .line 35
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 36
    iget v1, p0, Lcom/narvii/widget/BoundedLinearLayout;->mMaxWidth:I

    const/high16 v2, -0x80000000

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    if-le v0, v1, :cond_1

    .line 37
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    if-nez p1, :cond_0

    const/high16 p1, -0x80000000

    .line 39
    :cond_0
    iget v0, p0, Lcom/narvii/widget/BoundedLinearLayout;->mMaxWidth:I

    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 41
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 42
    iget v1, p0, Lcom/narvii/widget/BoundedLinearLayout;->mMaxHeight:I

    if-eq v1, v3, :cond_3

    if-le v0, v1, :cond_3

    .line 43
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    if-nez p2, :cond_2

    const/high16 p2, -0x80000000

    .line 45
    :cond_2
    iget v0, p0, Lcom/narvii/widget/BoundedLinearLayout;->mMaxHeight:I

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 47
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
