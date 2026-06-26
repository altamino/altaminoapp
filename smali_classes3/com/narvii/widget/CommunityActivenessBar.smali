.class public Lcom/narvii/widget/CommunityActivenessBar;
.super Landroid/widget/FrameLayout;
.source "CommunityActivenessBar.java"


# static fields
.field private static final CORNER_RADIUS:I = 0x2

.field private static final DEFAULT_ACTIVENESS_CELL_COUNT:I = 0x8

.field private static final DEFAULT_COLOR:I = -0x141415

.field private static final MARGIN_TEXT:I = 0x4


# instance fields
.field private activeness:F

.field bgPaint:Landroid/graphics/Paint;

.field private curHeat:F

.field private curLevel:I

.field paint:Landroid/graphics/Paint;

.field rectF:Landroid/graphics/RectF;

.field private strokeWidth:F

.field tvIndicator:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/CommunityActivenessBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 33
    iput p1, p0, Lcom/narvii/widget/CommunityActivenessBar;->activeness:F

    const/4 p1, -0x1

    .line 34
    iput p1, p0, Lcom/narvii/widget/CommunityActivenessBar;->curLevel:I

    .line 45
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/CommunityActivenessBar;->rectF:Landroid/graphics/RectF;

    .line 54
    invoke-direct {p0}, Lcom/narvii/widget/CommunityActivenessBar;->init()V

    const/4 p1, 0x0

    .line 55
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 57
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x12

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 58
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private dp2Px(Landroid/content/Context;F)I
    .locals 1

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    .line 126
    invoke-static {v0, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private init()V
    .locals 13

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/narvii/widget/CommunityActivenessBar;->paint:Landroid/graphics/Paint;

    .line 64
    iget-object v0, p0, Lcom/narvii/widget/CommunityActivenessBar;->paint:Landroid/graphics/Paint;

    const v2, -0x141415

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/narvii/widget/CommunityActivenessBar;->bgPaint:Landroid/graphics/Paint;

    .line 66
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/narvii/lib/R$dimen;->activeness_bar_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/narvii/widget/CommunityActivenessBar;->strokeWidth:F

    .line 67
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/widget/CommunityActivenessBar;->tvIndicator:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lcom/narvii/widget/CommunityActivenessBar;->tvIndicator:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/narvii/lib/R$string;->activity:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 70
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v2

    .line 71
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v3

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/16 v10, 0x8

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-eqz v3, :cond_0

    new-array v3, v10, [F

    aput v12, v3, v11

    aput v12, v3, v1

    aput v2, v3, v9

    aput v2, v3, v8

    aput v12, v3, v7

    aput v12, v3, v6

    aput v2, v3, v5

    aput v2, v3, v4

    goto :goto_0

    :cond_0
    new-array v3, v10, [F

    aput v2, v3, v11

    aput v2, v3, v1

    aput v12, v3, v9

    aput v12, v3, v8

    aput v2, v3, v7

    aput v2, v3, v6

    aput v12, v3, v5

    aput v12, v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    const v2, 0x60ffffff

    .line 73
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 74
    iget-object v2, p0, Lcom/narvii/widget/CommunityActivenessBar;->tvIndicator:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    iget-object v0, p0, Lcom/narvii/widget/CommunityActivenessBar;->tvIndicator:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    iget-object v0, p0, Lcom/narvii/widget/CommunityActivenessBar;->tvIndicator:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 77
    iget-object v0, p0, Lcom/narvii/widget/CommunityActivenessBar;->tvIndicator:Landroid/widget/TextView;

    const/high16 v3, 0x41300000    # 11.0f

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 78
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v1, 0x800013

    .line 79
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 80
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v1

    .line 81
    iget-object v2, p0, Lcom/narvii/widget/CommunityActivenessBar;->tvIndicator:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v11, v1, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 82
    iget-object v1, p0, Lcom/narvii/widget/CommunityActivenessBar;->tvIndicator:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateViews(I)V
    .locals 2

    .line 119
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$drawable;->activeness_bar_bg:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 120
    sget v1, Lcom/narvii/lib/R$id;->activeness_level:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/ClipDrawable;

    .line 121
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 122
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 138
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 140
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    .line 141
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    .line 142
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    .line 147
    iget-object v4, v0, Lcom/narvii/widget/CommunityActivenessBar;->tvIndicator:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    .line 148
    iget-object v5, v0, Lcom/narvii/widget/CommunityActivenessBar;->tvIndicator:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    add-int/lit8 v5, v2, 0x0

    sub-int/2addr v5, v4

    .line 153
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v6

    add-int/2addr v6, v4

    const/4 v8, 0x0

    add-int/lit8 v9, v6, 0x0

    .line 155
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 156
    iget-object v6, v0, Lcom/narvii/widget/CommunityActivenessBar;->rectF:Landroid/graphics/RectF;

    const/4 v10, 0x0

    if-eqz v1, :cond_0

    const/4 v11, 0x0

    goto :goto_0

    :cond_0
    int-to-float v11, v4

    :goto_0
    iput v11, v6, Landroid/graphics/RectF;->left:F

    .line 157
    iget-object v6, v0, Lcom/narvii/widget/CommunityActivenessBar;->rectF:Landroid/graphics/RectF;

    const/high16 v11, 0x3f800000    # 1.0f

    iput v11, v6, Landroid/graphics/RectF;->top:F

    add-int/lit8 v12, v3, -0x1

    int-to-float v12, v12

    .line 158
    iput v12, v6, Landroid/graphics/RectF;->bottom:F

    if-eqz v1, :cond_1

    sub-int v12, v2, v4

    int-to-float v12, v12

    goto :goto_1

    :cond_1
    int-to-float v12, v2

    .line 159
    :goto_1
    iput v12, v6, Landroid/graphics/RectF;->right:F

    .line 160
    iget v6, v0, Lcom/narvii/widget/CommunityActivenessBar;->activeness:F

    cmpl-float v12, v6, v10

    if-nez v12, :cond_2

    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    int-to-float v12, v5

    mul-float v6, v6, v12

    float-to-int v6, v6

    .line 161
    :goto_2
    iget v12, v0, Lcom/narvii/widget/CommunityActivenessBar;->activeness:F

    cmpl-float v11, v12, v11

    if-nez v11, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    const/high16 v12, 0x40400000    # 3.0f

    invoke-static {v11, v12}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v11

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    .line 162
    :goto_3
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    .line 163
    new-instance v13, Landroid/graphics/RectF;

    add-int/2addr v4, v6

    int-to-float v4, v4

    iget v6, v0, Lcom/narvii/widget/CommunityActivenessBar;->strokeWidth:F

    sub-float/2addr v4, v6

    int-to-float v14, v3

    invoke-direct {v13, v10, v10, v4, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/16 v15, 0x8

    new-array v3, v15, [F

    if-eqz v1, :cond_4

    move v4, v11

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    aput v4, v3, v8

    if-eqz v1, :cond_5

    move v4, v11

    goto :goto_5

    :cond_5
    const/4 v4, 0x0

    :goto_5
    const/4 v6, 0x1

    aput v4, v3, v6

    const/4 v4, 0x2

    if-eqz v1, :cond_6

    const/4 v6, 0x0

    goto :goto_6

    :cond_6
    move v6, v11

    :goto_6
    aput v6, v3, v4

    const/4 v4, 0x3

    if-eqz v1, :cond_7

    const/4 v6, 0x0

    goto :goto_7

    :cond_7
    move v6, v11

    :goto_7
    aput v6, v3, v4

    const/4 v4, 0x4

    if-eqz v1, :cond_8

    const/4 v6, 0x0

    goto :goto_8

    :cond_8
    move v6, v11

    :goto_8
    aput v6, v3, v4

    const/4 v4, 0x5

    if-eqz v1, :cond_9

    const/4 v6, 0x0

    goto :goto_9

    :cond_9
    move v6, v11

    :goto_9
    aput v6, v3, v4

    const/4 v4, 0x6

    if-eqz v1, :cond_a

    move v6, v11

    goto :goto_a

    :cond_a
    const/4 v6, 0x0

    :goto_a
    aput v6, v3, v4

    if-eqz v1, :cond_b

    move v10, v11

    :cond_b
    const/4 v11, 0x7

    aput v10, v3, v11

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v12, v13, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 167
    :try_start_0
    invoke-virtual {v7, v12}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    nop

    .line 171
    :goto_b
    iget-object v3, v0, Lcom/narvii/widget/CommunityActivenessBar;->bgPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/LinearGradient;

    const/16 v17, 0x0

    const/16 v18, 0x0

    int-to-float v2, v2

    iget v6, v0, Lcom/narvii/widget/CommunityActivenessBar;->strokeWidth:F

    sub-float v19, v2, v6

    const/16 v20, 0x0

    const v2, -0x9200

    const v6, -0xa13f52

    if-eqz v1, :cond_c

    const v21, -0x9200

    goto :goto_c

    :cond_c
    const v21, -0xa13f52

    :goto_c
    if-eqz v1, :cond_d

    const v22, -0xa13f52

    goto :goto_d

    :cond_d
    const v22, -0x9200

    :goto_d
    sget-object v23, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v16, v4

    invoke-direct/range {v16 .. v23}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 173
    iget-object v1, v0, Lcom/narvii/widget/CommunityActivenessBar;->rectF:Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/narvii/widget/CommunityActivenessBar;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 174
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 177
    iget-object v1, v0, Lcom/narvii/widget/CommunityActivenessBar;->paint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v1, v5

    const/high16 v2, 0x41000000    # 8.0f

    div-float v10, v1, v2

    .line 179
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v11, :cond_f

    add-int/lit8 v9, v1, 0x1

    int-to-float v1, v9

    mul-float v2, v10, v1

    int-to-float v3, v8

    .line 181
    iget v1, v0, Lcom/narvii/widget/CommunityActivenessBar;->strokeWidth:F

    add-float v4, v2, v1

    iget-object v6, v0, Lcom/narvii/widget/CommunityActivenessBar;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v5, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move v1, v9

    goto :goto_e

    :cond_e
    const/4 v11, 0x0

    :goto_f
    if-ge v11, v15, :cond_f

    int-to-float v1, v9

    int-to-float v2, v11

    mul-float v2, v2, v10

    add-float/2addr v2, v1

    int-to-float v3, v8

    .line 185
    iget v1, v0, Lcom/narvii/widget/CommunityActivenessBar;->strokeWidth:F

    add-float v4, v2, v1

    iget-object v6, v0, Lcom/narvii/widget/CommunityActivenessBar;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v5, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_f

    :cond_f
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 133
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    return-void
.end method

.method public setActiveness(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 112
    :cond_1
    iput p1, p0, Lcom/narvii/widget/CommunityActivenessBar;->curHeat:F

    .line 113
    iget p1, p0, Lcom/narvii/widget/CommunityActivenessBar;->curHeat:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    iput p1, p0, Lcom/narvii/widget/CommunityActivenessBar;->activeness:F

    const/4 p1, 0x0

    .line 114
    invoke-direct {p0, p1}, Lcom/narvii/widget/CommunityActivenessBar;->updateViews(I)V

    return-void
.end method

.method public setLevel(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/16 v0, 0x8

    if-le p1, v0, :cond_1

    const/16 p1, 0x8

    .line 97
    :cond_1
    iget v0, p0, Lcom/narvii/widget/CommunityActivenessBar;->curLevel:I

    if-eq v0, p1, :cond_2

    .line 98
    iput p1, p0, Lcom/narvii/widget/CommunityActivenessBar;->curLevel:I

    .line 99
    iget p1, p0, Lcom/narvii/widget/CommunityActivenessBar;->curLevel:I

    int-to-float p1, p1

    const/high16 v0, 0x41000000    # 8.0f

    div-float/2addr p1, v0

    const v0, 0x461c4000    # 10000.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 100
    invoke-direct {p0, p1}, Lcom/narvii/widget/CommunityActivenessBar;->updateViews(I)V

    :cond_2
    return-void
.end method
