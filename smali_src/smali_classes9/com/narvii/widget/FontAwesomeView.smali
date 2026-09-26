.class public Lcom/narvii/widget/FontAwesomeView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"


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

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/narvii/widget/FontAwesomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/FontAwesomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Lcom/narvii/widget/FontAwesomeView$MyDrawable;

    invoke-direct {p2, p0, p1}, Lcom/narvii/widget/FontAwesomeView$MyDrawable;-><init>(Lcom/narvii/widget/FontAwesomeView;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/narvii/widget/FontAwesomeView;->d:Lcom/narvii/widget/FontAwesomeView$MyDrawable;

    sget p2, Lcom/narvii/widget/FontAwesomeView;->MIN_SIZE:I

    if-nez p2, :cond_0

    .line 5
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/TextView;->getSuggestedMinimumHeight()I

    .line 4
    move-result v0

    .line 5
    .line 6
    sget v1, Lcom/narvii/widget/FontAwesomeView;->MIN_SIZE:I

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/TextView;->getSuggestedMinimumWidth()I

    .line 4
    move-result v0

    .line 5
    .line 6
    sget v1, Lcom/narvii/widget/FontAwesomeView;->MIN_SIZE:I

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/FontAwesomeView;->d:Lcom/narvii/widget/FontAwesomeView$MyDrawable;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/narvii/util/FontAwesomeDrawable;->setKeyString(Ljava/lang/String;)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/widget/FontAwesomeView;->d:Lcom/narvii/widget/FontAwesomeView$MyDrawable;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 19
    move-result v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/narvii/util/FontAwesomeDrawable;->setColor(I)V

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/widget/FontAwesomeView;->d:Lcom/narvii/widget/FontAwesomeView$MyDrawable;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 28
    move-result v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 32
    move-result v2

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 36
    move-result v3

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 40
    move-result v4

    .line 41
    sub-int/2addr v3, v4

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 45
    move-result v4

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 49
    move-result v5

    .line 50
    sub-int/2addr v4, v5

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 54
    .line 55
    iget-object v0, p0, Lcom/narvii/widget/FontAwesomeView;->d:Lcom/narvii/widget/FontAwesomeView$MyDrawable;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowRadius()F

    .line 59
    move-result v1

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDx()F

    .line 63
    move-result v2

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDy()F

    .line 67
    move-result v3

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowColor()I

    .line 71
    move-result v4

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/narvii/util/FontAwesomeDrawable;->setShadow(FFFI)V

    .line 75
    .line 76
    iget-object v0, p0, Lcom/narvii/widget/FontAwesomeView;->d:Lcom/narvii/widget/FontAwesomeView$MyDrawable;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p1}, Lcom/narvii/util/FontAwesomeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 80
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 12
    move-result p1

    .line 13
    .line 14
    .line 15
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 16
    move-result p2

    .line 17
    .line 18
    const/high16 v2, -0x80000000

    .line 19
    .line 20
    const/high16 v3, 0x40000000    # 2.0f

    .line 21
    .line 22
    if-ne v0, v3, :cond_0

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    if-ne v0, v2, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/narvii/widget/FontAwesomeView;->getSuggestedMinimumWidth()I

    .line 29
    move-result v0

    .line 30
    .line 31
    .line 32
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 33
    move-result p1

    .line 34
    goto :goto_0

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/widget/FontAwesomeView;->getSuggestedMinimumWidth()I

    .line 38
    move-result p1

    .line 39
    .line 40
    :goto_0
    if-ne v1, v3, :cond_2

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_2
    if-ne v1, v2, :cond_3

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/narvii/widget/FontAwesomeView;->getSuggestedMinimumHeight()I

    .line 47
    move-result v0

    .line 48
    .line 49
    .line 50
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 51
    move-result p2

    .line 52
    goto :goto_1

    .line 53
    .line 54
    .line 55
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/widget/FontAwesomeView;->getSuggestedMinimumHeight()I

    .line 56
    move-result p2

    .line 57
    .line 58
    .line 59
    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 60
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatTextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    return-void
.end method
