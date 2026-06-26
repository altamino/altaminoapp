.class public Lcom/narvii/master/widget/MasterTabPlaceHolder;
.super Landroid/widget/FrameLayout;
.source "MasterTabPlaceHolder.java"


# instance fields
.field private masterTabHeight:I

.field private statusBarHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/narvii/master/widget/MasterTabPlaceHolder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    :goto_0
    const/4 v0, 0x4

    if-ge p2, v0, :cond_0

    if-eqz p1, :cond_0

    .line 28
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_0

    .line 29
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 31
    :cond_0
    instance-of p2, p1, Lcom/narvii/app/NVActivity;

    if-eqz p2, :cond_1

    .line 32
    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 33
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getStatusBarOverlaySize()I

    move-result p1

    iput p1, p0, Lcom/narvii/master/widget/MasterTabPlaceHolder;->statusBarHeight:I

    .line 35
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701d6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/master/widget/MasterTabPlaceHolder;->masterTabHeight:I

    .line 36
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p2

    iget v0, p0, Lcom/narvii/master/widget/MasterTabPlaceHolder;->statusBarHeight:I

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public adjustHeight(II)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/narvii/master/widget/MasterTabPlaceHolder;->statusBarHeight:I

    .line 50
    iput p2, p0, Lcom/narvii/master/widget/MasterTabPlaceHolder;->masterTabHeight:I

    .line 51
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 42
    iget v0, p0, Lcom/narvii/master/widget/MasterTabPlaceHolder;->masterTabHeight:I

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    .line 43
    iget p2, p0, Lcom/narvii/master/widget/MasterTabPlaceHolder;->statusBarHeight:I

    iget v0, p0, Lcom/narvii/master/widget/MasterTabPlaceHolder;->masterTabHeight:I

    add-int/2addr p2, v0

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 45
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
