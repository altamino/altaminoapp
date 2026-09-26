.class public Lcom/narvii/widget/TouchImageView;
.super Lcom/narvii/widget/FullsizeImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/TouchImageView$OnTouchImageViewListener;,
        Lcom/narvii/widget/TouchImageView$ScaleListener;,
        Lcom/narvii/widget/TouchImageView$GestureListener;,
        Lcom/narvii/widget/TouchImageView$State;,
        Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;,
        Lcom/narvii/widget/TouchImageView$ZoomVariables;,
        Lcom/narvii/widget/TouchImageView$CompatScroller;,
        Lcom/narvii/widget/TouchImageView$Fling;,
        Lcom/narvii/widget/TouchImageView$DoubleTapZoom;
    }
.end annotation


# static fields
.field private static final DEBUG:Ljava/lang/String; = "DEBUG"

.field private static final SUPER_MAX_MULTIPLIER:F = 1.25f

.field private static final SUPER_MIN_MULTIPLIER:F = 0.75f


# instance fields
.field private context:Landroid/content/Context;

.field private delayedZoomVariables:Lcom/narvii/widget/TouchImageView$ZoomVariables;

.field private doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

.field private fling:Lcom/narvii/widget/TouchImageView$Fling;

.field private imageRenderedAtLeastOnce:Z

.field private m:[F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private matchViewHeight:F

.field private matchViewWidth:F

.field private matrix:Landroid/graphics/Matrix;

.field private maxScale:F

.field private minScale:F

.field private normalizedScale:F

.field private onDrawReady:Z

.field private prevMatchViewHeight:F

.field private prevMatchViewWidth:F

.field private prevMatrix:Landroid/graphics/Matrix;

.field private prevViewHeight:I

.field private prevViewWidth:I

.field private state:Lcom/narvii/widget/TouchImageView$State;

.field private superMaxScale:F

.field private superMinScale:F

.field private touchImageViewListener:Lcom/narvii/widget/TouchImageView$OnTouchImageViewListener;

.field private userTouchListener:Landroid/view/View$OnTouchListener;

.field private viewHeight:I

.field private viewWidth:I

.field private zoomDisabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/widget/FullsizeImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/narvii/widget/TouchImageView;->doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    iput-object v0, p0, Lcom/narvii/widget/TouchImageView;->userTouchListener:Landroid/view/View$OnTouchListener;

    iput-object v0, p0, Lcom/narvii/widget/TouchImageView;->touchImageViewListener:Lcom/narvii/widget/TouchImageView$OnTouchImageViewListener;

    .line 2
    invoke-direct {p0, p1}, Lcom/narvii/widget/TouchImageView;->sharedConstructing(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/FullsizeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/narvii/widget/TouchImageView;->doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    iput-object p2, p0, Lcom/narvii/widget/TouchImageView;->userTouchListener:Landroid/view/View$OnTouchListener;

    iput-object p2, p0, Lcom/narvii/widget/TouchImageView;->touchImageViewListener:Lcom/narvii/widget/TouchImageView$OnTouchImageViewListener;

    .line 4
    invoke-direct {p0, p1}, Lcom/narvii/widget/TouchImageView;->sharedConstructing(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic A(Lcom/narvii/widget/TouchImageView;Lcom/narvii/widget/TouchImageView$State;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/widget/TouchImageView;->setState(Lcom/narvii/widget/TouchImageView$State;)V

    return-void
.end method

.method static bridge synthetic B(Lcom/narvii/widget/TouchImageView;FF)Landroid/graphics/PointF;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/TouchImageView;->transformCoordBitmapToTouch(FF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic C(Lcom/narvii/widget/TouchImageView;FFZ)Landroid/graphics/PointF;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/widget/TouchImageView;->transformCoordTouchToBitmap(FFZ)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/widget/TouchImageView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/TouchImageView;->context:Landroid/content/Context;

    return-object p0
.end method

.method private compatPostOnAnimation(Ljava/lang/Runnable;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 4
    return-void
.end method

.method static bridge synthetic d(Lcom/narvii/widget/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/TouchImageView;->doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/narvii/widget/TouchImageView;)Lcom/narvii/widget/TouchImageView$Fling;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/TouchImageView;->fling:Lcom/narvii/widget/TouchImageView$Fling;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/narvii/widget/TouchImageView;)[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    return-object p0
.end method

.method private fitImageToView()V
    .locals 15

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_a

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_a

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 16
    move-result v1

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    goto/16 :goto_3

    .line 21
    .line 22
    :cond_0
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    .line 23
    .line 24
    if-eqz v1, :cond_a

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView;->prevMatrix:Landroid/graphics/Matrix;

    .line 27
    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    goto/16 :goto_3

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 34
    move-result v9

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 38
    move-result v0

    .line 39
    .line 40
    iget v1, p0, Lcom/narvii/widget/TouchImageView;->viewWidth:I

    .line 41
    int-to-float v1, v1

    .line 42
    int-to-float v2, v9

    .line 43
    div-float/2addr v1, v2

    .line 44
    .line 45
    iget v3, p0, Lcom/narvii/widget/TouchImageView;->viewHeight:I

    .line 46
    int-to-float v3, v3

    .line 47
    int-to-float v4, v0

    .line 48
    div-float/2addr v3, v4

    .line 49
    .line 50
    sget-object v5, Lcom/narvii/widget/TouchImageView$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    .line 51
    .line 52
    iget-object v6, p0, Lcom/narvii/widget/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 56
    move-result v6

    .line 57
    .line 58
    aget v5, v5, v6

    .line 59
    const/4 v6, 0x1

    .line 60
    const/4 v7, 0x5

    .line 61
    const/4 v8, 0x4

    .line 62
    const/4 v10, 0x2

    .line 63
    .line 64
    const/high16 v11, 0x3f800000    # 1.0f

    .line 65
    .line 66
    if-eq v5, v6, :cond_6

    .line 67
    .line 68
    if-eq v5, v10, :cond_5

    .line 69
    const/4 v6, 0x3

    .line 70
    .line 71
    if-eq v5, v6, :cond_3

    .line 72
    .line 73
    if-eq v5, v8, :cond_4

    .line 74
    .line 75
    if-ne v5, v7, :cond_2

    .line 76
    goto :goto_1

    .line 77
    .line 78
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 79
    .line 80
    const-string v1, "TouchImageView does not support FIT_START or FIT_END"

    .line 81
    .line 82
    .line 83
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 84
    throw v0

    .line 85
    .line 86
    .line 87
    :cond_3
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    .line 88
    move-result v1

    .line 89
    .line 90
    .line 91
    invoke-static {v11, v1}, Ljava/lang/Math;->min(FF)F

    .line 92
    move-result v1

    .line 93
    move v3, v1

    .line 94
    .line 95
    .line 96
    :cond_4
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    .line 97
    move-result v1

    .line 98
    :goto_0
    move v3, v1

    .line 99
    goto :goto_1

    .line 100
    .line 101
    .line 102
    :cond_5
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    .line 103
    move-result v1

    .line 104
    goto :goto_0

    .line 105
    :cond_6
    move v1, v11

    .line 106
    goto :goto_0

    .line 107
    .line 108
    :goto_1
    iget v5, p0, Lcom/narvii/widget/TouchImageView;->viewWidth:I

    .line 109
    int-to-float v6, v5

    .line 110
    .line 111
    mul-float v12, v1, v2

    .line 112
    sub-float/2addr v6, v12

    .line 113
    .line 114
    iget v12, p0, Lcom/narvii/widget/TouchImageView;->viewHeight:I

    .line 115
    int-to-float v13, v12

    .line 116
    .line 117
    mul-float v14, v3, v4

    .line 118
    sub-float/2addr v13, v14

    .line 119
    int-to-float v5, v5

    .line 120
    sub-float/2addr v5, v6

    .line 121
    .line 122
    iput v5, p0, Lcom/narvii/widget/TouchImageView;->matchViewWidth:F

    .line 123
    int-to-float v5, v12

    .line 124
    sub-float/2addr v5, v13

    .line 125
    .line 126
    iput v5, p0, Lcom/narvii/widget/TouchImageView;->matchViewHeight:F

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/narvii/widget/TouchImageView;->isZoomed()Z

    .line 130
    move-result v5

    .line 131
    .line 132
    if-nez v5, :cond_7

    .line 133
    .line 134
    iget-boolean v5, p0, Lcom/narvii/widget/TouchImageView;->imageRenderedAtLeastOnce:Z

    .line 135
    .line 136
    if-nez v5, :cond_7

    .line 137
    .line 138
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 142
    .line 143
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    .line 144
    .line 145
    const/high16 v1, 0x40000000    # 2.0f

    .line 146
    div-float/2addr v6, v1

    .line 147
    div-float/2addr v13, v1

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v6, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 151
    .line 152
    iput v11, p0, Lcom/narvii/widget/TouchImageView;->normalizedScale:F

    .line 153
    goto :goto_2

    .line 154
    .line 155
    :cond_7
    iget v1, p0, Lcom/narvii/widget/TouchImageView;->prevMatchViewWidth:F

    .line 156
    const/4 v3, 0x0

    .line 157
    .line 158
    cmpl-float v1, v1, v3

    .line 159
    .line 160
    if-eqz v1, :cond_8

    .line 161
    .line 162
    iget v1, p0, Lcom/narvii/widget/TouchImageView;->prevMatchViewHeight:F

    .line 163
    .line 164
    cmpl-float v1, v1, v3

    .line 165
    .line 166
    if-nez v1, :cond_9

    .line 167
    .line 168
    .line 169
    :cond_8
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->savePreviousImageValues()V

    .line 170
    .line 171
    :cond_9
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView;->prevMatrix:Landroid/graphics/Matrix;

    .line 172
    .line 173
    iget-object v3, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 177
    .line 178
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    .line 179
    .line 180
    iget v3, p0, Lcom/narvii/widget/TouchImageView;->matchViewWidth:F

    .line 181
    div-float/2addr v3, v2

    .line 182
    .line 183
    iget v2, p0, Lcom/narvii/widget/TouchImageView;->normalizedScale:F

    .line 184
    mul-float/2addr v3, v2

    .line 185
    const/4 v5, 0x0

    .line 186
    .line 187
    aput v3, v1, v5

    .line 188
    .line 189
    iget v3, p0, Lcom/narvii/widget/TouchImageView;->matchViewHeight:F

    .line 190
    div-float/2addr v3, v4

    .line 191
    mul-float/2addr v3, v2

    .line 192
    .line 193
    aput v3, v1, v8

    .line 194
    .line 195
    aget v4, v1, v10

    .line 196
    .line 197
    aget v10, v1, v7

    .line 198
    .line 199
    iget v1, p0, Lcom/narvii/widget/TouchImageView;->prevMatchViewWidth:F

    .line 200
    .line 201
    mul-float v5, v1, v2

    .line 202
    .line 203
    .line 204
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->getImageWidth()F

    .line 205
    move-result v6

    .line 206
    const/4 v3, 0x2

    .line 207
    .line 208
    iget v7, p0, Lcom/narvii/widget/TouchImageView;->prevViewWidth:I

    .line 209
    .line 210
    iget v8, p0, Lcom/narvii/widget/TouchImageView;->viewWidth:I

    .line 211
    move-object v2, p0

    .line 212
    .line 213
    .line 214
    invoke-direct/range {v2 .. v9}, Lcom/narvii/widget/TouchImageView;->translateMatrixAfterRotate(IFFFIII)V

    .line 215
    .line 216
    iget v1, p0, Lcom/narvii/widget/TouchImageView;->prevMatchViewHeight:F

    .line 217
    .line 218
    iget v2, p0, Lcom/narvii/widget/TouchImageView;->normalizedScale:F

    .line 219
    .line 220
    mul-float v4, v1, v2

    .line 221
    .line 222
    .line 223
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->getImageHeight()F

    .line 224
    move-result v5

    .line 225
    const/4 v2, 0x5

    .line 226
    .line 227
    iget v6, p0, Lcom/narvii/widget/TouchImageView;->prevViewHeight:I

    .line 228
    .line 229
    iget v7, p0, Lcom/narvii/widget/TouchImageView;->viewHeight:I

    .line 230
    move-object v1, p0

    .line 231
    move v3, v10

    .line 232
    move v8, v0

    .line 233
    .line 234
    .line 235
    invoke-direct/range {v1 .. v8}, Lcom/narvii/widget/TouchImageView;->translateMatrixAfterRotate(IFFFIII)V

    .line 236
    .line 237
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    .line 238
    .line 239
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 243
    .line 244
    .line 245
    :goto_2
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->fixTrans()V

    .line 246
    .line 247
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    .line 248
    .line 249
    .line 250
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 251
    :cond_a
    :goto_3
    return-void
.end method

.method private fixScaleTrans()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->fixTrans()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->getImageWidth()F

    .line 14
    move-result v0

    .line 15
    .line 16
    iget v1, p0, Lcom/narvii/widget/TouchImageView;->viewWidth:I

    .line 17
    int-to-float v2, v1

    .line 18
    .line 19
    cmpg-float v0, v0, v2

    .line 20
    .line 21
    const/high16 v2, 0x40000000    # 2.0f

    .line 22
    .line 23
    if-gez v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    .line 26
    int-to-float v1, v1

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->getImageWidth()F

    .line 30
    move-result v3

    .line 31
    sub-float/2addr v1, v3

    .line 32
    div-float/2addr v1, v2

    .line 33
    const/4 v3, 0x2

    .line 34
    .line 35
    aput v1, v0, v3

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->getImageHeight()F

    .line 39
    move-result v0

    .line 40
    .line 41
    iget v1, p0, Lcom/narvii/widget/TouchImageView;->viewHeight:I

    .line 42
    int-to-float v3, v1

    .line 43
    .line 44
    cmpg-float v0, v0, v3

    .line 45
    .line 46
    if-gez v0, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    .line 49
    int-to-float v1, v1

    .line 50
    .line 51
    .line 52
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->getImageHeight()F

    .line 53
    move-result v3

    .line 54
    sub-float/2addr v1, v3

    .line 55
    div-float/2addr v1, v2

    .line 56
    const/4 v2, 0x5

    .line 57
    .line 58
    aput v1, v0, v2

    .line 59
    .line 60
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 66
    return-void
.end method

.method private fixTrans()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    .line 10
    const/4 v1, 0x2

    .line 11
    .line 12
    aget v1, v0, v1

    .line 13
    const/4 v2, 0x5

    .line 14
    .line 15
    aget v0, v0, v2

    .line 16
    .line 17
    iget v2, p0, Lcom/narvii/widget/TouchImageView;->viewWidth:I

    .line 18
    int-to-float v2, v2

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->getImageWidth()F

    .line 22
    move-result v3

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, v1, v2, v3}, Lcom/narvii/widget/TouchImageView;->getFixTrans(FFF)F

    .line 26
    move-result v1

    .line 27
    .line 28
    iget v2, p0, Lcom/narvii/widget/TouchImageView;->viewHeight:I

    .line 29
    int-to-float v2, v2

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->getImageHeight()F

    .line 33
    move-result v3

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, v0, v2, v3}, Lcom/narvii/widget/TouchImageView;->getFixTrans(FFF)F

    .line 37
    move-result v0

    .line 38
    const/4 v2, 0x0

    .line 39
    .line 40
    cmpl-float v3, v1, v2

    .line 41
    .line 42
    if-nez v3, :cond_0

    .line 43
    .line 44
    cmpl-float v2, v0, v2

    .line 45
    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    :cond_0
    iget-object v2, p0, Lcom/narvii/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 52
    :cond_1
    return-void
.end method

.method static bridge synthetic g(Lcom/narvii/widget/TouchImageView;)Landroid/view/GestureDetector;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/TouchImageView;->mGestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method private getFixDragTrans(FFF)F
    .locals 0

    cmpg-float p2, p3, p2

    if-gtz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method private getFixTrans(FFF)F
    .locals 2

    cmpg-float v0, p3, p2

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    sub-float/2addr p2, p3

    move p3, p2

    move p2, v1

    goto :goto_0

    :cond_0
    sub-float/2addr p2, p3

    move p3, v1

    :goto_0
    cmpg-float v0, p1, p2

    if-gez v0, :cond_1

    neg-float p1, p1

    add-float/2addr p1, p2

    return p1

    :cond_1
    cmpl-float p2, p1, p3

    if-lez p2, :cond_2

    neg-float p1, p1

    add-float/2addr p1, p3

    return p1

    :cond_2
    return v1
.end method

.method private getImageHeight()F
    .locals 2

    iget v0, p0, Lcom/narvii/widget/TouchImageView;->matchViewHeight:F

    iget v1, p0, Lcom/narvii/widget/TouchImageView;->normalizedScale:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private getImageWidth()F
    .locals 2

    iget v0, p0, Lcom/narvii/widget/TouchImageView;->matchViewWidth:F

    iget v1, p0, Lcom/narvii/widget/TouchImageView;->normalizedScale:F

    mul-float/2addr v0, v1

    return v0
.end method

.method static bridge synthetic h(Lcom/narvii/widget/TouchImageView;)Landroid/view/ScaleGestureDetector;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/TouchImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    return-object p0
.end method

.method static bridge synthetic i(Lcom/narvii/widget/TouchImageView;)Landroid/graphics/Matrix;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static bridge synthetic j(Lcom/narvii/widget/TouchImageView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/widget/TouchImageView;->maxScale:F

    return p0
.end method

.method static bridge synthetic k(Lcom/narvii/widget/TouchImageView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/widget/TouchImageView;->minScale:F

    return p0
.end method

.method static bridge synthetic l(Lcom/narvii/widget/TouchImageView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/widget/TouchImageView;->normalizedScale:F

    return p0
.end method

.method static bridge synthetic m(Lcom/narvii/widget/TouchImageView;)Lcom/narvii/widget/TouchImageView$State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/TouchImageView;->state:Lcom/narvii/widget/TouchImageView$State;

    return-object p0
.end method

.method static bridge synthetic n(Lcom/narvii/widget/TouchImageView;)Lcom/narvii/widget/TouchImageView$OnTouchImageViewListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/TouchImageView;->touchImageViewListener:Lcom/narvii/widget/TouchImageView$OnTouchImageViewListener;

    return-object p0
.end method

.method static bridge synthetic o(Lcom/narvii/widget/TouchImageView;)Landroid/view/View$OnTouchListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/TouchImageView;->userTouchListener:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method static bridge synthetic p(Lcom/narvii/widget/TouchImageView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/widget/TouchImageView;->viewHeight:I

    return p0
.end method

.method private printMatrixInfo()V
    .locals 3

    .line 1
    .line 2
    const/16 v0, 0x9

    .line 3
    .line 4
    new-array v0, v0, [F

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    const-string v2, "Scale: "

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const/4 v2, 0x0

    .line 21
    .line 22
    aget v2, v0, v2

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v2, " TransX: "

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const/4 v2, 0x2

    .line 32
    .line 33
    aget v2, v0, v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v2, " TransY: "

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const/4 v2, 0x5

    .line 43
    .line 44
    aget v0, v0, v2

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    const-string v1, "DEBUG"

    .line 54
    .line 55
    .line 56
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method static bridge synthetic q(Lcom/narvii/widget/TouchImageView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/narvii/widget/TouchImageView;->viewWidth:I

    return p0
.end method

.method static bridge synthetic r(Lcom/narvii/widget/TouchImageView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/narvii/widget/TouchImageView;->zoomDisabled:Z

    return p0
.end method

.method static bridge synthetic s(Lcom/narvii/widget/TouchImageView;Lcom/narvii/widget/TouchImageView$Fling;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/widget/TouchImageView;->fling:Lcom/narvii/widget/TouchImageView$Fling;

    return-void
.end method

.method private savePreviousImageValues()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/widget/TouchImageView;->viewHeight:I

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget v1, p0, Lcom/narvii/widget/TouchImageView;->viewWidth:I

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->prevMatrix:Landroid/graphics/Matrix;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 25
    .line 26
    iget v0, p0, Lcom/narvii/widget/TouchImageView;->matchViewHeight:F

    .line 27
    .line 28
    iput v0, p0, Lcom/narvii/widget/TouchImageView;->prevMatchViewHeight:F

    .line 29
    .line 30
    iget v0, p0, Lcom/narvii/widget/TouchImageView;->matchViewWidth:F

    .line 31
    .line 32
    iput v0, p0, Lcom/narvii/widget/TouchImageView;->prevMatchViewWidth:F

    .line 33
    .line 34
    iget v0, p0, Lcom/narvii/widget/TouchImageView;->viewHeight:I

    .line 35
    .line 36
    iput v0, p0, Lcom/narvii/widget/TouchImageView;->prevViewHeight:I

    .line 37
    .line 38
    iget v0, p0, Lcom/narvii/widget/TouchImageView;->viewWidth:I

    .line 39
    .line 40
    iput v0, p0, Lcom/narvii/widget/TouchImageView;->prevViewWidth:I

    .line 41
    :cond_0
    return-void
.end method

.method private scaleImage(DFFZ)V
    .locals 4

    .line 1
    .line 2
    if-eqz p5, :cond_0

    .line 3
    .line 4
    iget p5, p0, Lcom/narvii/widget/TouchImageView;->superMinScale:F

    .line 5
    .line 6
    iget v0, p0, Lcom/narvii/widget/TouchImageView;->superMaxScale:F

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    iget p5, p0, Lcom/narvii/widget/TouchImageView;->minScale:F

    .line 10
    .line 11
    iget v0, p0, Lcom/narvii/widget/TouchImageView;->maxScale:F

    .line 12
    .line 13
    :goto_0
    iget v1, p0, Lcom/narvii/widget/TouchImageView;->normalizedScale:F

    .line 14
    float-to-double v2, v1

    .line 15
    mul-double/2addr v2, p1

    .line 16
    double-to-float v2, v2

    .line 17
    .line 18
    iput v2, p0, Lcom/narvii/widget/TouchImageView;->normalizedScale:F

    .line 19
    .line 20
    cmpl-float v3, v2, v0

    .line 21
    .line 22
    if-lez v3, :cond_1

    .line 23
    .line 24
    iput v0, p0, Lcom/narvii/widget/TouchImageView;->normalizedScale:F

    .line 25
    div-float/2addr v0, v1

    .line 26
    float-to-double p1, v0

    .line 27
    goto :goto_1

    .line 28
    .line 29
    :cond_1
    cmpg-float v0, v2, p5

    .line 30
    .line 31
    if-gez v0, :cond_2

    .line 32
    .line 33
    iput p5, p0, Lcom/narvii/widget/TouchImageView;->normalizedScale:F

    .line 34
    div-float/2addr p5, v1

    .line 35
    float-to-double p1, p5

    .line 36
    .line 37
    :cond_2
    :goto_1
    iget-object p5, p0, Lcom/narvii/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    .line 38
    double-to-float p1, p1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p5, p1, p1, p3, p4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->fixScaleTrans()V

    .line 45
    return-void
.end method

.method private setState(Lcom/narvii/widget/TouchImageView$State;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/TouchImageView;->state:Lcom/narvii/widget/TouchImageView$State;

    return-void
.end method

.method private setViewSize(III)I
    .locals 1

    .line 1
    .line 2
    const/high16 v0, -0x80000000

    .line 3
    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move p2, p3

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_1
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    .line 13
    move-result p2

    .line 14
    :goto_0
    return p2
.end method

.method private sharedConstructing(Landroid/content/Context;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 5
    .line 6
    iput-object p1, p0, Lcom/narvii/widget/TouchImageView;->context:Landroid/content/Context;

    .line 7
    .line 8
    new-instance v0, Landroid/view/ScaleGestureDetector;

    .line 9
    .line 10
    new-instance v1, Lcom/narvii/widget/TouchImageView$ScaleListener;

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, p0, v2}, Lcom/narvii/widget/TouchImageView$ScaleListener;-><init>(Lcom/narvii/widget/TouchImageView;Lcom/narvii/widget/p;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/widget/TouchImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 20
    .line 21
    new-instance v0, Landroid/view/GestureDetector;

    .line 22
    .line 23
    new-instance v1, Lcom/narvii/widget/TouchImageView$GestureListener;

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, p0, v2}, Lcom/narvii/widget/TouchImageView$GestureListener;-><init>(Lcom/narvii/widget/TouchImageView;Lcom/narvii/widget/n;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 30
    .line 31
    iput-object v0, p0, Lcom/narvii/widget/TouchImageView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 32
    .line 33
    new-instance p1, Landroid/graphics/Matrix;

    .line 34
    .line 35
    .line 36
    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 37
    .line 38
    iput-object p1, p0, Lcom/narvii/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    .line 39
    .line 40
    new-instance p1, Landroid/graphics/Matrix;

    .line 41
    .line 42
    .line 43
    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 44
    .line 45
    iput-object p1, p0, Lcom/narvii/widget/TouchImageView;->prevMatrix:Landroid/graphics/Matrix;

    .line 46
    .line 47
    const/16 p1, 0x9

    .line 48
    .line 49
    new-array p1, p1, [F

    .line 50
    .line 51
    iput-object p1, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    .line 52
    .line 53
    const/high16 p1, 0x3f800000    # 1.0f

    .line 54
    .line 55
    iput p1, p0, Lcom/narvii/widget/TouchImageView;->normalizedScale:F

    .line 56
    .line 57
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 58
    .line 59
    if-nez v0, :cond_0

    .line 60
    .line 61
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 62
    .line 63
    iput-object v0, p0, Lcom/narvii/widget/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 64
    .line 65
    :cond_0
    iput p1, p0, Lcom/narvii/widget/TouchImageView;->minScale:F

    .line 66
    .line 67
    const/high16 v0, 0x40400000    # 3.0f

    .line 68
    .line 69
    iput v0, p0, Lcom/narvii/widget/TouchImageView;->maxScale:F

    .line 70
    .line 71
    const/high16 v1, 0x3f400000    # 0.75f

    .line 72
    mul-float/2addr p1, v1

    .line 73
    .line 74
    iput p1, p0, Lcom/narvii/widget/TouchImageView;->superMinScale:F

    .line 75
    .line 76
    const/high16 p1, 0x3fa00000    # 1.25f

    .line 77
    mul-float/2addr v0, p1

    .line 78
    .line 79
    iput v0, p0, Lcom/narvii/widget/TouchImageView;->superMaxScale:F

    .line 80
    .line 81
    iget-object p1, p0, Lcom/narvii/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 85
    .line 86
    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, p1}, Lcom/narvii/widget/TouchImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 90
    .line 91
    sget-object p1, Lcom/narvii/widget/TouchImageView$State;->NONE:Lcom/narvii/widget/TouchImageView$State;

    .line 92
    .line 93
    .line 94
    invoke-direct {p0, p1}, Lcom/narvii/widget/TouchImageView;->setState(Lcom/narvii/widget/TouchImageView$State;)V

    .line 95
    const/4 p1, 0x0

    .line 96
    .line 97
    iput-boolean p1, p0, Lcom/narvii/widget/TouchImageView;->onDrawReady:Z

    .line 98
    .line 99
    new-instance p1, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;

    .line 100
    .line 101
    .line 102
    invoke-direct {p1, p0, v2}, Lcom/narvii/widget/TouchImageView$PrivateOnTouchListener;-><init>(Lcom/narvii/widget/TouchImageView;Lcom/narvii/widget/o;)V

    .line 103
    .line 104
    .line 105
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 106
    return-void
.end method

.method static bridge synthetic t(Lcom/narvii/widget/TouchImageView;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/widget/TouchImageView;->compatPostOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method private transformCoordBitmapToTouch(FF)Landroid/graphics/PointF;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Landroid/graphics/PointF;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 12
    return-object v0

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 27
    move-result v0

    .line 28
    int-to-float v0, v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 36
    move-result v1

    .line 37
    int-to-float v1, v1

    .line 38
    div-float/2addr p1, v0

    .line 39
    div-float/2addr p2, v1

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    .line 42
    const/4 v1, 0x2

    .line 43
    .line 44
    aget v0, v0, v1

    .line 45
    .line 46
    .line 47
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->getImageWidth()F

    .line 48
    move-result v1

    .line 49
    mul-float/2addr v1, p1

    .line 50
    add-float/2addr v0, v1

    .line 51
    .line 52
    iget-object p1, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    .line 53
    const/4 v1, 0x5

    .line 54
    .line 55
    aget p1, p1, v1

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->getImageHeight()F

    .line 59
    move-result v1

    .line 60
    mul-float/2addr v1, p2

    .line 61
    add-float/2addr p1, v1

    .line 62
    .line 63
    new-instance p2, Landroid/graphics/PointF;

    .line 64
    .line 65
    .line 66
    invoke-direct {p2, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 67
    return-object p2
.end method

.method private transformCoordTouchToBitmap(FFZ)Landroid/graphics/PointF;
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance p3, Landroid/graphics/PointF;

    .line 9
    .line 10
    .line 11
    invoke-direct {p3, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 12
    return-object p3

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 27
    move-result v0

    .line 28
    int-to-float v0, v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 36
    move-result v1

    .line 37
    int-to-float v1, v1

    .line 38
    .line 39
    iget-object v2, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    .line 40
    const/4 v3, 0x2

    .line 41
    .line 42
    aget v3, v2, v3

    .line 43
    const/4 v4, 0x5

    .line 44
    .line 45
    aget v2, v2, v4

    .line 46
    sub-float/2addr p1, v3

    .line 47
    mul-float/2addr p1, v0

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->getImageWidth()F

    .line 51
    move-result v3

    .line 52
    div-float/2addr p1, v3

    .line 53
    sub-float/2addr p2, v2

    .line 54
    mul-float/2addr p2, v1

    .line 55
    .line 56
    .line 57
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->getImageHeight()F

    .line 58
    move-result v2

    .line 59
    div-float/2addr p2, v2

    .line 60
    .line 61
    if-eqz p3, :cond_1

    .line 62
    const/4 p3, 0x0

    .line 63
    .line 64
    .line 65
    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    .line 66
    move-result p1

    .line 67
    .line 68
    .line 69
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    .line 70
    move-result p1

    .line 71
    .line 72
    .line 73
    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    .line 74
    move-result p2

    .line 75
    .line 76
    .line 77
    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    .line 78
    move-result p2

    .line 79
    .line 80
    :cond_1
    new-instance p3, Landroid/graphics/PointF;

    .line 81
    .line 82
    .line 83
    invoke-direct {p3, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 84
    return-object p3
.end method

.method private translateMatrixAfterRotate(IFFFIII)V
    .locals 2

    .line 1
    int-to-float p6, p6

    .line 2
    .line 3
    cmpg-float v0, p4, p6

    .line 4
    .line 5
    const/high16 v1, 0x3f000000    # 0.5f

    .line 6
    .line 7
    if-gez v0, :cond_0

    .line 8
    .line 9
    iget-object p2, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    .line 10
    int-to-float p3, p7

    .line 11
    const/4 p4, 0x0

    .line 12
    .line 13
    aget p4, p2, p4

    .line 14
    mul-float/2addr p3, p4

    .line 15
    sub-float/2addr p6, p3

    .line 16
    mul-float/2addr p6, v1

    .line 17
    .line 18
    aput p6, p2, p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p7, 0x0

    .line 21
    .line 22
    cmpl-float v0, p2, p7

    .line 23
    .line 24
    if-lez v0, :cond_1

    .line 25
    .line 26
    iget-object p2, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    .line 27
    sub-float/2addr p4, p6

    .line 28
    mul-float/2addr p4, v1

    .line 29
    neg-float p3, p4

    .line 30
    .line 31
    aput p3, p2, p1

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_1
    cmpl-float p7, p3, p7

    .line 35
    .line 36
    if-eqz p7, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 40
    move-result p2

    .line 41
    int-to-float p5, p5

    .line 42
    mul-float/2addr p5, v1

    .line 43
    add-float/2addr p2, p5

    .line 44
    div-float/2addr p2, p3

    .line 45
    .line 46
    iget-object p3, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    .line 47
    mul-float/2addr p2, p4

    .line 48
    mul-float/2addr p6, v1

    .line 49
    sub-float/2addr p2, p6

    .line 50
    neg-float p2, p2

    .line 51
    .line 52
    aput p2, p3, p1

    .line 53
    :cond_2
    :goto_0
    return-void
.end method

.method static bridge synthetic u(Lcom/narvii/widget/TouchImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->fixScaleTrans()V

    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/widget/TouchImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->fixTrans()V

    return-void
.end method

.method static bridge synthetic w(Lcom/narvii/widget/TouchImageView;FFF)F
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/widget/TouchImageView;->getFixDragTrans(FFF)F

    move-result p0

    return p0
.end method

.method static bridge synthetic x(Lcom/narvii/widget/TouchImageView;)F
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->getImageHeight()F

    move-result p0

    return p0
.end method

.method static bridge synthetic y(Lcom/narvii/widget/TouchImageView;)F
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->getImageWidth()F

    move-result p0

    return p0
.end method

.method static bridge synthetic z(Lcom/narvii/widget/TouchImageView;DFFZ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/narvii/widget/TouchImageView;->scaleImage(DFFZ)V

    return-void
.end method


# virtual methods
.method public canScrollHorizontally(I)Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    .line 10
    const/4 v1, 0x2

    .line 11
    .line 12
    aget v0, v0, v1

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->getImageWidth()F

    .line 16
    move-result v1

    .line 17
    .line 18
    iget v2, p0, Lcom/narvii/widget/TouchImageView;->viewWidth:I

    .line 19
    const/4 v3, 0x1

    .line 20
    add-int/2addr v2, v3

    .line 21
    int-to-float v2, v2

    .line 22
    .line 23
    cmpg-float v1, v1, v2

    .line 24
    const/4 v2, 0x0

    .line 25
    .line 26
    if-gtz v1, :cond_0

    .line 27
    return v2

    .line 28
    .line 29
    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    .line 30
    .line 31
    cmpl-float v1, v0, v1

    .line 32
    .line 33
    if-ltz v1, :cond_1

    .line 34
    .line 35
    if-gez p1, :cond_1

    .line 36
    return v2

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 40
    move-result v0

    .line 41
    .line 42
    iget v1, p0, Lcom/narvii/widget/TouchImageView;->viewWidth:I

    .line 43
    int-to-float v1, v1

    .line 44
    add-float/2addr v0, v1

    .line 45
    .line 46
    const/high16 v1, 0x3f800000    # 1.0f

    .line 47
    add-float/2addr v0, v1

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->getImageWidth()F

    .line 51
    move-result v1

    .line 52
    .line 53
    cmpl-float v0, v0, v1

    .line 54
    .line 55
    if-ltz v0, :cond_2

    .line 56
    .line 57
    if-lez p1, :cond_2

    .line 58
    return v2

    .line 59
    :cond_2
    return v3
.end method

.method public canScrollHorizontallyFroyo(I)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/widget/TouchImageView;->canScrollHorizontally(I)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public getCurrentZoom()F
    .locals 1

    iget v0, p0, Lcom/narvii/widget/TouchImageView;->normalizedScale:F

    return v0
.end method

.method public getMaxZoom()F
    .locals 1

    iget v0, p0, Lcom/narvii/widget/TouchImageView;->maxScale:F

    return v0
.end method

.method public getMinZoom()F
    .locals 1

    iget v0, p0, Lcom/narvii/widget/TouchImageView;->minScale:F

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getScrollPosition()Landroid/graphics/PointF;
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 12
    move-result v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 16
    move-result v0

    .line 17
    .line 18
    iget v2, p0, Lcom/narvii/widget/TouchImageView;->viewWidth:I

    .line 19
    .line 20
    div-int/lit8 v2, v2, 0x2

    .line 21
    int-to-float v2, v2

    .line 22
    .line 23
    iget v3, p0, Lcom/narvii/widget/TouchImageView;->viewHeight:I

    .line 24
    .line 25
    div-int/lit8 v3, v3, 0x2

    .line 26
    int-to-float v3, v3

    .line 27
    const/4 v4, 0x1

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v2, v3, v4}, Lcom/narvii/widget/TouchImageView;->transformCoordTouchToBitmap(FFZ)Landroid/graphics/PointF;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 34
    int-to-float v1, v1

    .line 35
    div-float/2addr v3, v1

    .line 36
    .line 37
    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 38
    .line 39
    iget v1, v2, Landroid/graphics/PointF;->y:F

    .line 40
    int-to-float v0, v0

    .line 41
    div-float/2addr v1, v0

    .line 42
    .line 43
    iput v1, v2, Landroid/graphics/PointF;->y:F

    .line 44
    return-object v2
.end method

.method public getZoomedRect()Landroid/graphics/RectF;
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 3
    .line 4
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 5
    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0, v0, v1}, Lcom/narvii/widget/TouchImageView;->transformCoordTouchToBitmap(FFZ)Landroid/graphics/PointF;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iget v2, p0, Lcom/narvii/widget/TouchImageView;->viewWidth:I

    .line 15
    int-to-float v2, v2

    .line 16
    .line 17
    iget v3, p0, Lcom/narvii/widget/TouchImageView;->viewHeight:I

    .line 18
    int-to-float v3, v3

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v2, v3, v1}, Lcom/narvii/widget/TouchImageView;->transformCoordTouchToBitmap(FFZ)Landroid/graphics/PointF;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 30
    move-result v2

    .line 31
    int-to-float v2, v2

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 35
    move-result-object v3

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 39
    move-result v3

    .line 40
    int-to-float v3, v3

    .line 41
    .line 42
    new-instance v4, Landroid/graphics/RectF;

    .line 43
    .line 44
    iget v5, v0, Landroid/graphics/PointF;->x:F

    .line 45
    div-float/2addr v5, v2

    .line 46
    .line 47
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 48
    div-float/2addr v0, v3

    .line 49
    .line 50
    iget v6, v1, Landroid/graphics/PointF;->x:F

    .line 51
    div-float/2addr v6, v2

    .line 52
    .line 53
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 54
    div-float/2addr v1, v3

    .line 55
    .line 56
    .line 57
    invoke-direct {v4, v5, v0, v6, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 58
    return-object v4

    .line 59
    .line 60
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 61
    .line 62
    const-string v1, "getZoomedRect() not supported with FIT_XY"

    .line 63
    .line 64
    .line 65
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 66
    throw v0
.end method

.method public isZoomed()Z
    .locals 2

    iget v0, p0, Lcom/narvii/widget/TouchImageView;->normalizedScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->savePreviousImageValues()V

    .line 7
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/widget/TouchImageView;->onDrawReady:Z

    .line 4
    .line 5
    iput-boolean v0, p0, Lcom/narvii/widget/TouchImageView;->imageRenderedAtLeastOnce:Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->delayedZoomVariables:Lcom/narvii/widget/TouchImageView$ZoomVariables;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget v1, v0, Lcom/narvii/widget/TouchImageView$ZoomVariables;->scale:F

    .line 12
    .line 13
    iget v2, v0, Lcom/narvii/widget/TouchImageView$ZoomVariables;->focusX:F

    .line 14
    .line 15
    iget v3, v0, Lcom/narvii/widget/TouchImageView$ZoomVariables;->focusY:F

    .line 16
    .line 17
    iget-object v0, v0, Lcom/narvii/widget/TouchImageView$ZoomVariables;->scaleType:Landroid/widget/ImageView$ScaleType;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/narvii/widget/TouchImageView;->setZoom(FFFLandroid/widget/ImageView$ScaleType;)V

    .line 21
    const/4 v0, 0x0

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/widget/TouchImageView;->delayedZoomVariables:Lcom/narvii/widget/TouchImageView$ZoomVariables;

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/widget/FullsizeImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 27
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 16
    move-result v1

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 23
    move-result v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 27
    move-result v0

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 31
    move-result v2

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 35
    move-result p1

    .line 36
    .line 37
    .line 38
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 39
    move-result v3

    .line 40
    .line 41
    .line 42
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 43
    move-result p2

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, p1, v2, v1}, Lcom/narvii/widget/TouchImageView;->setViewSize(III)I

    .line 47
    move-result p1

    .line 48
    .line 49
    iput p1, p0, Lcom/narvii/widget/TouchImageView;->viewWidth:I

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, p2, v3, v0}, Lcom/narvii/widget/TouchImageView;->setViewSize(III)I

    .line 53
    move-result p1

    .line 54
    .line 55
    iput p1, p0, Lcom/narvii/widget/TouchImageView;->viewHeight:I

    .line 56
    .line 57
    iget p2, p0, Lcom/narvii/widget/TouchImageView;->viewWidth:I

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->fitImageToView()V

    .line 64
    return-void

    .line 65
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 69
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    .line 2
    instance-of v0, p1, Landroid/os/Bundle;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Landroid/os/Bundle;

    .line 7
    .line 8
    const-string v0, "saveScale"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 12
    move-result v0

    .line 13
    .line 14
    iput v0, p0, Lcom/narvii/widget/TouchImageView;->normalizedScale:F

    .line 15
    .line 16
    const-string v0, "matrix"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iput-object v0, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView;->prevMatrix:Landroid/graphics/Matrix;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->setValues([F)V

    .line 28
    .line 29
    const-string v0, "matchViewHeight"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 33
    move-result v0

    .line 34
    .line 35
    iput v0, p0, Lcom/narvii/widget/TouchImageView;->prevMatchViewHeight:F

    .line 36
    .line 37
    const-string v0, "matchViewWidth"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 41
    move-result v0

    .line 42
    .line 43
    iput v0, p0, Lcom/narvii/widget/TouchImageView;->prevMatchViewWidth:F

    .line 44
    .line 45
    .line 46
    const-string/jumbo v0, "viewHeight"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 50
    move-result v0

    .line 51
    .line 52
    iput v0, p0, Lcom/narvii/widget/TouchImageView;->prevViewHeight:I

    .line 53
    .line 54
    .line 55
    const-string/jumbo v0, "viewWidth"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 59
    move-result v0

    .line 60
    .line 61
    iput v0, p0, Lcom/narvii/widget/TouchImageView;->prevViewWidth:I

    .line 62
    .line 63
    const-string v0, "imageRendered"

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 67
    move-result v0

    .line 68
    .line 69
    iput-boolean v0, p0, Lcom/narvii/widget/TouchImageView;->imageRenderedAtLeastOnce:Z

    .line 70
    .line 71
    const-string v0, "instanceState"

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    .line 78
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 79
    return-void

    .line 80
    .line 81
    .line 82
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 83
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    const-string v1, "instanceState"

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 15
    .line 16
    const-string v1, "saveScale"

    .line 17
    .line 18
    iget v2, p0, Lcom/narvii/widget/TouchImageView;->normalizedScale:F

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 22
    .line 23
    const-string v1, "matchViewHeight"

    .line 24
    .line 25
    iget v2, p0, Lcom/narvii/widget/TouchImageView;->matchViewHeight:F

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 29
    .line 30
    const-string v1, "matchViewWidth"

    .line 31
    .line 32
    iget v2, p0, Lcom/narvii/widget/TouchImageView;->matchViewWidth:F

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 36
    .line 37
    .line 38
    const-string/jumbo v1, "viewWidth"

    .line 39
    .line 40
    iget v2, p0, Lcom/narvii/widget/TouchImageView;->viewWidth:I

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    const-string/jumbo v1, "viewHeight"

    .line 47
    .line 48
    iget v2, p0, Lcom/narvii/widget/TouchImageView;->viewHeight:I

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 52
    .line 53
    iget-object v1, p0, Lcom/narvii/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    .line 54
    .line 55
    iget-object v2, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 59
    .line 60
    const-string v1, "matrix"

    .line 61
    .line 62
    iget-object v2, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 66
    .line 67
    const-string v1, "imageRendered"

    .line 68
    .line 69
    iget-boolean v2, p0, Lcom/narvii/widget/TouchImageView;->imageRenderedAtLeastOnce:Z

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 73
    return-object v0
.end method

.method public resetZoom()V
    .locals 1

    .line 1
    .line 2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    .line 4
    iput v0, p0, Lcom/narvii/widget/TouchImageView;->normalizedScale:F

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->fitImageToView()V

    .line 8
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->savePreviousImageValues()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->fitImageToView()V

    .line 10
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->savePreviousImageValues()V

    .line 6
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->fitImageToView()V

    return-void
.end method

.method protected setImageDrawable(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;I)V

    .line 2
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->savePreviousImageValues()V

    .line 3
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->fitImageToView()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->savePreviousImageValues()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->fitImageToView()V

    .line 10
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->savePreviousImageValues()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->fitImageToView()V

    .line 10
    return-void
.end method

.method public setMaxZoom(F)V
    .locals 1

    iput p1, p0, Lcom/narvii/widget/TouchImageView;->maxScale:F

    const/high16 v0, 0x3fa00000    # 1.25f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/narvii/widget/TouchImageView;->superMaxScale:F

    return-void
.end method

.method public setMinZoom(F)V
    .locals 1

    iput p1, p0, Lcom/narvii/widget/TouchImageView;->minScale:F

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/narvii/widget/TouchImageView;->superMinScale:F

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/TouchImageView;->doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-void
.end method

.method public setOnTouchImageViewListener(Lcom/narvii/widget/TouchImageView$OnTouchImageViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/TouchImageView;->touchImageViewListener:Lcom/narvii/widget/TouchImageView$OnTouchImageViewListener;

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/TouchImageView;->userTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    .line 3
    .line 4
    if-eq p1, v0, :cond_2

    .line 5
    .line 6
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    .line 7
    .line 8
    if-eq p1, v0, :cond_2

    .line 9
    .line 10
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    .line 11
    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iput-object p1, p0, Lcom/narvii/widget/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 19
    .line 20
    iget-boolean p1, p0, Lcom/narvii/widget/TouchImageView;->onDrawReady:Z

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p0}, Lcom/narvii/widget/TouchImageView;->setZoom(Lcom/narvii/widget/TouchImageView;)V

    .line 26
    :cond_1
    :goto_0
    return-void

    .line 27
    .line 28
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 29
    .line 30
    const-string v0, "TouchImageView does not support FIT_START or FIT_END"

    .line 31
    .line 32
    .line 33
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 34
    throw p1
.end method

.method public setScrollPosition(FF)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/TouchImageView;->normalizedScale:F

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, p1, p2}, Lcom/narvii/widget/TouchImageView;->setZoom(FFF)V

    .line 6
    return-void
.end method

.method public setZoom(F)V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lcom/narvii/widget/TouchImageView;->setZoom(FFF)V

    return-void
.end method

.method public setZoom(FFF)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/narvii/widget/TouchImageView;->setZoom(FFFLandroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public setZoom(FFFLandroid/widget/ImageView$ScaleType;)V
    .locals 7

    iget-boolean v0, p0, Lcom/narvii/widget/TouchImageView;->onDrawReady:Z

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/narvii/widget/TouchImageView$ZoomVariables;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/narvii/widget/TouchImageView$ZoomVariables;-><init>(Lcom/narvii/widget/TouchImageView;FFFLandroid/widget/ImageView$ScaleType;)V

    iput-object v0, p0, Lcom/narvii/widget/TouchImageView;->delayedZoomVariables:Lcom/narvii/widget/TouchImageView$ZoomVariables;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq p4, v0, :cond_1

    .line 4
    invoke-virtual {p0, p4}, Lcom/narvii/widget/TouchImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/widget/TouchImageView;->resetZoom()V

    float-to-double v2, p1

    iget p1, p0, Lcom/narvii/widget/TouchImageView;->viewWidth:I

    const/4 p4, 0x2

    .line 6
    div-int/2addr p1, p4

    int-to-float v4, p1

    iget p1, p0, Lcom/narvii/widget/TouchImageView;->viewHeight:I

    div-int/2addr p1, p4

    int-to-float v5, p1

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/narvii/widget/TouchImageView;->scaleImage(DFFZ)V

    iget-object p1, p0, Lcom/narvii/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object p1, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    .line 8
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->getImageWidth()F

    move-result v0

    mul-float/2addr p2, v0

    iget v0, p0, Lcom/narvii/widget/TouchImageView;->viewWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    sub-float/2addr p2, v0

    neg-float p2, p2

    aput p2, p1, p4

    iget-object p1, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    .line 9
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->getImageHeight()F

    move-result p2

    mul-float/2addr p3, p2

    iget p2, p0, Lcom/narvii/widget/TouchImageView;->viewHeight:I

    int-to-float p2, p2

    mul-float/2addr p2, v1

    sub-float/2addr p3, p2

    neg-float p2, p3

    const/4 p3, 0x5

    aput p2, p1, p3

    iget-object p1, p0, Lcom/narvii/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object p2, p0, Lcom/narvii/widget/TouchImageView;->m:[F

    .line 10
    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->setValues([F)V

    .line 11
    invoke-direct {p0}, Lcom/narvii/widget/TouchImageView;->fixTrans()V

    iget-object p1, p0, Lcom/narvii/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public setZoom(Lcom/narvii/widget/TouchImageView;)V
    .locals 3

    .line 13
    invoke-virtual {p1}, Lcom/narvii/widget/TouchImageView;->getScrollPosition()Landroid/graphics/PointF;

    move-result-object v0

    if-nez v0, :cond_0

    .line 14
    invoke-virtual {p1}, Lcom/narvii/widget/TouchImageView;->getCurrentZoom()F

    move-result v0

    invoke-virtual {p1}, Lcom/narvii/widget/TouchImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/narvii/widget/TouchImageView;->setZoom(FFFLandroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/widget/TouchImageView;->getCurrentZoom()F

    move-result v1

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Lcom/narvii/widget/TouchImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object p1

    invoke-virtual {p0, v1, v2, v0, p1}, Lcom/narvii/widget/TouchImageView;->setZoom(FFFLandroid/widget/ImageView$ScaleType;)V

    :goto_0
    return-void
.end method

.method public setZoomEnabled(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/narvii/widget/TouchImageView;->zoomDisabled:Z

    return-void
.end method
