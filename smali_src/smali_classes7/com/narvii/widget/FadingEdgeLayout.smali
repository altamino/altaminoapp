.class public Lcom/narvii/widget/FadingEdgeLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final DEFAULT_GRADIENT_SIZE_DP:I = 0x50

.field private static final DIRTY_FLAG_BOTTOM:I = 0x2

.field private static final DIRTY_FLAG_LEFT:I = 0x4

.field private static final DIRTY_FLAG_RIGHT:I = 0x8

.field private static final DIRTY_FLAG_TOP:I = 0x1

.field private static final FADE_COLORS:[I

.field private static final FADE_COLORS_REVERSE:[I

.field public static final FADE_EDGE_BOTTOM:I = 0x2

.field public static final FADE_EDGE_LEFT:I = 0x4

.field public static final FADE_EDGE_RIGHT:I = 0x8

.field public static final FADE_EDGE_TOP:I = 0x1


# instance fields
.field private faddingLength:I

.field private fadeBottom:Z

.field private fadeLeft:Z

.field private fadeRight:Z

.field private fadeTop:Z

.field private gradientDirtyFlags:I

.field private gradientPaintBottom:Landroid/graphics/Paint;

.field private gradientPaintLeft:Landroid/graphics/Paint;

.field private gradientPaintRight:Landroid/graphics/Paint;

.field private gradientPaintTop:Landroid/graphics/Paint;

.field private gradientRectBottom:Landroid/graphics/Rect;

.field private gradientRectLeft:Landroid/graphics/Rect;

.field private gradientRectRight:Landroid/graphics/Rect;

.field private gradientRectTop:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, -0x1000000

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sput-object v2, Lcom/narvii/widget/FadingEdgeLayout;->FADE_COLORS:[I

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/narvii/widget/FadingEdgeLayout;->FADE_COLORS_REVERSE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/FadingEdgeLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p2, p1}, Lcom/narvii/widget/FadingEdgeLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p2, p1}, Lcom/narvii/widget/FadingEdgeLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    const/high16 v2, 0x42a00000    # 80.0f

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 15
    move-result v0

    .line 16
    float-to-int v0, v0

    .line 17
    .line 18
    if-eqz p1, :cond_a

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    sget-object v3, Lcom/narvii/lib/R$styleable;->FadingEdgeLayout:[I

    .line 25
    const/4 v4, 0x0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, p1, v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    sget p2, Lcom/narvii/lib/R$styleable;->FadingEdgeLayout_fadingEdgeFlag:I

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 35
    move-result p2

    .line 36
    .line 37
    and-int/lit8 v2, p2, 0x1

    .line 38
    .line 39
    if-ne v2, v1, :cond_0

    .line 40
    move v2, v1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move v2, v4

    .line 43
    .line 44
    :goto_0
    iput-boolean v2, p0, Lcom/narvii/widget/FadingEdgeLayout;->fadeTop:Z

    .line 45
    .line 46
    and-int/lit8 v2, p2, 0x2

    .line 47
    const/4 v3, 0x2

    .line 48
    .line 49
    if-ne v2, v3, :cond_1

    .line 50
    move v2, v1

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    move v2, v4

    .line 53
    .line 54
    :goto_1
    iput-boolean v2, p0, Lcom/narvii/widget/FadingEdgeLayout;->fadeBottom:Z

    .line 55
    .line 56
    and-int/lit8 v2, p2, 0x4

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 60
    move-result v5

    .line 61
    .line 62
    const/16 v6, 0x8

    .line 63
    const/4 v7, 0x4

    .line 64
    .line 65
    if-eqz v5, :cond_2

    .line 66
    move v5, v6

    .line 67
    goto :goto_2

    .line 68
    :cond_2
    move v5, v7

    .line 69
    .line 70
    :goto_2
    if-ne v2, v5, :cond_3

    .line 71
    move v2, v1

    .line 72
    goto :goto_3

    .line 73
    :cond_3
    move v2, v4

    .line 74
    .line 75
    :goto_3
    iput-boolean v2, p0, Lcom/narvii/widget/FadingEdgeLayout;->fadeLeft:Z

    .line 76
    and-int/2addr p2, v6

    .line 77
    .line 78
    .line 79
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 80
    move-result v2

    .line 81
    .line 82
    if-eqz v2, :cond_4

    .line 83
    move v2, v7

    .line 84
    goto :goto_4

    .line 85
    :cond_4
    move v2, v6

    .line 86
    .line 87
    :goto_4
    if-ne p2, v2, :cond_5

    .line 88
    move v4, v1

    .line 89
    .line 90
    :cond_5
    iput-boolean v4, p0, Lcom/narvii/widget/FadingEdgeLayout;->fadeRight:Z

    .line 91
    .line 92
    sget p2, Lcom/narvii/lib/R$styleable;->FadingEdgeLayout_fadingEdgeLength:I

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 96
    move-result p2

    .line 97
    .line 98
    iput p2, p0, Lcom/narvii/widget/FadingEdgeLayout;->faddingLength:I

    .line 99
    .line 100
    iget-boolean v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->fadeTop:Z

    .line 101
    .line 102
    if-eqz v0, :cond_6

    .line 103
    .line 104
    if-lez p2, :cond_6

    .line 105
    .line 106
    iget v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 107
    or-int/2addr v0, v1

    .line 108
    .line 109
    iput v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 110
    .line 111
    :cond_6
    iget-boolean v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->fadeLeft:Z

    .line 112
    .line 113
    if-eqz v0, :cond_7

    .line 114
    .line 115
    if-lez p2, :cond_7

    .line 116
    .line 117
    iget v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 118
    or-int/2addr v0, v7

    .line 119
    .line 120
    iput v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 121
    .line 122
    :cond_7
    iget-boolean v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->fadeBottom:Z

    .line 123
    .line 124
    if-eqz v0, :cond_8

    .line 125
    .line 126
    if-lez p2, :cond_8

    .line 127
    .line 128
    iget v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 129
    or-int/2addr v0, v3

    .line 130
    .line 131
    iput v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 132
    .line 133
    :cond_8
    iget-boolean v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->fadeRight:Z

    .line 134
    .line 135
    if-eqz v0, :cond_9

    .line 136
    .line 137
    if-lez p2, :cond_9

    .line 138
    .line 139
    iget p2, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 140
    or-int/2addr p2, v6

    .line 141
    .line 142
    iput p2, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 143
    .line 144
    .line 145
    :cond_9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 146
    goto :goto_5

    .line 147
    .line 148
    :cond_a
    iput v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->faddingLength:I

    .line 149
    .line 150
    :goto_5
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    .line 151
    .line 152
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    .line 153
    .line 154
    .line 155
    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 156
    .line 157
    new-instance p2, Landroid/graphics/Paint;

    .line 158
    .line 159
    .line 160
    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 161
    .line 162
    iput-object p2, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientPaintTop:Landroid/graphics/Paint;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 166
    .line 167
    new-instance p2, Landroid/graphics/Paint;

    .line 168
    .line 169
    .line 170
    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 171
    .line 172
    iput-object p2, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientPaintBottom:Landroid/graphics/Paint;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 176
    .line 177
    new-instance p2, Landroid/graphics/Paint;

    .line 178
    .line 179
    .line 180
    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 181
    .line 182
    iput-object p2, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientPaintLeft:Landroid/graphics/Paint;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 186
    .line 187
    new-instance p2, Landroid/graphics/Paint;

    .line 188
    .line 189
    .line 190
    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 191
    .line 192
    iput-object p2, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientPaintRight:Landroid/graphics/Paint;

    .line 193
    .line 194
    .line 195
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 196
    .line 197
    new-instance p1, Landroid/graphics/Rect;

    .line 198
    .line 199
    .line 200
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 201
    .line 202
    iput-object p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientRectTop:Landroid/graphics/Rect;

    .line 203
    .line 204
    new-instance p1, Landroid/graphics/Rect;

    .line 205
    .line 206
    .line 207
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 208
    .line 209
    iput-object p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientRectLeft:Landroid/graphics/Rect;

    .line 210
    .line 211
    new-instance p1, Landroid/graphics/Rect;

    .line 212
    .line 213
    .line 214
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 215
    .line 216
    iput-object p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientRectBottom:Landroid/graphics/Rect;

    .line 217
    .line 218
    new-instance p1, Landroid/graphics/Rect;

    .line 219
    .line 220
    .line 221
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 222
    .line 223
    iput-object p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientRectRight:Landroid/graphics/Rect;

    .line 224
    return-void
.end method

.method private initBottomGradient()V
    .locals 13

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 13
    move-result v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    .line 16
    iget v1, p0, Lcom/narvii/widget/FadingEdgeLayout;->faddingLength:I

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 20
    move-result v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 24
    move-result v2

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 28
    move-result v3

    .line 29
    add-int/2addr v3, v0

    .line 30
    sub-int/2addr v3, v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 34
    move-result v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 38
    move-result v4

    .line 39
    sub-int/2addr v0, v4

    .line 40
    add-int/2addr v1, v3

    .line 41
    .line 42
    iget-object v4, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientRectBottom:Landroid/graphics/Rect;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 46
    .line 47
    new-instance v0, Landroid/graphics/LinearGradient;

    .line 48
    int-to-float v8, v2

    .line 49
    int-to-float v7, v3

    .line 50
    int-to-float v9, v1

    .line 51
    .line 52
    sget-object v10, Lcom/narvii/widget/FadingEdgeLayout;->FADE_COLORS_REVERSE:[I

    .line 53
    const/4 v11, 0x0

    .line 54
    .line 55
    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 56
    move-object v5, v0

    .line 57
    move v6, v8

    .line 58
    .line 59
    .line 60
    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 61
    .line 62
    iget-object v1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientPaintBottom:Landroid/graphics/Paint;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 66
    return-void
.end method

.method private initLeftGradient()V
    .locals 13

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 13
    move-result v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    .line 16
    iget v1, p0, Lcom/narvii/widget/FadingEdgeLayout;->faddingLength:I

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 20
    move-result v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 24
    move-result v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 28
    move-result v2

    .line 29
    add-int/2addr v0, v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 33
    move-result v3

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 37
    move-result v4

    .line 38
    sub-int/2addr v3, v4

    .line 39
    .line 40
    iget-object v4, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientRectLeft:Landroid/graphics/Rect;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v1, v2, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 44
    .line 45
    new-instance v3, Landroid/graphics/LinearGradient;

    .line 46
    int-to-float v6, v1

    .line 47
    int-to-float v9, v2

    .line 48
    int-to-float v8, v0

    .line 49
    .line 50
    sget-object v10, Lcom/narvii/widget/FadingEdgeLayout;->FADE_COLORS:[I

    .line 51
    const/4 v11, 0x0

    .line 52
    .line 53
    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 54
    move-object v5, v3

    .line 55
    move v7, v9

    .line 56
    .line 57
    .line 58
    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 59
    .line 60
    iget-object v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientPaintLeft:Landroid/graphics/Paint;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 64
    return-void
.end method

.method private initRightGradient()V
    .locals 13

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 13
    move-result v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    .line 16
    iget v1, p0, Lcom/narvii/widget/FadingEdgeLayout;->faddingLength:I

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 20
    move-result v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 24
    move-result v2

    .line 25
    add-int/2addr v2, v0

    .line 26
    sub-int/2addr v2, v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 30
    move-result v0

    .line 31
    add-int/2addr v1, v2

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 35
    move-result v3

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 39
    move-result v4

    .line 40
    sub-int/2addr v3, v4

    .line 41
    .line 42
    iget-object v4, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientRectRight:Landroid/graphics/Rect;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, v2, v0, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 46
    .line 47
    new-instance v3, Landroid/graphics/LinearGradient;

    .line 48
    int-to-float v6, v2

    .line 49
    int-to-float v9, v0

    .line 50
    int-to-float v8, v1

    .line 51
    .line 52
    sget-object v10, Lcom/narvii/widget/FadingEdgeLayout;->FADE_COLORS_REVERSE:[I

    .line 53
    const/4 v11, 0x0

    .line 54
    .line 55
    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 56
    move-object v5, v3

    .line 57
    move v7, v9

    .line 58
    .line 59
    .line 60
    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 61
    .line 62
    iget-object v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientPaintRight:Landroid/graphics/Paint;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 66
    return-void
.end method

.method private initTopGradient()V
    .locals 13

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 13
    move-result v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    .line 16
    iget v1, p0, Lcom/narvii/widget/FadingEdgeLayout;->faddingLength:I

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 20
    move-result v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 24
    move-result v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 28
    move-result v2

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 32
    move-result v3

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 36
    move-result v4

    .line 37
    sub-int/2addr v3, v4

    .line 38
    add-int/2addr v0, v2

    .line 39
    .line 40
    iget-object v4, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientRectTop:Landroid/graphics/Rect;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 44
    .line 45
    new-instance v3, Landroid/graphics/LinearGradient;

    .line 46
    int-to-float v8, v1

    .line 47
    int-to-float v7, v2

    .line 48
    int-to-float v9, v0

    .line 49
    .line 50
    sget-object v10, Lcom/narvii/widget/FadingEdgeLayout;->FADE_COLORS:[I

    .line 51
    const/4 v11, 0x0

    .line 52
    .line 53
    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 54
    move-object v5, v3

    .line 55
    move v6, v8

    .line 56
    .line 57
    .line 58
    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 59
    .line 60
    iget-object v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientPaintTop:Landroid/graphics/Paint;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 64
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 8
    move-result v1

    .line 9
    .line 10
    iget-boolean v2, p0, Lcom/narvii/widget/FadingEdgeLayout;->fadeTop:Z

    .line 11
    const/4 v3, 0x1

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    iget-boolean v2, p0, Lcom/narvii/widget/FadingEdgeLayout;->fadeBottom:Z

    .line 16
    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    iget-boolean v2, p0, Lcom/narvii/widget/FadingEdgeLayout;->fadeLeft:Z

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    iget-boolean v2, p0, Lcom/narvii/widget/FadingEdgeLayout;->fadeRight:Z

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v2, 0x0

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    move v2, v3

    .line 30
    .line 31
    .line 32
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 33
    move-result v4

    .line 34
    .line 35
    const/16 v5, 0x8

    .line 36
    .line 37
    if-eq v4, v5, :cond_b

    .line 38
    .line 39
    if-eqz v0, :cond_b

    .line 40
    .line 41
    if-eqz v1, :cond_b

    .line 42
    .line 43
    if-nez v2, :cond_2

    .line 44
    .line 45
    goto/16 :goto_2

    .line 46
    .line 47
    :cond_2
    iget v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 48
    .line 49
    and-int/lit8 v1, v0, 0x1

    .line 50
    .line 51
    if-ne v1, v3, :cond_3

    .line 52
    .line 53
    and-int/lit8 v0, v0, -0x2

    .line 54
    .line 55
    iput v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Lcom/narvii/widget/FadingEdgeLayout;->initTopGradient()V

    .line 59
    .line 60
    :cond_3
    iget v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 61
    .line 62
    and-int/lit8 v1, v0, 0x4

    .line 63
    const/4 v2, 0x4

    .line 64
    .line 65
    if-ne v1, v2, :cond_4

    .line 66
    .line 67
    and-int/lit8 v0, v0, -0x5

    .line 68
    .line 69
    iput v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 70
    .line 71
    .line 72
    invoke-direct {p0}, Lcom/narvii/widget/FadingEdgeLayout;->initLeftGradient()V

    .line 73
    .line 74
    :cond_4
    iget v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 75
    .line 76
    and-int/lit8 v1, v0, 0x2

    .line 77
    const/4 v2, 0x2

    .line 78
    .line 79
    if-ne v1, v2, :cond_5

    .line 80
    .line 81
    and-int/lit8 v0, v0, -0x3

    .line 82
    .line 83
    iput v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 84
    .line 85
    .line 86
    invoke-direct {p0}, Lcom/narvii/widget/FadingEdgeLayout;->initBottomGradient()V

    .line 87
    .line 88
    :cond_5
    iget v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 89
    .line 90
    and-int/lit8 v1, v0, 0x8

    .line 91
    .line 92
    if-ne v1, v5, :cond_6

    .line 93
    .line 94
    and-int/lit8 v0, v0, -0x9

    .line 95
    .line 96
    iput v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 97
    .line 98
    .line 99
    invoke-direct {p0}, Lcom/narvii/widget/FadingEdgeLayout;->initRightGradient()V

    .line 100
    :cond_6
    const/4 v2, 0x0

    .line 101
    const/4 v3, 0x0

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 105
    move-result v0

    .line 106
    int-to-float v4, v0

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 110
    move-result v0

    .line 111
    int-to-float v5, v0

    .line 112
    const/4 v6, 0x0

    .line 113
    .line 114
    const/16 v7, 0x1f

    .line 115
    move-object v1, p1

    .line 116
    .line 117
    .line 118
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 119
    move-result v0

    .line 120
    .line 121
    .line 122
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 123
    .line 124
    iget-boolean v1, p0, Lcom/narvii/widget/FadingEdgeLayout;->fadeTop:Z

    .line 125
    .line 126
    if-eqz v1, :cond_7

    .line 127
    .line 128
    iget v1, p0, Lcom/narvii/widget/FadingEdgeLayout;->faddingLength:I

    .line 129
    .line 130
    if-lez v1, :cond_7

    .line 131
    .line 132
    iget-object v1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientRectTop:Landroid/graphics/Rect;

    .line 133
    .line 134
    iget-object v2, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientPaintTop:Landroid/graphics/Paint;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 138
    .line 139
    :cond_7
    iget-boolean v1, p0, Lcom/narvii/widget/FadingEdgeLayout;->fadeBottom:Z

    .line 140
    .line 141
    if-eqz v1, :cond_8

    .line 142
    .line 143
    iget v1, p0, Lcom/narvii/widget/FadingEdgeLayout;->faddingLength:I

    .line 144
    .line 145
    if-lez v1, :cond_8

    .line 146
    .line 147
    iget-object v1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientRectBottom:Landroid/graphics/Rect;

    .line 148
    .line 149
    iget-object v2, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientPaintBottom:Landroid/graphics/Paint;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 153
    .line 154
    :cond_8
    iget-boolean v1, p0, Lcom/narvii/widget/FadingEdgeLayout;->fadeLeft:Z

    .line 155
    .line 156
    if-eqz v1, :cond_9

    .line 157
    .line 158
    iget v1, p0, Lcom/narvii/widget/FadingEdgeLayout;->faddingLength:I

    .line 159
    .line 160
    if-lez v1, :cond_9

    .line 161
    .line 162
    iget-object v1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientRectLeft:Landroid/graphics/Rect;

    .line 163
    .line 164
    iget-object v2, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientPaintLeft:Landroid/graphics/Paint;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 168
    .line 169
    :cond_9
    iget-boolean v1, p0, Lcom/narvii/widget/FadingEdgeLayout;->fadeRight:Z

    .line 170
    .line 171
    if-eqz v1, :cond_a

    .line 172
    .line 173
    iget v1, p0, Lcom/narvii/widget/FadingEdgeLayout;->faddingLength:I

    .line 174
    .line 175
    if-lez v1, :cond_a

    .line 176
    .line 177
    iget-object v1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientRectRight:Landroid/graphics/Rect;

    .line 178
    .line 179
    iget-object v2, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientPaintRight:Landroid/graphics/Paint;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 183
    .line 184
    .line 185
    :cond_a
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 186
    return-void

    .line 187
    .line 188
    .line 189
    :cond_b
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 190
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 4
    .line 5
    if-eq p1, p3, :cond_0

    .line 6
    .line 7
    iget p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 8
    .line 9
    or-int/lit8 p1, p1, 0xc

    .line 10
    .line 11
    iput p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 12
    .line 13
    :cond_0
    if-eq p2, p4, :cond_1

    .line 14
    .line 15
    iget p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 16
    .line 17
    or-int/lit8 p1, p1, 0x3

    .line 18
    .line 19
    iput p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 20
    :cond_1
    return-void
.end method

.method public setFadeEdges(ZZZZ)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->fadeTop:Z

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->fadeTop:Z

    .line 7
    .line 8
    iget p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 9
    .line 10
    or-int/lit8 p1, p1, 0x1

    .line 11
    .line 12
    iput p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 13
    .line 14
    :cond_0
    iget-boolean p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->fadeLeft:Z

    .line 15
    .line 16
    if-eq p1, p2, :cond_1

    .line 17
    .line 18
    iput-boolean p2, p0, Lcom/narvii/widget/FadingEdgeLayout;->fadeLeft:Z

    .line 19
    .line 20
    iget p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 21
    .line 22
    or-int/lit8 p1, p1, 0x4

    .line 23
    .line 24
    iput p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 25
    .line 26
    :cond_1
    iget-boolean p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->fadeBottom:Z

    .line 27
    .line 28
    if-eq p1, p3, :cond_2

    .line 29
    .line 30
    iput-boolean p3, p0, Lcom/narvii/widget/FadingEdgeLayout;->fadeBottom:Z

    .line 31
    .line 32
    iget p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 33
    .line 34
    or-int/lit8 p1, p1, 0x2

    .line 35
    .line 36
    iput p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 37
    .line 38
    :cond_2
    iget-boolean p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->fadeRight:Z

    .line 39
    .line 40
    if-eq p1, p4, :cond_3

    .line 41
    .line 42
    iput-boolean p4, p0, Lcom/narvii/widget/FadingEdgeLayout;->fadeRight:Z

    .line 43
    .line 44
    iget p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 45
    .line 46
    or-int/lit8 p1, p1, 0x8

    .line 47
    .line 48
    iput p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 49
    .line 50
    :cond_3
    iget p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 51
    .line 52
    if-eqz p1, :cond_4

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 56
    :cond_4
    return-void
.end method

.method public setFadeSizes(IIII)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->faddingLength:I

    .line 3
    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->faddingLength:I

    .line 7
    .line 8
    iget p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 9
    .line 10
    or-int/lit8 p1, p1, 0x1

    .line 11
    .line 12
    iput p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 13
    .line 14
    :cond_0
    iget p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->faddingLength:I

    .line 15
    .line 16
    if-eq p1, p2, :cond_1

    .line 17
    .line 18
    iput p2, p0, Lcom/narvii/widget/FadingEdgeLayout;->faddingLength:I

    .line 19
    .line 20
    iget p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 21
    .line 22
    or-int/lit8 p1, p1, 0x4

    .line 23
    .line 24
    iput p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 25
    .line 26
    :cond_1
    iget p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->faddingLength:I

    .line 27
    .line 28
    if-eq p1, p3, :cond_2

    .line 29
    .line 30
    iput p3, p0, Lcom/narvii/widget/FadingEdgeLayout;->faddingLength:I

    .line 31
    .line 32
    iget p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 33
    .line 34
    or-int/lit8 p1, p1, 0x2

    .line 35
    .line 36
    iput p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 37
    .line 38
    :cond_2
    iget p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->faddingLength:I

    .line 39
    .line 40
    if-eq p1, p4, :cond_3

    .line 41
    .line 42
    iput p4, p0, Lcom/narvii/widget/FadingEdgeLayout;->faddingLength:I

    .line 43
    .line 44
    iget p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 45
    .line 46
    or-int/lit8 p1, p1, 0x8

    .line 47
    .line 48
    iput p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 49
    .line 50
    :cond_3
    iget p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 51
    .line 52
    if-eqz p1, :cond_4

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 56
    :cond_4
    return-void
.end method

.method public setPadding(IIII)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eq v0, p1, :cond_0

    .line 7
    .line 8
    iget v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 9
    .line 10
    or-int/lit8 v0, v0, 0x4

    .line 11
    .line 12
    iput v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eq v0, p2, :cond_1

    .line 19
    .line 20
    iget v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 21
    .line 22
    or-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    iput v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eq v0, p3, :cond_2

    .line 31
    .line 32
    iget v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 33
    .line 34
    or-int/lit8 v0, v0, 0x8

    .line 35
    .line 36
    iput v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 37
    .line 38
    .line 39
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 40
    move-result v0

    .line 41
    .line 42
    if-eq v0, p4, :cond_3

    .line 43
    .line 44
    iget v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 45
    .line 46
    or-int/lit8 v0, v0, 0x2

    .line 47
    .line 48
    iput v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 49
    .line 50
    .line 51
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 52
    return-void
.end method
