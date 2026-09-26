.class public Lcom/narvii/quiz/QuizMilestoneCoverImageView;
.super Lcom/narvii/widget/ThumbImageView;
.source "SourceFile"


# static fields
.field public static final OVERLAY_HEIGHT_RATIO:I = 0xa


# instance fields
.field private bitmapPaint:Landroid/graphics/Paint;

.field private bitmapShader:Landroid/graphics/BitmapShader;

.field private final imagePath:Landroid/graphics/Path;

.field private overlayPaint:Landroid/graphics/Paint;

.field private final overlayPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/ThumbImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p1, Landroid/graphics/Paint;

    .line 6
    const/4 p2, 0x1

    .line 7
    .line 8
    .line 9
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 10
    .line 11
    iput-object p1, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->bitmapPaint:Landroid/graphics/Paint;

    .line 12
    .line 13
    new-instance p1, Landroid/graphics/Paint;

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 17
    .line 18
    iput-object p1, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->overlayPaint:Landroid/graphics/Paint;

    .line 19
    .line 20
    new-instance p1, Landroid/graphics/Path;

    .line 21
    .line 22
    .line 23
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 24
    .line 25
    iput-object p1, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->imagePath:Landroid/graphics/Path;

    .line 26
    .line 27
    new-instance p1, Landroid/graphics/Path;

    .line 28
    .line 29
    .line 30
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 31
    .line 32
    iput-object p1, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->overlayPath:Landroid/graphics/Path;

    .line 33
    return-void
.end method

.method private drawOverlay(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->overlayPaint:Landroid/graphics/Paint;

    .line 3
    .line 4
    const/high16 v1, 0x4b000000    # 8388608.0f

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->overlayPath:Landroid/graphics/Path;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->overlayPath:Landroid/graphics/Path;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 18
    move-result v1

    .line 19
    int-to-float v1, v1

    .line 20
    .line 21
    .line 22
    const v2, 0x3f666666    # 0.9f

    .line 23
    mul-float/2addr v1, v2

    .line 24
    const/4 v2, 0x0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->overlayPath:Landroid/graphics/Path;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 33
    move-result v1

    .line 34
    int-to-float v1, v1

    .line 35
    .line 36
    const/high16 v3, 0x40000000    # 2.0f

    .line 37
    div-float/2addr v1, v3

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 41
    move-result v3

    .line 42
    int-to-float v3, v3

    .line 43
    .line 44
    .line 45
    const v4, 0x3f733333    # 0.95f

    .line 46
    mul-float/2addr v3, v4

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->overlayPath:Landroid/graphics/Path;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 55
    move-result v1

    .line 56
    int-to-float v1, v1

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 60
    .line 61
    iget-object v0, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->overlayPath:Landroid/graphics/Path;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 65
    .line 66
    iget-object v0, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->overlayPath:Landroid/graphics/Path;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->overlayPaint:Landroid/graphics/Paint;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 72
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    instance-of v0, v0, Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    check-cast v0, Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/narvii/util/drawables/WrapDrawable;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    instance-of v0, v0, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    check-cast v0, Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/narvii/util/drawables/WrapDrawable;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    check-cast v0, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->draw()Landroid/graphics/Bitmap;

    .line 57
    move-result-object v0

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const/4 v0, 0x0

    .line 60
    .line 61
    :goto_0
    iget-object v1, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->imagePath:Landroid/graphics/Path;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 65
    .line 66
    iget-object v1, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->imagePath:Landroid/graphics/Path;

    .line 67
    const/4 v2, 0x0

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 71
    .line 72
    iget-object v1, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->imagePath:Landroid/graphics/Path;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 76
    move-result v3

    .line 77
    int-to-float v3, v3

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 81
    .line 82
    iget-object v1, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->imagePath:Landroid/graphics/Path;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 86
    move-result v3

    .line 87
    int-to-float v3, v3

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 91
    move-result v4

    .line 92
    int-to-float v4, v4

    .line 93
    .line 94
    .line 95
    const v5, 0x3f666666    # 0.9f

    .line 96
    mul-float/2addr v4, v5

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 100
    .line 101
    iget-object v1, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->imagePath:Landroid/graphics/Path;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 105
    move-result v3

    .line 106
    int-to-float v3, v3

    .line 107
    .line 108
    const/high16 v4, 0x40000000    # 2.0f

    .line 109
    div-float/2addr v3, v4

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 113
    move-result v4

    .line 114
    int-to-float v4, v4

    .line 115
    .line 116
    .line 117
    const v6, 0x3f733333    # 0.95f

    .line 118
    mul-float/2addr v4, v6

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 122
    .line 123
    iget-object v1, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->imagePath:Landroid/graphics/Path;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 127
    move-result v3

    .line 128
    int-to-float v3, v3

    .line 129
    mul-float/2addr v3, v5

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 133
    .line 134
    iget-object v1, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->imagePath:Landroid/graphics/Path;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 138
    .line 139
    if-eqz v0, :cond_2

    .line 140
    .line 141
    new-instance v1, Landroid/graphics/BitmapShader;

    .line 142
    .line 143
    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 144
    .line 145
    .line 146
    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 147
    .line 148
    iput-object v1, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->bitmapShader:Landroid/graphics/BitmapShader;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    .line 152
    move-result-object v0

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 156
    .line 157
    iget-object v0, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->bitmapPaint:Landroid/graphics/Paint;

    .line 158
    .line 159
    iget-object v1, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->bitmapShader:Landroid/graphics/BitmapShader;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 163
    .line 164
    iget-object v0, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->imagePath:Landroid/graphics/Path;

    .line 165
    .line 166
    iget-object v1, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->bitmapPaint:Landroid/graphics/Paint;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 170
    .line 171
    .line 172
    invoke-direct {p0, p1}, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->drawOverlay(Landroid/graphics/Canvas;)V

    .line 173
    return-void

    .line 174
    .line 175
    :cond_2
    iget-object v0, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->overlayPaint:Landroid/graphics/Paint;

    .line 176
    .line 177
    const/high16 v1, -0x68000000

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 181
    .line 182
    iget-object v0, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->imagePath:Landroid/graphics/Path;

    .line 183
    .line 184
    iget-object v1, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->overlayPaint:Landroid/graphics/Paint;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 188
    .line 189
    .line 190
    invoke-direct {p0, p1}, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->drawOverlay(Landroid/graphics/Canvas;)V

    .line 191
    return-void
.end method
