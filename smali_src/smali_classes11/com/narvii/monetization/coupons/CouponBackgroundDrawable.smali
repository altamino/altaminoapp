.class public Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->context:Landroid/content/Context;

    .line 6
    .line 7
    new-instance v0, Landroid/graphics/Paint;

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 14
    .line 15
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 19
    .line 20
    new-instance v0, Landroid/graphics/Path;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->mBackgroundPath:Landroid/graphics/Path;

    .line 26
    .line 27
    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 31
    .line 32
    new-instance v0, Landroid/graphics/Paint;

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 36
    .line 37
    iput-object v0, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->mDashPaint:Landroid/graphics/Paint;

    .line 38
    .line 39
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43
    .line 44
    .line 45
    const v2, -0x44000001

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    .line 50
    const/high16 v2, 0x3fc00000    # 1.5f

    .line 51
    .line 52
    .line 53
    invoke-static {p1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 54
    move-result v2

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    .line 59
    new-instance v2, Landroid/graphics/DashPathEffect;

    .line 60
    const/4 v3, 0x2

    .line 61
    .line 62
    new-array v3, v3, [F

    .line 63
    .line 64
    const/high16 v4, 0x40c00000    # 6.0f

    .line 65
    .line 66
    .line 67
    invoke-static {p1, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 68
    move-result v4

    .line 69
    const/4 v5, 0x0

    .line 70
    .line 71
    aput v4, v3, v5

    .line 72
    .line 73
    const/high16 v4, 0x40400000    # 3.0f

    .line 74
    .line 75
    .line 76
    invoke-static {p1, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 77
    move-result p1

    .line 78
    .line 79
    aput p1, v3, v1

    .line 80
    const/4 p1, 0x0

    .line 81
    .line 82
    .line 83
    invoke-direct {v2, v3, p1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 87
    .line 88
    new-instance p1, Landroid/graphics/Path;

    .line 89
    .line 90
    .line 91
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 92
    .line 93
    iput-object p1, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->mDashPath:Landroid/graphics/Path;

    .line 94
    .line 95
    .line 96
    const p1, 0x3f333333    # 0.7f

    .line 97
    .line 98
    iput p1, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->dividePos:F

    .line 99
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->mBackgroundPath:Landroid/graphics/Path;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->mDashPath:Landroid/graphics/Path;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->mDashPaint:Landroid/graphics/Paint;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 15
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 13

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 8
    move-result v1

    .line 9
    .line 10
    iget-object v2, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->context:Landroid/content/Context;

    .line 11
    .line 12
    const/high16 v3, 0x41200000    # 10.0f

    .line 13
    .line 14
    .line 15
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 16
    move-result v2

    .line 17
    .line 18
    iget-object v4, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->context:Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    invoke-static {v4, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 22
    move-result v3

    .line 23
    .line 24
    new-instance v12, Landroid/graphics/LinearGradient;

    .line 25
    const/4 v5, 0x0

    .line 26
    int-to-float v1, v1

    .line 27
    .line 28
    .line 29
    const v4, 0x3f666666    # 0.9f

    .line 30
    .line 31
    mul-float v6, v1, v4

    .line 32
    int-to-float v7, v0

    .line 33
    .line 34
    .line 35
    const v0, 0x3dcccccd    # 0.1f

    .line 36
    .line 37
    mul-float v8, v1, v0

    .line 38
    .line 39
    const/16 v9, -0x5cb0

    .line 40
    .line 41
    .line 42
    const v10, -0xed80

    .line 43
    .line 44
    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 45
    move-object v4, v12

    .line 46
    .line 47
    .line 48
    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 49
    .line 50
    iget-object v0, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->mBackgroundPath:Landroid/graphics/Path;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 59
    .line 60
    new-instance v0, Landroid/graphics/RectF;

    .line 61
    .line 62
    iget v4, p1, Landroid/graphics/Rect;->left:I

    .line 63
    int-to-float v4, v4

    .line 64
    .line 65
    iget v5, p1, Landroid/graphics/Rect;->top:I

    .line 66
    int-to-float v5, v5

    .line 67
    .line 68
    iget v6, p1, Landroid/graphics/Rect;->right:I

    .line 69
    int-to-float v6, v6

    .line 70
    .line 71
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    .line 72
    int-to-float v7, v7

    .line 73
    .line 74
    .line 75
    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 76
    .line 77
    iget-object v4, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->mBackgroundPath:Landroid/graphics/Path;

    .line 78
    .line 79
    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, v0, v2, v2, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 83
    .line 84
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 85
    int-to-float v0, v0

    .line 86
    .line 87
    iget v2, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->dividePos:F

    .line 88
    mul-float/2addr v1, v2

    .line 89
    add-float/2addr v0, v1

    .line 90
    .line 91
    new-instance v1, Landroid/graphics/RectF;

    .line 92
    .line 93
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 94
    int-to-float v4, v2

    .line 95
    sub-float/2addr v4, v3

    .line 96
    .line 97
    iget v5, p1, Landroid/graphics/Rect;->top:I

    .line 98
    int-to-float v5, v5

    .line 99
    add-float/2addr v5, v0

    .line 100
    sub-float/2addr v5, v3

    .line 101
    int-to-float v2, v2

    .line 102
    add-float/2addr v2, v3

    .line 103
    .line 104
    add-float v6, v0, v3

    .line 105
    .line 106
    .line 107
    invoke-direct {v1, v4, v5, v2, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 108
    .line 109
    iget-object v2, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->mBackgroundPath:Landroid/graphics/Path;

    .line 110
    .line 111
    const/high16 v4, 0x43870000    # 270.0f

    .line 112
    .line 113
    const/high16 v5, 0x43340000    # 180.0f

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v1, v4, v5}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 117
    .line 118
    new-instance v1, Landroid/graphics/RectF;

    .line 119
    .line 120
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 121
    int-to-float v4, v2

    .line 122
    sub-float/2addr v4, v3

    .line 123
    .line 124
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 125
    int-to-float p1, p1

    .line 126
    add-float/2addr p1, v0

    .line 127
    sub-float/2addr p1, v3

    .line 128
    int-to-float v2, v2

    .line 129
    add-float/2addr v2, v3

    .line 130
    .line 131
    .line 132
    invoke-direct {v1, v4, p1, v2, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 133
    .line 134
    iget-object p1, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->mBackgroundPath:Landroid/graphics/Path;

    .line 135
    .line 136
    const/high16 v2, 0x42b40000    # 90.0f

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v1, v2, v5}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 140
    .line 141
    iget-object p1, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->mDashPath:Landroid/graphics/Path;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 145
    .line 146
    iget-object p1, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->mDashPath:Landroid/graphics/Path;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 150
    move-result-object v1

    .line 151
    .line 152
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 153
    int-to-float v1, v1

    .line 154
    add-float/2addr v1, v3

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 158
    .line 159
    iget-object p1, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->mDashPath:Landroid/graphics/Path;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 163
    move-result-object v1

    .line 164
    .line 165
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 166
    int-to-float v1, v1

    .line 167
    sub-float/2addr v1, v3

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 171
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 6
    return-void
.end method

.method public setDividePosition(F)V
    .locals 0

    iput p1, p0, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->dividePos:F

    return-void
.end method
