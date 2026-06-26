.class public Lcom/narvii/widget/ColorPickerView;
.super Landroid/view/View;
.source "ColorPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/ColorPickerView$OnColorChangedListener;
    }
.end annotation


# static fields
.field public static final COLOR_S_FLOAT:F = 0.65f

.field public static final COLOR_V_FLOAT:F = 1.0f


# instance fields
.field private bgBitmap:Landroid/graphics/Bitmap;

.field colorSet:Z

.field private mColor:I

.field private mListener:Lcom/narvii/widget/ColorPickerView$OnColorChangedListener;

.field private mRect:Landroid/graphics/RectF;

.field private mShader:Landroid/graphics/LinearGradient;

.field private mStartTouchPoint:Landroid/graphics/Point;

.field private paint:Landroid/graphics/Paint;

.field private pickerBitmap:Landroid/graphics/Bitmap;

.field private pixelColors:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/narvii/widget/ColorPickerView;->paint:Landroid/graphics/Paint;

    .line 51
    iget-object p1, p0, Lcom/narvii/widget/ColorPickerView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method

.method private colorToPoint(I)Landroid/graphics/Point;
    .locals 7

    .line 153
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 154
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 155
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/4 v3, 0x0

    const v4, 0x7fffffff

    .line 159
    :goto_0
    iget-object v5, p0, Lcom/narvii/widget/ColorPickerView;->pixelColors:[I

    array-length v6, v5

    if-ge v2, v6, :cond_1

    .line 160
    aget v5, v5, v2

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v5

    sub-int v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget-object v6, p0, Lcom/narvii/widget/ColorPickerView;->pixelColors:[I

    aget v6, v6, v2

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    sub-int v6, v1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/narvii/widget/ColorPickerView;->pixelColors:[I

    aget v6, v6, v2

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    sub-int v6, p1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/2addr v5, v6

    if-ge v5, v4, :cond_0

    move v3, v2

    move v4, v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 167
    :cond_1
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 168
    iput v3, p1, Landroid/graphics/Point;->x:I

    .line 169
    iget-object v0, p0, Lcom/narvii/widget/ColorPickerView;->mRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    return-object p1
.end method

.method private drawColorPanel(Landroid/graphics/Canvas;)V
    .locals 6

    .line 74
    iget-object v0, p0, Lcom/narvii/widget/ColorPickerView;->mRect:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0xc

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0xb

    div-int/lit8 v4, v4, 0xc

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/narvii/widget/ColorPickerView;->mRect:Landroid/graphics/RectF;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/ColorPickerView;->bgBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/narvii/widget/ColorPickerView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/narvii/lib/R$drawable;->color_picker_bg:I

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 81
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/widget/ColorPickerView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x1

    invoke-static {v2, v0, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/narvii/widget/ColorPickerView;->bgBitmap:Landroid/graphics/Bitmap;

    .line 82
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/narvii/widget/ColorPickerView;->pixelColors:[I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 84
    iget-object v3, p0, Lcom/narvii/widget/ColorPickerView;->pixelColors:[I

    iget-object v4, p0, Lcom/narvii/widget/ColorPickerView;->bgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v2, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/ColorPickerView;->bgBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/narvii/widget/ColorPickerView;->mRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/narvii/widget/ColorPickerView;->paint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 90
    iget-object v0, p0, Lcom/narvii/widget/ColorPickerView;->pickerBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/narvii/lib/R$drawable;->theme_color_picker:I

    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 92
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/ColorPickerView;->pickerBitmap:Landroid/graphics/Bitmap;

    .line 95
    :cond_2
    iget-boolean v0, p0, Lcom/narvii/widget/ColorPickerView;->colorSet:Z

    if-nez v0, :cond_3

    .line 96
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iget-object v2, p0, Lcom/narvii/widget/ColorPickerView;->pixelColors:[I

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 97
    iget-object v2, p0, Lcom/narvii/widget/ColorPickerView;->pixelColors:[I

    aget v0, v2, v0

    invoke-virtual {p0, v0}, Lcom/narvii/widget/ColorPickerView;->setColor(I)V

    .line 100
    :cond_3
    iget v0, p0, Lcom/narvii/widget/ColorPickerView;->mColor:I

    invoke-direct {p0, v0}, Lcom/narvii/widget/ColorPickerView;->colorToPoint(I)Landroid/graphics/Point;

    move-result-object v0

    .line 101
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-direct {v2, v3, v1, v0, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 103
    iget-object v0, p0, Lcom/narvii/widget/ColorPickerView;->pickerBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/narvii/widget/ColorPickerView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 136
    iget-object v0, p0, Lcom/narvii/widget/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 140
    :cond_0
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 141
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 143
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 144
    iget-object v3, p0, Lcom/narvii/widget/ColorPickerView;->mRect:Landroid/graphics/RectF;

    int-to-float v2, v2

    int-to-float v0, v0

    invoke-virtual {v3, v2, v0}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/narvii/widget/ColorPickerView;->pixelColors:[I

    array-length v2, v0

    if-ge p1, v2, :cond_1

    .line 145
    aget p1, v0, p1

    iput p1, p0, Lcom/narvii/widget/ColorPickerView;->mColor:I

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 70
    invoke-direct {p0, p1}, Lcom/narvii/widget/ColorPickerView;->drawColorPanel(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/widget/ColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/narvii/widget/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    .line 111
    :cond_2
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/narvii/widget/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    .line 112
    invoke-direct {p0, p1}, Lcom/narvii/widget/ColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_4

    .line 125
    iget-object p1, p0, Lcom/narvii/widget/ColorPickerView;->mListener:Lcom/narvii/widget/ColorPickerView$OnColorChangedListener;

    if-eqz p1, :cond_3

    .line 126
    iget v0, p0, Lcom/narvii/widget/ColorPickerView;->mColor:I

    invoke-interface {p1, v0}, Lcom/narvii/widget/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 128
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v1

    .line 131
    :cond_4
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setColor(I)V
    .locals 1

    .line 55
    iput p1, p0, Lcom/narvii/widget/ColorPickerView;->mColor:I

    const/4 p1, 0x1

    .line 56
    iput-boolean p1, p0, Lcom/narvii/widget/ColorPickerView;->colorSet:Z

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 58
    iget-object p1, p0, Lcom/narvii/widget/ColorPickerView;->mListener:Lcom/narvii/widget/ColorPickerView$OnColorChangedListener;

    if-eqz p1, :cond_0

    .line 59
    iget v0, p0, Lcom/narvii/widget/ColorPickerView;->mColor:I

    invoke-interface {p1, v0}, Lcom/narvii/widget/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/narvii/widget/ColorPickerView$OnColorChangedListener;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/narvii/widget/ColorPickerView;->mListener:Lcom/narvii/widget/ColorPickerView$OnColorChangedListener;

    return-void
.end method
