.class public Lcom/narvii/widget/BoundedLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field private static final NOT_SPECIFIED:I = -0x1


# instance fields
.field private final mMaxHeight:I

.field private final mMaxWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/amino/R$styleable;->BoundedLinearLayout:[I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 9
    move-result-object p1

    .line 10
    const/4 p2, 0x1

    .line 11
    const/4 v0, -0x1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 15
    move-result p2

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 20
    move-result v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 24
    .line 25
    if-gtz p2, :cond_0

    .line 26
    move p2, v0

    .line 27
    .line 28
    :cond_0
    iput p2, p0, Lcom/narvii/widget/BoundedLinearLayout;->mMaxWidth:I

    .line 29
    .line 30
    if-gtz v1, :cond_1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move v0, v1

    .line 33
    .line 34
    :goto_0
    iput v0, p0, Lcom/narvii/widget/BoundedLinearLayout;->mMaxHeight:I

    .line 35
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/widget/BoundedLinearLayout;->mMaxWidth:I

    .line 7
    .line 8
    const/high16 v2, -0x80000000

    .line 9
    const/4 v3, -0x1

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-le v0, v1, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 17
    move-result p1

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    move p1, v2

    .line 21
    .line 22
    :cond_0
    iget v0, p0, Lcom/narvii/widget/BoundedLinearLayout;->mMaxWidth:I

    .line 23
    .line 24
    .line 25
    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 26
    move-result p1

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 30
    move-result v0

    .line 31
    .line 32
    iget v1, p0, Lcom/narvii/widget/BoundedLinearLayout;->mMaxHeight:I

    .line 33
    .line 34
    if-eq v1, v3, :cond_3

    .line 35
    .line 36
    if-le v0, v1, :cond_3

    .line 37
    .line 38
    .line 39
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 40
    move-result p2

    .line 41
    .line 42
    if-nez p2, :cond_2

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    move v2, p2

    .line 45
    .line 46
    :goto_0
    iget p2, p0, Lcom/narvii/widget/BoundedLinearLayout;->mMaxHeight:I

    .line 47
    .line 48
    .line 49
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 50
    move-result p2

    .line 51
    .line 52
    .line 53
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 54
    return-void
.end method
