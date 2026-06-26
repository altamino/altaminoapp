.class public Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CouponBackgroundDrawable.java"


# instance fields
.field private context:Landroid/content/Context;

.field private dividePos:F

.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private final mBackgroundPath:Landroid/graphics/Path;

.field private final mDashPaint:Landroid/graphics/Paint;

.field private final mDashPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 33
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->context:Landroid/content/Context;

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 36
    iget-object v0, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 38
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->mBackgroundPath:Landroid/graphics/Path;

    .line 39
    iget-object v0, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->mBackgroundPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->mDashPaint:Landroid/graphics/Paint;

    .line 43
    iget-object v0, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->mDashPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    iget-object v0, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->mDashPaint:Landroid/graphics/Paint;

    const v2, -0x44000001

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    iget-object v0, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->mDashPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-static {p1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 46
    iget-object v0, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->mDashPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/DashPathEffect;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {p1, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {p1, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    aput p1, v3, v1

    const/4 p1, 0x0

    invoke-direct {v2, v3, p1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 48
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->mDashPath:Landroid/graphics/Path;

    const p1, 0x3f333333    # 0.7f

    .line 51
    iput p1, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->dividePos:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->mBackgroundPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 90
    iget-object v0, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->mDashPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->mDashPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 13

    .line 60
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 63
    iget-object v2, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->context:Landroid/content/Context;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v2

    .line 64
    iget-object v4, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->context:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v3

    .line 66
    new-instance v12, Landroid/graphics/LinearGradient;

    int-to-float v1, v1

    const v4, 0x3f666666    # 0.9f

    mul-float v6, v1, v4

    int-to-float v7, v0

    const v0, 0x3dcccccd    # 0.1f

    mul-float v8, v1, v0

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, 0x0

    const/16 v9, -0x5cb0

    const v10, -0xed80

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 67
    iget-object v0, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 69
    iget-object v0, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->mBackgroundPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 71
    new-instance v0, Landroid/graphics/RectF;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, p1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget v6, p1, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 72
    iget-object v4, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->mBackgroundPath:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v0, v2, v2, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 74
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v4, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->dividePos:F

    mul-float v1, v1, v4

    add-float/2addr v2, v1

    .line 75
    new-instance v1, Landroid/graphics/RectF;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    int-to-float v5, v4

    sub-float/2addr v5, v3

    int-to-float v0, v0

    add-float/2addr v0, v2

    sub-float/2addr v0, v3

    int-to-float v4, v4

    add-float/2addr v4, v3

    add-float v6, v2, v3

    invoke-direct {v1, v5, v0, v4, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 76
    iget-object v0, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->mBackgroundPath:Landroid/graphics/Path;

    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {v0, v1, v5, v4}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 78
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v1

    sub-float/2addr v5, v3

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    add-float/2addr p1, v2

    sub-float/2addr p1, v3

    int-to-float v1, v1

    add-float/2addr v1, v3

    invoke-direct {v0, v5, p1, v1, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 79
    iget-object p1, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->mBackgroundPath:Landroid/graphics/Path;

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0, v1, v4}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 81
    iget-object p1, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->mDashPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 82
    iget-object p1, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->mDashPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    add-float/2addr v0, v3

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 83
    iget-object p1, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->mDashPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    sub-float/2addr v0, v3

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setDividePosition(F)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->dividePos:F

    return-void
.end method
