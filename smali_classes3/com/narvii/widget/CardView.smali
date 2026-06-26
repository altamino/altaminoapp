.class public Lcom/narvii/widget/CardView;
.super Landroid/view/ViewGroup;
.source "CardView.java"


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

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 45
    iput-boolean p2, p0, Lcom/narvii/widget/CardView;->dirty:Z

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/CardView;->paint:Landroid/graphics/Paint;

    .line 58
    iget-object v0, p0, Lcom/narvii/widget/CardView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/narvii/widget/CardView;->rect:Landroid/graphics/RectF;

    const/4 p2, 0x0

    .line 60
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 61
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 63
    sget p2, Lcom/narvii/widget/CardView;->COLOR_WHITE:I

    if-nez p2, :cond_0

    const/4 p2, -0x1

    .line 64
    sput p2, Lcom/narvii/widget/CardView;->COLOR_WHITE:I

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/narvii/lib/R$color;->gold:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    sput p2, Lcom/narvii/widget/CardView;->COLOR_GOLD:I

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/narvii/lib/R$color;->disabled:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    sput p2, Lcom/narvii/widget/CardView;->COLOR_DISABLED:I

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/narvii/lib/R$dimen;->item_card_gold_stroke_min:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    sput p2, Lcom/narvii/widget/CardView;->GOLD_STROKE_WIDTH_MIN:F

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/narvii/lib/R$dimen;->item_card_gold_stroke_min_width:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sput p2, Lcom/narvii/widget/CardView;->GOLD_STROKE_WIDTH_MIN_WIDTH:I

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/narvii/lib/R$dimen;->item_card_gold_stroke_max:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    sput p2, Lcom/narvii/widget/CardView;->GOLD_STROKE_WIDTH_MAX:F

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/lib/R$dimen;->item_card_gold_stroke_max_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/narvii/widget/CardView;->GOLD_STROKE_WIDTH_MAX_WIDTH:I

    :cond_0
    return-void
.end method

.method private buildShadowConfig()V
    .locals 7

    .line 269
    iget-object v0, p0, Lcom/narvii/widget/CardView;->shadowConfig:Lcom/narvii/widget/shadow/ShadowConfig;

    if-nez v0, :cond_0

    .line 270
    new-instance v0, Lcom/narvii/widget/shadow/ShadowConfig;

    iget-object v2, p0, Lcom/narvii/widget/CardView;->rect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/narvii/widget/CardView;->shadowCornerRadius:F

    iget v4, p0, Lcom/narvii/widget/CardView;->shadowSize:I

    const/4 v1, 0x2

    new-array v5, v1, [I

    const/4 v1, 0x0

    iget v6, p0, Lcom/narvii/widget/CardView;->shadowOffsetX:I

    aput v6, v5, v1

    const/4 v1, 0x1

    iget v6, p0, Lcom/narvii/widget/CardView;->shadowOffsetY:I

    aput v6, v5, v1

    iget v6, p0, Lcom/narvii/widget/CardView;->shadowColor:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/narvii/widget/shadow/ShadowConfig;-><init>(Landroid/graphics/RectF;FI[II)V

    iput-object v0, p0, Lcom/narvii/widget/CardView;->shadowConfig:Lcom/narvii/widget/shadow/ShadowConfig;

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/widget/shadow/ShadowConfig;->reset()V

    .line 274
    :goto_0
    iget-object v0, p0, Lcom/narvii/widget/CardView;->shadowConfig:Lcom/narvii/widget/shadow/ShadowConfig;

    invoke-virtual {v0}, Lcom/narvii/widget/shadow/ShadowConfig;->prepareShadow()V

    return-void
.end method

.method private getColor()I
    .locals 2

    .line 75
    iget v0, p0, Lcom/narvii/widget/CardView;->style:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 76
    sget v0, Lcom/narvii/widget/CardView;->COLOR_GOLD:I

    return v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 78
    sget v0, Lcom/narvii/widget/CardView;->COLOR_DISABLED:I

    return v0

    .line 80
    :cond_1
    sget v0, Lcom/narvii/widget/CardView;->COLOR_WHITE:I

    return v0
.end method

.method private getPlaceholder()I
    .locals 2

    .line 85
    iget v0, p0, Lcom/narvii/widget/CardView;->style:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 86
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$color;->item_card_placeholder_mask_black:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    .line 88
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$color;->item_card_placeholder_mask_grey:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 197
    iget-object v0, p0, Lcom/narvii/widget/CardView;->image:Lcom/narvii/widget/NVImageView;

    iget v1, p0, Lcom/narvii/widget/CardView;->cornerRadius:I

    iget v2, p0, Lcom/narvii/widget/CardView;->strokeWidth:F

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-lez v4, :cond_0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    iput v1, v0, Lcom/narvii/widget/NVImageView;->cornerRadius:I

    .line 199
    iget v0, p0, Lcom/narvii/widget/CardView;->style:I

    if-lez v0, :cond_3

    .line 200
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 201
    sget v1, Lcom/narvii/widget/CardView;->GOLD_STROKE_WIDTH_MIN_WIDTH:I

    if-ge v0, v1, :cond_1

    .line 202
    sget v0, Lcom/narvii/widget/CardView;->GOLD_STROKE_WIDTH_MIN:F

    goto :goto_1

    .line 203
    :cond_1
    sget v2, Lcom/narvii/widget/CardView;->GOLD_STROKE_WIDTH_MAX_WIDTH:I

    if-le v0, v2, :cond_2

    .line 204
    sget v0, Lcom/narvii/widget/CardView;->GOLD_STROKE_WIDTH_MAX:F

    goto :goto_1

    .line 206
    :cond_2
    sget v4, Lcom/narvii/widget/CardView;->GOLD_STROKE_WIDTH_MIN:F

    sget v5, Lcom/narvii/widget/CardView;->GOLD_STROKE_WIDTH_MAX:F

    sub-float/2addr v5, v4

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v5, v5, v0

    sub-int/2addr v2, v1

    int-to-float v0, v2

    div-float/2addr v5, v0

    add-float/2addr v4, v5

    move v0, v4

    .line 210
    :goto_1
    iget-object v1, p0, Lcom/narvii/widget/CardView;->image:Lcom/narvii/widget/NVImageView;

    iget v2, p0, Lcom/narvii/widget/CardView;->cornerRadius:I

    float-to-int v4, v0

    add-int/2addr v2, v4

    iput v2, v1, Lcom/narvii/widget/NVImageView;->cornerRadius:I

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 213
    :goto_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 215
    iget v1, p0, Lcom/narvii/widget/CardView;->style:I

    if-lez v1, :cond_4

    .line 216
    iget-object v1, p0, Lcom/narvii/widget/CardView;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 217
    iget-object v1, p0, Lcom/narvii/widget/CardView;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 218
    iget-object v1, p0, Lcom/narvii/widget/CardView;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 219
    iget-object v1, p0, Lcom/narvii/widget/CardView;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 220
    iget-object v1, p0, Lcom/narvii/widget/CardView;->paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/narvii/widget/CardView;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 221
    iget-object v1, p0, Lcom/narvii/widget/CardView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 222
    iget-object v1, p0, Lcom/narvii/widget/CardView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 223
    iget-object v1, p0, Lcom/narvii/widget/CardView;->rect:Landroid/graphics/RectF;

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 224
    iget-object v0, p0, Lcom/narvii/widget/CardView;->rect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/narvii/widget/CardView;->cornerRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/narvii/widget/CardView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 225
    :cond_4
    iget v0, p0, Lcom/narvii/widget/CardView;->strokeWidth:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5

    .line 226
    iget-object v0, p0, Lcom/narvii/widget/CardView;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 227
    iget-object v0, p0, Lcom/narvii/widget/CardView;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 228
    iget-object v0, p0, Lcom/narvii/widget/CardView;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 229
    iget-object v0, p0, Lcom/narvii/widget/CardView;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 230
    iget-object v0, p0, Lcom/narvii/widget/CardView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/narvii/widget/CardView;->strokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 231
    iget-object v0, p0, Lcom/narvii/widget/CardView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/narvii/widget/CardView;->strokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 232
    iget-object v0, p0, Lcom/narvii/widget/CardView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 233
    iget-object v0, p0, Lcom/narvii/widget/CardView;->rect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/narvii/widget/CardView;->cornerRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/narvii/widget/CardView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_5
    :goto_3
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 239
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 241
    iget-object v0, p0, Lcom/narvii/widget/CardView;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 242
    iget-object v0, p0, Lcom/narvii/widget/CardView;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 243
    iget-object v0, p0, Lcom/narvii/widget/CardView;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 244
    iget-object v0, p0, Lcom/narvii/widget/CardView;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 247
    iget-object v0, p0, Lcom/narvii/widget/CardView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    .line 248
    iget-object v1, p0, Lcom/narvii/widget/CardView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    .line 249
    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 250
    iget v1, p0, Lcom/narvii/widget/CardView;->cornerRadius:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/narvii/widget/CardView;->shadowCornerRadius:F

    .line 252
    iget v0, p0, Lcom/narvii/widget/CardView;->shadowSize:I

    if-lez v0, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    if-lez v0, :cond_4

    .line 253
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v0, "don\'t use shadow on not specified size view, may cause leak"

    .line 254
    invoke-static {v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/CardView;->shadowConfig:Lcom/narvii/widget/shadow/ShadowConfig;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/narvii/widget/CardView;->dirty:Z

    if-eqz v0, :cond_3

    .line 257
    :cond_2
    invoke-direct {p0}, Lcom/narvii/widget/CardView;->buildShadowConfig()V

    const/4 v0, 0x0

    .line 258
    iput-boolean v0, p0, Lcom/narvii/widget/CardView;->dirty:Z

    .line 260
    :cond_3
    iget-object v0, p0, Lcom/narvii/widget/CardView;->shadowConfig:Lcom/narvii/widget/shadow/ShadowConfig;

    invoke-static {p1, v0}, Lcom/narvii/widget/shadow/ShadowHelper;->drawShadow(Landroid/graphics/Canvas;Lcom/narvii/widget/shadow/ShadowConfig;)V

    .line 263
    :cond_4
    iget-object v0, p0, Lcom/narvii/widget/CardView;->paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/narvii/widget/CardView;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 264
    iget-object v0, p0, Lcom/narvii/widget/CardView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 265
    iget-object v0, p0, Lcom/narvii/widget/CardView;->rect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/narvii/widget/CardView;->cornerRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/narvii/widget/CardView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .line 98
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 100
    sget v0, Lcom/narvii/lib/R$id;->image:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/widget/CardView;->image:Lcom/narvii/widget/NVImageView;

    .line 101
    iget-object v0, p0, Lcom/narvii/widget/CardView;->image:Lcom/narvii/widget/NVImageView;

    iget v1, v0, Lcom/narvii/widget/NVImageView;->cornerRadius:I

    iput v1, p0, Lcom/narvii/widget/CardView;->cornerRadius:I

    const/16 v1, 0xc

    .line 102
    iput v1, v0, Lcom/narvii/widget/NVImageView;->cornerMask:I

    .line 103
    iget v1, v0, Lcom/narvii/widget/NVImageView;->strokeWidth:F

    iput v1, p0, Lcom/narvii/widget/CardView;->strokeWidth:F

    .line 104
    iget v1, v0, Lcom/narvii/widget/NVImageView;->strokeColor:I

    iput v1, p0, Lcom/narvii/widget/CardView;->strokeColor:I

    const/4 v1, 0x0

    .line 105
    iput v1, v0, Lcom/narvii/widget/NVImageView;->strokeWidth:F

    .line 106
    instance-of v2, v0, Lcom/narvii/widget/ThumbImageView;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 107
    check-cast v0, Lcom/narvii/widget/ThumbImageView;

    .line 108
    iget v2, v0, Lcom/narvii/widget/ThumbImageView;->shadowSize:I

    iput v2, p0, Lcom/narvii/widget/CardView;->shadowSize:I

    .line 109
    iget v2, v0, Lcom/narvii/widget/ThumbImageView;->shadowOffsetX:I

    iput v2, p0, Lcom/narvii/widget/CardView;->shadowOffsetX:I

    .line 110
    iget v2, v0, Lcom/narvii/widget/ThumbImageView;->shadowOffsetY:I

    iput v2, p0, Lcom/narvii/widget/CardView;->shadowOffsetY:I

    .line 111
    iget v2, v0, Lcom/narvii/widget/ThumbImageView;->shadowColor:I

    iput v2, p0, Lcom/narvii/widget/CardView;->shadowColor:I

    .line 113
    iput v3, v0, Lcom/narvii/widget/ThumbImageView;->shadowSize:I

    .line 115
    :cond_0
    sget v0, Lcom/narvii/lib/R$id;->title:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/CardView;->title:Landroid/view/View;

    .line 117
    sget v0, Lcom/narvii/lib/R$id;->fans_only_content_indicator:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/CardView;->fansOnlyIndicator:Landroid/view/View;

    .line 118
    iget-object v0, p0, Lcom/narvii/widget/CardView;->fansOnlyIndicator:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 119
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 120
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/narvii/lib/R$color;->influencer_primary_color:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v2, 0x8

    new-array v2, v2, [F

    aput v1, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v3, 0x2

    .line 121
    iget v4, p0, Lcom/narvii/widget/CardView;->cornerRadius:I

    int-to-float v5, v4

    aput v5, v2, v3

    const/4 v3, 0x3

    int-to-float v5, v4

    aput v5, v2, v3

    const/4 v3, 0x4

    aput v1, v2, v3

    const/4 v3, 0x5

    aput v1, v2, v3

    const/4 v1, 0x6

    int-to-float v3, v4

    aput v3, v2, v1

    const/4 v1, 0x7

    int-to-float v3, v4

    aput v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    const v1, 0x3eb33333    # 0.35f

    .line 122
    iget v2, p0, Lcom/narvii/widget/CardView;->cornerRadius:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 123
    iget-object v2, p0, Lcom/narvii/widget/CardView;->fansOnlyIndicator:Landroid/view/View;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 124
    iget-object v1, p0, Lcom/narvii/widget/CardView;->fansOnlyIndicator:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 181
    iput-boolean p1, p0, Lcom/narvii/widget/CardView;->dirty:Z

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 183
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p2

    .line 184
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    .line 185
    iget-object v1, p0, Lcom/narvii/widget/CardView;->title:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 186
    iget-object v2, p0, Lcom/narvii/widget/CardView;->title:Landroid/view/View;

    sub-int/2addr p5, v0

    sub-int v0, p5, v1

    sub-int/2addr p4, p2

    invoke-virtual {v2, p1, v0, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 187
    iget-object p2, p0, Lcom/narvii/widget/CardView;->image:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p2, p1, p3, p4, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 188
    iget-object p1, p0, Lcom/narvii/widget/CardView;->fansOnlyIndicator:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    .line 190
    iget-object p2, p0, Lcom/narvii/widget/CardView;->fansOnlyIndicator:Landroid/view/View;

    sub-int p5, p4, p1

    add-int/2addr p1, p3

    invoke-virtual {p2, p5, p3, p4, p1}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 166
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 167
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    .line 168
    iget-object p2, p0, Lcom/narvii/widget/CardView;->title:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v0, 0x40000000    # 2.0f

    if-lez p2, :cond_0

    iget-object p2, p0, Lcom/narvii/widget/CardView;->title:Landroid/view/View;

    .line 169
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 170
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 171
    :goto_0
    iget-object v1, p0, Lcom/narvii/widget/CardView;->title:Landroid/view/View;

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v2, p2}, Landroid/view/View;->measure(II)V

    .line 172
    iget-object p2, p0, Lcom/narvii/widget/CardView;->fansOnlyIndicator:Landroid/view/View;

    if-eqz p2, :cond_1

    int-to-float p1, p1

    const p2, 0x3e4ccccd    # 0.2f

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 173
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 174
    iget-object p2, p0, Lcom/narvii/widget/CardView;->fansOnlyIndicator:Landroid/view/View;

    invoke-virtual {p2, p1, p1}, Landroid/view/View;->measure(II)V

    :cond_1
    return-void
.end method

.method public setItem(Lcom/narvii/model/Item;)V
    .locals 5

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 130
    iput v1, p0, Lcom/narvii/widget/CardView;->style:I

    .line 131
    iget-object p1, p0, Lcom/narvii/widget/CardView;->image:Lcom/narvii/widget/NVImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 132
    iget-object p1, p0, Lcom/narvii/widget/CardView;->title:Landroid/view/View;

    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 133
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/CardView;->fansOnlyIndicator:Landroid/view/View;

    if-eqz p1, :cond_7

    .line 136
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 139
    :cond_1
    iget v2, p1, Lcom/narvii/model/Feed;->status:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    const/4 v2, 0x2

    .line 140
    iput v2, p0, Lcom/narvii/widget/CardView;->style:I

    goto :goto_0

    .line 141
    :cond_2
    iget-object v2, p1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/narvii/model/User;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    .line 142
    iput v2, p0, Lcom/narvii/widget/CardView;->style:I

    goto :goto_0

    .line 144
    :cond_3
    iput v1, p0, Lcom/narvii/widget/CardView;->style:I

    .line 146
    :goto_0
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v2

    .line 147
    iget-object v3, p0, Lcom/narvii/widget/CardView;->image:Lcom/narvii/widget/NVImageView;

    instance-of v4, v3, Lcom/narvii/widget/SecretImageView;

    if-eqz v4, :cond_4

    .line 148
    check-cast v3, Lcom/narvii/widget/SecretImageView;

    iget-boolean v4, p1, Lcom/narvii/model/Feed;->needHidden:Z

    invoke-virtual {v3, v2, v4}, Lcom/narvii/widget/SecretImageView;->setImageMedia(Lcom/narvii/model/Media;Z)Z

    goto :goto_1

    .line 150
    :cond_4
    invoke-virtual {v3, v2}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 152
    :goto_1
    iget-object v2, p0, Lcom/narvii/widget/CardView;->title:Landroid/view/View;

    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_5

    .line 153
    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p1, Lcom/narvii/model/Item;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :cond_5
    iget-object v2, p0, Lcom/narvii/widget/CardView;->image:Lcom/narvii/widget/NVImageView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0}, Lcom/narvii/widget/CardView;->getPlaceholder()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v3, v2, Lcom/narvii/widget/NVImageView;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 156
    iget-object v2, p0, Lcom/narvii/widget/CardView;->image:Lcom/narvii/widget/NVImageView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0}, Lcom/narvii/widget/CardView;->getPlaceholder()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v3, v2, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 157
    iget-object v2, p0, Lcom/narvii/widget/CardView;->fansOnlyIndicator:Landroid/view/View;

    if-eqz v2, :cond_7

    .line 158
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->isFansOnly()Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    :cond_6
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 161
    :cond_7
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setStyle(I)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/narvii/widget/CardView;->style:I

    .line 93
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method
