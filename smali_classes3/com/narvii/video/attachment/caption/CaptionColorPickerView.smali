.class public Lcom/narvii/video/attachment/caption/CaptionColorPickerView;
.super Landroid/view/View;
.source "CaptionColorPickerView.java"


# static fields
.field private static final INNER_RADIUS:I = 0x4

.field private static final OUTER_RADIUS:I = 0x4

.field private static final SELECTED_RADIUS:I = 0x6

.field static bitmap:Landroid/graphics/Bitmap;

.field static bitmapPaint:Landroid/graphics/Paint;


# instance fields
.field disabled:Z

.field halfStroke:F

.field private mInnerPaint:Landroid/graphics/Paint;

.field private mInnerRadius:F

.field private mInnerRectF:Landroid/graphics/RectF;

.field private mOuterPaint:Landroid/graphics/Paint;

.field private mOuterRadius:F

.field private mSelectedPaint:Landroid/graphics/Paint;

.field private mSelectedRadius:F

.field private mSelectedRectF:Landroid/graphics/RectF;

.field private selected:Z

.field src:Landroid/graphics/Rect;

.field strokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x40800000    # 4.0f

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mInnerRadius:F

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mOuterRadius:F

    .line 29
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mInnerRectF:Landroid/graphics/RectF;

    .line 32
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mSelectedRectF:Landroid/graphics/RectF;

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x40c00000    # 6.0f

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mSelectedRadius:F

    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->disabled:Z

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x40000000    # 2.0f

    invoke-static {p2, p3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->strokeWidth:F

    .line 52
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mOuterPaint:Landroid/graphics/Paint;

    .line 53
    iget-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mOuterPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    iget-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mOuterPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    iget-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mOuterPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->strokeWidth:F

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 56
    iget-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mOuterPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mInnerPaint:Landroid/graphics/Paint;

    .line 58
    iget-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mInnerPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mSelectedPaint:Landroid/graphics/Paint;

    .line 60
    iget-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 61
    iget-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mSelectedPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    iget-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mSelectedPaint:Landroid/graphics/Paint;

    const v1, -0xc92b4f

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    iget p2, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->strokeWidth:F

    div-float p3, p2, p3

    iput p3, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->halfStroke:F

    .line 64
    iget-object p3, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 66
    sget-object p2, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->bitmap:Landroid/graphics/Bitmap;

    if-nez p2, :cond_0

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/narvii/mediaeditor/R$drawable;->ic_color_disabled:I

    invoke-static {p2, p3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    .line 68
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    sput-object p2, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->bitmap:Landroid/graphics/Bitmap;

    .line 69
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->src:Landroid/graphics/Rect;

    .line 70
    iget-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->src:Landroid/graphics/Rect;

    iput p1, p2, Landroid/graphics/Rect;->left:I

    .line 71
    iput p1, p2, Landroid/graphics/Rect;->top:I

    .line 72
    sget-object p1, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p2, Landroid/graphics/Rect;->right:I

    .line 73
    iget-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->src:Landroid/graphics/Rect;

    sget-object p2, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 75
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    sput-object p1, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->bitmapPaint:Landroid/graphics/Paint;

    .line 76
    sget-object p1, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public isSelected()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->selected:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 86
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    iget v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->strokeWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    .line 93
    iget-object v1, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mInnerRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 95
    iget-boolean v1, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->disabled:Z

    if-nez v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mInnerRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mInnerRadius:F

    iget-object v3, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mInnerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 98
    :cond_1
    sget-object v1, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 99
    iget-object v2, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->src:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mInnerRectF:Landroid/graphics/RectF;

    sget-object v4, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 103
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->selected:Z

    if-eqz v1, :cond_3

    .line 104
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mSelectedRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->halfStroke:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->halfStroke:F

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->halfStroke:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 105
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mSelectedRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mSelectedRadius:F

    iget-object v2, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 106
    :cond_3
    iget-boolean v1, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->disabled:Z

    if-nez v1, :cond_4

    .line 107
    iget-object v1, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mInnerRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->halfStroke:F

    add-float v3, v0, v2

    add-float/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v0

    iget v5, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->halfStroke:F

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v0

    iget v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->halfStroke:F

    sub-float/2addr v5, v0

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 108
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mInnerRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mOuterRadius:F

    iget-object v2, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mInnerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDisabled(Z)V
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->disabled:Z

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 126
    iput-boolean p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->selected:Z

    .line 127
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
