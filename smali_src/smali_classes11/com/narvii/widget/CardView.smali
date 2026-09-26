.class public Lcom/narvii/widget/CardView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field private static COLOR_DISABLED:I

.field private static COLOR_GOLD:I

.field private static COLOR_WHITE:I

.field private static GOLD_STROKE_WIDTH_MAX:F

.field private static GOLD_STROKE_WIDTH_MAX_WIDTH:I

.field private static GOLD_STROKE_WIDTH_MIN:F

.field private static GOLD_STROKE_WIDTH_MIN_WIDTH:I


# instance fields
.field private cornerRadius:I

.field private dirty:Z

.field private fansOnlyIndicator:Landroid/view/View;

.field private image:Lcom/narvii/widget/NVImageView;

.field private final paint:Landroid/graphics/Paint;

.field private final rect:Landroid/graphics/RectF;

.field private shadowColor:I

.field private shadowConfig:Lcom/narvii/widget/shadow/ShadowConfig;

.field private shadowCornerRadius:F

.field private shadowOffsetX:I

.field private shadowOffsetY:I

.field private shadowSize:I

.field private strokeColor:I

.field private strokeWidth:F

.field private style:I

.field private title:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 p2, 0x1

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/narvii/widget/CardView;->dirty:Z

    .line 7
    .line 8
    new-instance v0, Landroid/graphics/Paint;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/widget/CardView;->paint:Landroid/graphics/Paint;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 17
    .line 18
    new-instance p2, Landroid/graphics/RectF;

    .line 19
    .line 20
    .line 21
    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 22
    .line 23
    iput-object p2, p0, Lcom/narvii/widget/CardView;->rect:Landroid/graphics/RectF;

    .line 24
    const/4 p2, 0x0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 31
    .line 32
    sget p2, Lcom/narvii/widget/CardView;->COLOR_WHITE:I

    .line 33
    .line 34
    if-nez p2, :cond_0

    .line 35
    const/4 p2, -0x1

    .line 36
    .line 37
    sput p2, Lcom/narvii/widget/CardView;->COLOR_WHITE:I

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    sget v0, Lcom/narvii/lib/R$color;->gold:I

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 47
    move-result p2

    .line 48
    .line 49
    sput p2, Lcom/narvii/widget/CardView;->COLOR_GOLD:I

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 53
    move-result-object p2

    .line 54
    .line 55
    sget v0, Lcom/narvii/lib/R$color;->disabled:I

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 59
    move-result p2

    .line 60
    .line 61
    sput p2, Lcom/narvii/widget/CardView;->COLOR_DISABLED:I

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 65
    move-result-object p2

    .line 66
    .line 67
    sget v0, Lcom/narvii/lib/R$dimen;->item_card_gold_stroke_min:I

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 71
    move-result p2

    .line 72
    .line 73
    sput p2, Lcom/narvii/widget/CardView;->GOLD_STROKE_WIDTH_MIN:F

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 77
    move-result-object p2

    .line 78
    .line 79
    sget v0, Lcom/narvii/lib/R$dimen;->item_card_gold_stroke_min_width:I

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 83
    move-result p2

    .line 84
    .line 85
    sput p2, Lcom/narvii/widget/CardView;->GOLD_STROKE_WIDTH_MIN_WIDTH:I

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 89
    move-result-object p2

    .line 90
    .line 91
    sget v0, Lcom/narvii/lib/R$dimen;->item_card_gold_stroke_max:I

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 95
    move-result p2

    .line 96
    .line 97
    sput p2, Lcom/narvii/widget/CardView;->GOLD_STROKE_WIDTH_MAX:F

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 101
    move-result-object p1

    .line 102
    .line 103
    sget p2, Lcom/narvii/lib/R$dimen;->item_card_gold_stroke_max_width:I

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 107
    move-result p1

    .line 108
    .line 109
    sput p1, Lcom/narvii/widget/CardView;->GOLD_STROKE_WIDTH_MAX_WIDTH:I

    .line 110
    :cond_0
    return-void
.end method

.method private buildShadowConfig()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/CardView;->shadowConfig:Lcom/narvii/widget/shadow/ShadowConfig;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/narvii/widget/shadow/ShadowConfig;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/narvii/widget/CardView;->rect:Landroid/graphics/RectF;

    .line 9
    .line 10
    iget v3, p0, Lcom/narvii/widget/CardView;->shadowCornerRadius:F

    .line 11
    .line 12
    iget v4, p0, Lcom/narvii/widget/CardView;->shadowSize:I

    .line 13
    .line 14
    iget v1, p0, Lcom/narvii/widget/CardView;->shadowOffsetX:I

    .line 15
    .line 16
    iget v5, p0, Lcom/narvii/widget/CardView;->shadowOffsetY:I

    .line 17
    .line 18
    .line 19
    filled-new-array {v1, v5}, [I

    .line 20
    move-result-object v5

    .line 21
    .line 22
    iget v6, p0, Lcom/narvii/widget/CardView;->shadowColor:I

    .line 23
    move-object v1, v0

    .line 24
    .line 25
    .line 26
    invoke-direct/range {v1 .. v6}, Lcom/narvii/widget/shadow/ShadowConfig;-><init>(Landroid/graphics/RectF;FI[II)V

    .line 27
    .line 28
    iput-object v0, p0, Lcom/narvii/widget/CardView;->shadowConfig:Lcom/narvii/widget/shadow/ShadowConfig;

    .line 29
    goto :goto_0

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/widget/shadow/ShadowConfig;->reset()V

    .line 33
    .line 34
    :goto_0
    iget-object v0, p0, Lcom/narvii/widget/CardView;->shadowConfig:Lcom/narvii/widget/shadow/ShadowConfig;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/narvii/widget/shadow/ShadowConfig;->prepareShadow()V

    .line 38
    return-void
.end method

.method private getColor()I
    .locals 2

    iget v0, p0, Lcom/narvii/widget/CardView;->style:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/narvii/widget/CardView;->COLOR_GOLD:I

    return v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget v0, Lcom/narvii/widget/CardView;->COLOR_DISABLED:I

    return v0

    :cond_1
    sget v0, Lcom/narvii/widget/CardView;->COLOR_WHITE:I

    return v0
.end method

.method private getPlaceholder()I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/CardView;->style:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sget v1, Lcom/narvii/lib/R$color;->item_card_placeholder_mask_black:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 15
    move-result v0

    .line 16
    return v0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    sget v1, Lcom/narvii/lib/R$color;->item_card_placeholder_mask_grey:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 26
    move-result v0

    .line 27
    return v0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/CardView;->image:Lcom/narvii/widget/NVImageView;

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/widget/CardView;->cornerRadius:I

    .line 5
    .line 6
    iget v2, p0, Lcom/narvii/widget/CardView;->strokeWidth:F

    .line 7
    const/4 v3, 0x0

    .line 8
    .line 9
    cmpl-float v4, v2, v3

    .line 10
    .line 11
    if-lez v4, :cond_0

    .line 12
    .line 13
    const/high16 v4, 0x3f800000    # 1.0f

    .line 14
    .line 15
    .line 16
    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    .line 17
    move-result v2

    .line 18
    float-to-int v2, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v2, 0x0

    .line 21
    :goto_0
    add-int/2addr v1, v2

    .line 22
    .line 23
    iput v1, v0, Lcom/narvii/widget/NVImageView;->cornerRadius:I

    .line 24
    .line 25
    iget v0, p0, Lcom/narvii/widget/CardView;->style:I

    .line 26
    .line 27
    if-lez v0, :cond_3

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 31
    move-result v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 35
    move-result v1

    .line 36
    sub-int/2addr v0, v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 40
    move-result v1

    .line 41
    sub-int/2addr v0, v1

    .line 42
    .line 43
    sget v1, Lcom/narvii/widget/CardView;->GOLD_STROKE_WIDTH_MIN_WIDTH:I

    .line 44
    .line 45
    if-ge v0, v1, :cond_1

    .line 46
    .line 47
    sget v0, Lcom/narvii/widget/CardView;->GOLD_STROKE_WIDTH_MIN:F

    .line 48
    goto :goto_1

    .line 49
    .line 50
    :cond_1
    sget v2, Lcom/narvii/widget/CardView;->GOLD_STROKE_WIDTH_MAX_WIDTH:I

    .line 51
    .line 52
    if-le v0, v2, :cond_2

    .line 53
    .line 54
    sget v0, Lcom/narvii/widget/CardView;->GOLD_STROKE_WIDTH_MAX:F

    .line 55
    goto :goto_1

    .line 56
    .line 57
    :cond_2
    sget v4, Lcom/narvii/widget/CardView;->GOLD_STROKE_WIDTH_MIN:F

    .line 58
    .line 59
    sget v5, Lcom/narvii/widget/CardView;->GOLD_STROKE_WIDTH_MAX:F

    .line 60
    sub-float/2addr v5, v4

    .line 61
    sub-int/2addr v0, v1

    .line 62
    int-to-float v0, v0

    .line 63
    mul-float/2addr v5, v0

    .line 64
    sub-int/2addr v2, v1

    .line 65
    int-to-float v0, v2

    .line 66
    div-float/2addr v5, v0

    .line 67
    .line 68
    add-float v0, v4, v5

    .line 69
    .line 70
    :goto_1
    iget-object v1, p0, Lcom/narvii/widget/CardView;->image:Lcom/narvii/widget/NVImageView;

    .line 71
    .line 72
    iget v2, p0, Lcom/narvii/widget/CardView;->cornerRadius:I

    .line 73
    float-to-int v4, v0

    .line 74
    add-int/2addr v2, v4

    .line 75
    .line 76
    iput v2, v1, Lcom/narvii/widget/NVImageView;->cornerRadius:I

    .line 77
    goto :goto_2

    .line 78
    :cond_3
    move v0, v3

    .line 79
    .line 80
    .line 81
    :goto_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 82
    .line 83
    iget v1, p0, Lcom/narvii/widget/CardView;->style:I

    .line 84
    .line 85
    if-lez v1, :cond_4

    .line 86
    .line 87
    iget-object v1, p0, Lcom/narvii/widget/CardView;->rect:Landroid/graphics/RectF;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 91
    move-result v2

    .line 92
    int-to-float v2, v2

    .line 93
    .line 94
    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 95
    .line 96
    iget-object v1, p0, Lcom/narvii/widget/CardView;->rect:Landroid/graphics/RectF;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 100
    move-result v2

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 104
    move-result v3

    .line 105
    sub-int/2addr v2, v3

    .line 106
    int-to-float v2, v2

    .line 107
    .line 108
    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 109
    .line 110
    iget-object v1, p0, Lcom/narvii/widget/CardView;->rect:Landroid/graphics/RectF;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 114
    move-result v2

    .line 115
    int-to-float v2, v2

    .line 116
    .line 117
    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 118
    .line 119
    iget-object v1, p0, Lcom/narvii/widget/CardView;->rect:Landroid/graphics/RectF;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 123
    move-result v2

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 127
    move-result v3

    .line 128
    sub-int/2addr v2, v3

    .line 129
    int-to-float v2, v2

    .line 130
    .line 131
    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 132
    .line 133
    iget-object v1, p0, Lcom/narvii/widget/CardView;->paint:Landroid/graphics/Paint;

    .line 134
    .line 135
    .line 136
    invoke-direct {p0}, Lcom/narvii/widget/CardView;->getColor()I

    .line 137
    move-result v2

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    .line 142
    iget-object v1, p0, Lcom/narvii/widget/CardView;->paint:Landroid/graphics/Paint;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 146
    .line 147
    iget-object v1, p0, Lcom/narvii/widget/CardView;->paint:Landroid/graphics/Paint;

    .line 148
    .line 149
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 153
    .line 154
    iget-object v1, p0, Lcom/narvii/widget/CardView;->rect:Landroid/graphics/RectF;

    .line 155
    .line 156
    const/high16 v2, 0x40000000    # 2.0f

    .line 157
    div-float/2addr v0, v2

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 161
    .line 162
    iget-object v0, p0, Lcom/narvii/widget/CardView;->rect:Landroid/graphics/RectF;

    .line 163
    .line 164
    iget v1, p0, Lcom/narvii/widget/CardView;->cornerRadius:I

    .line 165
    int-to-float v2, v1

    .line 166
    int-to-float v1, v1

    .line 167
    .line 168
    iget-object v3, p0, Lcom/narvii/widget/CardView;->paint:Landroid/graphics/Paint;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 172
    goto :goto_3

    .line 173
    .line 174
    :cond_4
    iget v0, p0, Lcom/narvii/widget/CardView;->strokeWidth:F

    .line 175
    .line 176
    cmpl-float v0, v0, v3

    .line 177
    .line 178
    if-lez v0, :cond_5

    .line 179
    .line 180
    iget-object v0, p0, Lcom/narvii/widget/CardView;->rect:Landroid/graphics/RectF;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 184
    move-result v1

    .line 185
    int-to-float v1, v1

    .line 186
    .line 187
    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 188
    .line 189
    iget-object v0, p0, Lcom/narvii/widget/CardView;->rect:Landroid/graphics/RectF;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 193
    move-result v1

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 197
    move-result v2

    .line 198
    sub-int/2addr v1, v2

    .line 199
    int-to-float v1, v1

    .line 200
    .line 201
    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 202
    .line 203
    iget-object v0, p0, Lcom/narvii/widget/CardView;->rect:Landroid/graphics/RectF;

    .line 204
    .line 205
    .line 206
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 207
    move-result v1

    .line 208
    int-to-float v1, v1

    .line 209
    .line 210
    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 211
    .line 212
    iget-object v0, p0, Lcom/narvii/widget/CardView;->rect:Landroid/graphics/RectF;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 216
    move-result v1

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 220
    move-result v2

    .line 221
    sub-int/2addr v1, v2

    .line 222
    int-to-float v1, v1

    .line 223
    .line 224
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 225
    .line 226
    iget-object v0, p0, Lcom/narvii/widget/CardView;->paint:Landroid/graphics/Paint;

    .line 227
    .line 228
    iget v1, p0, Lcom/narvii/widget/CardView;->strokeColor:I

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 232
    .line 233
    iget-object v0, p0, Lcom/narvii/widget/CardView;->paint:Landroid/graphics/Paint;

    .line 234
    .line 235
    iget v1, p0, Lcom/narvii/widget/CardView;->strokeWidth:F

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 239
    .line 240
    iget-object v0, p0, Lcom/narvii/widget/CardView;->paint:Landroid/graphics/Paint;

    .line 241
    .line 242
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 246
    .line 247
    iget-object v0, p0, Lcom/narvii/widget/CardView;->rect:Landroid/graphics/RectF;

    .line 248
    .line 249
    iget v1, p0, Lcom/narvii/widget/CardView;->cornerRadius:I

    .line 250
    int-to-float v2, v1

    .line 251
    int-to-float v1, v1

    .line 252
    .line 253
    iget-object v3, p0, Lcom/narvii/widget/CardView;->paint:Landroid/graphics/Paint;

    .line 254
    .line 255
    .line 256
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 257
    :cond_5
    :goto_3
    return-void
.end method

.method public findImage()Lcom/narvii/widget/NVImageView;
    .locals 2

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$id;->image:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    sget v1, Lcom/narvii/lib/R$string;->image_tag:I

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 27
    :cond_0
    return-object v0
.end method

.method public findText()Landroid/view/View;
    .locals 2

    .line 1
    .line 2
    sget v0, Lcom/narvii/lib/R$id;->title:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    sget v1, Lcom/narvii/lib/R$string;->title_tag:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 22
    move-result-object v0

    .line 23
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/widget/CardView;->rect:Landroid/graphics/RectF;

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
    iget-object v0, p0, Lcom/narvii/widget/CardView;->rect:Landroid/graphics/RectF;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 18
    move-result v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 22
    move-result v2

    .line 23
    sub-int/2addr v1, v2

    .line 24
    int-to-float v1, v1

    .line 25
    .line 26
    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/widget/CardView;->rect:Landroid/graphics/RectF;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 32
    move-result v1

    .line 33
    int-to-float v1, v1

    .line 34
    .line 35
    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/widget/CardView;->rect:Landroid/graphics/RectF;

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
    iget-object v0, p0, Lcom/narvii/widget/CardView;->rect:Landroid/graphics/RectF;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 55
    move-result v0

    .line 56
    float-to-int v0, v0

    .line 57
    .line 58
    iget-object v1, p0, Lcom/narvii/widget/CardView;->rect:Landroid/graphics/RectF;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 62
    move-result v1

    .line 63
    float-to-int v1, v1

    .line 64
    .line 65
    div-int/lit8 v0, v0, 0x2

    .line 66
    .line 67
    div-int/lit8 v1, v1, 0x2

    .line 68
    .line 69
    .line 70
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 71
    move-result v0

    .line 72
    .line 73
    iget v1, p0, Lcom/narvii/widget/CardView;->cornerRadius:I

    .line 74
    .line 75
    .line 76
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 77
    move-result v0

    .line 78
    int-to-float v0, v0

    .line 79
    .line 80
    iput v0, p0, Lcom/narvii/widget/CardView;->shadowCornerRadius:F

    .line 81
    .line 82
    iget v0, p0, Lcom/narvii/widget/CardView;->shadowSize:I

    .line 83
    .line 84
    if-lez v0, :cond_4

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 88
    move-result v0

    .line 89
    .line 90
    if-lez v0, :cond_4

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 94
    move-result v0

    .line 95
    .line 96
    if-lez v0, :cond_4

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 100
    move-result-object v0

    .line 101
    .line 102
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 103
    const/4 v1, -0x2

    .line 104
    .line 105
    if-eq v0, v1, :cond_0

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 109
    move-result-object v0

    .line 110
    .line 111
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 112
    .line 113
    if-ne v0, v1, :cond_1

    .line 114
    .line 115
    :cond_0
    const-string v0, "don\'t use shadow on not specified size view, may cause leak"

    .line 116
    .line 117
    .line 118
    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 119
    .line 120
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/CardView;->shadowConfig:Lcom/narvii/widget/shadow/ShadowConfig;

    .line 121
    .line 122
    if-eqz v0, :cond_2

    .line 123
    .line 124
    iget-boolean v0, p0, Lcom/narvii/widget/CardView;->dirty:Z

    .line 125
    .line 126
    if-eqz v0, :cond_3

    .line 127
    .line 128
    .line 129
    :cond_2
    invoke-direct {p0}, Lcom/narvii/widget/CardView;->buildShadowConfig()V

    .line 130
    const/4 v0, 0x0

    .line 131
    .line 132
    iput-boolean v0, p0, Lcom/narvii/widget/CardView;->dirty:Z

    .line 133
    .line 134
    :cond_3
    iget-object v0, p0, Lcom/narvii/widget/CardView;->shadowConfig:Lcom/narvii/widget/shadow/ShadowConfig;

    .line 135
    .line 136
    .line 137
    invoke-static {p1, v0}, Lcom/narvii/widget/shadow/ShadowHelper;->drawShadow(Landroid/graphics/Canvas;Lcom/narvii/widget/shadow/ShadowConfig;)V

    .line 138
    .line 139
    :cond_4
    iget-object v0, p0, Lcom/narvii/widget/CardView;->paint:Landroid/graphics/Paint;

    .line 140
    .line 141
    .line 142
    invoke-direct {p0}, Lcom/narvii/widget/CardView;->getColor()I

    .line 143
    move-result v1

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    .line 148
    iget-object v0, p0, Lcom/narvii/widget/CardView;->paint:Landroid/graphics/Paint;

    .line 149
    .line 150
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 154
    .line 155
    iget-object v0, p0, Lcom/narvii/widget/CardView;->rect:Landroid/graphics/RectF;

    .line 156
    .line 157
    iget v1, p0, Lcom/narvii/widget/CardView;->cornerRadius:I

    .line 158
    int-to-float v2, v1

    .line 159
    int-to-float v1, v1

    .line 160
    .line 161
    iget-object v3, p0, Lcom/narvii/widget/CardView;->paint:Landroid/graphics/Paint;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 165
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/widget/CardView;->findImage()Lcom/narvii/widget/NVImageView;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/widget/CardView;->image:Lcom/narvii/widget/NVImageView;

    .line 10
    .line 11
    iget v1, v0, Lcom/narvii/widget/NVImageView;->cornerRadius:I

    .line 12
    .line 13
    iput v1, p0, Lcom/narvii/widget/CardView;->cornerRadius:I

    .line 14
    .line 15
    const/16 v1, 0xc

    .line 16
    .line 17
    iput v1, v0, Lcom/narvii/widget/NVImageView;->cornerMask:I

    .line 18
    .line 19
    iget v1, v0, Lcom/narvii/widget/NVImageView;->strokeWidth:F

    .line 20
    .line 21
    iput v1, p0, Lcom/narvii/widget/CardView;->strokeWidth:F

    .line 22
    .line 23
    iget v1, v0, Lcom/narvii/widget/NVImageView;->strokeColor:I

    .line 24
    .line 25
    iput v1, p0, Lcom/narvii/widget/CardView;->strokeColor:I

    .line 26
    const/4 v1, 0x0

    .line 27
    .line 28
    iput v1, v0, Lcom/narvii/widget/NVImageView;->strokeWidth:F

    .line 29
    .line 30
    instance-of v2, v0, Lcom/narvii/widget/ThumbImageView;

    .line 31
    const/4 v3, 0x0

    .line 32
    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    check-cast v0, Lcom/narvii/widget/ThumbImageView;

    .line 36
    .line 37
    iget v2, v0, Lcom/narvii/widget/ThumbImageView;->shadowSize:I

    .line 38
    .line 39
    iput v2, p0, Lcom/narvii/widget/CardView;->shadowSize:I

    .line 40
    .line 41
    iget v2, v0, Lcom/narvii/widget/ThumbImageView;->shadowOffsetX:I

    .line 42
    .line 43
    iput v2, p0, Lcom/narvii/widget/CardView;->shadowOffsetX:I

    .line 44
    .line 45
    iget v2, v0, Lcom/narvii/widget/ThumbImageView;->shadowOffsetY:I

    .line 46
    .line 47
    iput v2, p0, Lcom/narvii/widget/CardView;->shadowOffsetY:I

    .line 48
    .line 49
    iget v2, v0, Lcom/narvii/widget/ThumbImageView;->shadowColor:I

    .line 50
    .line 51
    iput v2, p0, Lcom/narvii/widget/CardView;->shadowColor:I

    .line 52
    .line 53
    iput v3, v0, Lcom/narvii/widget/ThumbImageView;->shadowSize:I

    .line 54
    .line 55
    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/widget/CardView;->findText()Landroid/view/View;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    iput-object v0, p0, Lcom/narvii/widget/CardView;->title:Landroid/view/View;

    .line 60
    .line 61
    sget v0, Lcom/narvii/lib/R$id;->fans_only_content_indicator:I

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    iput-object v0, p0, Lcom/narvii/widget/CardView;->fansOnlyIndicator:Landroid/view/View;

    .line 68
    .line 69
    if-eqz v0, :cond_1

    .line 70
    .line 71
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 72
    .line 73
    .line 74
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 78
    move-result-object v2

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 82
    move-result-object v2

    .line 83
    .line 84
    sget v4, Lcom/narvii/lib/R$color;->influencer_primary_color:I

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 88
    move-result v2

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 92
    .line 93
    const/16 v2, 0x8

    .line 94
    .line 95
    new-array v2, v2, [F

    .line 96
    .line 97
    aput v1, v2, v3

    .line 98
    const/4 v3, 0x1

    .line 99
    .line 100
    aput v1, v2, v3

    .line 101
    .line 102
    iget v3, p0, Lcom/narvii/widget/CardView;->cornerRadius:I

    .line 103
    int-to-float v4, v3

    .line 104
    const/4 v5, 0x2

    .line 105
    .line 106
    aput v4, v2, v5

    .line 107
    const/4 v4, 0x3

    .line 108
    int-to-float v5, v3

    .line 109
    .line 110
    aput v5, v2, v4

    .line 111
    const/4 v4, 0x4

    .line 112
    .line 113
    aput v1, v2, v4

    .line 114
    const/4 v4, 0x5

    .line 115
    .line 116
    aput v1, v2, v4

    .line 117
    const/4 v1, 0x6

    .line 118
    int-to-float v4, v3

    .line 119
    .line 120
    aput v4, v2, v1

    .line 121
    const/4 v1, 0x7

    .line 122
    int-to-float v3, v3

    .line 123
    .line 124
    aput v3, v2, v1

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 128
    .line 129
    iget v1, p0, Lcom/narvii/widget/CardView;->cornerRadius:I

    .line 130
    int-to-float v1, v1

    .line 131
    .line 132
    .line 133
    const v2, 0x3eb33333    # 0.35f

    .line 134
    mul-float/2addr v1, v2

    .line 135
    .line 136
    .line 137
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 138
    move-result v1

    .line 139
    .line 140
    iget-object v2, p0, Lcom/narvii/widget/CardView;->fansOnlyIndicator:Landroid/view/View;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 144
    .line 145
    iget-object v1, p0, Lcom/narvii/widget/CardView;->fansOnlyIndicator:Landroid/view/View;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    const/4 p1, 0x1

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/narvii/widget/CardView;->dirty:Z

    .line 6
    sub-int/2addr p4, p2

    .line 7
    sub-int/2addr p5, p3

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 11
    move-result p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 15
    move-result p2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 19
    move-result p3

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 23
    move-result v0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/narvii/widget/CardView;->title:Landroid/view/View;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 29
    move-result v1

    .line 30
    .line 31
    iget-object v2, p0, Lcom/narvii/widget/CardView;->title:Landroid/view/View;

    .line 32
    sub-int/2addr p5, v0

    .line 33
    .line 34
    sub-int v0, p5, v1

    .line 35
    sub-int/2addr p4, p2

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, p1, v0, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 39
    .line 40
    iget-object p2, p0, Lcom/narvii/widget/CardView;->image:Lcom/narvii/widget/NVImageView;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, p1, p3, p4, v0}, Landroid/view/View;->layout(IIII)V

    .line 44
    .line 45
    iget-object p1, p0, Lcom/narvii/widget/CardView;->fansOnlyIndicator:Landroid/view/View;

    .line 46
    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 51
    move-result p1

    .line 52
    .line 53
    iget-object p2, p0, Lcom/narvii/widget/CardView;->fansOnlyIndicator:Landroid/view/View;

    .line 54
    .line 55
    sub-int p5, p4, p1

    .line 56
    add-int/2addr p1, p3

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, p5, p3, p4, p1}, Landroid/view/View;->layout(IIII)V

    .line 60
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 7
    move-result p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 11
    move-result p2

    .line 12
    sub-int/2addr p1, p2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 16
    move-result p2

    .line 17
    sub-int/2addr p1, p2

    .line 18
    .line 19
    iget-object p2, p0, Lcom/narvii/widget/CardView;->title:Landroid/view/View;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 26
    .line 27
    const/high16 v0, 0x40000000    # 2.0f

    .line 28
    .line 29
    if-lez p2, :cond_0

    .line 30
    .line 31
    iget-object p2, p0, Lcom/narvii/widget/CardView;->title:Landroid/view/View;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 35
    move-result-object p2

    .line 36
    .line 37
    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 38
    .line 39
    .line 40
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 41
    move-result p2

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 p2, 0x0

    .line 44
    .line 45
    .line 46
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 47
    move-result p2

    .line 48
    .line 49
    :goto_0
    iget-object v1, p0, Lcom/narvii/widget/CardView;->title:Landroid/view/View;

    .line 50
    .line 51
    .line 52
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 53
    move-result v2

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2, p2}, Landroid/view/View;->measure(II)V

    .line 57
    .line 58
    iget-object p2, p0, Lcom/narvii/widget/CardView;->fansOnlyIndicator:Landroid/view/View;

    .line 59
    .line 60
    if-eqz p2, :cond_1

    .line 61
    int-to-float p1, p1

    .line 62
    .line 63
    .line 64
    const p2, 0x3e4ccccd    # 0.2f

    .line 65
    mul-float/2addr p1, p2

    .line 66
    float-to-int p1, p1

    .line 67
    .line 68
    .line 69
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 70
    move-result p1

    .line 71
    .line 72
    iget-object p2, p0, Lcom/narvii/widget/CardView;->fansOnlyIndicator:Landroid/view/View;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p1, p1}, Landroid/view/View;->measure(II)V

    .line 76
    :cond_1
    return-void
.end method

.method public setItem(Lcom/narvii/model/Item;)V
    .locals 5

    .line 1
    .line 2
    const/16 v0, 0x8

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez p1, :cond_1

    .line 6
    .line 7
    iput v1, p0, Lcom/narvii/widget/CardView;->style:I

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/widget/CardView;->image:Lcom/narvii/widget/NVImageView;

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/widget/CardView;->title:Landroid/view/View;

    .line 16
    .line 17
    instance-of v2, p1, Landroid/widget/TextView;

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    check-cast p1, Landroid/widget/TextView;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/CardView;->fansOnlyIndicator:Landroid/view/View;

    .line 27
    .line 28
    if-eqz p1, :cond_7

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 32
    goto :goto_2

    .line 33
    .line 34
    :cond_1
    iget v2, p1, Lcom/narvii/model/Feed;->status:I

    .line 35
    .line 36
    const/16 v3, 0x9

    .line 37
    .line 38
    if-ne v2, v3, :cond_2

    .line 39
    const/4 v2, 0x2

    .line 40
    .line 41
    iput v2, p0, Lcom/narvii/widget/CardView;->style:I

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_2
    iget-object v2, p1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 45
    .line 46
    if-eqz v2, :cond_3

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/narvii/model/User;->isSystem()Z

    .line 50
    move-result v2

    .line 51
    .line 52
    if-eqz v2, :cond_3

    .line 53
    const/4 v2, 0x1

    .line 54
    .line 55
    iput v2, p0, Lcom/narvii/widget/CardView;->style:I

    .line 56
    goto :goto_0

    .line 57
    .line 58
    :cond_3
    iput v1, p0, Lcom/narvii/widget/CardView;->style:I

    .line 59
    .line 60
    .line 61
    :goto_0
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    .line 62
    move-result-object v2

    .line 63
    .line 64
    iget-object v3, p0, Lcom/narvii/widget/CardView;->image:Lcom/narvii/widget/NVImageView;

    .line 65
    .line 66
    instance-of v4, v3, Lcom/narvii/widget/SecretImageView;

    .line 67
    .line 68
    if-eqz v4, :cond_4

    .line 69
    .line 70
    check-cast v3, Lcom/narvii/widget/SecretImageView;

    .line 71
    .line 72
    iget-boolean v4, p1, Lcom/narvii/model/Feed;->needHidden:Z

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v2, v4}, Lcom/narvii/widget/SecretImageView;->setImageMedia(Lcom/narvii/model/Media;Z)Z

    .line 76
    goto :goto_1

    .line 77
    .line 78
    .line 79
    :cond_4
    invoke-virtual {v3, v2}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 80
    .line 81
    :goto_1
    iget-object v2, p0, Lcom/narvii/widget/CardView;->title:Landroid/view/View;

    .line 82
    .line 83
    instance-of v3, v2, Landroid/widget/TextView;

    .line 84
    .line 85
    if-eqz v3, :cond_5

    .line 86
    .line 87
    check-cast v2, Landroid/widget/TextView;

    .line 88
    .line 89
    iget-object v3, p1, Lcom/narvii/model/Item;->label:Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    :cond_5
    iget-object v2, p0, Lcom/narvii/widget/CardView;->image:Lcom/narvii/widget/NVImageView;

    .line 95
    .line 96
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 97
    .line 98
    .line 99
    invoke-direct {p0}, Lcom/narvii/widget/CardView;->getPlaceholder()I

    .line 100
    move-result v4

    .line 101
    .line 102
    .line 103
    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 104
    .line 105
    iput-object v3, v2, Lcom/narvii/widget/NVImageView;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 106
    .line 107
    iget-object v2, p0, Lcom/narvii/widget/CardView;->image:Lcom/narvii/widget/NVImageView;

    .line 108
    .line 109
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 110
    .line 111
    .line 112
    invoke-direct {p0}, Lcom/narvii/widget/CardView;->getPlaceholder()I

    .line 113
    move-result v4

    .line 114
    .line 115
    .line 116
    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 117
    .line 118
    iput-object v3, v2, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 119
    .line 120
    iget-object v2, p0, Lcom/narvii/widget/CardView;->fansOnlyIndicator:Landroid/view/View;

    .line 121
    .line 122
    if-eqz v2, :cond_7

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->isFansOnly()Z

    .line 126
    move-result p1

    .line 127
    .line 128
    if-eqz p1, :cond_6

    .line 129
    move v0, v1

    .line 130
    .line 131
    .line 132
    :cond_6
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 133
    .line 134
    .line 135
    :cond_7
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 136
    return-void
.end method

.method public setStyle(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/CardView;->style:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method
