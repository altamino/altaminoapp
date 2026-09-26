.class public Lcom/narvii/widget/VoteButton;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private addScale:F

.field private anim:I

.field private color:I

.field private decreaseTime:I

.field drakTheme:Z

.field private increaseTime:I

.field private itp:Landroid/view/animation/DecelerateInterpolator;

.field private itpScale:Landroid/view/animation/DecelerateInterpolator;

.field private maxScale:F

.field private paint:Landroid/graphics/Paint;

.field private prevTime:J

.field private progress:F

.field final strokePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/widget/VoteButton;->progress:F

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    iput v1, p0, Lcom/narvii/widget/VoteButton;->anim:I

    .line 10
    .line 11
    iput v0, p0, Lcom/narvii/widget/VoteButton;->addScale:F

    .line 12
    .line 13
    sget-object v0, Lcom/narvii/lib/R$styleable;->VoteButton:[I

    .line 14
    .line 15
    sget v2, Lcom/narvii/lib/R$style;->VoteButton:I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    sget p2, Lcom/narvii/lib/R$styleable;->VoteButton_voteColor:I

    .line 22
    .line 23
    .line 24
    const v0, -0xea9438

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 28
    move-result p2

    .line 29
    .line 30
    iput p2, p0, Lcom/narvii/widget/VoteButton;->color:I

    .line 31
    .line 32
    sget p2, Lcom/narvii/lib/R$styleable;->VoteButton_maxScale:I

    .line 33
    .line 34
    const/high16 v0, 0x3f800000    # 1.0f

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 38
    move-result p2

    .line 39
    .line 40
    iput p2, p0, Lcom/narvii/widget/VoteButton;->maxScale:F

    .line 41
    .line 42
    sget p2, Lcom/narvii/lib/R$styleable;->VoteButton_increaseTime:I

    .line 43
    .line 44
    const/16 v0, 0x190

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 48
    move-result p2

    .line 49
    .line 50
    iput p2, p0, Lcom/narvii/widget/VoteButton;->increaseTime:I

    .line 51
    .line 52
    sget p2, Lcom/narvii/lib/R$styleable;->VoteButton_decreaseTime:I

    .line 53
    .line 54
    const/16 v0, 0x12c

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 58
    move-result p2

    .line 59
    .line 60
    iput p2, p0, Lcom/narvii/widget/VoteButton;->decreaseTime:I

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 67
    .line 68
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    .line 69
    .line 70
    .line 71
    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 72
    .line 73
    iput-object p1, p0, Lcom/narvii/widget/VoteButton;->itp:Landroid/view/animation/DecelerateInterpolator;

    .line 74
    .line 75
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    .line 76
    .line 77
    .line 78
    const p2, 0x3fcccccd    # 1.6f

    .line 79
    .line 80
    .line 81
    invoke-direct {p1, p2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 82
    .line 83
    iput-object p1, p0, Lcom/narvii/widget/VoteButton;->itpScale:Landroid/view/animation/DecelerateInterpolator;

    .line 84
    .line 85
    new-instance p1, Landroid/graphics/Paint;

    .line 86
    .line 87
    .line 88
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 89
    .line 90
    iput-object p1, p0, Lcom/narvii/widget/VoteButton;->paint:Landroid/graphics/Paint;

    .line 91
    const/4 p2, 0x1

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 95
    .line 96
    iget-object p1, p0, Lcom/narvii/widget/VoteButton;->paint:Landroid/graphics/Paint;

    .line 97
    .line 98
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 102
    .line 103
    new-instance p1, Landroid/graphics/Paint;

    .line 104
    .line 105
    .line 106
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 107
    .line 108
    iput-object p1, p0, Lcom/narvii/widget/VoteButton;->strokePaint:Landroid/graphics/Paint;

    .line 109
    .line 110
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 117
    move-result-object v0

    .line 118
    .line 119
    const/high16 v1, 0x40400000    # 3.0f

    .line 120
    .line 121
    .line 122
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 123
    move-result v0

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 127
    const/4 v0, -0x1

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 134
    return-void
.end method

.method public static calculateHoldDuration(I)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    .line 5
    move-result p0

    .line 6
    const/4 v0, 0x6

    .line 7
    .line 8
    if-gt p0, v0, :cond_0

    .line 9
    .line 10
    mul-int/lit16 p0, p0, 0x44c

    .line 11
    div-int/2addr p0, v0

    .line 12
    .line 13
    add-int/lit16 p0, p0, 0x190

    .line 14
    return p0

    .line 15
    .line 16
    :cond_0
    const/16 v1, 0x32

    .line 17
    .line 18
    if-gt p0, v1, :cond_1

    .line 19
    sub-int/2addr p0, v0

    .line 20
    .line 21
    mul-int/lit16 p0, p0, 0x640

    .line 22
    .line 23
    div-int/lit8 p0, p0, 0x2c

    .line 24
    .line 25
    add-int/lit16 p0, p0, 0x5dc

    .line 26
    return p0

    .line 27
    .line 28
    :cond_1
    const/16 v0, 0x5a

    .line 29
    .line 30
    if-gt p0, v0, :cond_2

    .line 31
    sub-int/2addr p0, v1

    .line 32
    .line 33
    mul-int/lit16 p0, p0, 0x1a90

    .line 34
    .line 35
    div-int/lit8 p0, p0, 0x28

    .line 36
    .line 37
    add-int/lit16 p0, p0, 0xc1c

    .line 38
    return p0

    .line 39
    .line 40
    :cond_2
    const/16 p0, 0x26ac

    .line 41
    return p0
.end method

.method private holdLonger()V
    .locals 4

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$id;->vote_hold_longer:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    sget v2, Lcom/narvii/lib/R$layout;->vote_hold_longer_hint:I

    .line 19
    const/4 v3, 0x1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object v1

    .line 27
    const/4 v0, 0x4

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    sget v2, Lcom/narvii/lib/R$anim;->vote_hold_longer_shake:I

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 7
    move-result-wide v0

    .line 8
    .line 9
    iget-wide v2, p0, Lcom/narvii/widget/VoteButton;->prevTime:J

    .line 10
    .line 11
    sub-long v2, v0, v2

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/narvii/widget/VoteButton;->prevTime:J

    .line 14
    .line 15
    iget v0, p0, Lcom/narvii/widget/VoteButton;->progress:F

    .line 16
    .line 17
    const/high16 v1, 0x3f800000    # 1.0f

    .line 18
    .line 19
    cmpl-float v0, v0, v1

    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v5, 0x0

    .line 22
    .line 23
    if-ltz v0, :cond_0

    .line 24
    .line 25
    iput v4, p0, Lcom/narvii/widget/VoteButton;->progress:F

    .line 26
    .line 27
    iput v5, p0, Lcom/narvii/widget/VoteButton;->anim:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    .line 31
    .line 32
    :cond_0
    iget v0, p0, Lcom/narvii/widget/VoteButton;->progress:F

    .line 33
    .line 34
    cmpg-float v0, v0, v4

    .line 35
    .line 36
    if-gez v0, :cond_1

    .line 37
    .line 38
    iput v4, p0, Lcom/narvii/widget/VoteButton;->progress:F

    .line 39
    .line 40
    iput v5, p0, Lcom/narvii/widget/VoteButton;->anim:I

    .line 41
    .line 42
    :cond_1
    iget v0, p0, Lcom/narvii/widget/VoteButton;->anim:I

    .line 43
    const/4 v6, 0x1

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    if-lez v0, :cond_2

    .line 48
    .line 49
    iget v7, p0, Lcom/narvii/widget/VoteButton;->increaseTime:I

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_2
    iget v7, p0, Lcom/narvii/widget/VoteButton;->decreaseTime:I

    .line 53
    .line 54
    :goto_0
    iget v8, p0, Lcom/narvii/widget/VoteButton;->progress:F

    .line 55
    int-to-float v9, v0

    .line 56
    mul-float/2addr v9, v1

    .line 57
    long-to-float v10, v2

    .line 58
    mul-float/2addr v9, v10

    .line 59
    int-to-float v7, v7

    .line 60
    div-float/2addr v9, v7

    .line 61
    add-float/2addr v8, v9

    .line 62
    .line 63
    iput v8, p0, Lcom/narvii/widget/VoteButton;->progress:F

    .line 64
    move v7, v6

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    move v7, v5

    .line 67
    .line 68
    :goto_1
    iget v8, p0, Lcom/narvii/widget/VoteButton;->progress:F

    .line 69
    .line 70
    cmpl-float v9, v8, v4

    .line 71
    .line 72
    if-lez v9, :cond_4

    .line 73
    .line 74
    if-lez v0, :cond_4

    .line 75
    .line 76
    cmpg-float v0, v8, v1

    .line 77
    .line 78
    if-gez v0, :cond_6

    .line 79
    .line 80
    iget v0, p0, Lcom/narvii/widget/VoteButton;->addScale:F

    .line 81
    .line 82
    iget-object v2, p0, Lcom/narvii/widget/VoteButton;->itpScale:Landroid/view/animation/DecelerateInterpolator;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v8}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    .line 86
    move-result v2

    .line 87
    .line 88
    iget v3, p0, Lcom/narvii/widget/VoteButton;->maxScale:F

    .line 89
    sub-float/2addr v3, v1

    .line 90
    mul-float/2addr v2, v3

    .line 91
    add-float/2addr v0, v2

    .line 92
    .line 93
    const/high16 v2, 0x40000000    # 2.0f

    .line 94
    div-float/2addr v0, v2

    .line 95
    .line 96
    iput v0, p0, Lcom/narvii/widget/VoteButton;->addScale:F

    .line 97
    goto :goto_2

    .line 98
    .line 99
    :cond_4
    iget v0, p0, Lcom/narvii/widget/VoteButton;->addScale:F

    .line 100
    .line 101
    cmpl-float v8, v0, v4

    .line 102
    .line 103
    if-lez v8, :cond_6

    .line 104
    .line 105
    iget v8, p0, Lcom/narvii/widget/VoteButton;->maxScale:F

    .line 106
    sub-float/2addr v8, v1

    .line 107
    long-to-float v2, v2

    .line 108
    mul-float/2addr v8, v2

    .line 109
    .line 110
    iget v2, p0, Lcom/narvii/widget/VoteButton;->decreaseTime:I

    .line 111
    int-to-float v2, v2

    .line 112
    div-float/2addr v8, v2

    .line 113
    .line 114
    const/high16 v2, 0x40400000    # 3.0f

    .line 115
    mul-float/2addr v8, v2

    .line 116
    sub-float/2addr v0, v8

    .line 117
    .line 118
    iput v0, p0, Lcom/narvii/widget/VoteButton;->addScale:F

    .line 119
    .line 120
    cmpg-float v2, v0, v4

    .line 121
    .line 122
    if-gez v2, :cond_5

    .line 123
    move v0, v4

    .line 124
    .line 125
    :cond_5
    iput v0, p0, Lcom/narvii/widget/VoteButton;->addScale:F

    .line 126
    .line 127
    :cond_6
    :goto_2
    iget v0, p0, Lcom/narvii/widget/VoteButton;->addScale:F

    .line 128
    .line 129
    cmpl-float v2, v0, v4

    .line 130
    .line 131
    if-lez v2, :cond_7

    .line 132
    .line 133
    add-float v2, v0, v1

    .line 134
    add-float/2addr v0, v1

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 138
    move-result v3

    .line 139
    .line 140
    div-int/lit8 v3, v3, 0x2

    .line 141
    int-to-float v3, v3

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 145
    move-result v7

    .line 146
    .line 147
    div-int/lit8 v7, v7, 0x2

    .line 148
    int-to-float v7, v7

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v2, v0, v3, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 152
    goto :goto_3

    .line 153
    :cond_7
    move v6, v7

    .line 154
    .line 155
    :goto_3
    iget-object v0, p0, Lcom/narvii/widget/VoteButton;->paint:Landroid/graphics/Paint;

    .line 156
    .line 157
    iget v2, p0, Lcom/narvii/widget/VoteButton;->color:I

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 164
    move-result v0

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 168
    move-result v2

    .line 169
    sub-int/2addr v0, v2

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 173
    move-result v2

    .line 174
    sub-int/2addr v0, v2

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 178
    move-result v2

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 182
    move-result v3

    .line 183
    sub-int/2addr v2, v3

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 187
    move-result v3

    .line 188
    sub-int/2addr v2, v3

    .line 189
    .line 190
    .line 191
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 192
    move-result v3

    .line 193
    .line 194
    div-int/lit8 v3, v3, 0x2

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 198
    move-result v7

    .line 199
    .line 200
    div-int/lit8 v0, v0, 0x2

    .line 201
    add-int/2addr v7, v0

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 205
    move-result v0

    .line 206
    .line 207
    div-int/lit8 v8, v2, 0x2

    .line 208
    add-int/2addr v0, v8

    .line 209
    int-to-float v7, v7

    .line 210
    int-to-float v0, v0

    .line 211
    int-to-float v3, v3

    .line 212
    .line 213
    iget-object v8, p0, Lcom/narvii/widget/VoteButton;->paint:Landroid/graphics/Paint;

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1, v7, v0, v3, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 217
    .line 218
    iget-boolean v8, p0, Lcom/narvii/widget/VoteButton;->drakTheme:Z

    .line 219
    .line 220
    if-eqz v8, :cond_8

    .line 221
    .line 222
    iget-object v8, p0, Lcom/narvii/widget/VoteButton;->strokePaint:Landroid/graphics/Paint;

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1, v7, v0, v3, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 226
    .line 227
    :cond_8
    iget v8, p0, Lcom/narvii/widget/VoteButton;->progress:F

    .line 228
    .line 229
    cmpl-float v4, v8, v4

    .line 230
    .line 231
    if-lez v4, :cond_9

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 238
    move-result v4

    .line 239
    int-to-float v2, v2

    .line 240
    .line 241
    iget-object v8, p0, Lcom/narvii/widget/VoteButton;->itp:Landroid/view/animation/DecelerateInterpolator;

    .line 242
    .line 243
    iget v9, p0, Lcom/narvii/widget/VoteButton;->progress:F

    .line 244
    .line 245
    .line 246
    invoke-virtual {v8, v9}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    .line 247
    move-result v8

    .line 248
    sub-float/2addr v1, v8

    .line 249
    mul-float/2addr v2, v1

    .line 250
    float-to-int v1, v2

    .line 251
    add-int/2addr v4, v1

    .line 252
    .line 253
    .line 254
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 255
    move-result v1

    .line 256
    .line 257
    .line 258
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 259
    move-result v2

    .line 260
    .line 261
    .line 262
    invoke-virtual {p1, v5, v4, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 263
    .line 264
    iget-object v1, p0, Lcom/narvii/widget/VoteButton;->paint:Landroid/graphics/Paint;

    .line 265
    .line 266
    const/high16 v2, 0x40000000    # 2.0f

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 270
    .line 271
    iget-object v1, p0, Lcom/narvii/widget/VoteButton;->paint:Landroid/graphics/Paint;

    .line 272
    .line 273
    .line 274
    invoke-virtual {p1, v7, v0, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 278
    .line 279
    :cond_9
    if-eqz v6, :cond_a

    .line 280
    .line 281
    .line 282
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 283
    :cond_a
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
    if-eq v0, v1, :cond_0

    .line 10
    const/4 v2, 0x3

    .line 11
    .line 12
    if-eq v0, v2, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    .line 19
    :cond_0
    iget p1, p0, Lcom/narvii/widget/VoteButton;->anim:I

    .line 20
    .line 21
    if-lez p1, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/narvii/widget/VoteButton;->holdLonger()V

    .line 25
    :cond_1
    const/4 p1, -0x1

    .line 26
    .line 27
    iput p1, p0, Lcom/narvii/widget/VoteButton;->anim:I

    .line 28
    .line 29
    .line 30
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 31
    move-result-wide v2

    .line 32
    .line 33
    iput-wide v2, p0, Lcom/narvii/widget/VoteButton;->prevTime:J

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 37
    return v1

    .line 38
    .line 39
    :cond_2
    iput v1, p0, Lcom/narvii/widget/VoteButton;->anim:I

    .line 40
    .line 41
    .line 42
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 43
    move-result-wide v2

    .line 44
    .line 45
    iput-wide v2, p0, Lcom/narvii/widget/VoteButton;->prevTime:J

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 49
    return v1
.end method

.method public setDrakTheme(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/widget/VoteButton;->drakTheme:Z

    return-void
.end method

.method public setHoldDuration(I)V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x64

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 6
    move-result p1

    .line 7
    .line 8
    iput p1, p0, Lcom/narvii/widget/VoteButton;->increaseTime:I

    .line 9
    return-void
.end method

.method public setVoteColor(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/VoteButton;->color:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method
