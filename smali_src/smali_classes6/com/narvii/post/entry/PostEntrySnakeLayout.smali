.class public Lcom/narvii/post/entry/PostEntrySnakeLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field final animators:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field final backgrounds:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final btns:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/narvii/post/entry/ComposeEntryItem;",
            ">;"
        }
    .end annotation
.end field

.field fraction:I

.field final isRtl:Z

.field layout:Z

.field pendingGo:Ljava/lang/Boolean;

.field final tmpp:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p1, Ljava/util/LinkedList;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout;->backgrounds:Ljava/util/LinkedList;

    .line 11
    .line 12
    new-instance p1, Ljava/util/LinkedList;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout;->btns:Ljava/util/LinkedList;

    .line 18
    .line 19
    new-instance p1, Landroid/graphics/PointF;

    .line 20
    .line 21
    .line 22
    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    .line 23
    .line 24
    iput-object p1, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout;->tmpp:Landroid/graphics/PointF;

    .line 25
    .line 26
    new-instance p1, Ljava/util/LinkedList;

    .line 27
    .line 28
    .line 29
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 30
    .line 31
    iput-object p1, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout;->animators:Ljava/util/LinkedList;

    .line 32
    const/4 p1, 0x4

    .line 33
    .line 34
    iput p1, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout;->fraction:I

    .line 35
    .line 36
    .line 37
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->D(Landroid/view/View;)I

    .line 38
    move-result p1

    .line 39
    const/4 p2, 0x1

    .line 40
    .line 41
    if-ne p1, p2, :cond_0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 p2, 0x0

    .line 44
    .line 45
    :goto_0
    iput-boolean p2, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout;->isRtl:Z

    .line 46
    return-void
.end method

.method private calcPosition(ILandroid/graphics/PointF;)V
    .locals 5

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout;->fraction:I

    .line 3
    .line 4
    div-int v1, p1, v0

    .line 5
    rem-int/2addr p1, v0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout;->backgrounds:Ljava/util/LinkedList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Landroid/view/View;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 17
    move-result v2

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 21
    move-result v3

    .line 22
    sub-int/2addr v2, v3

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 26
    move-result v3

    .line 27
    sub-int/2addr v2, v3

    .line 28
    int-to-float v2, v2

    .line 29
    .line 30
    iget v3, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout;->fraction:I

    .line 31
    int-to-float v3, v3

    .line 32
    .line 33
    const/high16 v4, 0x40000000    # 2.0f

    .line 34
    mul-float/2addr v3, v4

    .line 35
    div-float/2addr v2, v3

    .line 36
    .line 37
    mul-int/lit8 p1, p1, 0x2

    .line 38
    const/4 v3, 0x1

    .line 39
    add-int/2addr p1, v3

    .line 40
    int-to-float p1, p1

    .line 41
    mul-float/2addr v2, p1

    .line 42
    .line 43
    iput v2, p2, Landroid/graphics/PointF;->x:F

    .line 44
    .line 45
    iget-boolean p1, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout;->isRtl:Z

    .line 46
    const/4 v2, -0x1

    .line 47
    .line 48
    if-eqz p1, :cond_0

    .line 49
    move p1, v2

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    move p1, v3

    .line 52
    .line 53
    :goto_0
    rem-int/lit8 v1, v1, 0x2

    .line 54
    .line 55
    if-nez v1, :cond_1

    .line 56
    move v2, v3

    .line 57
    :cond_1
    mul-int/2addr p1, v2

    .line 58
    .line 59
    if-ne p1, v3, :cond_2

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 63
    move-result p1

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 67
    move-result v1

    .line 68
    sub-int/2addr p1, v1

    .line 69
    int-to-float p1, p1

    .line 70
    .line 71
    iget v1, p2, Landroid/graphics/PointF;->x:F

    .line 72
    sub-float/2addr p1, v1

    .line 73
    .line 74
    iput p1, p2, Landroid/graphics/PointF;->x:F

    .line 75
    goto :goto_1

    .line 76
    .line 77
    .line 78
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 79
    move-result p1

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 83
    move-result v1

    .line 84
    add-int/2addr p1, v1

    .line 85
    int-to-float p1, p1

    .line 86
    .line 87
    iget v1, p2, Landroid/graphics/PointF;->x:F

    .line 88
    add-float/2addr p1, v1

    .line 89
    .line 90
    iput p1, p2, Landroid/graphics/PointF;->x:F

    .line 91
    .line 92
    .line 93
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 94
    move-result p1

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 98
    move-result v0

    .line 99
    add-int/2addr p1, v0

    .line 100
    .line 101
    div-int/lit8 p1, p1, 0x2

    .line 102
    int-to-float p1, p1

    .line 103
    .line 104
    iput p1, p2, Landroid/graphics/PointF;->y:F

    .line 105
    return-void
.end method


# virtual methods
.method public go(Z)I
    .locals 20

    .line 1
    .line 2
    move-object/from16 v6, p0

    .line 3
    .line 4
    :goto_0
    iget-object v0, v6, Lcom/narvii/post/entry/PostEntrySnakeLayout;->animators:Ljava/util/LinkedList;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, v6, Lcom/narvii/post/entry/PostEntrySnakeLayout;->animators:Ljava/util/LinkedList;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Landroid/animation/Animator;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    iget-boolean v0, v6, Lcom/narvii/post/entry/PostEntrySnakeLayout;->layout:Z

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    iput-object v0, v6, Lcom/narvii/post/entry/PostEntrySnakeLayout;->pendingGo:Ljava/lang/Boolean;

    .line 33
    .line 34
    iget-object v0, v6, Lcom/narvii/post/entry/PostEntrySnakeLayout;->btns:Ljava/util/LinkedList;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 38
    move-result v0

    .line 39
    .line 40
    mul-int/lit8 v0, v0, 0x32

    .line 41
    return v0

    .line 42
    .line 43
    :cond_1
    if-eqz p1, :cond_2

    .line 44
    .line 45
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 46
    .line 47
    .line 48
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 49
    :goto_1
    move-object v7, v0

    .line 50
    goto :goto_2

    .line 51
    .line 52
    :cond_2
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    .line 53
    .line 54
    .line 55
    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 56
    goto :goto_1

    .line 57
    .line 58
    :goto_2
    iget-object v0, v6, Lcom/narvii/post/entry/PostEntrySnakeLayout;->tmpp:Landroid/graphics/PointF;

    .line 59
    const/4 v8, 0x0

    .line 60
    .line 61
    .line 62
    invoke-direct {v6, v8, v0}, Lcom/narvii/post/entry/PostEntrySnakeLayout;->calcPosition(ILandroid/graphics/PointF;)V

    .line 63
    .line 64
    iget-object v0, v6, Lcom/narvii/post/entry/PostEntrySnakeLayout;->btns:Ljava/util/LinkedList;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 68
    move-result v0

    .line 69
    .line 70
    new-array v9, v0, [Landroid/graphics/Path;

    .line 71
    move v1, v8

    .line 72
    .line 73
    :goto_3
    if-ge v1, v0, :cond_3

    .line 74
    .line 75
    new-instance v2, Landroid/graphics/Path;

    .line 76
    .line 77
    .line 78
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 79
    .line 80
    iget-object v3, v6, Lcom/narvii/post/entry/PostEntrySnakeLayout;->tmpp:Landroid/graphics/PointF;

    .line 81
    .line 82
    iget v4, v3, Landroid/graphics/PointF;->x:F

    .line 83
    .line 84
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 88
    .line 89
    aput-object v2, v9, v1

    .line 90
    .line 91
    add-int/lit8 v1, v1, 0x1

    .line 92
    goto :goto_3

    .line 93
    :cond_3
    move v1, v8

    .line 94
    :goto_4
    const/4 v10, 0x2

    .line 95
    .line 96
    if-ge v1, v0, :cond_5

    .line 97
    .line 98
    iget-object v2, v6, Lcom/narvii/post/entry/PostEntrySnakeLayout;->btns:Ljava/util/LinkedList;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 102
    move-result-object v2

    .line 103
    .line 104
    check-cast v2, Landroid/view/View;

    .line 105
    .line 106
    if-nez p1, :cond_4

    .line 107
    .line 108
    iget-object v3, v6, Lcom/narvii/post/entry/PostEntrySnakeLayout;->tmpp:Landroid/graphics/PointF;

    .line 109
    .line 110
    .line 111
    invoke-direct {v6, v1, v3}, Lcom/narvii/post/entry/PostEntrySnakeLayout;->calcPosition(ILandroid/graphics/PointF;)V

    .line 112
    .line 113
    :cond_4
    iget-object v3, v6, Lcom/narvii/post/entry/PostEntrySnakeLayout;->tmpp:Landroid/graphics/PointF;

    .line 114
    .line 115
    iget v3, v3, Landroid/graphics/PointF;->x:F

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 119
    move-result v4

    .line 120
    div-int/2addr v4, v10

    .line 121
    int-to-float v4, v4

    .line 122
    sub-float/2addr v3, v4

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    .line 126
    .line 127
    iget-object v3, v6, Lcom/narvii/post/entry/PostEntrySnakeLayout;->tmpp:Landroid/graphics/PointF;

    .line 128
    .line 129
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 133
    move-result v4

    .line 134
    div-int/2addr v4, v10

    .line 135
    int-to-float v4, v4

    .line 136
    sub-float/2addr v3, v4

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 140
    .line 141
    add-int/lit8 v1, v1, 0x1

    .line 142
    goto :goto_4

    .line 143
    :cond_5
    const/4 v11, 0x1

    .line 144
    move v1, v11

    .line 145
    .line 146
    :goto_5
    if-ge v1, v0, :cond_7

    .line 147
    .line 148
    iget-object v2, v6, Lcom/narvii/post/entry/PostEntrySnakeLayout;->tmpp:Landroid/graphics/PointF;

    .line 149
    .line 150
    .line 151
    invoke-direct {v6, v1, v2}, Lcom/narvii/post/entry/PostEntrySnakeLayout;->calcPosition(ILandroid/graphics/PointF;)V

    .line 152
    move v2, v1

    .line 153
    .line 154
    :goto_6
    if-ge v2, v0, :cond_6

    .line 155
    .line 156
    aget-object v3, v9, v2

    .line 157
    .line 158
    iget-object v4, v6, Lcom/narvii/post/entry/PostEntrySnakeLayout;->tmpp:Landroid/graphics/PointF;

    .line 159
    .line 160
    iget v5, v4, Landroid/graphics/PointF;->x:F

    .line 161
    .line 162
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 166
    .line 167
    add-int/lit8 v2, v2, 0x1

    .line 168
    goto :goto_6

    .line 169
    .line 170
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 171
    goto :goto_5

    .line 172
    .line 173
    :cond_7
    mul-int/lit8 v12, v0, 0x32

    .line 174
    .line 175
    new-array v13, v10, [F

    .line 176
    .line 177
    new-array v14, v10, [F

    .line 178
    sub-int/2addr v0, v11

    .line 179
    const/4 v15, 0x0

    .line 180
    move v5, v0

    .line 181
    move v0, v15

    .line 182
    .line 183
    :goto_7
    if-lez v5, :cond_b

    .line 184
    .line 185
    iget-object v1, v6, Lcom/narvii/post/entry/PostEntrySnakeLayout;->btns:Ljava/util/LinkedList;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 189
    move-result-object v1

    .line 190
    .line 191
    move-object/from16 v16, v1

    .line 192
    .line 193
    check-cast v16, Landroid/view/View;

    .line 194
    .line 195
    aget-object v1, v9, v5

    .line 196
    .line 197
    new-instance v2, Landroid/graphics/PathMeasure;

    .line 198
    .line 199
    .line 200
    invoke-direct {v2, v1, v8}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    .line 204
    move-result v1

    .line 205
    .line 206
    cmpl-float v3, v0, v15

    .line 207
    .line 208
    if-nez v3, :cond_8

    .line 209
    .line 210
    move/from16 v17, v1

    .line 211
    goto :goto_8

    .line 212
    .line 213
    :cond_8
    move/from16 v17, v0

    .line 214
    :goto_8
    int-to-float v0, v12

    .line 215
    mul-float/2addr v0, v1

    .line 216
    .line 217
    div-float v0, v0, v17

    .line 218
    float-to-int v0, v0

    .line 219
    .line 220
    new-array v3, v10, [F

    .line 221
    .line 222
    if-eqz p1, :cond_9

    .line 223
    .line 224
    aput v15, v3, v8

    .line 225
    .line 226
    aput v1, v3, v11

    .line 227
    .line 228
    .line 229
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 230
    move-result-object v1

    .line 231
    :goto_9
    move-object v4, v1

    .line 232
    .line 233
    move-object/from16 v18, v9

    .line 234
    goto :goto_a

    .line 235
    .line 236
    :cond_9
    aput v1, v3, v8

    .line 237
    .line 238
    aput v15, v3, v11

    .line 239
    .line 240
    .line 241
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 242
    move-result-object v1

    .line 243
    goto :goto_9

    .line 244
    :goto_a
    int-to-long v8, v0

    .line 245
    .line 246
    .line 247
    invoke-virtual {v4, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 248
    .line 249
    if-eqz p1, :cond_a

    .line 250
    .line 251
    sub-int v0, v12, v0

    .line 252
    int-to-long v0, v0

    .line 253
    .line 254
    .line 255
    invoke-virtual {v4, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 256
    .line 257
    .line 258
    :cond_a
    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 259
    .line 260
    new-instance v8, Lcom/narvii/post/entry/PostEntrySnakeLayout$2;

    .line 261
    move-object v0, v8

    .line 262
    .line 263
    move-object/from16 v1, p0

    .line 264
    move-object v3, v13

    .line 265
    move-object v9, v4

    .line 266
    move-object v4, v14

    .line 267
    .line 268
    move/from16 v19, v5

    .line 269
    .line 270
    move-object/from16 v5, v16

    .line 271
    .line 272
    .line 273
    invoke-direct/range {v0 .. v5}, Lcom/narvii/post/entry/PostEntrySnakeLayout$2;-><init>(Lcom/narvii/post/entry/PostEntrySnakeLayout;Landroid/graphics/PathMeasure;[F[FLandroid/view/View;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v9, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->start()V

    .line 280
    .line 281
    iget-object v0, v6, Lcom/narvii/post/entry/PostEntrySnakeLayout;->animators:Ljava/util/LinkedList;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 285
    .line 286
    add-int/lit8 v5, v19, -0x1

    .line 287
    .line 288
    move/from16 v0, v17

    .line 289
    .line 290
    move-object/from16 v9, v18

    .line 291
    const/4 v8, 0x0

    .line 292
    goto :goto_7

    .line 293
    :cond_b
    return v12
.end method

.method protected onFinishInflate()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    :goto_0
    if-ge v1, v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 18
    move-result-object v3

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v4

    .line 23
    .line 24
    .line 25
    const v5, 0x7f12046b

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 29
    move-result-object v4

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result v3

    .line 34
    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    iget-object v3, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout;->backgrounds:Ljava/util/LinkedList;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout;->layout:Z

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout;->pendingGo:Ljava/lang/Boolean;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    move-result p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/narvii/post/entry/PostEntrySnakeLayout;->go(Z)I

    .line 18
    :cond_0
    return-void
.end method

.method public setEntryKeys(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/post/entry/EntryItemClickListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/narvii/post/entry/EntryItemClickListener;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/modulization/entry/EntryManager;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Lcom/narvii/modulization/entry/EntryManager;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance v1, Ljava/util/LinkedList;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 11
    .line 12
    :goto_0
    iget-object v2, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout;->btns:Ljava/util/LinkedList;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 16
    move-result v2

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    iget-object v2, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout;->btns:Ljava/util/LinkedList;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    check-cast v2, Lcom/narvii/post/entry/ComposeEntryItem;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v2, 0x0

    .line 35
    .line 36
    if-nez p2, :cond_1

    .line 37
    move v3, v2

    .line 38
    goto :goto_1

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 42
    move-result v3

    .line 43
    .line 44
    iget v4, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout;->fraction:I

    .line 45
    .line 46
    add-int/lit8 v4, v4, -0x1

    .line 47
    add-int/2addr v3, v4

    .line 48
    .line 49
    :goto_1
    iget v4, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout;->fraction:I

    .line 50
    div-int/2addr v3, v4

    .line 51
    .line 52
    iget-object v4, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout;->backgrounds:Ljava/util/LinkedList;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    .line 56
    move-result v4

    .line 57
    move v5, v2

    .line 58
    .line 59
    :goto_2
    if-ge v5, v4, :cond_3

    .line 60
    .line 61
    iget-object v6, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout;->backgrounds:Ljava/util/LinkedList;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 65
    move-result-object v6

    .line 66
    .line 67
    check-cast v6, Landroid/view/View;

    .line 68
    .line 69
    if-ge v5, v3, :cond_2

    .line 70
    move v7, v2

    .line 71
    goto :goto_3

    .line 72
    :cond_2
    const/4 v7, 0x4

    .line 73
    .line 74
    .line 75
    :goto_3
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    add-int/lit8 v5, v5, 0x1

    .line 78
    goto :goto_2

    .line 79
    .line 80
    :cond_3
    if-eqz p2, :cond_8

    .line 81
    .line 82
    .line 83
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 84
    move-result v3

    .line 85
    .line 86
    if-eqz v3, :cond_4

    .line 87
    goto :goto_8

    .line 88
    .line 89
    .line 90
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 91
    move-result-object v3

    .line 92
    .line 93
    .line 94
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 95
    move-result-object v3

    .line 96
    .line 97
    const-string v4, "account"

    .line 98
    .line 99
    .line 100
    invoke-interface {p1, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    move-result-object v4

    .line 102
    .line 103
    check-cast v4, Lcom/narvii/account/AccountService;

    .line 104
    .line 105
    const-string v5, "draft"

    .line 106
    .line 107
    .line 108
    invoke-interface {p1, v5}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 109
    move-result-object v5

    .line 110
    .line 111
    check-cast v5, Lcom/narvii/post/DraftManager;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v5}, Lcom/narvii/post/DraftManager;->list()Ljava/util/List;

    .line 115
    move-result-object v6

    .line 116
    .line 117
    if-nez v6, :cond_5

    .line 118
    move v5, v2

    .line 119
    goto :goto_4

    .line 120
    .line 121
    .line 122
    :cond_5
    invoke-virtual {v5}, Lcom/narvii/post/DraftManager;->list()Ljava/util/List;

    .line 123
    move-result-object v5

    .line 124
    .line 125
    .line 126
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 127
    move-result v5

    .line 128
    .line 129
    .line 130
    :goto_4
    invoke-virtual {v4}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 131
    move-result-object v4

    .line 132
    .line 133
    .line 134
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 135
    move-result-object p2

    .line 136
    .line 137
    .line 138
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    move-result v6

    .line 140
    .line 141
    if-eqz v6, :cond_7

    .line 142
    .line 143
    .line 144
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    move-result-object v6

    .line 146
    .line 147
    check-cast v6, Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v4, v6}, Lcom/narvii/modulization/entry/EntryManager;->canCurUserPost(Lcom/narvii/model/User;Ljava/lang/String;)Lcom/narvii/modulization/entry/EntryEligibleCheckResult;

    .line 151
    move-result-object v7

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 155
    move-result v8

    .line 156
    .line 157
    if-eqz v8, :cond_6

    .line 158
    .line 159
    .line 160
    const v8, 0x7f0d062f

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3, v8, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 164
    move-result-object v8

    .line 165
    .line 166
    :goto_6
    check-cast v8, Lcom/narvii/post/entry/ComposeEntryItem;

    .line 167
    goto :goto_7

    .line 168
    .line 169
    .line 170
    :cond_6
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 171
    move-result-object v8

    .line 172
    goto :goto_6

    .line 173
    .line 174
    .line 175
    :goto_7
    invoke-virtual {v8, p1, v7, v6, v5}, Lcom/narvii/post/entry/ComposeEntryItem;->setEntryItem(Lcom/narvii/app/NVContext;Lcom/narvii/modulization/entry/EntryEligibleCheckResult;Ljava/lang/String;I)V

    .line 176
    .line 177
    new-instance v9, Lcom/narvii/post/entry/PostEntrySnakeLayout$1;

    .line 178
    .line 179
    .line 180
    invoke-direct {v9, p0, p3, v6, v7}, Lcom/narvii/post/entry/PostEntrySnakeLayout$1;-><init>(Lcom/narvii/post/entry/PostEntrySnakeLayout;Lcom/narvii/post/entry/EntryItemClickListener;Ljava/lang/String;Lcom/narvii/modulization/entry/EntryEligibleCheckResult;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 187
    .line 188
    iget-object v6, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout;->btns:Ljava/util/LinkedList;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v6, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 192
    goto :goto_5

    .line 193
    .line 194
    :cond_7
    iput-boolean v2, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout;->layout:Z

    .line 195
    :cond_8
    :goto_8
    return-void
.end method

.method public setFraction(I)V
    .locals 0

    .line 1
    .line 2
    if-gtz p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iput p1, p0, Lcom/narvii/post/entry/PostEntrySnakeLayout;->fraction:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9
    return-void
.end method
