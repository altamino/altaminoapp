.class public Lcom/narvii/widget/FontAwesomeView;
.super Landroid/widget/TextView;
.source "FontAwesomeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/FontAwesomeView$MyDrawable;
    }
.end annotation


# static fields
.field private static MIN_SIZE:I


# instance fields
.field private d:Lcom/narvii/widget/FontAwesomeView$MyDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 27
    invoke-direct {p0, p1, v0, v1}, Lcom/narvii/widget/FontAwesomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/FontAwesomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance p2, Lcom/narvii/widget/FontAwesomeView$MyDrawable;

    invoke-direct {p2, p0, p1}, Lcom/narvii/widget/FontAwesomeView$MyDrawable;-><init>(Lcom/narvii/widget/FontAwesomeView;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/narvii/widget/FontAwesomeView;->d:Lcom/narvii/widget/FontAwesomeView$MyDrawable;

    .line 38
    sget p2, Lcom/narvii/widget/FontAwesomeView;->MIN_SIZE:I

    if-nez p2, :cond_0

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$dimen;->fontawesome_min_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/narvii/widget/FontAwesomeView;->MIN_SIZE:I

    :cond_0
    return-void
.end method


# virtual methods
.method protected getSuggestedMinimumHeight()I
    .locals 2

    .line 73
    invoke-super {p0}, Landroid/widget/TextView;->getSuggestedMinimumHeight()I

    move-result v0

    sget v1, Lcom/narvii/widget/FontAwesomeView;->MIN_SIZE:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 2

    .line 78
    invoke-super {p0}, Landroid/widget/TextView;->getSuggestedMinimumWidth()I

    move-result v0

    sget v1, Lcom/narvii/widget/FontAwesomeView;->MIN_SIZE:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 93
    iget-object v0, p0, Lcom/narvii/widget/FontAwesomeView;->d:Lcom/narvii/widget/FontAwesomeView$MyDrawable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/FontAwesomeDrawable;->setKeyString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/narvii/widget/FontAwesomeView;->d:Lcom/narvii/widget/FontAwesomeView$MyDrawable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/FontAwesomeDrawable;->setColor(I)V

    .line 95
    iget-object v0, p0, Lcom/narvii/widget/FontAwesomeView;->d:Lcom/narvii/widget/FontAwesomeView$MyDrawable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/narvii/widget/FontAwesomeView;->d:Lcom/narvii/widget/FontAwesomeView$MyDrawable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDx()F

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDy()F

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowColor()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/narvii/util/FontAwesomeDrawable;->setShadow(FFFI)V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/FontAwesomeView;->d:Lcom/narvii/widget/FontAwesomeView$MyDrawable;

    invoke-virtual {v0, p1}, Lcom/narvii/util/FontAwesomeDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 45
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 46
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 47
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 48
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    .line 54
    invoke-virtual {p0}, Lcom/narvii/widget/FontAwesomeView;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/widget/FontAwesomeView;->getSuggestedMinimumWidth()I

    move-result p1

    :goto_0
    if-ne v1, v3, :cond_2

    goto :goto_1

    :cond_2
    if-ne v1, v2, :cond_3

    .line 63
    invoke-virtual {p0}, Lcom/narvii/widget/FontAwesomeView;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_1

    .line 65
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/widget/FontAwesomeView;->getSuggestedMinimumHeight()I

    move-result p2

    .line 68
    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 87
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 88
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method
