.class public Lcom/narvii/widget/FadingEdgeLayout;
.super Landroid/widget/FrameLayout;
.source "FadingEdgeLayout.java"


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
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 34
    fill-array-data v1, :array_0

    sput-object v1, Lcom/narvii/widget/FadingEdgeLayout;->FADE_COLORS:[I

    new-array v0, v0, [I

    .line 35
    fill-array-data v0, :array_1

    sput-object v0, Lcom/narvii/widget/FadingEdgeLayout;->FADE_COLORS_REVERSE:[I

    return-void

    :array_0
    .array-data 4
        0x0
        -0x1000000
    .end array-data

    :array_1
    .array-data 4
        -0x1000000
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/FadingEdgeLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 50
    invoke-direct {p0, p2, p1}, Lcom/narvii/widget/FadingEdgeLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 55
    invoke-direct {p0, p2, p1}, Lcom/narvii/widget/FadingEdgeLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 8

    .line 60
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x42a00000    # 80.0f

    .line 59
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    if-eqz p1, :cond_a

    .line 63
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/narvii/lib/R$styleable;->FadingEdgeLayout:[I

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 64
    sget p2, Lcom/narvii/lib/R$styleable;->FadingEdgeLayout_fadingEdgeFlag:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    and-int/lit8 v2, p2, 0x1

    if-ne v2, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 66
    :goto_0
    iput-boolean v2, p0, Lcom/narvii/widget/FadingEdgeLayout;->fadeTop:Z

    and-int/lit8 v2, p2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 67
    :goto_1
    iput-boolean v2, p0, Lcom/narvii/widget/FadingEdgeLayout;->fadeBottom:Z

    and-int/lit8 v2, p2, 0x4

    .line 68
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v5

    const/16 v6, 0x8

    const/4 v7, 0x4

    if-eqz v5, :cond_2

    const/16 v5, 0x8

    goto :goto_2

    :cond_2
    const/4 v5, 0x4

    :goto_2
    if-ne v2, v5, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    iput-boolean v2, p0, Lcom/narvii/widget/FadingEdgeLayout;->fadeLeft:Z

    and-int/2addr p2, v6

    .line 69
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x4

    goto :goto_4

    :cond_4
    const/16 v2, 0x8

    :goto_4
    if-ne p2, v2, :cond_5

    const/4 v4, 0x1

    :cond_5
    iput-boolean v4, p0, Lcom/narvii/widget/FadingEdgeLayout;->fadeRight:Z

    .line 71
    sget p2, Lcom/narvii/lib/R$styleable;->FadingEdgeLayout_fadingEdgeLength:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/FadingEdgeLayout;->faddingLength:I

    .line 73
    iget-boolean p2, p0, Lcom/narvii/widget/FadingEdgeLayout;->fadeTop:Z

    if-eqz p2, :cond_6

    iget p2, p0, Lcom/narvii/widget/FadingEdgeLayout;->faddingLength:I

    if-lez p2, :cond_6

    .line 74
    iget p2, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/2addr p2, v1

    iput p2, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 76
    :cond_6
    iget-boolean p2, p0, Lcom/narvii/widget/FadingEdgeLayout;->fadeLeft:Z

    if-eqz p2, :cond_7

    iget p2, p0, Lcom/narvii/widget/FadingEdgeLayout;->faddingLength:I

    if-lez p2, :cond_7

    .line 77
    iget p2, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/2addr p2, v7

    iput p2, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 79
    :cond_7
    iget-boolean p2, p0, Lcom/narvii/widget/FadingEdgeLayout;->fadeBottom:Z

    if-eqz p2, :cond_8

    iget p2, p0, Lcom/narvii/widget/FadingEdgeLayout;->faddingLength:I

    if-lez p2, :cond_8

    .line 80
    iget p2, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/2addr p2, v3

    iput p2, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 82
    :cond_8
    iget-boolean p2, p0, Lcom/narvii/widget/FadingEdgeLayout;->fadeRight:Z

    if-eqz p2, :cond_9

    iget p2, p0, Lcom/narvii/widget/FadingEdgeLayout;->faddingLength:I

    if-lez p2, :cond_9

    .line 83
    iget p2, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/2addr p2, v6

    iput p2, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 86
    :cond_9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_5

    .line 88
    :cond_a
    iput v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->faddingLength:I

    .line 91
    :goto_5
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 92
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientPaintTop:Landroid/graphics/Paint;

    .line 93
    iget-object p2, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientPaintTop:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 94
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientPaintBottom:Landroid/graphics/Paint;

    .line 95
    iget-object p2, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientPaintBottom:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 96
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientPaintLeft:Landroid/graphics/Paint;

    .line 97
    iget-object p2, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientPaintLeft:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 98
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientPaintRight:Landroid/graphics/Paint;

    .line 99
    iget-object p2, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientPaintRight:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 101
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientRectTop:Landroid/graphics/Rect;

    .line 102
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientRectLeft:Landroid/graphics/Rect;

    .line 103
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientRectBottom:Landroid/graphics/Rect;

    .line 104
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientRectRight:Landroid/graphics/Rect;

    return-void
.end method

.method private initBottomGradient()V
    .locals 13

    .line 249
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 250
    iget v1, p0, Lcom/narvii/widget/FadingEdgeLayout;->faddingLength:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 251
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v2

    .line 252
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v3

    add-int/2addr v3, v0

    sub-int/2addr v3, v1

    .line 253
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v0, v4

    add-int/2addr v1, v3

    .line 255
    iget-object v4, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientRectBottom:Landroid/graphics/Rect;

    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 256
    new-instance v0, Landroid/graphics/LinearGradient;

    int-to-float v8, v2

    int-to-float v7, v3

    int-to-float v9, v1

    sget-object v10, Lcom/narvii/widget/FadingEdgeLayout;->FADE_COLORS_REVERSE:[I

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v11, 0x0

    move-object v5, v0

    move v6, v8

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 257
    iget-object v1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientPaintBottom:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method private initLeftGradient()V
    .locals 13

    .line 237
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 238
    iget v1, p0, Lcom/narvii/widget/FadingEdgeLayout;->faddingLength:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 239
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    .line 240
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    add-int/2addr v0, v1

    .line 242
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 243
    iget-object v4, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientRectLeft:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v2, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 244
    new-instance v3, Landroid/graphics/LinearGradient;

    int-to-float v6, v1

    int-to-float v9, v2

    int-to-float v8, v0

    sget-object v10, Lcom/narvii/widget/FadingEdgeLayout;->FADE_COLORS:[I

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v11, 0x0

    move-object v5, v3

    move v7, v9

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 245
    iget-object v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientPaintLeft:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method private initRightGradient()V
    .locals 13

    .line 261
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 262
    iget v1, p0, Lcom/narvii/widget/FadingEdgeLayout;->faddingLength:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 263
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v0

    sub-int/2addr v2, v1

    .line 264
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    add-int/2addr v1, v2

    .line 266
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 267
    iget-object v4, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientRectRight:Landroid/graphics/Rect;

    invoke-virtual {v4, v2, v0, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 268
    new-instance v3, Landroid/graphics/LinearGradient;

    int-to-float v6, v2

    int-to-float v9, v0

    int-to-float v8, v1

    sget-object v10, Lcom/narvii/widget/FadingEdgeLayout;->FADE_COLORS_REVERSE:[I

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v11, 0x0

    move-object v5, v3

    move v7, v9

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 269
    iget-object v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientPaintRight:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method private initTopGradient()V
    .locals 13

    .line 225
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 226
    iget v1, p0, Lcom/narvii/widget/FadingEdgeLayout;->faddingLength:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 227
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    .line 228
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    .line 229
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v0, v2

    .line 231
    iget-object v4, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientRectTop:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 232
    new-instance v3, Landroid/graphics/LinearGradient;

    int-to-float v8, v1

    int-to-float v7, v2

    int-to-float v9, v0

    sget-object v10, Lcom/narvii/widget/FadingEdgeLayout;->FADE_COLORS:[I

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v11, 0x0

    move-object v5, v3

    move v6, v8

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 233
    iget-object v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientPaintTop:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 183
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    .line 184
    iget-boolean v2, p0, Lcom/narvii/widget/FadingEdgeLayout;->fadeTop:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/narvii/widget/FadingEdgeLayout;->fadeBottom:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/narvii/widget/FadingEdgeLayout;->fadeLeft:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/narvii/widget/FadingEdgeLayout;->fadeRight:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 185
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_b

    if-eqz v0, :cond_b

    if-eqz v1, :cond_b

    if-nez v2, :cond_2

    goto/16 :goto_2

    .line 190
    :cond_2
    iget v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    and-int/lit8 v1, v0, 0x1

    if-ne v1, v3, :cond_3

    and-int/lit8 v0, v0, -0x2

    .line 191
    iput v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 192
    invoke-direct {p0}, Lcom/narvii/widget/FadingEdgeLayout;->initTopGradient()V

    .line 194
    :cond_3
    iget v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    and-int/lit8 v0, v0, -0x5

    .line 195
    iput v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 196
    invoke-direct {p0}, Lcom/narvii/widget/FadingEdgeLayout;->initLeftGradient()V

    .line 198
    :cond_4
    iget v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    and-int/lit8 v0, v0, -0x3

    .line 199
    iput v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 200
    invoke-direct {p0}, Lcom/narvii/widget/FadingEdgeLayout;->initBottomGradient()V

    .line 202
    :cond_5
    iget v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    and-int/lit8 v1, v0, 0x8

    if-ne v1, v5, :cond_6

    and-int/lit8 v0, v0, -0x9

    .line 203
    iput v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 204
    invoke-direct {p0}, Lcom/narvii/widget/FadingEdgeLayout;->initRightGradient()V

    :cond_6
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 207
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    .line 208
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 209
    iget-boolean v1, p0, Lcom/narvii/widget/FadingEdgeLayout;->fadeTop:Z

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/narvii/widget/FadingEdgeLayout;->faddingLength:I

    if-lez v1, :cond_7

    .line 210
    iget-object v1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientRectTop:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientPaintTop:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 212
    :cond_7
    iget-boolean v1, p0, Lcom/narvii/widget/FadingEdgeLayout;->fadeBottom:Z

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/narvii/widget/FadingEdgeLayout;->faddingLength:I

    if-lez v1, :cond_8

    .line 213
    iget-object v1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientRectBottom:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientPaintBottom:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 215
    :cond_8
    iget-boolean v1, p0, Lcom/narvii/widget/FadingEdgeLayout;->fadeLeft:Z

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/narvii/widget/FadingEdgeLayout;->faddingLength:I

    if-lez v1, :cond_9

    .line 216
    iget-object v1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientRectLeft:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientPaintLeft:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 218
    :cond_9
    iget-boolean v1, p0, Lcom/narvii/widget/FadingEdgeLayout;->fadeRight:Z

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/narvii/widget/FadingEdgeLayout;->faddingLength:I

    if-lez v1, :cond_a

    .line 219
    iget-object v1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientRectRight:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientPaintRight:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 221
    :cond_a
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    .line 186
    :cond_b
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 170
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    .line 172
    iget p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 173
    iget p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    :cond_0
    if-eq p2, p4, :cond_1

    .line 176
    iget p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 177
    iget p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    :cond_1
    return-void
.end method

.method public setFadeEdges(ZZZZ)V
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->fadeTop:Z

    if-eq v0, p1, :cond_0

    .line 131
    iput-boolean p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->fadeTop:Z

    .line 132
    iget p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 134
    :cond_0
    iget-boolean p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->fadeLeft:Z

    if-eq p1, p2, :cond_1

    .line 135
    iput-boolean p2, p0, Lcom/narvii/widget/FadingEdgeLayout;->fadeLeft:Z

    .line 136
    iget p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 138
    :cond_1
    iget-boolean p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->fadeBottom:Z

    if-eq p1, p3, :cond_2

    .line 139
    iput-boolean p3, p0, Lcom/narvii/widget/FadingEdgeLayout;->fadeBottom:Z

    .line 140
    iget p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 142
    :cond_2
    iget-boolean p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->fadeRight:Z

    if-eq p1, p4, :cond_3

    .line 143
    iput-boolean p4, p0, Lcom/narvii/widget/FadingEdgeLayout;->fadeRight:Z

    .line 144
    iget p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 146
    :cond_3
    iget p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    if-eqz p1, :cond_4

    .line 147
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_4
    return-void
.end method

.method public setFadeSizes(IIII)V
    .locals 1

    .line 108
    iget v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->faddingLength:I

    if-eq v0, p1, :cond_0

    .line 109
    iput p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->faddingLength:I

    .line 110
    iget p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 112
    :cond_0
    iget p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->faddingLength:I

    if-eq p1, p2, :cond_1

    .line 113
    iput p2, p0, Lcom/narvii/widget/FadingEdgeLayout;->faddingLength:I

    .line 114
    iget p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 116
    :cond_1
    iget p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->faddingLength:I

    if-eq p1, p3, :cond_2

    .line 117
    iput p3, p0, Lcom/narvii/widget/FadingEdgeLayout;->faddingLength:I

    .line 118
    iget p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 120
    :cond_2
    iget p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->faddingLength:I

    if-eq p1, p4, :cond_3

    .line 121
    iput p4, p0, Lcom/narvii/widget/FadingEdgeLayout;->faddingLength:I

    .line 122
    iget p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 124
    :cond_3
    iget p1, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    if-eqz p1, :cond_4

    .line 125
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_4
    return-void
.end method

.method public setPadding(IIII)V
    .locals 1

    .line 153
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 154
    iget v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 156
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 157
    iget v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 159
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v0

    if-eq v0, p3, :cond_2

    .line 160
    iget v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 162
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v0

    if-eq v0, p4, :cond_3

    .line 163
    iget v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/narvii/widget/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 165
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method
