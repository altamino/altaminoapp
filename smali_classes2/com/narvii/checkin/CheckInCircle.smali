.class public Lcom/narvii/checkin/CheckInCircle;
.super Landroid/view/View;
.source "CheckInCircle.java"


# static fields
.field private static final COLOR:I = -0xdb0200

.field private static final COLOR0:I = 0xffffff

.field private static final COLOR_HALO1:I = -0x1

.field private static final COLOR_HALO2:I = -0x1

.field private static final COLOR_HINT_BG:I = -0x60000000


# instance fields
.field private checkmark:Lcom/narvii/util/FontAwesomeDrawable;

.field public fireCallback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private gradient:Landroid/graphics/SweepGradient;

.field private halo:Landroid/graphics/drawable/Drawable;

.field private padding:Landroid/graphics/Rect;

.field private paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private pressProgress:F

.field private rectf:Landroid/graphics/RectF;

.field public startCallback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private state:I

.field private textHint:Landroid/view/View;

.field private time:J

.field private time1:J

.field private time2:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/narvii/checkin/CheckInCircle;->paint:Landroid/graphics/Paint;

    .line 52
    iget-object p2, p0, Lcom/narvii/checkin/CheckInCircle;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 53
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/narvii/checkin/CheckInCircle;->rectf:Landroid/graphics/RectF;

    .line 54
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/narvii/checkin/CheckInCircle;->padding:Landroid/graphics/Rect;

    .line 55
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/narvii/checkin/CheckInCircle;->path:Landroid/graphics/Path;

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b00e0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/checkin/CheckInCircle;->textHint:Landroid/view/View;

    .line 58
    iget-object p2, p0, Lcom/narvii/checkin/CheckInCircle;->textHint:Landroid/view/View;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f080154

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/checkin/CheckInCircle;->halo:Landroid/graphics/drawable/Drawable;

    .line 60
    iget-object p2, p0, Lcom/narvii/checkin/CheckInCircle;->halo:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/narvii/checkin/CheckInCircle;->padding:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 61
    new-instance p2, Lcom/narvii/util/FontAwesomeDrawable;

    const v0, 0x7f0f0483

    invoke-direct {p2, p1, v0}, Lcom/narvii/util/FontAwesomeDrawable;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/narvii/checkin/CheckInCircle;->checkmark:Lcom/narvii/util/FontAwesomeDrawable;

    .line 62
    iget-object p1, p0, Lcom/narvii/checkin/CheckInCircle;->checkmark:Lcom/narvii/util/FontAwesomeDrawable;

    const p2, -0xdb0200

    invoke-virtual {p1, p2}, Lcom/narvii/util/FontAwesomeDrawable;->setColor(I)V

    return-void
.end method

.method private drawHalo(Landroid/graphics/Canvas;F)V
    .locals 5

    .line 306
    iget-object v0, p0, Lcom/narvii/checkin/CheckInCircle;->halo:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float p2, p2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float p2, p2, v1

    float-to-int p2, p2

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 307
    iget-object p2, p0, Lcom/narvii/checkin/CheckInCircle;->halo:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/narvii/checkin/CheckInCircle;->padding:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/narvii/checkin/CheckInCircle;->padding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/narvii/checkin/CheckInCircle;->padding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 308
    iget-object p2, p0, Lcom/narvii/checkin/CheckInCircle;->halo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawHint(Landroid/graphics/Canvas;FF)V
    .locals 6

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-lez v1, :cond_2

    .line 280
    iget-object v1, p0, Lcom/narvii/checkin/CheckInCircle;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 281
    iget-object v1, p0, Lcom/narvii/checkin/CheckInCircle;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/high16 v1, -0x60000000

    .line 283
    iget-object v2, p0, Lcom/narvii/checkin/CheckInCircle;->paint:Landroid/graphics/Paint;

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p2

    float-to-int v3, v3

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {v3, v4, v5, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 285
    iget-object v1, p0, Lcom/narvii/checkin/CheckInCircle;->rectf:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/narvii/checkin/CheckInCircle;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/high16 v1, 0x437f0000    # 255.0f

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, p3, v2

    if-gez v3, :cond_0

    .line 288
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 289
    iget-object v4, p0, Lcom/narvii/checkin/CheckInCircle;->rectf:Landroid/graphics/RectF;

    mul-float v5, p2, v1

    sub-float/2addr v2, p3

    mul-float v5, v5, v2

    float-to-int v2, v5

    const/16 v5, 0x1f

    invoke-virtual {p1, v4, v2, v5}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 290
    iget-object v2, p0, Lcom/narvii/checkin/CheckInCircle;->textHint:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/narvii/checkin/CheckInCircle;->textHint:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 291
    iget-object v2, p0, Lcom/narvii/checkin/CheckInCircle;->textHint:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 292
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    cmpl-float v0, p3, v0

    if-lez v0, :cond_1

    .line 295
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 296
    iget-object v3, p0, Lcom/narvii/checkin/CheckInCircle;->checkmark:Lcom/narvii/util/FontAwesomeDrawable;

    mul-float p2, p2, v1

    mul-float p2, p2, p3

    float-to-int p2, p2

    invoke-virtual {v3, p2}, Lcom/narvii/util/FontAwesomeDrawable;->setAlpha(I)V

    .line 297
    iget-object p2, p0, Lcom/narvii/checkin/CheckInCircle;->checkmark:Lcom/narvii/util/FontAwesomeDrawable;

    div-int/lit8 p3, v0, 0x3

    div-int/lit8 v1, v2, 0x3

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    invoke-virtual {p2, p3, v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 298
    iget-object p2, p0, Lcom/narvii/checkin/CheckInCircle;->checkmark:Lcom/narvii/util/FontAwesomeDrawable;

    invoke-virtual {p2, p1}, Lcom/narvii/util/FontAwesomeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 301
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method private drawOval(Landroid/graphics/Canvas;IF)V
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/narvii/checkin/CheckInCircle;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 272
    iget-object v0, p0, Lcom/narvii/checkin/CheckInCircle;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 273
    iget-object v0, p0, Lcom/narvii/checkin/CheckInCircle;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float p3, p3, v1

    float-to-int p3, p3

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    invoke-static {p3, v1, v2, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 275
    iget-object p2, p0, Lcom/narvii/checkin/CheckInCircle;->path:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/narvii/checkin/CheckInCircle;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawSweep(Landroid/graphics/Canvas;FF)V
    .locals 11

    .line 230
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 231
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 232
    div-int/lit8 v2, v0, 0x2

    .line 233
    div-int/lit8 v3, v1, 0x2

    .line 234
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    .line 235
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v5, v4

    .line 236
    iget-object v6, p0, Lcom/narvii/checkin/CheckInCircle;->path:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    const/4 v6, 0x0

    cmpg-float v7, p2, v6

    if-gtz v7, :cond_0

    return-void

    :cond_0
    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x43b40000    # 360.0f

    cmpg-float v7, p2, v7

    if-gez v7, :cond_1

    .line 240
    iget-object v7, p0, Lcom/narvii/checkin/CheckInCircle;->path:Landroid/graphics/Path;

    sget-object v9, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v7, v9}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 241
    iget-object v7, p0, Lcom/narvii/checkin/CheckInCircle;->path:Landroid/graphics/Path;

    add-int/2addr v5, v2

    int-to-float v9, v5

    int-to-float v10, v3

    invoke-virtual {v7, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 242
    iget-object v7, p0, Lcom/narvii/checkin/CheckInCircle;->path:Landroid/graphics/Path;

    add-int/2addr v5, v4

    int-to-float v5, v5

    invoke-virtual {v7, v5, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 243
    iget-object v5, p0, Lcom/narvii/checkin/CheckInCircle;->rectf:Landroid/graphics/RectF;

    iput v6, v5, Landroid/graphics/RectF;->left:F

    .line 244
    iput v6, v5, Landroid/graphics/RectF;->top:F

    int-to-float v0, v0

    .line 245
    iput v0, v5, Landroid/graphics/RectF;->right:F

    int-to-float v0, v1

    .line 246
    iput v0, v5, Landroid/graphics/RectF;->bottom:F

    .line 247
    iget-object v0, p0, Lcom/narvii/checkin/CheckInCircle;->path:Landroid/graphics/Path;

    const/high16 v1, -0x3c4c0000    # -360.0f

    mul-float v1, v1, p2

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v1, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 248
    iget-object v0, p0, Lcom/narvii/checkin/CheckInCircle;->rectf:Landroid/graphics/RectF;

    int-to-float v4, v4

    invoke-virtual {v0, v4, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 249
    iget-object v0, p0, Lcom/narvii/checkin/CheckInCircle;->path:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/narvii/checkin/CheckInCircle;->rectf:Landroid/graphics/RectF;

    mul-float v5, p2, v8

    invoke-virtual {v0, v4, v1, v5, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 250
    iget-object v0, p0, Lcom/narvii/checkin/CheckInCircle;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    goto :goto_0

    .line 252
    :cond_1
    iget-object v5, p0, Lcom/narvii/checkin/CheckInCircle;->rectf:Landroid/graphics/RectF;

    iput v6, v5, Landroid/graphics/RectF;->left:F

    .line 253
    iput v6, v5, Landroid/graphics/RectF;->top:F

    int-to-float v0, v0

    .line 254
    iput v0, v5, Landroid/graphics/RectF;->right:F

    int-to-float v0, v1

    .line 255
    iput v0, v5, Landroid/graphics/RectF;->bottom:F

    .line 256
    iget-object v0, p0, Lcom/narvii/checkin/CheckInCircle;->path:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 257
    iget-object v0, p0, Lcom/narvii/checkin/CheckInCircle;->rectf:Landroid/graphics/RectF;

    int-to-float v1, v4

    invoke-virtual {v0, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 258
    iget-object v0, p0, Lcom/narvii/checkin/CheckInCircle;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/narvii/checkin/CheckInCircle;->rectf:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 260
    :goto_0
    iget-object v0, p0, Lcom/narvii/checkin/CheckInCircle;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 261
    iget-object v0, p0, Lcom/narvii/checkin/CheckInCircle;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/narvii/checkin/CheckInCircle;->gradient:Landroid/graphics/SweepGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 262
    iget-object v0, p0, Lcom/narvii/checkin/CheckInCircle;->paint:Landroid/graphics/Paint;

    const v1, -0xdb0200

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 264
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, -0x3d4c0000    # -90.0f

    add-float/2addr p2, p3

    mul-float p2, p2, v8

    add-float/2addr p2, v0

    int-to-float p3, v2

    int-to-float v0, v3

    .line 265
    invoke-virtual {p1, p2, p3, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 266
    iget-object p2, p0, Lcom/narvii/checkin/CheckInCircle;->path:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/narvii/checkin/CheckInCircle;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 267
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private mcolor(IIF)I
    .locals 5

    .line 222
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p3

    mul-float v0, v0, v1

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p3

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 223
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p3

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 224
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v1

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p3

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 225
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v1

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p2

    int-to-float p2, p2

    mul-float p2, p2, p3

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 226
    invoke-static {p1, v0, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method


# virtual methods
.method public fail()V
    .locals 1

    const/4 v0, 0x0

    .line 114
    iput v0, p0, Lcom/narvii/checkin/CheckInCircle;->state:I

    .line 115
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public finish()V
    .locals 2

    const/16 v0, 0x14

    .line 108
    iput v0, p0, Lcom/narvii/checkin/CheckInCircle;->state:I

    .line 109
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/checkin/CheckInCircle;->time2:J

    .line 110
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 120
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 122
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 123
    iget v4, v0, Lcom/narvii/checkin/CheckInCircle;->state:I

    const/16 v5, 0xa

    const/high16 v6, 0x3e000000    # 0.125f

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, -0x2

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    if-eq v4, v8, :cond_e

    if-ne v4, v7, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v7, 0x0

    const/4 v8, -0x1

    if-eq v4, v8, :cond_b

    if-ne v4, v9, :cond_1

    goto/16 :goto_3

    :cond_1
    const/high16 v6, 0x44160000    # 600.0f

    if-ne v4, v5, :cond_6

    .line 165
    iget-wide v4, v0, Lcom/narvii/checkin/CheckInCircle;->time1:J

    sub-long v4, v2, v4

    const-wide/16 v9, 0x1f4

    cmp-long v7, v4, v9

    if-lez v7, :cond_2

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    long-to-float v7, v4

    mul-float v7, v7, v12

    const/high16 v13, 0x43fa0000    # 500.0f

    div-float/2addr v7, v13

    .line 168
    :goto_0
    invoke-direct {v0, v1, v7, v11}, Lcom/narvii/checkin/CheckInCircle;->drawHint(Landroid/graphics/Canvas;FF)V

    .line 170
    iget-wide v13, v0, Lcom/narvii/checkin/CheckInCircle;->time:J

    sub-long/2addr v2, v13

    long-to-float v2, v2

    mul-float v2, v2, v12

    div-float/2addr v2, v6

    cmpg-float v3, v2, v12

    if-gez v3, :cond_3

    float-to-double v2, v2

    const-wide v6, 0x3ff999999999999aL    # 1.6

    .line 172
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 174
    :cond_3
    invoke-direct {v0, v1, v12, v2}, Lcom/narvii/checkin/CheckInCircle;->drawSweep(Landroid/graphics/Canvas;FF)V

    const-wide/16 v2, 0xfa

    cmp-long v6, v4, v2

    if-gtz v6, :cond_4

    long-to-float v2, v4

    mul-float v2, v2, v12

    const/high16 v3, 0x437a0000    # 250.0f

    div-float/2addr v2, v3

    .line 179
    invoke-direct {v0, v1, v8, v2}, Lcom/narvii/checkin/CheckInCircle;->drawOval(Landroid/graphics/Canvas;IF)V

    goto :goto_1

    :cond_4
    cmp-long v2, v4, v9

    if-gez v2, :cond_5

    sub-long/2addr v9, v4

    long-to-float v2, v9

    mul-float v2, v2, v12

    const/high16 v3, 0x437a0000    # 250.0f

    div-float/2addr v2, v3

    .line 182
    invoke-direct {v0, v1, v8, v2}, Lcom/narvii/checkin/CheckInCircle;->drawOval(Landroid/graphics/Canvas;IF)V

    .line 184
    :cond_5
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_6

    :cond_6
    const/16 v5, 0x14

    if-ne v4, v5, :cond_13

    .line 186
    iget-wide v4, v0, Lcom/narvii/checkin/CheckInCircle;->time2:J

    sub-long v4, v2, v4

    const-wide/16 v13, 0x12c

    const/high16 v9, 0x43c80000    # 400.0f

    const-wide/16 v15, 0x320

    cmp-long v17, v4, v13

    if-gez v17, :cond_7

    long-to-float v13, v4

    mul-float v13, v13, v12

    const/high16 v14, 0x43960000    # 300.0f

    div-float/2addr v13, v14

    .line 193
    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 194
    invoke-direct {v0, v1, v12, v13}, Lcom/narvii/checkin/CheckInCircle;->drawHint(Landroid/graphics/Canvas;FF)V

    goto :goto_2

    :cond_7
    cmp-long v13, v4, v15

    if-gez v13, :cond_8

    sub-long v13, v15, v4

    long-to-float v13, v13

    mul-float v13, v13, v12

    div-float/2addr v13, v9

    .line 196
    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 197
    invoke-direct {v0, v1, v13, v12}, Lcom/narvii/checkin/CheckInCircle;->drawHint(Landroid/graphics/Canvas;FF)V

    :cond_8
    :goto_2
    const-wide/16 v13, 0x190

    cmp-long v17, v4, v13

    if-gez v17, :cond_9

    .line 202
    iget-wide v13, v0, Lcom/narvii/checkin/CheckInCircle;->time:J

    sub-long/2addr v2, v13

    const-wide/16 v13, 0x258

    rem-long/2addr v2, v13

    long-to-float v2, v2

    mul-float v2, v2, v12

    div-float/2addr v2, v6

    .line 203
    invoke-direct {v0, v1, v12, v2}, Lcom/narvii/checkin/CheckInCircle;->drawSweep(Landroid/graphics/Canvas;FF)V

    long-to-float v2, v4

    mul-float v2, v2, v12

    div-float/2addr v2, v9

    mul-float v10, v10, v2

    sub-float/2addr v10, v12

    .line 206
    invoke-static {v11, v10}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-direct {v0, v1, v3}, Lcom/narvii/checkin/CheckInCircle;->drawHalo(Landroid/graphics/Canvas;F)V

    .line 207
    invoke-direct {v0, v1, v8, v2}, Lcom/narvii/checkin/CheckInCircle;->drawOval(Landroid/graphics/Canvas;IF)V

    .line 208
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_6

    :cond_9
    cmp-long v2, v4, v15

    if-gez v2, :cond_a

    const-wide/16 v2, 0x190

    sub-long/2addr v4, v2

    long-to-float v2, v4

    mul-float v2, v2, v12

    div-float/2addr v2, v9

    sub-float v2, v12, v2

    mul-float v10, v10, v2

    sub-float/2addr v10, v12

    .line 212
    invoke-static {v11, v10}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-direct {v0, v1, v3}, Lcom/narvii/checkin/CheckInCircle;->drawHalo(Landroid/graphics/Canvas;F)V

    .line 213
    invoke-direct {v0, v1, v8, v2}, Lcom/narvii/checkin/CheckInCircle;->drawOval(Landroid/graphics/Canvas;IF)V

    .line 214
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_6

    .line 216
    :cond_a
    iput v7, v0, Lcom/narvii/checkin/CheckInCircle;->state:I

    goto/16 :goto_6

    .line 150
    :cond_b
    :goto_3
    iget-wide v4, v0, Lcom/narvii/checkin/CheckInCircle;->time:J

    sub-long v4, v2, v4

    long-to-float v4, v4

    mul-float v4, v4, v12

    iget v5, v0, Lcom/narvii/checkin/CheckInCircle;->state:I

    if-ne v5, v9, :cond_c

    const/16 v5, 0x5dc

    goto :goto_4

    :cond_c
    const/16 v5, 0x1f4

    :goto_4
    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 151
    iput-wide v2, v0, Lcom/narvii/checkin/CheckInCircle;->time:J

    .line 152
    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v11, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 153
    iget v3, v0, Lcom/narvii/checkin/CheckInCircle;->pressProgress:F

    sub-float/2addr v3, v2

    iput v3, v0, Lcom/narvii/checkin/CheckInCircle;->pressProgress:F

    .line 154
    iget v2, v0, Lcom/narvii/checkin/CheckInCircle;->pressProgress:F

    invoke-direct {v0, v1, v2, v11}, Lcom/narvii/checkin/CheckInCircle;->drawSweep(Landroid/graphics/Canvas;FF)V

    .line 155
    iget v1, v0, Lcom/narvii/checkin/CheckInCircle;->pressProgress:F

    cmpg-float v1, v1, v11

    if-gtz v1, :cond_d

    .line 156
    iput v11, v0, Lcom/narvii/checkin/CheckInCircle;->pressProgress:F

    .line 157
    iput v7, v0, Lcom/narvii/checkin/CheckInCircle;->state:I

    .line 158
    iget-object v1, v0, Lcom/narvii/checkin/CheckInCircle;->startCallback:Lcom/narvii/util/Callback;

    if-eqz v1, :cond_13

    .line 159
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    goto :goto_6

    .line 162
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto :goto_6

    .line 124
    :cond_e
    :goto_5
    iget-wide v13, v0, Lcom/narvii/checkin/CheckInCircle;->time:J

    sub-long v13, v2, v13

    long-to-float v4, v13

    mul-float v4, v4, v12

    const/high16 v13, 0x447a0000    # 1000.0f

    div-float/2addr v4, v13

    .line 125
    iget v13, v0, Lcom/narvii/checkin/CheckInCircle;->pressProgress:F

    const v14, 0x3e4ccccd    # 0.2f

    cmpg-float v13, v13, v14

    if-gez v13, :cond_f

    mul-float v4, v4, v10

    .line 128
    :cond_f
    iput-wide v2, v0, Lcom/narvii/checkin/CheckInCircle;->time:J

    .line 129
    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v11, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 130
    iget v6, v0, Lcom/narvii/checkin/CheckInCircle;->pressProgress:F

    const/high16 v10, 0x3f000000    # 0.5f

    cmpl-float v10, v6, v10

    if-lez v10, :cond_10

    const/high16 v10, 0x3fa00000    # 1.25f

    sub-float/2addr v10, v6

    const v6, 0x3faaaaab

    mul-float v10, v10, v6

    mul-float v4, v4, v10

    .line 133
    :cond_10
    iget v6, v0, Lcom/narvii/checkin/CheckInCircle;->pressProgress:F

    add-float/2addr v6, v4

    iput v6, v0, Lcom/narvii/checkin/CheckInCircle;->pressProgress:F

    .line 134
    iget v4, v0, Lcom/narvii/checkin/CheckInCircle;->pressProgress:F

    invoke-direct {v0, v1, v4, v11}, Lcom/narvii/checkin/CheckInCircle;->drawSweep(Landroid/graphics/Canvas;FF)V

    .line 135
    iget v1, v0, Lcom/narvii/checkin/CheckInCircle;->state:I

    if-ne v1, v7, :cond_11

    iget v1, v0, Lcom/narvii/checkin/CheckInCircle;->pressProgress:F

    cmpl-float v1, v1, v14

    if-ltz v1, :cond_11

    .line 136
    iput v9, v0, Lcom/narvii/checkin/CheckInCircle;->state:I

    .line 137
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto :goto_6

    .line 138
    :cond_11
    iget v1, v0, Lcom/narvii/checkin/CheckInCircle;->pressProgress:F

    cmpl-float v1, v1, v12

    if-ltz v1, :cond_12

    .line 139
    iput v11, v0, Lcom/narvii/checkin/CheckInCircle;->pressProgress:F

    .line 140
    iput v5, v0, Lcom/narvii/checkin/CheckInCircle;->state:I

    .line 141
    iput-wide v2, v0, Lcom/narvii/checkin/CheckInCircle;->time1:J

    .line 142
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 143
    iget-object v1, v0, Lcom/narvii/checkin/CheckInCircle;->fireCallback:Lcom/narvii/util/Callback;

    if-eqz v1, :cond_13

    .line 144
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    goto :goto_6

    .line 147
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_13
    :goto_6
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 67
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 68
    new-instance p1, Landroid/graphics/SweepGradient;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    const p4, 0xffffff

    const p5, -0xdb0200

    invoke-direct {p1, p2, p3, p4, p5}, Landroid/graphics/SweepGradient;-><init>(FFII)V

    iput-object p1, p0, Lcom/narvii/checkin/CheckInCircle;->gradient:Landroid/graphics/SweepGradient;

    .line 69
    iget-object p1, p0, Lcom/narvii/checkin/CheckInCircle;->textHint:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    const/high16 p3, 0x40000000    # 2.0f

    invoke-static {p2, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p5

    sub-int/2addr p4, p5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p5

    sub-int/2addr p4, p5

    invoke-static {p4, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 69
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 71
    iget-object p1, p0, Lcom/narvii/checkin/CheckInCircle;->textHint:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p5

    sub-int/2addr p4, p5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p5, v0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public press()V
    .locals 4

    .line 75
    iget v0, p0, Lcom/narvii/checkin/CheckInCircle;->state:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 77
    :goto_0
    iput v1, p0, Lcom/narvii/checkin/CheckInCircle;->state:I

    .line 78
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/narvii/checkin/CheckInCircle;->time:J

    const/4 v2, 0x0

    .line 79
    iput v2, p0, Lcom/narvii/checkin/CheckInCircle;->pressProgress:F

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/narvii/checkin/CheckInCircle;->startCallback:Lcom/narvii/util/Callback;

    if-eqz v0, :cond_1

    .line 82
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 85
    :cond_1
    iget v0, p0, Lcom/narvii/checkin/CheckInCircle;->state:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 86
    iput v1, p0, Lcom/narvii/checkin/CheckInCircle;->state:I

    .line 87
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/narvii/checkin/CheckInCircle;->time:J

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public unpress()Z
    .locals 4

    .line 93
    iget v0, p0, Lcom/narvii/checkin/CheckInCircle;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 94
    iget v0, p0, Lcom/narvii/checkin/CheckInCircle;->pressProgress:F

    const v2, 0x3e4ccccd    # 0.2f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x2

    .line 95
    iput v0, p0, Lcom/narvii/checkin/CheckInCircle;->state:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 97
    iput v0, p0, Lcom/narvii/checkin/CheckInCircle;->state:I

    .line 99
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/narvii/checkin/CheckInCircle;->time:J

    const-wide/16 v2, 0x0

    .line 100
    iput-wide v2, p0, Lcom/narvii/checkin/CheckInCircle;->time2:J

    .line 101
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
