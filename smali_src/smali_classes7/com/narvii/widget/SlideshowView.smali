.class public Lcom/narvii/widget/SlideshowView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/NVImageView$OnImageChangedListener;


# instance fields
.field public alphaDuration:I

.field animationStartTime:J

.field bdx:I

.field bdy:I

.field dx:I

.field dy:I

.field img1:Lcom/narvii/widget/FullsizeImageView;

.field img2:Lcom/narvii/widget/FullsizeImageView;

.field index:I

.field listener:Lcom/narvii/widget/NVImageView$OnImageChangedListener;

.field mediaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation
.end field

.field nextReqed:Z

.field public noSlide:Z

.field final rnd:Ljava/util/Random;

.field public scale:F

.field public slideDuration:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    const/16 v0, 0x258

    .line 6
    .line 7
    iput v0, p0, Lcom/narvii/widget/SlideshowView;->alphaDuration:I

    .line 8
    .line 9
    const/16 v1, 0x1388

    .line 10
    .line 11
    iput v1, p0, Lcom/narvii/widget/SlideshowView;->slideDuration:I

    .line 12
    .line 13
    const/high16 v1, 0x3f800000    # 1.0f

    .line 14
    .line 15
    iput v1, p0, Lcom/narvii/widget/SlideshowView;->scale:F

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    iput-boolean v2, p0, Lcom/narvii/widget/SlideshowView;->noSlide:Z

    .line 19
    .line 20
    const-wide/16 v3, -0x1

    .line 21
    .line 22
    iput-wide v3, p0, Lcom/narvii/widget/SlideshowView;->animationStartTime:J

    .line 23
    .line 24
    iput v2, p0, Lcom/narvii/widget/SlideshowView;->index:I

    .line 25
    .line 26
    sget-object v3, Lcom/narvii/lib/R$styleable;->SlideshowView:[I

    .line 27
    .line 28
    sget v4, Lcom/narvii/lib/R$style;->SlideshowView:I

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    sget p2, Lcom/narvii/lib/R$styleable;->SlideshowView_alphaDuration:I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 38
    move-result p2

    .line 39
    .line 40
    iput p2, p0, Lcom/narvii/widget/SlideshowView;->alphaDuration:I

    .line 41
    .line 42
    sget p2, Lcom/narvii/lib/R$styleable;->SlideshowView_slideDuration:I

    .line 43
    .line 44
    const/16 v0, 0xfa0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 48
    move-result p2

    .line 49
    .line 50
    iput p2, p0, Lcom/narvii/widget/SlideshowView;->slideDuration:I

    .line 51
    .line 52
    sget p2, Lcom/narvii/lib/R$styleable;->SlideshowView_scale:I

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 56
    move-result p2

    .line 57
    .line 58
    iput p2, p0, Lcom/narvii/widget/SlideshowView;->scale:F

    .line 59
    .line 60
    sget p2, Lcom/narvii/lib/R$styleable;->SlideshowView_hidingHeight2:I

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 64
    move-result p2

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    .line 69
    new-instance p1, Ljava/util/Random;

    .line 70
    .line 71
    .line 72
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 73
    move-result-wide v0

    .line 74
    .line 75
    .line 76
    invoke-direct {p1, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 77
    .line 78
    iput-object p1, p0, Lcom/narvii/widget/SlideshowView;->rnd:Ljava/util/Random;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 82
    .line 83
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 84
    const/4 v0, -0x1

    .line 85
    .line 86
    .line 87
    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 88
    .line 89
    new-instance v0, Lcom/narvii/widget/FullsizeImageView;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 93
    move-result-object v1

    .line 94
    .line 95
    .line 96
    invoke-direct {v0, v1}, Lcom/narvii/widget/FullsizeImageView;-><init>(Landroid/content/Context;)V

    .line 97
    .line 98
    iput-object v0, p0, Lcom/narvii/widget/SlideshowView;->img1:Lcom/narvii/widget/FullsizeImageView;

    .line 99
    const/4 v1, 0x1

    .line 100
    .line 101
    iput-boolean v1, v0, Lcom/narvii/widget/NVImageView;->hidePlayButton:Z

    .line 102
    .line 103
    iput p2, v0, Lcom/narvii/widget/FullsizeImageView;->hidingHeight:I

    .line 104
    .line 105
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 109
    .line 110
    iget-object v0, p0, Lcom/narvii/widget/SlideshowView;->img1:Lcom/narvii/widget/FullsizeImageView;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, p0}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 114
    .line 115
    iget-object v0, p0, Lcom/narvii/widget/SlideshowView;->img1:Lcom/narvii/widget/FullsizeImageView;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    .line 120
    new-instance v0, Lcom/narvii/widget/FullsizeImageView;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 124
    move-result-object v3

    .line 125
    .line 126
    .line 127
    invoke-direct {v0, v3}, Lcom/narvii/widget/FullsizeImageView;-><init>(Landroid/content/Context;)V

    .line 128
    .line 129
    iput-object v0, p0, Lcom/narvii/widget/SlideshowView;->img2:Lcom/narvii/widget/FullsizeImageView;

    .line 130
    .line 131
    iput-boolean v1, v0, Lcom/narvii/widget/NVImageView;->hidePlayButton:Z

    .line 132
    .line 133
    iput p2, v0, Lcom/narvii/widget/FullsizeImageView;->hidingHeight:I

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 137
    .line 138
    iget-object p2, p0, Lcom/narvii/widget/SlideshowView;->img2:Lcom/narvii/widget/FullsizeImageView;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2, p0}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 142
    .line 143
    iget-object p2, p0, Lcom/narvii/widget/SlideshowView;->img2:Lcom/narvii/widget/FullsizeImageView;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 20

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-object/from16 v2, p2

    .line 7
    .line 8
    move-wide/from16 v3, p3

    .line 9
    .line 10
    iget-object v5, v0, Lcom/narvii/widget/SlideshowView;->mediaList:Ljava/util/List;

    .line 11
    const/4 v6, 0x0

    .line 12
    .line 13
    if-nez v5, :cond_0

    .line 14
    move v5, v6

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 19
    move-result v5

    .line 20
    :goto_0
    const/4 v7, 0x0

    .line 21
    const/4 v8, 0x4

    .line 22
    .line 23
    const/high16 v9, 0x3f800000    # 1.0f

    .line 24
    .line 25
    const-wide/16 v10, 0x0

    .line 26
    const/4 v12, 0x2

    .line 27
    const/4 v13, 0x1

    .line 28
    .line 29
    if-ge v5, v12, :cond_2

    .line 30
    .line 31
    if-ne v5, v13, :cond_1

    .line 32
    .line 33
    iget-wide v5, v0, Lcom/narvii/widget/SlideshowView;->animationStartTime:J

    .line 34
    .line 35
    cmp-long v5, v5, v10

    .line 36
    .line 37
    if-nez v5, :cond_1

    .line 38
    .line 39
    iget-object v5, v0, Lcom/narvii/widget/SlideshowView;->img1:Lcom/narvii/widget/FullsizeImageView;

    .line 40
    .line 41
    if-ne v2, v5, :cond_1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5}, Lcom/narvii/widget/NVImageView;->getStatus()I

    .line 45
    move-result v5

    .line 46
    .line 47
    if-ne v5, v8, :cond_1

    .line 48
    .line 49
    iput-wide v3, v0, Lcom/narvii/widget/SlideshowView;->animationStartTime:J

    .line 50
    .line 51
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    .line 52
    .line 53
    .line 54
    invoke-direct {v5, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 55
    .line 56
    iget v6, v0, Lcom/narvii/widget/SlideshowView;->alphaDuration:I

    .line 57
    int-to-long v6, v6

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 61
    .line 62
    iget-object v6, v0, Lcom/narvii/widget/SlideshowView;->img1:Lcom/narvii/widget/FullsizeImageView;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v6, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    invoke-super/range {p0 .. p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 69
    move-result v1

    .line 70
    return v1

    .line 71
    .line 72
    :cond_2
    iget-wide v14, v0, Lcom/narvii/widget/SlideshowView;->animationStartTime:J

    .line 73
    .line 74
    cmp-long v16, v14, v10

    .line 75
    .line 76
    const-wide/16 v17, -0x1

    .line 77
    .line 78
    if-gez v16, :cond_4

    .line 79
    .line 80
    :cond_3
    :goto_1
    move-wide/from16 v14, v17

    .line 81
    goto :goto_2

    .line 82
    .line 83
    :cond_4
    cmp-long v16, v14, v10

    .line 84
    .line 85
    if-nez v16, :cond_6

    .line 86
    .line 87
    iget v14, v0, Lcom/narvii/widget/SlideshowView;->index:I

    .line 88
    .line 89
    if-nez v14, :cond_5

    .line 90
    .line 91
    iget-object v14, v0, Lcom/narvii/widget/SlideshowView;->img1:Lcom/narvii/widget/FullsizeImageView;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v14}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 95
    move-result-object v14

    .line 96
    .line 97
    if-eqz v14, :cond_3

    .line 98
    .line 99
    iget-object v14, v0, Lcom/narvii/widget/SlideshowView;->img1:Lcom/narvii/widget/FullsizeImageView;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v14}, Lcom/narvii/widget/NVImageView;->getStatus()I

    .line 103
    move-result v14

    .line 104
    .line 105
    if-eq v14, v8, :cond_5

    .line 106
    goto :goto_1

    .line 107
    .line 108
    :cond_5
    iput-wide v3, v0, Lcom/narvii/widget/SlideshowView;->animationStartTime:J

    .line 109
    move-wide v14, v10

    .line 110
    goto :goto_2

    .line 111
    .line 112
    :cond_6
    sub-long v17, v3, v14

    .line 113
    goto :goto_1

    .line 114
    .line 115
    :goto_2
    iget v8, v0, Lcom/narvii/widget/SlideshowView;->index:I

    .line 116
    .line 117
    rem-int/lit8 v17, v8, 0x2

    .line 118
    .line 119
    if-nez v17, :cond_7

    .line 120
    .line 121
    iget-object v7, v0, Lcom/narvii/widget/SlideshowView;->img1:Lcom/narvii/widget/FullsizeImageView;

    .line 122
    .line 123
    iget-object v9, v0, Lcom/narvii/widget/SlideshowView;->img2:Lcom/narvii/widget/FullsizeImageView;

    .line 124
    goto :goto_3

    .line 125
    .line 126
    :cond_7
    iget-object v7, v0, Lcom/narvii/widget/SlideshowView;->img2:Lcom/narvii/widget/FullsizeImageView;

    .line 127
    .line 128
    iget-object v9, v0, Lcom/narvii/widget/SlideshowView;->img1:Lcom/narvii/widget/FullsizeImageView;

    .line 129
    .line 130
    :goto_3
    iget-object v13, v0, Lcom/narvii/widget/SlideshowView;->img1:Lcom/narvii/widget/FullsizeImageView;

    .line 131
    .line 132
    if-ne v2, v13, :cond_8

    .line 133
    const/4 v2, 0x1

    .line 134
    goto :goto_4

    .line 135
    :cond_8
    move v2, v6

    .line 136
    .line 137
    :goto_4
    cmp-long v13, v14, v10

    .line 138
    .line 139
    if-ltz v13, :cond_10

    .line 140
    .line 141
    const/high16 v19, 0x3f000000    # 0.5f

    .line 142
    .line 143
    if-eqz v2, :cond_a

    .line 144
    .line 145
    iget v7, v0, Lcom/narvii/widget/SlideshowView;->alphaDuration:I

    .line 146
    int-to-long v10, v7

    .line 147
    .line 148
    cmp-long v7, v14, v10

    .line 149
    .line 150
    if-gez v7, :cond_9

    .line 151
    .line 152
    if-lez v8, :cond_9

    .line 153
    .line 154
    .line 155
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 156
    move-result v7

    .line 157
    .line 158
    iget v8, v0, Lcom/narvii/widget/SlideshowView;->bdx:I

    .line 159
    int-to-float v8, v8

    .line 160
    .line 161
    mul-float v8, v8, v19

    .line 162
    .line 163
    iget v10, v0, Lcom/narvii/widget/SlideshowView;->bdy:I

    .line 164
    int-to-float v10, v10

    .line 165
    .line 166
    mul-float v10, v10, v19

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v8, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 170
    .line 171
    iget v8, v0, Lcom/narvii/widget/SlideshowView;->scale:F

    .line 172
    .line 173
    .line 174
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 175
    move-result v10

    .line 176
    div-int/2addr v10, v12

    .line 177
    int-to-float v10, v10

    .line 178
    .line 179
    .line 180
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 181
    move-result v11

    .line 182
    div-int/2addr v11, v12

    .line 183
    int-to-float v11, v11

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, v8, v8, v10, v11}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 187
    .line 188
    .line 189
    invoke-super {v0, v1, v9, v3, v4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 193
    .line 194
    iput-boolean v6, v0, Lcom/narvii/widget/SlideshowView;->nextReqed:Z

    .line 195
    .line 196
    :cond_9
    iget v1, v0, Lcom/narvii/widget/SlideshowView;->alphaDuration:I

    .line 197
    int-to-long v3, v1

    .line 198
    .line 199
    cmp-long v1, v14, v3

    .line 200
    .line 201
    if-ltz v1, :cond_10

    .line 202
    .line 203
    iget-boolean v1, v0, Lcom/narvii/widget/SlideshowView;->nextReqed:Z

    .line 204
    .line 205
    if-nez v1, :cond_10

    .line 206
    .line 207
    iget-object v1, v0, Lcom/narvii/widget/SlideshowView;->mediaList:Ljava/util/List;

    .line 208
    .line 209
    iget v3, v0, Lcom/narvii/widget/SlideshowView;->index:I

    .line 210
    const/4 v4, 0x1

    .line 211
    add-int/2addr v3, v4

    .line 212
    rem-int/2addr v3, v5

    .line 213
    .line 214
    .line 215
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 216
    move-result-object v1

    .line 217
    .line 218
    check-cast v1, Lcom/narvii/model/Media;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v9, v1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 222
    .line 223
    iput-boolean v4, v0, Lcom/narvii/widget/SlideshowView;->nextReqed:Z

    .line 224
    .line 225
    goto/16 :goto_8

    .line 226
    .line 227
    :cond_a
    if-nez v13, :cond_e

    .line 228
    .line 229
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    .line 230
    const/4 v3, 0x0

    .line 231
    .line 232
    const/high16 v4, 0x3f800000    # 1.0f

    .line 233
    .line 234
    .line 235
    invoke-direct {v1, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 236
    .line 237
    iget v3, v0, Lcom/narvii/widget/SlideshowView;->alphaDuration:I

    .line 238
    int-to-long v10, v3

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v7, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 245
    .line 246
    iget-boolean v1, v0, Lcom/narvii/widget/SlideshowView;->noSlide:Z

    .line 247
    .line 248
    if-eqz v1, :cond_b

    .line 249
    .line 250
    iput v6, v0, Lcom/narvii/widget/SlideshowView;->dx:I

    .line 251
    .line 252
    iput v6, v0, Lcom/narvii/widget/SlideshowView;->dy:I

    .line 253
    .line 254
    goto/16 :goto_7

    .line 255
    .line 256
    :cond_b
    iget v1, v0, Lcom/narvii/widget/SlideshowView;->scale:F

    .line 257
    sub-float/2addr v1, v4

    .line 258
    .line 259
    .line 260
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 261
    move-result v3

    .line 262
    int-to-float v3, v3

    .line 263
    mul-float/2addr v3, v1

    .line 264
    .line 265
    iget-object v4, v0, Lcom/narvii/widget/SlideshowView;->rnd:Ljava/util/Random;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    .line 269
    move-result v4

    .line 270
    mul-float/2addr v3, v4

    .line 271
    .line 272
    iget-object v4, v0, Lcom/narvii/widget/SlideshowView;->rnd:Ljava/util/Random;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v4}, Ljava/util/Random;->nextBoolean()Z

    .line 276
    move-result v4

    .line 277
    const/4 v5, -0x1

    .line 278
    .line 279
    if-eqz v4, :cond_c

    .line 280
    move v4, v5

    .line 281
    goto :goto_5

    .line 282
    :cond_c
    const/4 v4, 0x1

    .line 283
    :goto_5
    int-to-float v4, v4

    .line 284
    mul-float/2addr v3, v4

    .line 285
    float-to-int v3, v3

    .line 286
    .line 287
    iput v3, v0, Lcom/narvii/widget/SlideshowView;->dx:I

    .line 288
    .line 289
    .line 290
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 291
    move-result v3

    .line 292
    int-to-float v3, v3

    .line 293
    mul-float/2addr v3, v1

    .line 294
    .line 295
    iget-object v1, v0, Lcom/narvii/widget/SlideshowView;->rnd:Ljava/util/Random;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    .line 299
    move-result v1

    .line 300
    mul-float/2addr v3, v1

    .line 301
    .line 302
    iget-object v1, v0, Lcom/narvii/widget/SlideshowView;->rnd:Ljava/util/Random;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v1}, Ljava/util/Random;->nextBoolean()Z

    .line 306
    move-result v1

    .line 307
    .line 308
    if-eqz v1, :cond_d

    .line 309
    move v4, v5

    .line 310
    goto :goto_6

    .line 311
    :cond_d
    const/4 v4, 0x1

    .line 312
    :goto_6
    int-to-float v1, v4

    .line 313
    mul-float/2addr v3, v1

    .line 314
    float-to-int v1, v3

    .line 315
    .line 316
    iput v1, v0, Lcom/narvii/widget/SlideshowView;->dy:I

    .line 317
    goto :goto_7

    .line 318
    :cond_e
    long-to-float v5, v14

    .line 319
    .line 320
    iget v8, v0, Lcom/narvii/widget/SlideshowView;->slideDuration:I

    .line 321
    int-to-float v8, v8

    .line 322
    div-float/2addr v5, v8

    .line 323
    .line 324
    const/high16 v8, 0x3f800000    # 1.0f

    .line 325
    .line 326
    cmpl-float v10, v5, v8

    .line 327
    .line 328
    if-lez v10, :cond_f

    .line 329
    move v5, v8

    .line 330
    .line 331
    .line 332
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 333
    move-result v8

    .line 334
    .line 335
    iget v10, v0, Lcom/narvii/widget/SlideshowView;->dx:I

    .line 336
    int-to-float v10, v10

    .line 337
    .line 338
    sub-float v5, v5, v19

    .line 339
    mul-float/2addr v10, v5

    .line 340
    .line 341
    iget v11, v0, Lcom/narvii/widget/SlideshowView;->dy:I

    .line 342
    int-to-float v11, v11

    .line 343
    mul-float/2addr v11, v5

    .line 344
    .line 345
    .line 346
    invoke-virtual {v1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 347
    .line 348
    iget v5, v0, Lcom/narvii/widget/SlideshowView;->scale:F

    .line 349
    .line 350
    .line 351
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 352
    move-result v10

    .line 353
    div-int/2addr v10, v12

    .line 354
    int-to-float v10, v10

    .line 355
    .line 356
    .line 357
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 358
    move-result v11

    .line 359
    div-int/2addr v11, v12

    .line 360
    int-to-float v11, v11

    .line 361
    .line 362
    .line 363
    invoke-virtual {v1, v5, v5, v10, v11}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 364
    .line 365
    .line 366
    invoke-super {v0, v1, v7, v3, v4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 367
    .line 368
    .line 369
    invoke-virtual {v1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 370
    .line 371
    :goto_7
    iget v1, v0, Lcom/narvii/widget/SlideshowView;->slideDuration:I

    .line 372
    int-to-long v3, v1

    .line 373
    .line 374
    cmp-long v1, v14, v3

    .line 375
    .line 376
    if-gtz v1, :cond_10

    .line 377
    .line 378
    .line 379
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 380
    const/4 v6, 0x1

    .line 381
    .line 382
    :cond_10
    :goto_8
    iget v1, v0, Lcom/narvii/widget/SlideshowView;->slideDuration:I

    .line 383
    int-to-long v3, v1

    .line 384
    .line 385
    cmp-long v1, v14, v3

    .line 386
    .line 387
    if-lez v1, :cond_13

    .line 388
    .line 389
    if-nez v2, :cond_13

    .line 390
    .line 391
    .line 392
    invoke-virtual {v9}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 393
    move-result-object v1

    .line 394
    .line 395
    if-eqz v1, :cond_12

    .line 396
    .line 397
    .line 398
    invoke-virtual {v9}, Lcom/narvii/widget/NVImageView;->getStatus()I

    .line 399
    move-result v1

    .line 400
    const/4 v2, 0x4

    .line 401
    .line 402
    if-eq v1, v2, :cond_11

    .line 403
    goto :goto_a

    .line 404
    .line 405
    :cond_11
    :goto_9
    const-wide/16 v1, 0x0

    .line 406
    goto :goto_b

    .line 407
    .line 408
    .line 409
    :cond_12
    :goto_a
    invoke-virtual {v9}, Lcom/narvii/widget/NVImageView;->getStatus()I

    .line 410
    move-result v1

    .line 411
    .line 412
    if-ne v1, v12, :cond_13

    .line 413
    goto :goto_9

    .line 414
    .line 415
    :goto_b
    iput-wide v1, v0, Lcom/narvii/widget/SlideshowView;->animationStartTime:J

    .line 416
    .line 417
    iget v1, v0, Lcom/narvii/widget/SlideshowView;->dx:I

    .line 418
    .line 419
    iput v1, v0, Lcom/narvii/widget/SlideshowView;->bdx:I

    .line 420
    .line 421
    iget v1, v0, Lcom/narvii/widget/SlideshowView;->dy:I

    .line 422
    .line 423
    iput v1, v0, Lcom/narvii/widget/SlideshowView;->bdy:I

    .line 424
    .line 425
    iget v1, v0, Lcom/narvii/widget/SlideshowView;->index:I

    .line 426
    const/4 v2, 0x1

    .line 427
    add-int/2addr v1, v2

    .line 428
    .line 429
    iput v1, v0, Lcom/narvii/widget/SlideshowView;->index:I

    .line 430
    .line 431
    .line 432
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 433
    move v13, v2

    .line 434
    goto :goto_c

    .line 435
    :cond_13
    move v13, v6

    .line 436
    :goto_c
    return v13
.end method

.method public getCurrentIndex()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/SlideshowView;->mediaList:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget v0, p0, Lcom/narvii/widget/SlideshowView;->index:I

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/widget/SlideshowView;->mediaList:Ljava/util/List;

    .line 16
    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 19
    move-result v1

    .line 20
    rem-int/2addr v0, v1

    .line 21
    return v0

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 23
    return v0
.end method

.method public getCurrentMedia()Lcom/narvii/model/Media;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/SlideshowView;->mediaList:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/SlideshowView;->mediaList:Ljava/util/List;

    .line 14
    .line 15
    iget v1, p0, Lcom/narvii/widget/SlideshowView;->index:I

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 19
    move-result v2

    .line 20
    rem-int/2addr v1, v2

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Lcom/narvii/model/Media;

    .line 27
    return-object v0

    .line 28
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 29
    return-object v0
.end method

.method public onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/SlideshowView;->mediaList:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/SlideshowView;->listener:Lcom/narvii/widget/NVImageView$OnImageChangedListener;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, p1, p2, p3}, Lcom/narvii/widget/NVImageView$OnImageChangedListener;->onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V

    .line 21
    :cond_1
    return-void
.end method

.method public setMediaList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/SlideshowView;->mediaList:Ljava/util/List;

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEqualsContent(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    return-void

    .line 13
    .line 14
    :cond_1
    iput-object p1, p0, Lcom/narvii/widget/SlideshowView;->mediaList:Ljava/util/List;

    .line 15
    const/4 v0, 0x0

    .line 16
    .line 17
    iput v0, p0, Lcom/narvii/widget/SlideshowView;->index:I

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/narvii/widget/SlideshowView;->nextReqed:Z

    .line 20
    .line 21
    const-wide/16 v1, 0x0

    .line 22
    .line 23
    iput-wide v1, p0, Lcom/narvii/widget/SlideshowView;->animationStartTime:J

    .line 24
    .line 25
    const-wide/16 v1, 0x1

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 31
    move-result v3

    .line 32
    .line 33
    if-lez v3, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    check-cast p1, Lcom/narvii/model/Media;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/widget/SlideshowView;->img1:Lcom/narvii/widget/FullsizeImageView;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 45
    .line 46
    iget-object p1, p0, Lcom/narvii/widget/SlideshowView;->img1:Lcom/narvii/widget/FullsizeImageView;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/narvii/widget/NVImageView;->getStatus()I

    .line 50
    move-result p1

    .line 51
    const/4 v0, 0x4

    .line 52
    .line 53
    if-ne p1, v0, :cond_3

    .line 54
    .line 55
    iput-wide v1, p0, Lcom/narvii/widget/SlideshowView;->animationStartTime:J

    .line 56
    goto :goto_0

    .line 57
    .line 58
    :cond_2
    iget-object p1, p0, Lcom/narvii/widget/SlideshowView;->img1:Lcom/narvii/widget/FullsizeImageView;

    .line 59
    const/4 v0, 0x0

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 63
    .line 64
    iput-wide v1, p0, Lcom/narvii/widget/SlideshowView;->animationStartTime:J

    .line 65
    .line 66
    .line 67
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 68
    return-void
.end method

.method public setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/SlideshowView;->listener:Lcom/narvii/widget/NVImageView$OnImageChangedListener;

    return-void
.end method
