.class Landroidx/cardview/widget/RoundRectDrawableWithShadow;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/cardview/widget/RoundRectDrawableWithShadow$RoundRectHelper;
    }
.end annotation


# static fields
.field private static final COS_45:D

.field private static final SHADOW_MULTIPLIER:F = 1.5f

.field static sRoundRectHelper:Landroidx/cardview/widget/RoundRectDrawableWithShadow$RoundRectHelper;


# instance fields
.field private mAddPaddingForCorners:Z

.field private mBackground:Landroid/content/res/ColorStateList;

.field private final mCardBounds:Landroid/graphics/RectF;

.field private mCornerRadius:F

.field private mCornerShadowPaint:Landroid/graphics/Paint;

.field private mCornerShadowPath:Landroid/graphics/Path;

.field private mDirty:Z

.field private mEdgeShadowPaint:Landroid/graphics/Paint;

.field private final mInsetShadow:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPrintedShadowClipWarning:Z

.field private mRawMaxShadowSize:F

.field private mRawShadowSize:F

.field private final mShadowEndColor:I

.field private mShadowSize:F

.field private final mShadowStartColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    .line 4
    .line 5
    const-wide v0, 0x4046800000000000L    # 45.0

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 9
    move-result-wide v0

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 13
    move-result-wide v0

    .line 14
    .line 15
    sput-wide v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->COS_45:D

    .line 16
    return-void
.end method

.method constructor <init>(Landroid/content/res/Resources;Landroid/content/res/ColorStateList;FFF)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mDirty:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mAddPaddingForCorners:Z

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    iput-boolean v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPrintedShadowClipWarning:Z

    .line 12
    .line 13
    sget v1, Landroidx/cardview/R$color;->cardview_shadow_start_color:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 17
    move-result v1

    .line 18
    .line 19
    iput v1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowStartColor:I

    .line 20
    .line 21
    sget v1, Landroidx/cardview/R$color;->cardview_shadow_end_color:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 25
    move-result v1

    .line 26
    .line 27
    iput v1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowEndColor:I

    .line 28
    .line 29
    sget v1, Landroidx/cardview/R$dimen;->cardview_compat_inset_shadow:I

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 33
    move-result p1

    .line 34
    .line 35
    iput p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mInsetShadow:I

    .line 36
    .line 37
    new-instance p1, Landroid/graphics/Paint;

    .line 38
    const/4 v1, 0x5

    .line 39
    .line 40
    .line 41
    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 42
    .line 43
    iput-object p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, p2}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->n(Landroid/content/res/ColorStateList;)V

    .line 47
    .line 48
    new-instance p1, Landroid/graphics/Paint;

    .line 49
    .line 50
    .line 51
    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 52
    .line 53
    iput-object p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    .line 54
    .line 55
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    .line 60
    const/high16 p1, 0x3f000000    # 0.5f

    .line 61
    add-float/2addr p3, p1

    .line 62
    float-to-int p1, p3

    .line 63
    int-to-float p1, p1

    .line 64
    .line 65
    iput p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    .line 66
    .line 67
    new-instance p1, Landroid/graphics/RectF;

    .line 68
    .line 69
    .line 70
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 71
    .line 72
    iput-object p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    .line 73
    .line 74
    new-instance p1, Landroid/graphics/Paint;

    .line 75
    .line 76
    iget-object p2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    .line 77
    .line 78
    .line 79
    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 80
    .line 81
    iput-object p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 85
    .line 86
    .line 87
    invoke-direct {p0, p4, p5}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->s(FF)V

    .line 88
    return-void
.end method

.method private a(Landroid/graphics/Rect;)V
    .locals 6

    .line 1
    .line 2
    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    .line 3
    .line 4
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 5
    mul-float/2addr v1, v0

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    .line 8
    .line 9
    iget v3, p1, Landroid/graphics/Rect;->left:I

    .line 10
    int-to-float v3, v3

    .line 11
    add-float/2addr v3, v0

    .line 12
    .line 13
    iget v4, p1, Landroid/graphics/Rect;->top:I

    .line 14
    int-to-float v4, v4

    .line 15
    add-float/2addr v4, v1

    .line 16
    .line 17
    iget v5, p1, Landroid/graphics/Rect;->right:I

    .line 18
    int-to-float v5, v5

    .line 19
    sub-float/2addr v5, v0

    .line 20
    .line 21
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 22
    int-to-float p1, p1

    .line 23
    sub-float/2addr p1, v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3, v4, v5, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->b()V

    .line 30
    return-void
.end method

.method private b()V
    .locals 22

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    new-instance v1, Landroid/graphics/RectF;

    .line 5
    .line 6
    iget v2, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    .line 7
    neg-float v3, v2

    .line 8
    neg-float v4, v2

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v3, v4, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 12
    .line 13
    new-instance v2, Landroid/graphics/RectF;

    .line 14
    .line 15
    .line 16
    invoke-direct {v2, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 17
    .line 18
    iget v3, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    .line 19
    neg-float v4, v3

    .line 20
    neg-float v3, v3

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v4, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 24
    .line 25
    iget-object v3, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    .line 26
    .line 27
    if-nez v3, :cond_0

    .line 28
    .line 29
    new-instance v3, Landroid/graphics/Path;

    .line 30
    .line 31
    .line 32
    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 33
    .line 34
    iput-object v3, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    .line 35
    goto :goto_0

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 39
    .line 40
    :goto_0
    iget-object v3, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    .line 41
    .line 42
    sget-object v4, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v4}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 46
    .line 47
    iget-object v3, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    .line 48
    .line 49
    iget v4, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    .line 50
    neg-float v4, v4

    .line 51
    const/4 v5, 0x0

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 55
    .line 56
    iget-object v3, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    .line 57
    .line 58
    iget v4, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    .line 59
    neg-float v4, v4

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 63
    .line 64
    iget-object v3, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    .line 65
    .line 66
    const/high16 v4, 0x43340000    # 180.0f

    .line 67
    .line 68
    const/high16 v6, 0x42b40000    # 90.0f

    .line 69
    const/4 v7, 0x0

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v2, v4, v6, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 73
    .line 74
    iget-object v2, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    .line 75
    .line 76
    const/high16 v3, 0x43870000    # 270.0f

    .line 77
    .line 78
    const/high16 v4, -0x3d4c0000    # -90.0f

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v1, v3, v4, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 82
    .line 83
    iget-object v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 87
    .line 88
    iget v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    .line 89
    .line 90
    iget v2, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    .line 91
    add-float/2addr v2, v1

    .line 92
    div-float/2addr v1, v2

    .line 93
    .line 94
    iget-object v2, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    .line 95
    .line 96
    new-instance v3, Landroid/graphics/RadialGradient;

    .line 97
    const/4 v9, 0x0

    .line 98
    const/4 v10, 0x0

    .line 99
    .line 100
    iget v4, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    .line 101
    .line 102
    iget v6, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    .line 103
    .line 104
    add-float v11, v4, v6

    .line 105
    .line 106
    iget v4, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowStartColor:I

    .line 107
    .line 108
    iget v6, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowEndColor:I

    .line 109
    .line 110
    .line 111
    filled-new-array {v4, v4, v6}, [I

    .line 112
    move-result-object v12

    .line 113
    const/4 v4, 0x3

    .line 114
    .line 115
    new-array v13, v4, [F

    .line 116
    .line 117
    aput v5, v13, v7

    .line 118
    const/4 v5, 0x1

    .line 119
    .line 120
    aput v1, v13, v5

    .line 121
    const/4 v1, 0x2

    .line 122
    .line 123
    const/high16 v5, 0x3f800000    # 1.0f

    .line 124
    .line 125
    aput v5, v13, v1

    .line 126
    .line 127
    sget-object v21, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 128
    move-object v8, v3

    .line 129
    .line 130
    move-object/from16 v14, v21

    .line 131
    .line 132
    .line 133
    invoke-direct/range {v8 .. v14}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 137
    .line 138
    iget-object v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    .line 139
    .line 140
    new-instance v2, Landroid/graphics/LinearGradient;

    .line 141
    const/4 v15, 0x0

    .line 142
    .line 143
    iget v3, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    .line 144
    neg-float v5, v3

    .line 145
    .line 146
    iget v6, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    .line 147
    .line 148
    add-float v16, v5, v6

    .line 149
    .line 150
    const/16 v17, 0x0

    .line 151
    neg-float v3, v3

    .line 152
    .line 153
    sub-float v18, v3, v6

    .line 154
    .line 155
    iget v3, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowStartColor:I

    .line 156
    .line 157
    iget v5, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowEndColor:I

    .line 158
    .line 159
    .line 160
    filled-new-array {v3, v3, v5}, [I

    .line 161
    move-result-object v19

    .line 162
    .line 163
    new-array v3, v4, [F

    .line 164
    .line 165
    .line 166
    fill-array-data v3, :array_0

    .line 167
    move-object v14, v2

    .line 168
    .line 169
    move-object/from16 v20, v3

    .line 170
    .line 171
    .line 172
    invoke-direct/range {v14 .. v21}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 176
    .line 177
    iget-object v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 181
    return-void

    .line 182
    nop

    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static c(FFZ)F
    .locals 6

    .line 1
    if-eqz p2, :cond_0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v4, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->COS_45:D

    sub-double/2addr v2, v4

    float-to-double p0, p1

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    double-to-float p0, v0

    :cond_0
    return p0
.end method

.method static d(FFZ)F
    .locals 6

    .line 1
    const/high16 v0, 0x3fc00000    # 1.5f

    if-eqz p2, :cond_0

    mul-float/2addr p0, v0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v4, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->COS_45:D

    sub-double/2addr v2, v4

    float-to-double p0, p1

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    double-to-float p0, v0

    return p0

    :cond_0
    mul-float/2addr p0, v0

    return p0
.end method

.method private e(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    .line 2
    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    .line 3
    neg-float v1, v0

    .line 4
    .line 5
    iget v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    .line 6
    sub-float/2addr v1, v2

    .line 7
    .line 8
    iget v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mInsetShadow:I

    .line 9
    int-to-float v2, v2

    .line 10
    add-float/2addr v0, v2

    .line 11
    .line 12
    iget v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    .line 13
    .line 14
    const/high16 v3, 0x40000000    # 2.0f

    .line 15
    div-float/2addr v2, v3

    .line 16
    add-float/2addr v0, v2

    .line 17
    .line 18
    iget-object v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    .line 22
    move-result v2

    .line 23
    .line 24
    mul-float v9, v0, v3

    .line 25
    sub-float/2addr v2, v9

    .line 26
    const/4 v3, 0x0

    .line 27
    .line 28
    cmpl-float v2, v2, v3

    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x1

    .line 31
    .line 32
    if-lez v2, :cond_0

    .line 33
    move v2, v5

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v2, v4

    .line 36
    .line 37
    :goto_0
    iget-object v6, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    .line 41
    move-result v6

    .line 42
    sub-float/2addr v6, v9

    .line 43
    .line 44
    cmpl-float v3, v6, v3

    .line 45
    .line 46
    if-lez v3, :cond_1

    .line 47
    move v10, v5

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move v10, v4

    .line 50
    .line 51
    .line 52
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 53
    move-result v11

    .line 54
    .line 55
    iget-object v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    .line 56
    .line 57
    iget v4, v3, Landroid/graphics/RectF;->left:F

    .line 58
    add-float/2addr v4, v0

    .line 59
    .line 60
    iget v3, v3, Landroid/graphics/RectF;->top:F

    .line 61
    add-float/2addr v3, v0

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 65
    .line 66
    iget-object v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    .line 67
    .line 68
    iget-object v4, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 72
    .line 73
    if-eqz v2, :cond_2

    .line 74
    const/4 v4, 0x0

    .line 75
    .line 76
    iget-object v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 80
    move-result v3

    .line 81
    .line 82
    sub-float v6, v3, v9

    .line 83
    .line 84
    iget v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    .line 85
    neg-float v7, v3

    .line 86
    .line 87
    iget-object v8, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    .line 88
    move-object v3, p1

    .line 89
    move v5, v1

    .line 90
    .line 91
    .line 92
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 93
    .line 94
    .line 95
    :cond_2
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 99
    move-result v11

    .line 100
    .line 101
    iget-object v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    .line 102
    .line 103
    iget v4, v3, Landroid/graphics/RectF;->right:F

    .line 104
    sub-float/2addr v4, v0

    .line 105
    .line 106
    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    .line 107
    sub-float/2addr v3, v0

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 111
    .line 112
    const/high16 v3, 0x43340000    # 180.0f

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 116
    .line 117
    iget-object v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    .line 118
    .line 119
    iget-object v4, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 123
    .line 124
    if-eqz v2, :cond_3

    .line 125
    const/4 v4, 0x0

    .line 126
    .line 127
    iget-object v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    .line 131
    move-result v2

    .line 132
    .line 133
    sub-float v6, v2, v9

    .line 134
    .line 135
    iget v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    .line 136
    neg-float v2, v2

    .line 137
    .line 138
    iget v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    .line 139
    .line 140
    add-float v7, v2, v3

    .line 141
    .line 142
    iget-object v8, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    .line 143
    move-object v3, p1

    .line 144
    move v5, v1

    .line 145
    .line 146
    .line 147
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 148
    .line 149
    .line 150
    :cond_3
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 154
    move-result v2

    .line 155
    .line 156
    iget-object v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    .line 157
    .line 158
    iget v4, v3, Landroid/graphics/RectF;->left:F

    .line 159
    add-float/2addr v4, v0

    .line 160
    .line 161
    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    .line 162
    sub-float/2addr v3, v0

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 166
    .line 167
    const/high16 v3, 0x43870000    # 270.0f

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 171
    .line 172
    iget-object v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    .line 173
    .line 174
    iget-object v4, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 178
    .line 179
    if-eqz v10, :cond_4

    .line 180
    const/4 v4, 0x0

    .line 181
    .line 182
    iget-object v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    .line 186
    move-result v3

    .line 187
    .line 188
    sub-float v6, v3, v9

    .line 189
    .line 190
    iget v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    .line 191
    neg-float v7, v3

    .line 192
    .line 193
    iget-object v8, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    .line 194
    move-object v3, p1

    .line 195
    move v5, v1

    .line 196
    .line 197
    .line 198
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 199
    .line 200
    .line 201
    :cond_4
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 205
    move-result v2

    .line 206
    .line 207
    iget-object v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    .line 208
    .line 209
    iget v4, v3, Landroid/graphics/RectF;->right:F

    .line 210
    sub-float/2addr v4, v0

    .line 211
    .line 212
    iget v3, v3, Landroid/graphics/RectF;->top:F

    .line 213
    add-float/2addr v3, v0

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 217
    .line 218
    const/high16 v0, 0x42b40000    # 90.0f

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 222
    .line 223
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    .line 224
    .line 225
    iget-object v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 229
    .line 230
    if-eqz v10, :cond_5

    .line 231
    const/4 v4, 0x0

    .line 232
    .line 233
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 237
    move-result v0

    .line 238
    .line 239
    sub-float v6, v0, v9

    .line 240
    .line 241
    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    .line 242
    neg-float v7, v0

    .line 243
    .line 244
    iget-object v8, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    .line 245
    move-object v3, p1

    .line 246
    move v5, v1

    .line 247
    .line 248
    .line 249
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 250
    .line 251
    .line 252
    :cond_5
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 253
    return-void
.end method

.method private n(Landroid/content/res/ColorStateList;)V
    .locals 3

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    :cond_0
    iput-object p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mBackground:Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 15
    move-result-object v1

    .line 16
    .line 17
    iget-object v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mBackground:Landroid/content/res/ColorStateList;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 21
    move-result v2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 25
    move-result p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    return-void
.end method

.method private s(FF)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    cmpg-float v1, p1, v0

    .line 4
    .line 5
    const-string v2, ". Must be >= 0"

    .line 6
    .line 7
    if-ltz v1, :cond_4

    .line 8
    .line 9
    cmpg-float v0, p2, v0

    .line 10
    .line 11
    if-ltz v0, :cond_3

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->t(F)I

    .line 15
    move-result p1

    .line 16
    int-to-float p1, p1

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p2}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->t(F)I

    .line 20
    move-result p2

    .line 21
    int-to-float p2, p2

    .line 22
    .line 23
    cmpl-float v0, p1, p2

    .line 24
    const/4 v1, 0x1

    .line 25
    .line 26
    if-lez v0, :cond_1

    .line 27
    .line 28
    iget-boolean p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPrintedShadowClipWarning:Z

    .line 29
    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    iput-boolean v1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPrintedShadowClipWarning:Z

    .line 33
    :cond_0
    move p1, p2

    .line 34
    .line 35
    :cond_1
    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    .line 36
    .line 37
    cmpl-float v0, v0, p1

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    .line 42
    .line 43
    cmpl-float v0, v0, p2

    .line 44
    .line 45
    if-nez v0, :cond_2

    .line 46
    return-void

    .line 47
    .line 48
    :cond_2
    iput p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    .line 49
    .line 50
    iput p2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    .line 51
    .line 52
    const/high16 p2, 0x3fc00000    # 1.5f

    .line 53
    mul-float/2addr p1, p2

    .line 54
    .line 55
    iget p2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mInsetShadow:I

    .line 56
    int-to-float p2, p2

    .line 57
    add-float/2addr p1, p2

    .line 58
    .line 59
    const/high16 p2, 0x3f000000    # 0.5f

    .line 60
    add-float/2addr p1, p2

    .line 61
    float-to-int p1, p1

    .line 62
    int-to-float p1, p1

    .line 63
    .line 64
    iput p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    .line 65
    .line 66
    iput-boolean v1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mDirty:Z

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 70
    return-void

    .line 71
    .line 72
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 73
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    const-string v1, "Invalid max shadow size "

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object p2

    .line 93
    .line 94
    .line 95
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 96
    throw p1

    .line 97
    .line 98
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 99
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    const-string v1, "Invalid shadow size "

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object p1

    .line 119
    .line 120
    .line 121
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 122
    throw p2
.end method

.method private t(F)I
    .locals 2

    .line 1
    .line 2
    const/high16 v0, 0x3f000000    # 0.5f

    .line 3
    add-float/2addr p1, v0

    .line 4
    float-to-int p1, p1

    .line 5
    .line 6
    rem-int/lit8 v0, p1, 0x2

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    sub-int/2addr p1, v1

    .line 11
    :cond_0
    return p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mDirty:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->a(Landroid/graphics/Rect;)V

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    iput-boolean v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mDirty:Z

    .line 15
    .line 16
    :cond_0
    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    .line 17
    .line 18
    const/high16 v1, 0x40000000    # 2.0f

    .line 19
    div-float/2addr v0, v1

    .line 20
    const/4 v2, 0x0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->e(Landroid/graphics/Canvas;)V

    .line 27
    .line 28
    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    .line 29
    neg-float v0, v0

    .line 30
    div-float/2addr v0, v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 34
    .line 35
    sget-object v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->sRoundRectHelper:Landroidx/cardview/widget/RoundRectDrawableWithShadow$RoundRectHelper;

    .line 36
    .line 37
    iget-object v1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    .line 38
    .line 39
    iget v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    .line 40
    .line 41
    iget-object v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    .line 42
    .line 43
    .line 44
    invoke-interface {v0, p1, v1, v2, v3}, Landroidx/cardview/widget/RoundRectDrawableWithShadow$RoundRectHelper;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V

    .line 45
    return-void
.end method

.method f()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mBackground:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method g()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    .line 3
    .line 4
    iget v1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    .line 5
    .line 6
    iget-boolean v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mAddPaddingForCorners:Z

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1, v2}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->d(FFZ)F

    .line 10
    move-result v0

    .line 11
    float-to-double v0, v0

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 15
    move-result-wide v0

    .line 16
    double-to-int v0, v0

    .line 17
    .line 18
    iget v1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    .line 19
    .line 20
    iget v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    .line 21
    .line 22
    iget-boolean v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mAddPaddingForCorners:Z

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v2, v3}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->c(FFZ)F

    .line 26
    move-result v1

    .line 27
    float-to-double v1, v1

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 31
    move-result-wide v1

    .line 32
    double-to-int v1, v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v1, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 36
    const/4 p1, 0x1

    .line 37
    return p1
.end method

.method h(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->getPadding(Landroid/graphics/Rect;)Z

    .line 4
    return-void
.end method

.method i()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mBackground:Landroid/content/res/ColorStateList;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    :cond_1
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_2
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method j()F
    .locals 5

    .line 1
    .line 2
    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    .line 3
    .line 4
    iget v1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    .line 5
    .line 6
    iget v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mInsetShadow:I

    .line 7
    int-to-float v2, v2

    .line 8
    add-float/2addr v1, v2

    .line 9
    .line 10
    const/high16 v2, 0x3fc00000    # 1.5f

    .line 11
    .line 12
    mul-float v3, v0, v2

    .line 13
    .line 14
    const/high16 v4, 0x40000000    # 2.0f

    .line 15
    div-float/2addr v3, v4

    .line 16
    add-float/2addr v1, v3

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 20
    move-result v0

    .line 21
    mul-float/2addr v0, v4

    .line 22
    .line 23
    iget v1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    .line 24
    mul-float/2addr v1, v2

    .line 25
    .line 26
    iget v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mInsetShadow:I

    .line 27
    int-to-float v2, v2

    .line 28
    add-float/2addr v1, v2

    .line 29
    mul-float/2addr v1, v4

    .line 30
    add-float/2addr v0, v1

    .line 31
    return v0
.end method

.method k()F
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    .line 3
    .line 4
    iget v1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    .line 5
    .line 6
    iget v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mInsetShadow:I

    .line 7
    int-to-float v2, v2

    .line 8
    add-float/2addr v1, v2

    .line 9
    .line 10
    const/high16 v2, 0x40000000    # 2.0f

    .line 11
    .line 12
    div-float v3, v0, v2

    .line 13
    add-float/2addr v1, v3

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 17
    move-result v0

    .line 18
    mul-float/2addr v0, v2

    .line 19
    .line 20
    iget v1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    .line 21
    .line 22
    iget v3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mInsetShadow:I

    .line 23
    int-to-float v3, v3

    .line 24
    add-float/2addr v1, v3

    .line 25
    mul-float/2addr v1, v2

    .line 26
    add-float/2addr v0, v1

    .line 27
    return v0
.end method

.method l()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    return v0
.end method

.method m(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mAddPaddingForCorners:Z

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 6
    return-void
.end method

.method o(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->n(Landroid/content/res/ColorStateList;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 7
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    iput-boolean p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mDirty:Z

    .line 7
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mBackground:Landroid/content/res/ColorStateList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 10
    move-result p1

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    .line 16
    move-result v0

    .line 17
    .line 18
    if-ne v0, p1, :cond_0

    .line 19
    const/4 p1, 0x0

    .line 20
    return p1

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    const/4 p1, 0x1

    .line 27
    .line 28
    iput-boolean p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mDirty:Z

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 32
    return p1
.end method

.method p(F)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    cmpg-float v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_1

    .line 6
    .line 7
    const/high16 v0, 0x3f000000    # 0.5f

    .line 8
    add-float/2addr p1, v0

    .line 9
    float-to-int p1, p1

    .line 10
    int-to-float p1, p1

    .line 11
    .line 12
    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    .line 13
    .line 14
    cmpl-float v0, v0, p1

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    return-void

    .line 18
    .line 19
    :cond_0
    iput p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    .line 20
    const/4 p1, 0x1

    .line 21
    .line 22
    iput-boolean p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mDirty:Z

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 26
    return-void

    .line 27
    .line 28
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    const-string v2, "Invalid radius "

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string p1, ". Must be >= 0"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    throw v0
.end method

.method q(F)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0, p1}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->s(FF)V

    .line 6
    return-void
.end method

.method r(F)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, v0}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->s(FF)V

    .line 6
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 16
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 6
    return-void
.end method
