.class public Lcom/narvii/editor/cropping/basic/ColorPickerItemView;
.super Landroid/view/View;
.source "SourceFile"


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

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mInnerRadius:F

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x40800000    # 4.0f

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mOuterRadius:F

    .line 6
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mInnerRectF:Landroid/graphics/RectF;

    .line 7
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mOuterRectF:Landroid/graphics/RectF;

    .line 8
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mSelectedRectF:Landroid/graphics/RectF;

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x40c00000    # 6.0f

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mSelectedRadius:F

    .line 10
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mOuterPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 11
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mOuterPaint:Landroid/graphics/Paint;

    const/4 p3, -0x1

    .line 12
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mInnerPaint:Landroid/graphics/Paint;

    .line 14
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 15
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mSelectedPaint:Landroid/graphics/Paint;

    .line 16
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mSelectedPaint:Landroid/graphics/Paint;

    const p2, -0xc92b4f

    .line 17
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->selected:Z

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
    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const/high16 v1, 0x40800000    # 4.0f

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 20
    move-result v0

    .line 21
    .line 22
    const/high16 v1, 0x40000000    # 2.0f

    .line 23
    .line 24
    div-float v1, v0, v1

    .line 25
    .line 26
    iget-boolean v2, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->selected:Z

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    iget-object v2, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mOuterPaint:Landroid/graphics/Paint;

    .line 31
    .line 32
    const-string v3, "#2A2A2A"

    .line 33
    .line 34
    .line 35
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 36
    move-result v3

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    .line 41
    iget-object v2, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mSelectedRectF:Landroid/graphics/RectF;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 45
    move-result v3

    .line 46
    int-to-float v3, v3

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 50
    move-result v4

    .line 51
    int-to-float v4, v4

    .line 52
    const/4 v5, 0x0

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 56
    .line 57
    iget-object v2, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mSelectedRectF:Landroid/graphics/RectF;

    .line 58
    .line 59
    iget v3, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mSelectedRadius:F

    .line 60
    .line 61
    iget-object v4, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mSelectedPaint:Landroid/graphics/Paint;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v2, v3, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 65
    goto :goto_0

    .line 66
    .line 67
    :cond_1
    iget-object v2, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mOuterPaint:Landroid/graphics/Paint;

    .line 68
    const/4 v3, -0x1

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    .line 73
    :goto_0
    iget-object v2, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mInnerRectF:Landroid/graphics/RectF;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 77
    move-result v3

    .line 78
    int-to-float v3, v3

    .line 79
    sub-float/2addr v3, v0

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 83
    move-result v4

    .line 84
    int-to-float v4, v4

    .line 85
    sub-float/2addr v4, v0

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 89
    .line 90
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mOuterRectF:Landroid/graphics/RectF;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 94
    move-result v2

    .line 95
    int-to-float v2, v2

    .line 96
    sub-float/2addr v2, v1

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 100
    move-result v3

    .line 101
    int-to-float v3, v3

    .line 102
    sub-float/2addr v3, v1

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 106
    .line 107
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mOuterRectF:Landroid/graphics/RectF;

    .line 108
    .line 109
    iget v1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mOuterRadius:F

    .line 110
    .line 111
    iget-object v2, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mOuterPaint:Landroid/graphics/Paint;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 115
    .line 116
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mInnerRectF:Landroid/graphics/RectF;

    .line 117
    .line 118
    iget v1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mInnerRadius:F

    .line 119
    .line 120
    iget-object v2, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mInnerPaint:Landroid/graphics/Paint;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 124
    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->mInnerPaint:Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 6
    move-result p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 13
    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/editor/cropping/basic/ColorPickerItemView;->selected:Z

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method
