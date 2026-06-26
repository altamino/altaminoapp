.class public Lcom/narvii/editor/cropping/basic/ColorPickerItemView;
.super Landroid/view/View;
.source "ColorPickerItemView.java"


# static fields
.field private static final INNER_RADIUS:I = 0x2

.field private static final OUTER_RADIUS:I = 0x4

.field private static final SELECTED_RADIUS:I = 0x6


# instance fields
.field private mInnerPaint:Landroid/graphics/Paint;

.field private mInnerRadius:F

.field private mInnerRectF:Landroid/graphics/RectF;

.field private mOuterPaint:Landroid/graphics/Paint;

.field private mOuterRadius:F

.field private mOuterRectF:Landroid/graphics/RectF;

.field private mSelectedPaint:Landroid/graphics/Paint;

.field private mSelectedRadius:F

.field private mSelectedRectF:Landroid/graphics/RectF;

.field private selected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mInnerRadius:F

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x40800000    # 4.0f

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mOuterRadius:F

    .line 24
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mInnerRectF:Landroid/graphics/RectF;

    .line 25
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mOuterRectF:Landroid/graphics/RectF;

    .line 28
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mSelectedRectF:Landroid/graphics/RectF;

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x40c00000    # 6.0f

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mSelectedRadius:F

    .line 41
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mOuterPaint:Landroid/graphics/Paint;

    .line 42
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mOuterPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mOuterPaint:Landroid/graphics/Paint;

    const/4 p3, -0x1

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mInnerPaint:Landroid/graphics/Paint;

    .line 45
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mInnerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 46
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mSelectedPaint:Landroid/graphics/Paint;

    .line 47
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 48
    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mSelectedPaint:Landroid/graphics/Paint;

    const p2, -0xc92b4f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public isSelected()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->selected:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 53
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 58
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    .line 60
    iget-boolean v2, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->selected:Z

    if-eqz v2, :cond_1

    .line 61
    iget-object v2, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mOuterPaint:Landroid/graphics/Paint;

    const-string v3, "#2A2A2A"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    iget-object v2, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mSelectedRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 63
    iget-object v2, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mSelectedRectF:Landroid/graphics/RectF;

    iget v3, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mSelectedRadius:F

    iget-object v4, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 65
    :cond_1
    iget-object v2, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mOuterPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    :goto_0
    iget-object v2, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mInnerRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v0

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 68
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mOuterRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 69
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mOuterRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mOuterRadius:F

    iget-object v2, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 70
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mInnerRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mInnerRadius:F

    iget-object v2, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mInnerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mInnerPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->selected:Z

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
