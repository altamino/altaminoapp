.class public Lcom/narvii/video/attachment/caption/CaptionColorPickerView;
.super Landroid/view/View;
.source "SourceFile"


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

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x40800000    # 4.0f

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mInnerRadius:F

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mOuterRadius:F

    .line 6
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mInnerRectF:Landroid/graphics/RectF;

    .line 7
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mSelectedRectF:Landroid/graphics/RectF;

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x40c00000    # 6.0f

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mSelectedRadius:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->disabled:Z

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x40000000    # 2.0f

    invoke-static {p2, p3}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->strokeWidth:F

    .line 10
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mOuterPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 11
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mOuterPaint:Landroid/graphics/Paint;

    .line 12
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mOuterPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->strokeWidth:F

    .line 13
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mOuterPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    .line 14
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mInnerPaint:Landroid/graphics/Paint;

    .line 16
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 17
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mSelectedPaint:Landroid/graphics/Paint;

    .line 18
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mSelectedPaint:Landroid/graphics/Paint;

    .line 19
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mSelectedPaint:Landroid/graphics/Paint;

    const v1, -0xc92b4f

    .line 20
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget p2, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->strokeWidth:F

    div-float p3, p2, p3

    iput p3, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->halfStroke:F

    iget-object p3, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mSelectedPaint:Landroid/graphics/Paint;

    .line 21
    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object p2, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->bitmap:Landroid/graphics/Bitmap;

    if-nez p2, :cond_0

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/narvii/mediaeditor/R$drawable;->ic_color_disabled:I

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    .line 23
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    sput-object p2, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->bitmap:Landroid/graphics/Bitmap;

    .line 24
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->src:Landroid/graphics/Rect;

    iput p1, p2, Landroid/graphics/Rect;->left:I

    iput p1, p2, Landroid/graphics/Rect;->top:I

    sget-object p1, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->bitmap:Landroid/graphics/Bitmap;

    .line 25
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p2, Landroid/graphics/Rect;->right:I

    iget-object p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->src:Landroid/graphics/Rect;

    sget-object p2, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->bitmap:Landroid/graphics/Bitmap;

    .line 26
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 27
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    sput-object p1, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->bitmapPaint:Landroid/graphics/Paint;

    .line 28
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->selected:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 7
    move-result v0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return-void

    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->strokeWidth:F

    .line 13
    .line 14
    const/high16 v1, 0x40000000    # 2.0f

    .line 15
    mul-float/2addr v0, v1

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mInnerRectF:Landroid/graphics/RectF;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 21
    move-result v2

    .line 22
    int-to-float v2, v2

    .line 23
    sub-float/2addr v2, v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 27
    move-result v3

    .line 28
    int-to-float v3, v3

    .line 29
    sub-float/2addr v3, v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 33
    .line 34
    iget-boolean v1, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->disabled:Z

    .line 35
    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    iget-object v1, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mInnerRectF:Landroid/graphics/RectF;

    .line 39
    .line 40
    iget v2, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mInnerRadius:F

    .line 41
    .line 42
    iget-object v3, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mInnerPaint:Landroid/graphics/Paint;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :cond_1
    sget-object v1, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->bitmap:Landroid/graphics/Bitmap;

    .line 49
    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    iget-object v2, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->src:Landroid/graphics/Rect;

    .line 53
    .line 54
    iget-object v3, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mInnerRectF:Landroid/graphics/RectF;

    .line 55
    .line 56
    sget-object v4, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->bitmapPaint:Landroid/graphics/Paint;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 60
    .line 61
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->selected:Z

    .line 62
    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mSelectedRectF:Landroid/graphics/RectF;

    .line 66
    .line 67
    iget v1, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->halfStroke:F

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 71
    move-result v2

    .line 72
    int-to-float v2, v2

    .line 73
    .line 74
    iget v3, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->halfStroke:F

    .line 75
    sub-float/2addr v2, v3

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 79
    move-result v3

    .line 80
    int-to-float v3, v3

    .line 81
    .line 82
    iget v4, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->halfStroke:F

    .line 83
    sub-float/2addr v3, v4

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 87
    .line 88
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mSelectedRectF:Landroid/graphics/RectF;

    .line 89
    .line 90
    iget v1, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mSelectedRadius:F

    .line 91
    .line 92
    iget-object v2, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mSelectedPaint:Landroid/graphics/Paint;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 96
    goto :goto_1

    .line 97
    .line 98
    :cond_3
    iget-boolean v1, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->disabled:Z

    .line 99
    .line 100
    if-nez v1, :cond_4

    .line 101
    .line 102
    iget-object v1, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mInnerRectF:Landroid/graphics/RectF;

    .line 103
    .line 104
    iget v2, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->halfStroke:F

    .line 105
    .line 106
    add-float v3, v0, v2

    .line 107
    add-float/2addr v2, v0

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 111
    move-result v4

    .line 112
    int-to-float v4, v4

    .line 113
    sub-float/2addr v4, v0

    .line 114
    .line 115
    iget v5, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->halfStroke:F

    .line 116
    sub-float/2addr v4, v5

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 120
    move-result v5

    .line 121
    int-to-float v5, v5

    .line 122
    sub-float/2addr v5, v0

    .line 123
    .line 124
    iget v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->halfStroke:F

    .line 125
    sub-float/2addr v5, v0

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 129
    .line 130
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mInnerRectF:Landroid/graphics/RectF;

    .line 131
    .line 132
    iget v1, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mOuterRadius:F

    .line 133
    .line 134
    iget-object v2, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mOuterPaint:Landroid/graphics/Paint;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 138
    :cond_4
    :goto_1
    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->mInnerPaint:Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9
    return-void
.end method

.method public setDisabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->disabled:Z

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/video/attachment/caption/CaptionColorPickerView;->selected:Z

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method
