.class public Lcom/narvii/master/SplashView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field callback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field cornerRadius0:I

.field frame:Landroid/view/View;

.field imageView:Lcom/narvii/widget/NVImageView;

.field inter1:Landroid/view/animation/Interpolator;

.field inter2:Landroid/view/animation/Interpolator;

.field final iv:Ljava/lang/Runnable;

.field orig:Landroid/graphics/Rect;

.field rnd:Ljava/util/Random;

.field startMs:J

.field final target:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p1, Landroid/graphics/Rect;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/master/SplashView;->target:Landroid/graphics/Rect;

    .line 11
    .line 12
    new-instance p1, Lcom/narvii/master/SplashView$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/narvii/master/SplashView$1;-><init>(Lcom/narvii/master/SplashView;)V

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/master/SplashView;->iv:Ljava/lang/Runnable;

    .line 18
    .line 19
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    .line 20
    .line 21
    const/high16 p2, 0x3fc00000    # 1.5f

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, p2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 25
    .line 26
    iput-object p1, p0, Lcom/narvii/master/SplashView;->inter1:Landroid/view/animation/Interpolator;

    .line 27
    .line 28
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    .line 29
    .line 30
    .line 31
    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 32
    .line 33
    iput-object p1, p0, Lcom/narvii/master/SplashView;->inter2:Landroid/view/animation/Interpolator;

    .line 34
    .line 35
    new-instance p1, Ljava/util/Random;

    .line 36
    .line 37
    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 39
    move-result-wide v0

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 43
    .line 44
    iput-object p1, p0, Lcom/narvii/master/SplashView;->rnd:Ljava/util/Random;

    .line 45
    return-void
.end method

.method private mv(IIF)I
    .locals 0

    sub-int/2addr p2, p1

    int-to-float p2, p2

    mul-float/2addr p2, p3

    float-to-int p2, p2

    add-int/2addr p1, p2

    return p1
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lcom/narvii/master/SplashView;->orig:Landroid/graphics/Rect;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/narvii/master/SplashView;->callback:Lcom/narvii/util/Callback;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    invoke-interface {v1, v2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 13
    .line 14
    :cond_0
    iput-object v0, p0, Lcom/narvii/master/SplashView;->callback:Lcom/narvii/util/Callback;

    .line 15
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a05ff

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/master/SplashView;->frame:Landroid/view/View;

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a06eb

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/master/SplashView;->imageView:Lcom/narvii/widget/NVImageView;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/master/SplashView;->frame:Landroid/view/View;

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    iput-object v0, p0, Lcom/narvii/master/SplashView;->frame:Landroid/view/View;

    .line 30
    .line 31
    :cond_0
    iget v0, v0, Lcom/narvii/widget/NVImageView;->cornerRadius:I

    .line 32
    .line 33
    iput v0, p0, Lcom/narvii/master/SplashView;->cornerRadius0:I

    .line 34
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/master/SplashView;->target:Landroid/graphics/Rect;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 6
    move-result p2

    .line 7
    .line 8
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/master/SplashView;->target:Landroid/graphics/Rect;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 14
    move-result p2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 18
    move-result p3

    .line 19
    sub-int/2addr p2, p3

    .line 20
    .line 21
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/master/SplashView;->target:Landroid/graphics/Rect;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 27
    move-result p2

    .line 28
    .line 29
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/master/SplashView;->target:Landroid/graphics/Rect;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 35
    move-result p2

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 39
    move-result p3

    .line 40
    sub-int/2addr p2, p3

    .line 41
    .line 42
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 43
    .line 44
    .line 45
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 46
    move-result-wide p1

    .line 47
    .line 48
    iget-wide p3, p0, Lcom/narvii/master/SplashView;->startMs:J

    .line 49
    sub-long/2addr p1, p3

    .line 50
    .line 51
    const-wide/16 p3, 0x1c2

    .line 52
    .line 53
    cmp-long p5, p1, p3

    .line 54
    .line 55
    const/high16 v0, 0x3f800000    # 1.0f

    .line 56
    .line 57
    const/high16 v1, 0x40000000    # 2.0f

    .line 58
    const/4 v2, 0x0

    .line 59
    .line 60
    if-gez p5, :cond_0

    .line 61
    long-to-float p3, p1

    .line 62
    mul-float/2addr p3, v0

    .line 63
    .line 64
    const/high16 p4, 0x43e10000    # 450.0f

    .line 65
    div-float/2addr p3, p4

    .line 66
    .line 67
    .line 68
    invoke-static {v2, p3}, Ljava/lang/Math;->max(FF)F

    .line 69
    move-result p3

    .line 70
    .line 71
    iget-object p4, p0, Lcom/narvii/master/SplashView;->inter1:Landroid/view/animation/Interpolator;

    .line 72
    .line 73
    .line 74
    invoke-interface {p4, p3}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 75
    move-result p3

    .line 76
    .line 77
    iget-object p4, p0, Lcom/narvii/master/SplashView;->target:Landroid/graphics/Rect;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    .line 81
    move-result p4

    .line 82
    int-to-float p4, p4

    .line 83
    mul-float/2addr p4, v2

    .line 84
    div-float/2addr p4, v1

    .line 85
    float-to-int p4, p4

    .line 86
    .line 87
    iget-object p5, p0, Lcom/narvii/master/SplashView;->target:Landroid/graphics/Rect;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    .line 91
    move-result p5

    .line 92
    int-to-float p5, p5

    .line 93
    mul-float/2addr p5, v2

    .line 94
    div-float/2addr p5, v1

    .line 95
    float-to-int p5, p5

    .line 96
    .line 97
    iget-object v0, p0, Lcom/narvii/master/SplashView;->orig:Landroid/graphics/Rect;

    .line 98
    .line 99
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 100
    .line 101
    iget-object v1, p0, Lcom/narvii/master/SplashView;->target:Landroid/graphics/Rect;

    .line 102
    .line 103
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 104
    sub-int/2addr v1, p4

    .line 105
    .line 106
    .line 107
    invoke-direct {p0, v0, v1, p3}, Lcom/narvii/master/SplashView;->mv(IIF)I

    .line 108
    move-result v0

    .line 109
    .line 110
    iget-object v1, p0, Lcom/narvii/master/SplashView;->orig:Landroid/graphics/Rect;

    .line 111
    .line 112
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 113
    .line 114
    iget-object v2, p0, Lcom/narvii/master/SplashView;->target:Landroid/graphics/Rect;

    .line 115
    .line 116
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 117
    add-int/2addr v2, p4

    .line 118
    .line 119
    .line 120
    invoke-direct {p0, v1, v2, p3}, Lcom/narvii/master/SplashView;->mv(IIF)I

    .line 121
    move-result p4

    .line 122
    .line 123
    iget-object v1, p0, Lcom/narvii/master/SplashView;->orig:Landroid/graphics/Rect;

    .line 124
    .line 125
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 126
    .line 127
    iget-object v2, p0, Lcom/narvii/master/SplashView;->target:Landroid/graphics/Rect;

    .line 128
    .line 129
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 130
    sub-int/2addr v2, p5

    .line 131
    .line 132
    .line 133
    invoke-direct {p0, v1, v2, p3}, Lcom/narvii/master/SplashView;->mv(IIF)I

    .line 134
    move-result v1

    .line 135
    .line 136
    iget-object v2, p0, Lcom/narvii/master/SplashView;->orig:Landroid/graphics/Rect;

    .line 137
    .line 138
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 139
    .line 140
    iget-object v3, p0, Lcom/narvii/master/SplashView;->target:Landroid/graphics/Rect;

    .line 141
    .line 142
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 143
    add-int/2addr v3, p5

    .line 144
    .line 145
    .line 146
    invoke-direct {p0, v2, v3, p3}, Lcom/narvii/master/SplashView;->mv(IIF)I

    .line 147
    move-result p3

    .line 148
    .line 149
    iget-object p5, p0, Lcom/narvii/master/SplashView;->frame:Landroid/view/View;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p5, v0, v1, p4, p3}, Landroid/view/View;->layout(IIII)V

    .line 153
    .line 154
    iget-object p3, p0, Lcom/narvii/master/SplashView;->imageView:Lcom/narvii/widget/NVImageView;

    .line 155
    .line 156
    iget p4, p0, Lcom/narvii/master/SplashView;->cornerRadius0:I

    .line 157
    int-to-long p4, p4

    .line 158
    .line 159
    const-wide/16 v0, 0x1

    .line 160
    sub-long/2addr v0, p1

    .line 161
    mul-long/2addr p4, v0

    .line 162
    long-to-int p4, p4

    .line 163
    .line 164
    iput p4, p3, Lcom/narvii/widget/NVImageView;->cornerRadius:I

    .line 165
    .line 166
    iget-object p3, p0, Lcom/narvii/master/SplashView;->iv:Ljava/lang/Runnable;

    .line 167
    .line 168
    .line 169
    invoke-static {p3}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 170
    goto :goto_0

    .line 171
    .line 172
    :cond_0
    const-wide/16 v3, 0x640

    .line 173
    .line 174
    cmp-long p5, p1, v3

    .line 175
    .line 176
    if-gez p5, :cond_1

    .line 177
    .line 178
    sub-long p3, p1, p3

    .line 179
    long-to-float p3, p3

    .line 180
    mul-float/2addr p3, v0

    .line 181
    .line 182
    const/high16 p4, 0x43f40000    # 488.0f

    .line 183
    div-float/2addr p3, p4

    .line 184
    .line 185
    .line 186
    invoke-static {v2, p3}, Ljava/lang/Math;->max(FF)F

    .line 187
    move-result p3

    .line 188
    .line 189
    iget-object p4, p0, Lcom/narvii/master/SplashView;->inter2:Landroid/view/animation/Interpolator;

    .line 190
    .line 191
    .line 192
    invoke-interface {p4, p3}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 193
    move-result p3

    .line 194
    .line 195
    iget-object p4, p0, Lcom/narvii/master/SplashView;->target:Landroid/graphics/Rect;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    .line 199
    move-result p4

    .line 200
    .line 201
    iget-object p5, p0, Lcom/narvii/master/SplashView;->target:Landroid/graphics/Rect;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    .line 205
    move-result p5

    .line 206
    int-to-float p4, p4

    .line 207
    .line 208
    mul-float v0, p4, v2

    .line 209
    div-float/2addr v0, v1

    .line 210
    float-to-int v0, v0

    .line 211
    int-to-float p5, p5

    .line 212
    mul-float/2addr v2, p5

    .line 213
    div-float/2addr v2, v1

    .line 214
    float-to-int v2, v2

    .line 215
    .line 216
    .line 217
    const v3, 0x3c23d700    # 0.00999999f

    .line 218
    mul-float/2addr p4, v3

    .line 219
    div-float/2addr p4, v1

    .line 220
    float-to-int p4, p4

    .line 221
    mul-float/2addr p5, v3

    .line 222
    div-float/2addr p5, v1

    .line 223
    float-to-int p5, p5

    .line 224
    .line 225
    iget-object v1, p0, Lcom/narvii/master/SplashView;->target:Landroid/graphics/Rect;

    .line 226
    .line 227
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 228
    .line 229
    sub-int v3, v1, v0

    .line 230
    sub-int/2addr v1, p4

    .line 231
    .line 232
    .line 233
    invoke-direct {p0, v3, v1, p3}, Lcom/narvii/master/SplashView;->mv(IIF)I

    .line 234
    move-result v1

    .line 235
    .line 236
    iget-object v3, p0, Lcom/narvii/master/SplashView;->target:Landroid/graphics/Rect;

    .line 237
    .line 238
    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 239
    add-int/2addr v0, v3

    .line 240
    add-int/2addr v3, p4

    .line 241
    .line 242
    .line 243
    invoke-direct {p0, v0, v3, p3}, Lcom/narvii/master/SplashView;->mv(IIF)I

    .line 244
    move-result p4

    .line 245
    .line 246
    iget-object v0, p0, Lcom/narvii/master/SplashView;->target:Landroid/graphics/Rect;

    .line 247
    .line 248
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 249
    .line 250
    sub-int v3, v0, v2

    .line 251
    sub-int/2addr v0, p5

    .line 252
    .line 253
    .line 254
    invoke-direct {p0, v3, v0, p3}, Lcom/narvii/master/SplashView;->mv(IIF)I

    .line 255
    move-result v0

    .line 256
    .line 257
    iget-object v3, p0, Lcom/narvii/master/SplashView;->target:Landroid/graphics/Rect;

    .line 258
    .line 259
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 260
    add-int/2addr v2, v3

    .line 261
    add-int/2addr v3, p5

    .line 262
    .line 263
    .line 264
    invoke-direct {p0, v2, v3, p3}, Lcom/narvii/master/SplashView;->mv(IIF)I

    .line 265
    move-result p3

    .line 266
    .line 267
    iget-object p5, p0, Lcom/narvii/master/SplashView;->frame:Landroid/view/View;

    .line 268
    .line 269
    .line 270
    invoke-virtual {p5, v1, v0, p4, p3}, Landroid/view/View;->layout(IIII)V

    .line 271
    .line 272
    iget-object p3, p0, Lcom/narvii/master/SplashView;->imageView:Lcom/narvii/widget/NVImageView;

    .line 273
    const/4 p4, 0x0

    .line 274
    .line 275
    iput p4, p3, Lcom/narvii/widget/NVImageView;->cornerRadius:I

    .line 276
    .line 277
    iget-object p3, p0, Lcom/narvii/master/SplashView;->iv:Ljava/lang/Runnable;

    .line 278
    .line 279
    .line 280
    invoke-static {p3}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 281
    .line 282
    :cond_1
    :goto_0
    const-wide/16 p3, 0x3aa

    .line 283
    .line 284
    cmp-long p1, p1, p3

    .line 285
    .line 286
    if-ltz p1, :cond_3

    .line 287
    .line 288
    iget-object p1, p0, Lcom/narvii/master/SplashView;->callback:Lcom/narvii/util/Callback;

    .line 289
    .line 290
    if-eqz p1, :cond_2

    .line 291
    .line 292
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 293
    .line 294
    .line 295
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 296
    :cond_2
    const/4 p1, 0x0

    .line 297
    .line 298
    iput-object p1, p0, Lcom/narvii/master/SplashView;->callback:Lcom/narvii/util/Callback;

    .line 299
    :cond_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public splash(Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Lcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/drawable/Drawable;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/SplashView;->orig:Landroid/graphics/Rect;

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/master/SplashView;->imageView:Lcom/narvii/widget/NVImageView;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 11
    move-result-wide p1

    .line 12
    .line 13
    iput-wide p1, p0, Lcom/narvii/master/SplashView;->startMs:J

    .line 14
    .line 15
    iput-object p3, p0, Lcom/narvii/master/SplashView;->callback:Lcom/narvii/util/Callback;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 19
    return-void
.end method
