.class public Lcom/narvii/widget/CommunityActivenessBar;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


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

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/CommunityActivenessBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/narvii/widget/CommunityActivenessBar;->activeness:F

    const/4 p1, -0x1

    iput p1, p0, Lcom/narvii/widget/CommunityActivenessBar;->curLevel:I

    .line 3
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/CommunityActivenessBar;->rectF:Landroid/graphics/RectF;

    .line 4
    invoke-direct {p0}, Lcom/narvii/widget/CommunityActivenessBar;->init()V

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method private dp2Px(Landroid/content/Context;F)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x1

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 13
    move-result p1

    .line 14
    float-to-int p1, p1

    .line 15
    return p1
.end method

.method private init()V
    .locals 13

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/Paint;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 7
    .line 8
    iput-object v0, p0, Lcom/narvii/widget/CommunityActivenessBar;->paint:Landroid/graphics/Paint;

    .line 9
    .line 10
    .line 11
    const v2, -0x141415

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    .line 16
    new-instance v0, Landroid/graphics/Paint;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/widget/CommunityActivenessBar;->bgPaint:Landroid/graphics/Paint;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    sget v2, Lcom/narvii/lib/R$dimen;->activeness_bar_width:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 31
    move-result v0

    .line 32
    .line 33
    iput v0, p0, Lcom/narvii/widget/CommunityActivenessBar;->strokeWidth:F

    .line 34
    .line 35
    new-instance v0, Landroid/widget/TextView;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 43
    .line 44
    iput-object v0, p0, Lcom/narvii/widget/CommunityActivenessBar;->tvIndicator:Landroid/widget/TextView;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    sget v3, Lcom/narvii/lib/R$string;->activity:I

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 60
    .line 61
    .line 62
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 66
    move-result-object v2

    .line 67
    .line 68
    const/high16 v3, 0x40000000    # 2.0f

    .line 69
    .line 70
    .line 71
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 72
    move-result v2

    .line 73
    .line 74
    .line 75
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 76
    move-result v3

    .line 77
    const/4 v4, 0x7

    .line 78
    const/4 v5, 0x6

    .line 79
    const/4 v6, 0x5

    .line 80
    const/4 v7, 0x4

    .line 81
    const/4 v8, 0x3

    .line 82
    const/4 v9, 0x2

    .line 83
    .line 84
    const/16 v10, 0x8

    .line 85
    const/4 v11, 0x0

    .line 86
    const/4 v12, 0x0

    .line 87
    .line 88
    if-eqz v3, :cond_0

    .line 89
    .line 90
    new-array v3, v10, [F

    .line 91
    .line 92
    aput v12, v3, v11

    .line 93
    .line 94
    aput v12, v3, v1

    .line 95
    .line 96
    aput v2, v3, v9

    .line 97
    .line 98
    aput v2, v3, v8

    .line 99
    .line 100
    aput v12, v3, v7

    .line 101
    .line 102
    aput v12, v3, v6

    .line 103
    .line 104
    aput v2, v3, v5

    .line 105
    .line 106
    aput v2, v3, v4

    .line 107
    goto :goto_0

    .line 108
    .line 109
    :cond_0
    new-array v3, v10, [F

    .line 110
    .line 111
    aput v2, v3, v11

    .line 112
    .line 113
    aput v2, v3, v1

    .line 114
    .line 115
    aput v12, v3, v9

    .line 116
    .line 117
    aput v12, v3, v8

    .line 118
    .line 119
    aput v2, v3, v7

    .line 120
    .line 121
    aput v2, v3, v6

    .line 122
    .line 123
    aput v12, v3, v5

    .line 124
    .line 125
    aput v12, v3, v4

    .line 126
    .line 127
    .line 128
    :goto_0
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 129
    .line 130
    .line 131
    const v2, 0x60ffffff

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 135
    .line 136
    iget-object v2, p0, Lcom/narvii/widget/CommunityActivenessBar;->tvIndicator:Landroid/widget/TextView;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    .line 141
    iget-object v0, p0, Lcom/narvii/widget/CommunityActivenessBar;->tvIndicator:Landroid/widget/TextView;

    .line 142
    const/4 v2, -0x1

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    .line 147
    iget-object v0, p0, Lcom/narvii/widget/CommunityActivenessBar;->tvIndicator:Landroid/widget/TextView;

    .line 148
    .line 149
    const/16 v3, 0x11

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 153
    .line 154
    iget-object v0, p0, Lcom/narvii/widget/CommunityActivenessBar;->tvIndicator:Landroid/widget/TextView;

    .line 155
    .line 156
    const/high16 v3, 0x41300000    # 11.0f

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 160
    .line 161
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 162
    const/4 v1, -0x2

    .line 163
    .line 164
    .line 165
    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 166
    .line 167
    .line 168
    const v1, 0x800013

    .line 169
    .line 170
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 174
    move-result-object v1

    .line 175
    .line 176
    const/high16 v2, 0x40800000    # 4.0f

    .line 177
    .line 178
    .line 179
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 180
    move-result v1

    .line 181
    .line 182
    iget-object v2, p0, Lcom/narvii/widget/CommunityActivenessBar;->tvIndicator:Landroid/widget/TextView;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2, v1, v11, v1, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 186
    .line 187
    iget-object v1, p0, Lcom/narvii/widget/CommunityActivenessBar;->tvIndicator:Landroid/widget/TextView;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    return-void
.end method

.method private updateViews(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget v1, Lcom/narvii/lib/R$drawable;->activeness_bar_bg:I

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 17
    .line 18
    sget v1, Lcom/narvii/lib/R$id;->activeness_level:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    check-cast v1, Landroid/graphics/drawable/ClipDrawable;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 24

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v7, p1

    .line 5
    .line 6
    .line 7
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 15
    move-result v2

    .line 16
    .line 17
    .line 18
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 19
    move-result v3

    .line 20
    .line 21
    iget-object v4, v0, Lcom/narvii/widget/CommunityActivenessBar;->tvIndicator:Landroid/widget/TextView;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 25
    move-result v4

    .line 26
    .line 27
    iget-object v5, v0, Lcom/narvii/widget/CommunityActivenessBar;->tvIndicator:Landroid/widget/TextView;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    .line 31
    .line 32
    sub-int v5, v2, v4

    .line 33
    .line 34
    .line 35
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeft()I

    .line 36
    move-result v6

    .line 37
    .line 38
    add-int v8, v6, v4

    .line 39
    .line 40
    .line 41
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 42
    .line 43
    iget-object v6, v0, Lcom/narvii/widget/CommunityActivenessBar;->rectF:Landroid/graphics/RectF;

    .line 44
    const/4 v9, 0x0

    .line 45
    .line 46
    if-eqz v1, :cond_0

    .line 47
    move v10, v9

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    int-to-float v10, v4

    .line 50
    .line 51
    :goto_0
    iput v10, v6, Landroid/graphics/RectF;->left:F

    .line 52
    .line 53
    const/high16 v10, 0x3f800000    # 1.0f

    .line 54
    .line 55
    iput v10, v6, Landroid/graphics/RectF;->top:F

    .line 56
    .line 57
    add-int/lit8 v11, v3, -0x1

    .line 58
    int-to-float v11, v11

    .line 59
    .line 60
    iput v11, v6, Landroid/graphics/RectF;->bottom:F

    .line 61
    .line 62
    if-eqz v1, :cond_1

    .line 63
    .line 64
    sub-int v11, v2, v4

    .line 65
    int-to-float v11, v11

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    int-to-float v11, v2

    .line 68
    .line 69
    :goto_1
    iput v11, v6, Landroid/graphics/RectF;->right:F

    .line 70
    .line 71
    iget v6, v0, Lcom/narvii/widget/CommunityActivenessBar;->activeness:F

    .line 72
    .line 73
    cmpl-float v11, v6, v9

    .line 74
    const/4 v12, 0x0

    .line 75
    .line 76
    if-nez v11, :cond_2

    .line 77
    move v11, v12

    .line 78
    goto :goto_2

    .line 79
    :cond_2
    int-to-float v11, v5

    .line 80
    mul-float/2addr v11, v6

    .line 81
    float-to-int v11, v11

    .line 82
    .line 83
    :goto_2
    cmpl-float v6, v6, v10

    .line 84
    .line 85
    if-nez v6, :cond_3

    .line 86
    .line 87
    .line 88
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 89
    move-result-object v6

    .line 90
    .line 91
    const/high16 v10, 0x40400000    # 3.0f

    .line 92
    .line 93
    .line 94
    invoke-static {v6, v10}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 95
    move-result v6

    .line 96
    goto :goto_3

    .line 97
    :cond_3
    move v6, v9

    .line 98
    .line 99
    :goto_3
    new-instance v10, Landroid/graphics/Path;

    .line 100
    .line 101
    .line 102
    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    .line 103
    .line 104
    new-instance v13, Landroid/graphics/RectF;

    .line 105
    add-int/2addr v4, v11

    .line 106
    int-to-float v4, v4

    .line 107
    .line 108
    iget v11, v0, Lcom/narvii/widget/CommunityActivenessBar;->strokeWidth:F

    .line 109
    sub-float/2addr v4, v11

    .line 110
    int-to-float v11, v3

    .line 111
    .line 112
    .line 113
    invoke-direct {v13, v9, v9, v4, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 114
    .line 115
    const/16 v14, 0x8

    .line 116
    .line 117
    new-array v3, v14, [F

    .line 118
    .line 119
    if-eqz v1, :cond_4

    .line 120
    move v4, v6

    .line 121
    goto :goto_4

    .line 122
    :cond_4
    move v4, v9

    .line 123
    .line 124
    :goto_4
    aput v4, v3, v12

    .line 125
    .line 126
    if-eqz v1, :cond_5

    .line 127
    move v4, v6

    .line 128
    goto :goto_5

    .line 129
    :cond_5
    move v4, v9

    .line 130
    :goto_5
    const/4 v15, 0x1

    .line 131
    .line 132
    aput v4, v3, v15

    .line 133
    .line 134
    if-eqz v1, :cond_6

    .line 135
    move v4, v9

    .line 136
    goto :goto_6

    .line 137
    :cond_6
    move v4, v6

    .line 138
    :goto_6
    const/4 v15, 0x2

    .line 139
    .line 140
    aput v4, v3, v15

    .line 141
    .line 142
    if-eqz v1, :cond_7

    .line 143
    move v4, v9

    .line 144
    goto :goto_7

    .line 145
    :cond_7
    move v4, v6

    .line 146
    :goto_7
    const/4 v15, 0x3

    .line 147
    .line 148
    aput v4, v3, v15

    .line 149
    .line 150
    if-eqz v1, :cond_8

    .line 151
    move v4, v9

    .line 152
    goto :goto_8

    .line 153
    :cond_8
    move v4, v6

    .line 154
    :goto_8
    const/4 v15, 0x4

    .line 155
    .line 156
    aput v4, v3, v15

    .line 157
    .line 158
    if-eqz v1, :cond_9

    .line 159
    move v4, v9

    .line 160
    goto :goto_9

    .line 161
    :cond_9
    move v4, v6

    .line 162
    :goto_9
    const/4 v15, 0x5

    .line 163
    .line 164
    aput v4, v3, v15

    .line 165
    .line 166
    if-eqz v1, :cond_a

    .line 167
    move v4, v6

    .line 168
    goto :goto_a

    .line 169
    :cond_a
    move v4, v9

    .line 170
    :goto_a
    const/4 v15, 0x6

    .line 171
    .line 172
    aput v4, v3, v15

    .line 173
    .line 174
    if-eqz v1, :cond_b

    .line 175
    move v9, v6

    .line 176
    :cond_b
    const/4 v15, 0x7

    .line 177
    .line 178
    aput v9, v3, v15

    .line 179
    .line 180
    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v10, v13, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 184
    .line 185
    .line 186
    :try_start_0
    invoke-virtual {v7, v10}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .line 188
    :catch_0
    iget-object v3, v0, Lcom/narvii/widget/CommunityActivenessBar;->bgPaint:Landroid/graphics/Paint;

    .line 189
    .line 190
    new-instance v4, Landroid/graphics/LinearGradient;

    .line 191
    .line 192
    const/16 v17, 0x0

    .line 193
    .line 194
    const/16 v18, 0x0

    .line 195
    int-to-float v2, v2

    .line 196
    .line 197
    iget v6, v0, Lcom/narvii/widget/CommunityActivenessBar;->strokeWidth:F

    .line 198
    .line 199
    sub-float v19, v2, v6

    .line 200
    .line 201
    const/16 v20, 0x0

    .line 202
    .line 203
    .line 204
    const v2, -0xa13f52

    .line 205
    .line 206
    .line 207
    const v6, -0x9200

    .line 208
    .line 209
    if-eqz v1, :cond_c

    .line 210
    .line 211
    move/from16 v21, v6

    .line 212
    goto :goto_b

    .line 213
    .line 214
    :cond_c
    move/from16 v21, v2

    .line 215
    .line 216
    :goto_b
    if-eqz v1, :cond_d

    .line 217
    .line 218
    move/from16 v22, v2

    .line 219
    goto :goto_c

    .line 220
    .line 221
    :cond_d
    move/from16 v22, v6

    .line 222
    .line 223
    :goto_c
    sget-object v23, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 224
    .line 225
    move-object/from16 v16, v4

    .line 226
    .line 227
    .line 228
    invoke-direct/range {v16 .. v23}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 232
    .line 233
    iget-object v1, v0, Lcom/narvii/widget/CommunityActivenessBar;->rectF:Landroid/graphics/RectF;

    .line 234
    .line 235
    iget-object v2, v0, Lcom/narvii/widget/CommunityActivenessBar;->bgPaint:Landroid/graphics/Paint;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 242
    .line 243
    iget-object v1, v0, Lcom/narvii/widget/CommunityActivenessBar;->paint:Landroid/graphics/Paint;

    .line 244
    const/4 v2, -0x1

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 248
    int-to-float v1, v5

    .line 249
    .line 250
    const/high16 v2, 0x41000000    # 8.0f

    .line 251
    .line 252
    div-float v9, v1, v2

    .line 253
    .line 254
    .line 255
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 256
    move-result v1

    .line 257
    .line 258
    if-eqz v1, :cond_e

    .line 259
    move v1, v12

    .line 260
    .line 261
    :goto_d
    if-ge v1, v15, :cond_f

    .line 262
    .line 263
    add-int/lit8 v8, v1, 0x1

    .line 264
    int-to-float v1, v8

    .line 265
    .line 266
    mul-float v2, v9, v1

    .line 267
    int-to-float v3, v12

    .line 268
    .line 269
    iget v1, v0, Lcom/narvii/widget/CommunityActivenessBar;->strokeWidth:F

    .line 270
    .line 271
    add-float v4, v2, v1

    .line 272
    .line 273
    iget-object v6, v0, Lcom/narvii/widget/CommunityActivenessBar;->paint:Landroid/graphics/Paint;

    .line 274
    .line 275
    move-object/from16 v1, p1

    .line 276
    move v5, v11

    .line 277
    .line 278
    .line 279
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 280
    move v1, v8

    .line 281
    goto :goto_d

    .line 282
    :cond_e
    move v10, v12

    .line 283
    .line 284
    :goto_e
    if-ge v10, v14, :cond_f

    .line 285
    int-to-float v1, v8

    .line 286
    int-to-float v2, v10

    .line 287
    mul-float/2addr v2, v9

    .line 288
    add-float/2addr v2, v1

    .line 289
    int-to-float v3, v12

    .line 290
    .line 291
    iget v1, v0, Lcom/narvii/widget/CommunityActivenessBar;->strokeWidth:F

    .line 292
    .line 293
    add-float v4, v2, v1

    .line 294
    .line 295
    iget-object v6, v0, Lcom/narvii/widget/CommunityActivenessBar;->paint:Landroid/graphics/Paint;

    .line 296
    .line 297
    move-object/from16 v1, p1

    .line 298
    move v5, v11

    .line 299
    .line 300
    .line 301
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 302
    .line 303
    add-int/lit8 v10, v10, 0x1

    .line 304
    goto :goto_e

    .line 305
    :cond_f
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 4
    return-void
.end method

.method public setActiveness(F)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    cmpg-float v1, p1, v0

    .line 4
    .line 5
    if-gez v1, :cond_0

    .line 6
    move p1, v0

    .line 7
    .line 8
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    .line 10
    cmpl-float v1, p1, v0

    .line 11
    .line 12
    if-lez v1, :cond_1

    .line 13
    move p1, v0

    .line 14
    .line 15
    :cond_1
    iput p1, p0, Lcom/narvii/widget/CommunityActivenessBar;->curHeat:F

    .line 16
    .line 17
    const/high16 v0, 0x41000000    # 8.0f

    .line 18
    mul-float/2addr p1, v0

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 22
    move-result p1

    .line 23
    int-to-float p1, p1

    .line 24
    div-float/2addr p1, v0

    .line 25
    .line 26
    iput p1, p0, Lcom/narvii/widget/CommunityActivenessBar;->activeness:F

    .line 27
    const/4 p1, 0x0

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p1}, Lcom/narvii/widget/CommunityActivenessBar;->updateViews(I)V

    .line 31
    return-void
.end method

.method public setLevel(I)V
    .locals 1

    .line 1
    .line 2
    if-gez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    .line 5
    :cond_0
    const/16 v0, 0x8

    .line 6
    .line 7
    if-le p1, v0, :cond_1

    .line 8
    move p1, v0

    .line 9
    .line 10
    :cond_1
    iget v0, p0, Lcom/narvii/widget/CommunityActivenessBar;->curLevel:I

    .line 11
    .line 12
    if-eq v0, p1, :cond_2

    .line 13
    .line 14
    iput p1, p0, Lcom/narvii/widget/CommunityActivenessBar;->curLevel:I

    .line 15
    int-to-float p1, p1

    .line 16
    .line 17
    const/high16 v0, 0x41000000    # 8.0f

    .line 18
    div-float/2addr p1, v0

    .line 19
    .line 20
    .line 21
    const v0, 0x461c4000    # 10000.0f

    .line 22
    mul-float/2addr p1, v0

    .line 23
    float-to-int p1, p1

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1}, Lcom/narvii/widget/CommunityActivenessBar;->updateViews(I)V

    .line 27
    :cond_2
    return-void
.end method
