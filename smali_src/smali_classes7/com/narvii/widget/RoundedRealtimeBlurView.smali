.class public Lcom/narvii/widget/RoundedRealtimeBlurView;
.super Lcom/github/mmin18/widget/RealtimeBlurView;
.source "SourceFile"


# instance fields
.field private colorPaint:Landroid/graphics/Paint;

.field mPath:Landroid/graphics/Path;

.field private mRectDst:Landroid/graphics/RectF;

.field private matrix:Landroid/graphics/Matrix;

.field private paint:Landroid/graphics/Paint;

.field private radius:I

.field radiusArray:[F

.field private shader:Landroid/graphics/BitmapShader;

.field private shaderBitmapRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/github/mmin18/widget/RealtimeBlurView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/RectF;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->mRectDst:Landroid/graphics/RectF;

    .line 11
    .line 12
    new-instance v0, Landroid/graphics/Path;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->mPath:Landroid/graphics/Path;

    .line 18
    .line 19
    sget-object v0, Lcom/narvii/amino/R$styleable;->RoundedRealtimeBlurView:[I

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 23
    move-result-object p1

    .line 24
    const/4 p2, 0x0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 28
    move-result p2

    .line 29
    .line 30
    iput p2, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->radius:I

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 34
    .line 35
    new-instance p1, Landroid/graphics/Paint;

    .line 36
    const/4 p2, 0x3

    .line 37
    .line 38
    .line 39
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 40
    .line 41
    iput-object p1, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->paint:Landroid/graphics/Paint;

    .line 42
    .line 43
    new-instance p1, Landroid/graphics/Paint;

    .line 44
    const/4 p2, 0x1

    .line 45
    .line 46
    .line 47
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 48
    .line 49
    iput-object p1, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->colorPaint:Landroid/graphics/Paint;

    .line 50
    .line 51
    new-instance p1, Landroid/graphics/Matrix;

    .line 52
    .line 53
    .line 54
    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 55
    .line 56
    iput-object p1, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->matrix:Landroid/graphics/Matrix;

    .line 57
    return-void
.end method


# virtual methods
.method protected drawBlurredBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->radius:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->radiusArray:[F

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2, p3}, Lcom/github/mmin18/widget/RealtimeBlurView;->drawBlurredBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 18
    move-result v1

    .line 19
    int-to-float v1, v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 23
    move-result v2

    .line 24
    int-to-float v2, v2

    .line 25
    const/4 v3, 0x0

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 29
    .line 30
    iput-object v0, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->mRectDst:Landroid/graphics/RectF;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->shaderBitmapRef:Ljava/lang/ref/WeakReference;

    .line 33
    const/4 v1, 0x0

    .line 34
    .line 35
    if-nez v0, :cond_1

    .line 36
    move-object v0, v1

    .line 37
    goto :goto_0

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    check-cast v0, Landroid/graphics/Bitmap;

    .line 44
    .line 45
    :goto_0
    if-eq v0, p2, :cond_2

    .line 46
    .line 47
    iput-object v1, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->shader:Landroid/graphics/BitmapShader;

    .line 48
    .line 49
    iput-object v1, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->shaderBitmapRef:Ljava/lang/ref/WeakReference;

    .line 50
    .line 51
    :cond_2
    if-eqz p2, :cond_5

    .line 52
    .line 53
    iget-object v0, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->matrix:Landroid/graphics/Matrix;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 57
    move-result v1

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 61
    move-result v2

    .line 62
    div-int/2addr v1, v2

    .line 63
    int-to-float v1, v1

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 67
    move-result v2

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 71
    move-result v3

    .line 72
    div-int/2addr v2, v3

    .line 73
    int-to-float v2, v2

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 77
    .line 78
    iget-object v0, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->shader:Landroid/graphics/BitmapShader;

    .line 79
    .line 80
    if-nez v0, :cond_3

    .line 81
    .line 82
    new-instance v0, Landroid/graphics/BitmapShader;

    .line 83
    .line 84
    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 85
    .line 86
    .line 87
    invoke-direct {v0, p2, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 88
    .line 89
    iput-object v0, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->shader:Landroid/graphics/BitmapShader;

    .line 90
    .line 91
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 92
    .line 93
    .line 94
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 95
    .line 96
    iput-object v0, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->shaderBitmapRef:Ljava/lang/ref/WeakReference;

    .line 97
    .line 98
    :cond_3
    iget-object p2, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->shader:Landroid/graphics/BitmapShader;

    .line 99
    .line 100
    iget-object v0, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->matrix:Landroid/graphics/Matrix;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 104
    .line 105
    iget-object p2, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->paint:Landroid/graphics/Paint;

    .line 106
    .line 107
    iget-object v0, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->shader:Landroid/graphics/BitmapShader;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 111
    .line 112
    iget-object p2, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->radiusArray:[F

    .line 113
    .line 114
    if-eqz p2, :cond_4

    .line 115
    .line 116
    iget-object p2, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->mPath:Landroid/graphics/Path;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 120
    .line 121
    iget-object p2, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->mPath:Landroid/graphics/Path;

    .line 122
    .line 123
    iget-object v0, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->mRectDst:Landroid/graphics/RectF;

    .line 124
    .line 125
    iget-object v1, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->radiusArray:[F

    .line 126
    .line 127
    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2, v0, v1, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 131
    .line 132
    iget-object p2, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->mPath:Landroid/graphics/Path;

    .line 133
    .line 134
    iget-object v0, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->paint:Landroid/graphics/Paint;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 138
    goto :goto_1

    .line 139
    .line 140
    :cond_4
    iget-object p2, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->mRectDst:Landroid/graphics/RectF;

    .line 141
    .line 142
    iget v0, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->radius:I

    .line 143
    int-to-float v1, v0

    .line 144
    int-to-float v0, v0

    .line 145
    .line 146
    iget-object v2, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->paint:Landroid/graphics/Paint;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 150
    .line 151
    :cond_5
    :goto_1
    iget-object p2, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->colorPaint:Landroid/graphics/Paint;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    .line 156
    iget-object p2, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->radiusArray:[F

    .line 157
    .line 158
    if-eqz p2, :cond_6

    .line 159
    .line 160
    iget-object p2, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->mPath:Landroid/graphics/Path;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 164
    .line 165
    iget-object p2, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->mPath:Landroid/graphics/Path;

    .line 166
    .line 167
    iget-object p3, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->mRectDst:Landroid/graphics/RectF;

    .line 168
    .line 169
    iget-object v0, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->radiusArray:[F

    .line 170
    .line 171
    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p2, p3, v0, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 175
    .line 176
    iget-object p2, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->mPath:Landroid/graphics/Path;

    .line 177
    .line 178
    iget-object p3, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->colorPaint:Landroid/graphics/Paint;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 182
    goto :goto_2

    .line 183
    .line 184
    :cond_6
    iget-object p2, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->mRectDst:Landroid/graphics/RectF;

    .line 185
    .line 186
    iget p3, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->radius:I

    .line 187
    int-to-float v0, p3

    .line 188
    int-to-float p3, p3

    .line 189
    .line 190
    iget-object v1, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->colorPaint:Landroid/graphics/Paint;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 194
    :goto_2
    return-void
.end method

.method public setRadiusArray([F)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/RoundedRealtimeBlurView;->radiusArray:[F

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method
