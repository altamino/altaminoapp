.class public Lcom/narvii/widget/ColorPickerView;
.super Landroid/view/View;
.source "SourceFile"


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

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/narvii/widget/ColorPickerView;->paint:Landroid/graphics/Paint;

    .line 5
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method

.method private colorToPoint(I)Landroid/graphics/Point;
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 12
    move-result p1

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    .line 16
    const v3, 0x7fffffff

    .line 17
    move v4, v3

    .line 18
    move v3, v2

    .line 19
    .line 20
    :goto_0
    iget-object v5, p0, Lcom/narvii/widget/ColorPickerView;->pixelColors:[I

    .line 21
    array-length v6, v5

    .line 22
    .line 23
    if-ge v2, v6, :cond_1

    .line 24
    .line 25
    aget v5, v5, v2

    .line 26
    .line 27
    .line 28
    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    .line 29
    move-result v5

    .line 30
    .line 31
    sub-int v5, v0, v5

    .line 32
    .line 33
    .line 34
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 35
    move-result v5

    .line 36
    .line 37
    iget-object v6, p0, Lcom/narvii/widget/ColorPickerView;->pixelColors:[I

    .line 38
    .line 39
    aget v6, v6, v2

    .line 40
    .line 41
    .line 42
    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    .line 43
    move-result v6

    .line 44
    .line 45
    sub-int v6, v1, v6

    .line 46
    .line 47
    .line 48
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 49
    move-result v6

    .line 50
    add-int/2addr v5, v6

    .line 51
    .line 52
    iget-object v6, p0, Lcom/narvii/widget/ColorPickerView;->pixelColors:[I

    .line 53
    .line 54
    aget v6, v6, v2

    .line 55
    .line 56
    .line 57
    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    .line 58
    move-result v6

    .line 59
    .line 60
    sub-int v6, p1, v6

    .line 61
    .line 62
    .line 63
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 64
    move-result v6

    .line 65
    add-int/2addr v5, v6

    .line 66
    .line 67
    if-ge v5, v4, :cond_0

    .line 68
    move v3, v2

    .line 69
    move v4, v5

    .line 70
    .line 71
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 72
    goto :goto_0

    .line 73
    .line 74
    :cond_1
    new-instance p1, Landroid/graphics/Point;

    .line 75
    .line 76
    .line 77
    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 78
    .line 79
    iput v3, p1, Landroid/graphics/Point;->x:I

    .line 80
    .line 81
    iget-object v0, p0, Lcom/narvii/widget/ColorPickerView;->mRect:Landroid/graphics/RectF;

    .line 82
    .line 83
    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 84
    float-to-int v0, v0

    .line 85
    .line 86
    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 87
    return-object p1
.end method

.method private drawColorPanel(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/ColorPickerView;->mRect:Landroid/graphics/RectF;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroid/graphics/RectF;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 10
    move-result v1

    .line 11
    .line 12
    div-int/lit8 v1, v1, 0xc

    .line 13
    int-to-float v1, v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 17
    move-result v2

    .line 18
    int-to-float v2, v2

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 22
    move-result v3

    .line 23
    .line 24
    mul-int/lit8 v3, v3, 0xb

    .line 25
    .line 26
    div-int/lit8 v3, v3, 0xc

    .line 27
    int-to-float v3, v3

    .line 28
    const/4 v4, 0x0

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v4, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 32
    .line 33
    iput-object v0, p0, Lcom/narvii/widget/ColorPickerView;->mRect:Landroid/graphics/RectF;

    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/ColorPickerView;->bgBitmap:Landroid/graphics/Bitmap;

    .line 36
    const/4 v1, 0x0

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/widget/ColorPickerView;->mRect:Landroid/graphics/RectF;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 44
    move-result v0

    .line 45
    float-to-int v0, v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 49
    move-result-object v2

    .line 50
    .line 51
    sget v3, Lcom/narvii/lib/R$drawable;->color_picker_bg:I

    .line 52
    .line 53
    .line 54
    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 55
    move-result-object v2

    .line 56
    .line 57
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 61
    move-result-object v2

    .line 62
    .line 63
    iget-object v3, p0, Lcom/narvii/widget/ColorPickerView;->mRect:Landroid/graphics/RectF;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    .line 67
    move-result v3

    .line 68
    float-to-int v3, v3

    .line 69
    const/4 v4, 0x1

    .line 70
    .line 71
    .line 72
    invoke-static {v2, v0, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 73
    move-result-object v2

    .line 74
    .line 75
    iput-object v2, p0, Lcom/narvii/widget/ColorPickerView;->bgBitmap:Landroid/graphics/Bitmap;

    .line 76
    .line 77
    new-array v2, v0, [I

    .line 78
    .line 79
    iput-object v2, p0, Lcom/narvii/widget/ColorPickerView;->pixelColors:[I

    .line 80
    move v2, v1

    .line 81
    .line 82
    :goto_0
    if-ge v2, v0, :cond_1

    .line 83
    .line 84
    iget-object v3, p0, Lcom/narvii/widget/ColorPickerView;->pixelColors:[I

    .line 85
    .line 86
    iget-object v4, p0, Lcom/narvii/widget/ColorPickerView;->bgBitmap:Landroid/graphics/Bitmap;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v2, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    .line 90
    move-result v4

    .line 91
    .line 92
    aput v4, v3, v2

    .line 93
    .line 94
    add-int/lit8 v2, v2, 0x1

    .line 95
    goto :goto_0

    .line 96
    .line 97
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/ColorPickerView;->bgBitmap:Landroid/graphics/Bitmap;

    .line 98
    .line 99
    iget-object v2, p0, Lcom/narvii/widget/ColorPickerView;->mRect:Landroid/graphics/RectF;

    .line 100
    .line 101
    iget-object v3, p0, Lcom/narvii/widget/ColorPickerView;->paint:Landroid/graphics/Paint;

    .line 102
    const/4 v4, 0x0

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v0, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 106
    .line 107
    iget-object v0, p0, Lcom/narvii/widget/ColorPickerView;->pickerBitmap:Landroid/graphics/Bitmap;

    .line 108
    .line 109
    if-nez v0, :cond_2

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 113
    move-result-object v0

    .line 114
    .line 115
    sget v2, Lcom/narvii/lib/R$drawable;->theme_color_picker:I

    .line 116
    .line 117
    .line 118
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 119
    move-result-object v0

    .line 120
    .line 121
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 125
    move-result-object v0

    .line 126
    .line 127
    iput-object v0, p0, Lcom/narvii/widget/ColorPickerView;->pickerBitmap:Landroid/graphics/Bitmap;

    .line 128
    .line 129
    :cond_2
    iget-boolean v0, p0, Lcom/narvii/widget/ColorPickerView;->colorSet:Z

    .line 130
    .line 131
    if-nez v0, :cond_3

    .line 132
    .line 133
    new-instance v0, Ljava/util/Random;

    .line 134
    .line 135
    .line 136
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 137
    .line 138
    iget-object v2, p0, Lcom/narvii/widget/ColorPickerView;->pixelColors:[I

    .line 139
    array-length v2, v2

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    .line 143
    move-result v0

    .line 144
    .line 145
    iget-object v2, p0, Lcom/narvii/widget/ColorPickerView;->pixelColors:[I

    .line 146
    .line 147
    aget v0, v2, v0

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, v0}, Lcom/narvii/widget/ColorPickerView;->setColor(I)V

    .line 151
    .line 152
    :cond_3
    iget v0, p0, Lcom/narvii/widget/ColorPickerView;->mColor:I

    .line 153
    .line 154
    .line 155
    invoke-direct {p0, v0}, Lcom/narvii/widget/ColorPickerView;->colorToPoint(I)Landroid/graphics/Point;

    .line 156
    move-result-object v0

    .line 157
    .line 158
    new-instance v2, Landroid/graphics/Rect;

    .line 159
    .line 160
    iget v3, v0, Landroid/graphics/Point;->x:I

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 164
    move-result v5

    .line 165
    .line 166
    div-int/lit8 v5, v5, 0x2

    .line 167
    sub-int/2addr v3, v5

    .line 168
    .line 169
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 173
    move-result v5

    .line 174
    .line 175
    div-int/lit8 v5, v5, 0x2

    .line 176
    add-int/2addr v0, v5

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 180
    move-result v5

    .line 181
    .line 182
    .line 183
    invoke-direct {v2, v3, v1, v0, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 184
    .line 185
    iget-object v0, p0, Lcom/narvii/widget/ColorPickerView;->pickerBitmap:Landroid/graphics/Bitmap;

    .line 186
    .line 187
    iget-object v1, p0, Lcom/narvii/widget/ColorPickerView;->paint:Landroid/graphics/Paint;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, v0, v4, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 191
    return-void
.end method

.method private moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    :cond_0
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 9
    .line 10
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 14
    move-result p1

    .line 15
    float-to-int p1, p1

    .line 16
    .line 17
    iget-object v3, p0, Lcom/narvii/widget/ColorPickerView;->mRect:Landroid/graphics/RectF;

    .line 18
    int-to-float v2, v2

    .line 19
    int-to-float v0, v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v2, v0}, Landroid/graphics/RectF;->contains(FF)Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    if-ltz p1, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/widget/ColorPickerView;->pixelColors:[I

    .line 30
    array-length v2, v0

    .line 31
    .line 32
    if-ge p1, v2, :cond_1

    .line 33
    .line 34
    aget p1, v0, p1

    .line 35
    .line 36
    iput p1, p0, Lcom/narvii/widget/ColorPickerView;->mColor:I

    .line 37
    const/4 v1, 0x1

    .line 38
    :cond_1
    return v1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/narvii/widget/ColorPickerView;->drawColorPanel(Landroid/graphics/Canvas;)V

    .line 7
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    const/4 v2, 0x2

    .line 11
    .line 12
    if-eq v0, v2, :cond_0

    .line 13
    goto :goto_1

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-direct {p0, p1}, Lcom/narvii/widget/ColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    .line 17
    move-result v0

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/widget/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    .line 22
    goto :goto_1

    .line 23
    .line 24
    :cond_2
    new-instance v0, Landroid/graphics/Point;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 28
    move-result v2

    .line 29
    float-to-int v2, v2

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 33
    move-result v3

    .line 34
    float-to-int v3, v3

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 38
    .line 39
    iput-object v0, p0, Lcom/narvii/widget/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, p1}, Lcom/narvii/widget/ColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    .line 43
    move-result v0

    .line 44
    .line 45
    :goto_0
    if-eqz v0, :cond_4

    .line 46
    .line 47
    iget-object p1, p0, Lcom/narvii/widget/ColorPickerView;->mListener:Lcom/narvii/widget/ColorPickerView$OnColorChangedListener;

    .line 48
    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    iget v0, p0, Lcom/narvii/widget/ColorPickerView;->mColor:I

    .line 52
    .line 53
    .line 54
    invoke-interface {p1, v0}, Lcom/narvii/widget/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 55
    .line 56
    .line 57
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 58
    return v1

    .line 59
    .line 60
    .line 61
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 62
    move-result p1

    .line 63
    return p1
.end method

.method public setColor(I)V
    .locals 1

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/ColorPickerView;->mColor:I

    .line 3
    const/4 p1, 0x1

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/narvii/widget/ColorPickerView;->colorSet:Z

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/widget/ColorPickerView;->mListener:Lcom/narvii/widget/ColorPickerView$OnColorChangedListener;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget v0, p0, Lcom/narvii/widget/ColorPickerView;->mColor:I

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v0}, Lcom/narvii/widget/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 18
    :cond_0
    return-void
.end method

.method public setListener(Lcom/narvii/widget/ColorPickerView$OnColorChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/ColorPickerView;->mListener:Lcom/narvii/widget/ColorPickerView$OnColorChangedListener;

    return-void
.end method
