.class Lcom/narvii/widget/NVDrawableAnimatedView$Layer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/NVDrawableAnimatedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Layer"
.end annotation


# instance fields
.field animationInterval:F

.field animationType:I

.field baseScaleX:F

.field baseScaleY:F

.field configured:Z

.field drawableHeight:I

.field drawableWidth:I

.field duration:I

.field fromScaleX:F

.field fromScaleY:F

.field fromValue:F

.field interpolator:Landroid/animation/TimeInterpolator;

.field layerAlpha:F

.field layerGravity:I

.field layerScaleType:I

.field layerShader:Landroid/graphics/BitmapShader;

.field marginBottom:I

.field marginEnd:I

.field marginStart:I

.field marginTop:I

.field matrix:Landroid/graphics/Matrix;

.field repeatCount:I

.field repeatMode:I

.field resId:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field rotateDegree:F

.field scalePivotX:F

.field scalePivotY:F

.field scaleX:F

.field scaleY:F

.field startDelay:J

.field targetRect:Landroid/graphics/Rect;

.field toScaleX:F

.field toScaleY:F

.field translateX:F

.field translateY:F

.field valueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->repeatMode:I

    .line 7
    const/4 v0, -0x1

    .line 8
    .line 9
    iput v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->repeatCount:I

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->interpolator:Landroid/animation/TimeInterpolator;

    .line 13
    const/4 v0, 0x0

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->configured:Z

    .line 16
    const/4 v0, 0x0

    .line 17
    .line 18
    iput v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateX:F

    .line 19
    .line 20
    iput v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateY:F

    .line 21
    .line 22
    iput v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->rotateDegree:F

    .line 23
    .line 24
    const/high16 v0, 0x3f800000    # 1.0f

    .line 25
    .line 26
    iput v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scaleX:F

    .line 27
    .line 28
    iput v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scaleY:F

    .line 29
    .line 30
    iput v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->baseScaleX:F

    .line 31
    .line 32
    iput v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->baseScaleY:F

    .line 33
    .line 34
    iput v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->fromScaleX:F

    .line 35
    .line 36
    iput v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->fromScaleY:F

    .line 37
    .line 38
    iput v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->toScaleX:F

    .line 39
    .line 40
    iput v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->toScaleY:F

    .line 41
    .line 42
    const/high16 v0, -0x40800000    # -1.0f

    .line 43
    .line 44
    iput v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scalePivotX:F

    .line 45
    .line 46
    iput v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scalePivotY:F

    .line 47
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/widget/NVDrawableAnimatedView$Layer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->destroy()V

    return-void
.end method

.method static bridge synthetic b(Lcom/narvii/widget/NVDrawableAnimatedView$Layer;)Landroid/graphics/Matrix;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/widget/NVDrawableAnimatedView$Layer;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->tryEnd()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic d(Lcom/narvii/widget/NVDrawableAnimatedView$Layer;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->tryStart()Z

    move-result p0

    return p0
.end method

.method private destroy()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 9
    .line 10
    iput-object v1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 11
    .line 12
    :cond_0
    iput-object v1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->matrix:Landroid/graphics/Matrix;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->layerShader:Landroid/graphics/BitmapShader;

    .line 15
    const/4 v0, 0x0

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->configured:Z

    .line 18
    return-void
.end method

.method public static generate(Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;)Lcom/narvii/widget/NVDrawableAnimatedView$Layer;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getAnimationType()I

    .line 9
    move-result v1

    .line 10
    .line 11
    iput v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationType:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getLayerGravity()I

    .line 15
    move-result v1

    .line 16
    .line 17
    iput v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->layerGravity:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getLayerScaleType()I

    .line 21
    move-result v1

    .line 22
    .line 23
    iput v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->layerScaleType:I

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getLayerAlpha()F

    .line 27
    move-result v1

    .line 28
    .line 29
    iput v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->layerAlpha:F

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getDrawableResId()I

    .line 33
    move-result v1

    .line 34
    .line 35
    iput v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->resId:I

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getMarginStart()I

    .line 39
    move-result v1

    .line 40
    .line 41
    iput v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->marginStart:I

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getMarginTop()I

    .line 45
    move-result v1

    .line 46
    .line 47
    iput v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->marginTop:I

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getMarginEnd()I

    .line 51
    move-result v1

    .line 52
    .line 53
    iput v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->marginEnd:I

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getMarginBottom()I

    .line 57
    move-result v1

    .line 58
    .line 59
    iput v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->marginBottom:I

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getScalePivotX()F

    .line 63
    move-result v1

    .line 64
    .line 65
    iput v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scalePivotX:F

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getScalePivotY()F

    .line 69
    move-result v1

    .line 70
    .line 71
    iput v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scalePivotY:F

    .line 72
    .line 73
    new-instance v1, Landroid/graphics/Matrix;

    .line 74
    .line 75
    .line 76
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 77
    .line 78
    iput-object v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->matrix:Landroid/graphics/Matrix;

    .line 79
    .line 80
    iget v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationType:I

    .line 81
    .line 82
    if-eqz v1, :cond_2

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getAnimationInterval()F

    .line 86
    move-result v1

    .line 87
    .line 88
    const/high16 v2, -0x40800000    # -1.0f

    .line 89
    .line 90
    cmpl-float v1, v1, v2

    .line 91
    .line 92
    if-eqz v1, :cond_1

    .line 93
    const/4 v1, 0x2

    .line 94
    .line 95
    new-array v1, v1, [F

    .line 96
    const/4 v2, 0x0

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getFromValue()F

    .line 100
    move-result v3

    .line 101
    .line 102
    aput v3, v1, v2

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getFromValue()F

    .line 106
    move-result v2

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getAnimationInterval()F

    .line 110
    move-result v3

    .line 111
    add-float/2addr v2, v3

    .line 112
    const/4 v3, 0x1

    .line 113
    .line 114
    aput v2, v1, v3

    .line 115
    .line 116
    .line 117
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 118
    move-result-object v1

    .line 119
    .line 120
    iput-object v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getDuration()I

    .line 124
    move-result v1

    .line 125
    .line 126
    if-lez v1, :cond_0

    .line 127
    .line 128
    iget-object v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getDuration()I

    .line 132
    move-result v2

    .line 133
    int-to-long v2, v2

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 137
    .line 138
    :cond_0
    iget-object v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getRepeatMode()I

    .line 142
    move-result v2

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 146
    .line 147
    iget-object v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getRepeatCount()I

    .line 151
    move-result v2

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 155
    .line 156
    iget-object v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getStartDelay()J

    .line 160
    move-result-wide v2

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 164
    .line 165
    iget-object v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getTimeInterpolator()Landroid/animation/TimeInterpolator;

    .line 169
    move-result-object v2

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 173
    .line 174
    .line 175
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getAnimationInterval()F

    .line 176
    move-result v1

    .line 177
    .line 178
    iput v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationInterval:F

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getFromValue()F

    .line 182
    move-result v1

    .line 183
    .line 184
    iput v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->fromValue:F

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getDuration()I

    .line 188
    move-result v1

    .line 189
    .line 190
    iput v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->duration:I

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getRepeatMode()I

    .line 194
    move-result v1

    .line 195
    .line 196
    iput v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->repeatMode:I

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getRepeatCount()I

    .line 200
    move-result v1

    .line 201
    .line 202
    iput v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->repeatCount:I

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getStartDelay()J

    .line 206
    move-result-wide v1

    .line 207
    .line 208
    iput-wide v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->startDelay:J

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0}, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;->getTimeInterpolator()Landroid/animation/TimeInterpolator;

    .line 212
    move-result-object p0

    .line 213
    .line 214
    iput-object p0, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->interpolator:Landroid/animation/TimeInterpolator;

    .line 215
    :cond_2
    return-object v0
.end method

.method private getMatrix()Landroid/graphics/Matrix;
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->matrix:Landroid/graphics/Matrix;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->matrix:Landroid/graphics/Matrix;

    .line 8
    .line 9
    iget v1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateX:F

    .line 10
    .line 11
    iget v2, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateY:F

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 15
    .line 16
    iget v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scalePivotX:F

    .line 17
    .line 18
    const/high16 v1, -0x40800000    # -1.0f

    .line 19
    .line 20
    cmpl-float v0, v0, v1

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->targetRect:Landroid/graphics/Rect;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    .line 28
    move-result v0

    .line 29
    int-to-float v0, v0

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->targetRect:Landroid/graphics/Rect;

    .line 33
    .line 34
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 35
    int-to-float v2, v2

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 39
    move-result v0

    .line 40
    int-to-float v0, v0

    .line 41
    .line 42
    iget v3, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scalePivotX:F

    .line 43
    mul-float/2addr v0, v3

    .line 44
    add-float/2addr v0, v2

    .line 45
    .line 46
    :goto_0
    iget v2, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scalePivotY:F

    .line 47
    .line 48
    cmpl-float v1, v2, v1

    .line 49
    .line 50
    if-nez v1, :cond_1

    .line 51
    .line 52
    iget-object v1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->targetRect:Landroid/graphics/Rect;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    .line 56
    move-result v1

    .line 57
    int-to-float v1, v1

    .line 58
    goto :goto_1

    .line 59
    .line 60
    :cond_1
    iget-object v1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->targetRect:Landroid/graphics/Rect;

    .line 61
    .line 62
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 63
    int-to-float v2, v2

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 67
    move-result v1

    .line 68
    int-to-float v1, v1

    .line 69
    .line 70
    iget v3, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scalePivotY:F

    .line 71
    mul-float/2addr v1, v3

    .line 72
    add-float/2addr v1, v2

    .line 73
    .line 74
    :goto_1
    iget-object v2, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->matrix:Landroid/graphics/Matrix;

    .line 75
    .line 76
    iget v3, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scaleX:F

    .line 77
    .line 78
    iget v4, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scaleY:F

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 82
    .line 83
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->matrix:Landroid/graphics/Matrix;

    .line 84
    .line 85
    iget v1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->rotateDegree:F

    .line 86
    .line 87
    iget-object v2, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->targetRect:Landroid/graphics/Rect;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    .line 91
    move-result v2

    .line 92
    int-to-float v2, v2

    .line 93
    .line 94
    iget-object v3, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->targetRect:Landroid/graphics/Rect;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    .line 98
    move-result v3

    .line 99
    int-to-float v3, v3

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 103
    .line 104
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->matrix:Landroid/graphics/Matrix;

    .line 105
    return-object v0
.end method

.method private tryEnd()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 16
    const/4 v0, 0x1

    .line 17
    return v0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return v0
.end method

.method private tryStart()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 16
    const/4 v0, 0x1

    .line 17
    return v0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return v0
.end method
