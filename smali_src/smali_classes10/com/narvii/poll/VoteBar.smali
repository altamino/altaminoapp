.class public Lcom/narvii/poll/VoteBar;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static fmt:Ljava/text/DecimalFormat;


# instance fields
.field colorEnd:I

.field colorGray:I

.field colorStart:I

.field colorVotedEnd:I

.field colorVotedStart:I

.field cornerRadius:F

.field end:J

.field gradientDelegate:Lcom/narvii/widget/shader/LinearGradientDelegate;

.field gradientDelegateVoted:Lcom/narvii/widget/shader/LinearGradientDelegate;

.field interp:Landroid/view/animation/Interpolator;

.field p:F

.field paint:Landroid/graphics/Paint;

.field rectf:Landroid/graphics/RectF;

.field start:J

.field valueView:Landroid/widget/TextView;

.field voted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/text/DecimalFormat;

    .line 3
    .line 4
    const-string v1, "0.#"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    sput-object v0, Lcom/narvii/poll/VoteBar;->fmt:Ljava/text/DecimalFormat;

    .line 10
    .line 11
    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    sget v0, Lcom/narvii/lib/R$color;->poll_vote_btn_start_color:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 17
    move-result p2

    .line 18
    .line 19
    iput p2, p0, Lcom/narvii/poll/VoteBar;->colorStart:I

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    sget v0, Lcom/narvii/lib/R$color;->poll_vote_btn_end_color:I

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 29
    move-result p2

    .line 30
    .line 31
    iput p2, p0, Lcom/narvii/poll/VoteBar;->colorEnd:I

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 35
    move-result-object p2

    .line 36
    .line 37
    sget v0, Lcom/narvii/lib/R$color;->poll_vote_btn_voted_start_color:I

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 41
    move-result p2

    .line 42
    .line 43
    iput p2, p0, Lcom/narvii/poll/VoteBar;->colorVotedStart:I

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    move-result-object p2

    .line 48
    .line 49
    sget v0, Lcom/narvii/lib/R$color;->poll_vote_btn_voted_end_color:I

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 53
    move-result p2

    .line 54
    .line 55
    iput p2, p0, Lcom/narvii/poll/VoteBar;->colorVotedEnd:I

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 59
    move-result-object p2

    .line 60
    .line 61
    sget v0, Lcom/narvii/lib/R$color;->poll_vote_gray_color:I

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 65
    move-result p2

    .line 66
    .line 67
    iput p2, p0, Lcom/narvii/poll/VoteBar;->colorGray:I

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    sget p2, Lcom/narvii/lib/R$dimen;->push_button_corner_radius:I

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 77
    move-result p1

    .line 78
    .line 79
    iput p1, p0, Lcom/narvii/poll/VoteBar;->cornerRadius:F

    .line 80
    .line 81
    new-instance p1, Landroid/graphics/RectF;

    .line 82
    .line 83
    .line 84
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 85
    .line 86
    iput-object p1, p0, Lcom/narvii/poll/VoteBar;->rectf:Landroid/graphics/RectF;

    .line 87
    .line 88
    new-instance p1, Landroid/graphics/Paint;

    .line 89
    .line 90
    .line 91
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 92
    .line 93
    iput-object p1, p0, Lcom/narvii/poll/VoteBar;->paint:Landroid/graphics/Paint;

    .line 94
    const/4 p2, 0x1

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 98
    .line 99
    iget-object p1, p0, Lcom/narvii/poll/VoteBar;->paint:Landroid/graphics/Paint;

    .line 100
    .line 101
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 105
    .line 106
    iget-object p1, p0, Lcom/narvii/poll/VoteBar;->paint:Landroid/graphics/Paint;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 110
    .line 111
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    .line 112
    .line 113
    .line 114
    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 115
    .line 116
    iput-object p1, p0, Lcom/narvii/poll/VoteBar;->interp:Landroid/view/animation/Interpolator;

    .line 117
    .line 118
    new-instance p1, Lcom/narvii/widget/shader/LinearGradientDelegate;

    .line 119
    .line 120
    .line 121
    invoke-direct {p1}, Lcom/narvii/widget/shader/LinearGradientDelegate;-><init>()V

    .line 122
    .line 123
    iput-object p1, p0, Lcom/narvii/poll/VoteBar;->gradientDelegate:Lcom/narvii/widget/shader/LinearGradientDelegate;

    .line 124
    .line 125
    new-instance p1, Lcom/narvii/widget/shader/LinearGradientDelegate;

    .line 126
    .line 127
    .line 128
    invoke-direct {p1}, Lcom/narvii/widget/shader/LinearGradientDelegate;-><init>()V

    .line 129
    .line 130
    iput-object p1, p0, Lcom/narvii/poll/VoteBar;->gradientDelegateVoted:Lcom/narvii/widget/shader/LinearGradientDelegate;

    .line 131
    return-void
.end method

.method private percentText(F)Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    sget-object v1, Lcom/narvii/poll/VoteBar;->fmt:Ljava/text/DecimalFormat;

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    cmpl-float v3, p1, v2

    .line 11
    .line 12
    if-lez v3, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move p1, v2

    .line 15
    .line 16
    :goto_0
    const/high16 v2, 0x42c80000    # 100.0f

    .line 17
    mul-float/2addr p1, v2

    .line 18
    float-to-double v2, p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string p1, "%"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/poll/VoteBar;->rectf:Landroid/graphics/RectF;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 9
    move-result v1

    .line 10
    int-to-float v1, v1

    .line 11
    .line 12
    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/poll/VoteBar;->rectf:Landroid/graphics/RectF;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 18
    move-result v1

    .line 19
    int-to-float v1, v1

    .line 20
    .line 21
    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/poll/VoteBar;->rectf:Landroid/graphics/RectF;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 27
    move-result v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 31
    move-result v2

    .line 32
    sub-int/2addr v1, v2

    .line 33
    int-to-float v1, v1

    .line 34
    .line 35
    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/poll/VoteBar;->rectf:Landroid/graphics/RectF;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 41
    move-result v1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 45
    move-result v2

    .line 46
    sub-int/2addr v1, v2

    .line 47
    int-to-float v1, v1

    .line 48
    .line 49
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/poll/VoteBar;->paint:Landroid/graphics/Paint;

    .line 52
    .line 53
    iget v1, p0, Lcom/narvii/poll/VoteBar;->colorGray:I

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    .line 58
    iget-object v0, p0, Lcom/narvii/poll/VoteBar;->paint:Landroid/graphics/Paint;

    .line 59
    const/4 v1, 0x0

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 63
    .line 64
    iget-object v0, p0, Lcom/narvii/poll/VoteBar;->rectf:Landroid/graphics/RectF;

    .line 65
    .line 66
    iget v1, p0, Lcom/narvii/poll/VoteBar;->cornerRadius:F

    .line 67
    .line 68
    iget-object v2, p0, Lcom/narvii/poll/VoteBar;->paint:Landroid/graphics/Paint;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 75
    move-result v0

    .line 76
    .line 77
    iget-wide v1, p0, Lcom/narvii/poll/VoteBar;->start:J

    .line 78
    .line 79
    const-wide/16 v3, 0x0

    .line 80
    .line 81
    cmp-long v1, v1, v3

    .line 82
    .line 83
    const/high16 v2, 0x3f800000    # 1.0f

    .line 84
    .line 85
    if-eqz v1, :cond_1

    .line 86
    .line 87
    .line 88
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 89
    move-result-wide v5

    .line 90
    .line 91
    iget-wide v7, p0, Lcom/narvii/poll/VoteBar;->end:J

    .line 92
    .line 93
    cmp-long v1, v5, v7

    .line 94
    .line 95
    if-gez v1, :cond_0

    .line 96
    .line 97
    iget-wide v3, p0, Lcom/narvii/poll/VoteBar;->start:J

    .line 98
    sub-long/2addr v5, v3

    .line 99
    long-to-float v1, v5

    .line 100
    mul-float/2addr v1, v2

    .line 101
    sub-long/2addr v7, v3

    .line 102
    long-to-float v3, v7

    .line 103
    div-float/2addr v1, v3

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 107
    goto :goto_0

    .line 108
    .line 109
    :cond_0
    iput-wide v3, p0, Lcom/narvii/poll/VoteBar;->end:J

    .line 110
    .line 111
    iput-wide v3, p0, Lcom/narvii/poll/VoteBar;->start:J

    .line 112
    .line 113
    iget-object v1, p0, Lcom/narvii/poll/VoteBar;->valueView:Landroid/widget/TextView;

    .line 114
    .line 115
    if-eqz v1, :cond_1

    .line 116
    const/4 v3, 0x0

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 120
    .line 121
    iget-object v1, p0, Lcom/narvii/poll/VoteBar;->valueView:Landroid/widget/TextView;

    .line 122
    .line 123
    iget v3, p0, Lcom/narvii/poll/VoteBar;->p:F

    .line 124
    .line 125
    .line 126
    invoke-direct {p0, v3}, Lcom/narvii/poll/VoteBar;->percentText(F)Ljava/lang/String;

    .line 127
    move-result-object v3

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    .line 132
    iget-object v1, p0, Lcom/narvii/poll/VoteBar;->valueView:Landroid/widget/TextView;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 136
    move-result-object v3

    .line 137
    .line 138
    sget v4, Lcom/narvii/lib/R$anim;->fade_in:I

    .line 139
    .line 140
    .line 141
    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 142
    move-result-object v3

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 146
    :cond_1
    move v1, v2

    .line 147
    .line 148
    :goto_0
    iget-object v3, p0, Lcom/narvii/poll/VoteBar;->interp:Landroid/view/animation/Interpolator;

    .line 149
    .line 150
    .line 151
    invoke-interface {v3, v1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 152
    move-result v1

    .line 153
    .line 154
    .line 155
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 156
    move-result v3

    .line 157
    .line 158
    if-eqz v3, :cond_2

    .line 159
    .line 160
    iget-object v3, p0, Lcom/narvii/poll/VoteBar;->rectf:Landroid/graphics/RectF;

    .line 161
    .line 162
    iget v4, v3, Landroid/graphics/RectF;->left:F

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 166
    move-result v3

    .line 167
    .line 168
    iget v5, p0, Lcom/narvii/poll/VoteBar;->p:F

    .line 169
    mul-float/2addr v1, v5

    .line 170
    .line 171
    sub-float v1, v2, v1

    .line 172
    mul-float/2addr v3, v1

    .line 173
    add-float/2addr v4, v3

    .line 174
    .line 175
    iget-object v1, p0, Lcom/narvii/poll/VoteBar;->rectf:Landroid/graphics/RectF;

    .line 176
    .line 177
    iget v3, v1, Landroid/graphics/RectF;->top:F

    .line 178
    .line 179
    iget v5, v1, Landroid/graphics/RectF;->right:F

    .line 180
    .line 181
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, v4, v3, v5, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 185
    goto :goto_1

    .line 186
    .line 187
    :cond_2
    iget-object v3, p0, Lcom/narvii/poll/VoteBar;->rectf:Landroid/graphics/RectF;

    .line 188
    .line 189
    iget v4, v3, Landroid/graphics/RectF;->left:F

    .line 190
    .line 191
    iget v5, v3, Landroid/graphics/RectF;->top:F

    .line 192
    .line 193
    .line 194
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 195
    move-result v3

    .line 196
    mul-float/2addr v3, v1

    .line 197
    .line 198
    iget v1, p0, Lcom/narvii/poll/VoteBar;->p:F

    .line 199
    mul-float/2addr v3, v1

    .line 200
    add-float/2addr v3, v4

    .line 201
    .line 202
    iget-object v1, p0, Lcom/narvii/poll/VoteBar;->rectf:Landroid/graphics/RectF;

    .line 203
    .line 204
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, v4, v5, v3, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 208
    .line 209
    :goto_1
    iget-object v1, p0, Lcom/narvii/poll/VoteBar;->paint:Landroid/graphics/Paint;

    .line 210
    const/4 v3, -0x1

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 214
    .line 215
    iget-boolean v1, p0, Lcom/narvii/poll/VoteBar;->voted:Z

    .line 216
    .line 217
    if-eqz v1, :cond_3

    .line 218
    .line 219
    iget-object v3, p0, Lcom/narvii/poll/VoteBar;->gradientDelegateVoted:Lcom/narvii/widget/shader/LinearGradientDelegate;

    .line 220
    const/4 v4, 0x0

    .line 221
    const/4 v5, 0x0

    .line 222
    const/4 v6, 0x0

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 226
    move-result v1

    .line 227
    int-to-float v1, v1

    .line 228
    .line 229
    mul-float v7, v1, v2

    .line 230
    .line 231
    iget v8, p0, Lcom/narvii/poll/VoteBar;->colorVotedStart:I

    .line 232
    .line 233
    iget v9, p0, Lcom/narvii/poll/VoteBar;->colorVotedEnd:I

    .line 234
    .line 235
    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 236
    .line 237
    .line 238
    invoke-virtual/range {v3 .. v10}, Lcom/narvii/widget/shader/LinearGradientDelegate;->setShade(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 239
    .line 240
    iget-object v1, p0, Lcom/narvii/poll/VoteBar;->paint:Landroid/graphics/Paint;

    .line 241
    .line 242
    iget-object v2, p0, Lcom/narvii/poll/VoteBar;->gradientDelegateVoted:Lcom/narvii/widget/shader/LinearGradientDelegate;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v2}, Lcom/narvii/widget/shader/LinearGradientDelegate;->getShade()Landroid/graphics/LinearGradient;

    .line 246
    move-result-object v2

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 250
    goto :goto_2

    .line 251
    .line 252
    :cond_3
    iget-object v3, p0, Lcom/narvii/poll/VoteBar;->gradientDelegateVoted:Lcom/narvii/widget/shader/LinearGradientDelegate;

    .line 253
    const/4 v4, 0x0

    .line 254
    const/4 v5, 0x0

    .line 255
    const/4 v6, 0x0

    .line 256
    .line 257
    .line 258
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 259
    move-result v1

    .line 260
    int-to-float v1, v1

    .line 261
    .line 262
    mul-float v7, v1, v2

    .line 263
    .line 264
    iget v8, p0, Lcom/narvii/poll/VoteBar;->colorStart:I

    .line 265
    .line 266
    iget v9, p0, Lcom/narvii/poll/VoteBar;->colorEnd:I

    .line 267
    .line 268
    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 269
    .line 270
    .line 271
    invoke-virtual/range {v3 .. v10}, Lcom/narvii/widget/shader/LinearGradientDelegate;->setShade(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 272
    .line 273
    iget-object v1, p0, Lcom/narvii/poll/VoteBar;->paint:Landroid/graphics/Paint;

    .line 274
    .line 275
    iget-object v2, p0, Lcom/narvii/poll/VoteBar;->gradientDelegateVoted:Lcom/narvii/widget/shader/LinearGradientDelegate;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v2}, Lcom/narvii/widget/shader/LinearGradientDelegate;->getShade()Landroid/graphics/LinearGradient;

    .line 279
    move-result-object v2

    .line 280
    .line 281
    .line 282
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 283
    .line 284
    :goto_2
    iget-object v1, p0, Lcom/narvii/poll/VoteBar;->rectf:Landroid/graphics/RectF;

    .line 285
    .line 286
    iget v2, p0, Lcom/narvii/poll/VoteBar;->cornerRadius:F

    .line 287
    .line 288
    iget-object v3, p0, Lcom/narvii/poll/VoteBar;->paint:Landroid/graphics/Paint;

    .line 289
    .line 290
    .line 291
    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 295
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    sget v0, Lcom/narvii/lib/R$id;->vote_bar_value:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/poll/VoteBar;->valueView:Landroid/widget/TextView;

    .line 14
    return-void
.end method

.method public setValue(ZFJ)V
    .locals 1

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/poll/VoteBar;->voted:Z

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/poll/VoteBar;->p:F

    .line 5
    .line 6
    const-wide/16 p1, 0x0

    .line 7
    .line 8
    cmp-long v0, p3, p1

    .line 9
    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 14
    move-result-wide p1

    .line 15
    .line 16
    iput-wide p1, p0, Lcom/narvii/poll/VoteBar;->start:J

    .line 17
    add-long/2addr p1, p3

    .line 18
    .line 19
    iput-wide p1, p0, Lcom/narvii/poll/VoteBar;->end:J

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/poll/VoteBar;->valueView:Landroid/widget/TextView;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/poll/VoteBar;->valueView:Landroid/widget/TextView;

    .line 29
    const/4 p2, 0x4

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_0
    iput-wide p1, p0, Lcom/narvii/poll/VoteBar;->end:J

    .line 36
    .line 37
    iput-wide p1, p0, Lcom/narvii/poll/VoteBar;->start:J

    .line 38
    .line 39
    iget-object p1, p0, Lcom/narvii/poll/VoteBar;->valueView:Landroid/widget/TextView;

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 45
    .line 46
    iget-object p1, p0, Lcom/narvii/poll/VoteBar;->valueView:Landroid/widget/TextView;

    .line 47
    const/4 p2, 0x0

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    iget-object p1, p0, Lcom/narvii/poll/VoteBar;->valueView:Landroid/widget/TextView;

    .line 53
    .line 54
    iget p2, p0, Lcom/narvii/poll/VoteBar;->p:F

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, p2}, Lcom/narvii/poll/VoteBar;->percentText(F)Ljava/lang/String;

    .line 58
    move-result-object p2

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 65
    return-void
.end method
