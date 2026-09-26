.class public Lcom/narvii/widget/ThumbImageView;
.super Lcom/narvii/widget/NVImageView;
.source "SourceFile"


# static fields
.field private static final sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field final contentBounds:Landroid/graphics/RectF;

.field private dirty:Z

.field private forceRequestHeight:I

.field private forceRequestWidth:I

.field public shadowColor:I

.field private shadowConfig:Lcom/narvii/widget/shadow/ShadowConfig;

.field protected shadowCornerRadius:F

.field public shadowOffsetX:I

.field public shadowOffsetY:I

.field public shadowSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    const/16 v0, 0x8

    .line 3
    .line 4
    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    .line 8
    .line 9
    aput-object v2, v0, v1

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 13
    .line 14
    aput-object v2, v0, v1

    .line 15
    const/4 v1, 0x2

    .line 16
    .line 17
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    .line 18
    .line 19
    aput-object v2, v0, v1

    .line 20
    const/4 v1, 0x3

    .line 21
    .line 22
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 23
    .line 24
    aput-object v2, v0, v1

    .line 25
    const/4 v1, 0x4

    .line 26
    .line 27
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    .line 28
    .line 29
    aput-object v2, v0, v1

    .line 30
    const/4 v1, 0x5

    .line 31
    .line 32
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 33
    .line 34
    aput-object v2, v0, v1

    .line 35
    const/4 v1, 0x6

    .line 36
    .line 37
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 38
    .line 39
    aput-object v2, v0, v1

    .line 40
    const/4 v1, 0x7

    .line 41
    .line 42
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 43
    .line 44
    aput-object v2, v0, v1

    .line 45
    .line 46
    sput-object v0, Lcom/narvii/widget/ThumbImageView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/narvii/widget/ThumbImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/ThumbImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/widget/NVImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/widget/ThumbImageView;->dirty:Z

    .line 4
    sget-object v0, Lcom/narvii/lib/R$styleable;->ThumbImageView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    sget p2, Lcom/narvii/lib/R$styleable;->ThumbImageView_shadowSize:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/ThumbImageView;->shadowSize:I

    .line 6
    sget p2, Lcom/narvii/lib/R$styleable;->ThumbImageView_shadowOffsetX:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/ThumbImageView;->shadowOffsetX:I

    .line 7
    sget p2, Lcom/narvii/lib/R$styleable;->ThumbImageView_shadowOffsetY:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/ThumbImageView;->shadowOffsetY:I

    .line 8
    sget p2, Lcom/narvii/lib/R$styleable;->ThumbImageView_shadowColor:I

    const/high16 p3, -0x60000000

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/ThumbImageView;->shadowColor:I

    .line 9
    sget p2, Lcom/narvii/lib/R$styleable;->ThumbImageView_android_scaleType:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_0

    sget-object p3, Lcom/narvii/widget/ThumbImageView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    .line 10
    aget-object p2, p3, p2

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 11
    :cond_0
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 12
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget p1, p0, Lcom/narvii/widget/ThumbImageView;->shadowSize:I

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    iget p1, p0, Lcom/narvii/widget/NVImageView;->defaultDrawableId:I

    if-nez p1, :cond_1

    sget p1, Lcom/narvii/lib/R$color;->placeholder:I

    iput p1, p0, Lcom/narvii/widget/NVImageView;->defaultDrawableId:I

    .line 13
    :cond_1
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/ThumbImageView;->contentBounds:Landroid/graphics/RectF;

    return-void
.end method

.method private buildShadowConfig()V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/ThumbImageView;->contentBounds:Landroid/graphics/RectF;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 6
    move-result v1

    .line 7
    int-to-float v1, v1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 11
    move-result v2

    .line 12
    int-to-float v2, v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 16
    move-result v3

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 20
    move-result v4

    .line 21
    sub-int/2addr v3, v4

    .line 22
    int-to-float v3, v3

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 26
    move-result v4

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 30
    move-result v5

    .line 31
    sub-int/2addr v4, v5

    .line 32
    int-to-float v4, v4

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/widget/ThumbImageView;->contentBounds:Landroid/graphics/RectF;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    const/high16 v2, 0x3f000000    # 0.5f

    .line 44
    .line 45
    .line 46
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 47
    move-result v1

    .line 48
    int-to-float v1, v1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 52
    move-result-object v3

    .line 53
    .line 54
    .line 55
    invoke-static {v3, v2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 56
    move-result v2

    .line 57
    int-to-float v2, v2

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 61
    .line 62
    new-instance v0, Lcom/narvii/widget/shadow/ShadowConfig;

    .line 63
    .line 64
    iget-object v4, p0, Lcom/narvii/widget/ThumbImageView;->contentBounds:Landroid/graphics/RectF;

    .line 65
    .line 66
    iget v5, p0, Lcom/narvii/widget/ThumbImageView;->shadowCornerRadius:F

    .line 67
    .line 68
    iget v6, p0, Lcom/narvii/widget/ThumbImageView;->shadowSize:I

    .line 69
    .line 70
    iget v1, p0, Lcom/narvii/widget/ThumbImageView;->shadowOffsetX:I

    .line 71
    .line 72
    iget v2, p0, Lcom/narvii/widget/ThumbImageView;->shadowOffsetY:I

    .line 73
    .line 74
    .line 75
    filled-new-array {v1, v2}, [I

    .line 76
    move-result-object v7

    .line 77
    .line 78
    iget v8, p0, Lcom/narvii/widget/ThumbImageView;->shadowColor:I

    .line 79
    move-object v3, v0

    .line 80
    .line 81
    .line 82
    invoke-direct/range {v3 .. v8}, Lcom/narvii/widget/shadow/ShadowConfig;-><init>(Landroid/graphics/RectF;FI[II)V

    .line 83
    .line 84
    iput-object v0, p0, Lcom/narvii/widget/ThumbImageView;->shadowConfig:Lcom/narvii/widget/shadow/ShadowConfig;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/narvii/widget/shadow/ShadowConfig;->prepareShadow()V

    .line 88
    return-void
.end method


# virtual methods
.method protected getRequestUrl(Lcom/narvii/model/Media;ZII)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/narvii/widget/ThumbImageView;->isReadyToWork(Z)Z

    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    return-object v0

    .line 9
    .line 10
    :cond_0
    if-eqz p1, :cond_d

    .line 11
    .line 12
    if-eqz p3, :cond_d

    .line 13
    .line 14
    if-nez p4, :cond_1

    .line 15
    goto :goto_2

    .line 16
    .line 17
    :cond_1
    iget p2, p0, Lcom/narvii/widget/ThumbImageView;->forceRequestWidth:I

    .line 18
    .line 19
    if-eqz p2, :cond_2

    .line 20
    move p3, p2

    .line 21
    .line 22
    :cond_2
    iget p2, p0, Lcom/narvii/widget/ThumbImageView;->forceRequestHeight:I

    .line 23
    .line 24
    if-eqz p2, :cond_3

    .line 25
    move p4, p2

    .line 26
    .line 27
    :cond_3
    iget-object p2, p1, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    .line 28
    .line 29
    if-nez p2, :cond_4

    .line 30
    .line 31
    iget-object p2, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    :cond_4
    invoke-static {p2}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    if-eqz v0, :cond_7

    .line 38
    .line 39
    const/16 p1, 0xb4

    .line 40
    .line 41
    if-gt p3, p1, :cond_6

    .line 42
    .line 43
    const/16 p1, 0x87

    .line 44
    .line 45
    if-le p4, p1, :cond_5

    .line 46
    goto :goto_0

    .line 47
    .line 48
    .line 49
    :cond_5
    invoke-static {v0}, Lcom/narvii/util/YoutubeUtils;->getDefaultYoutubeImage(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    return-object p1

    .line 52
    .line 53
    .line 54
    :cond_6
    :goto_0
    invoke-static {v0}, Lcom/narvii/util/YoutubeUtils;->getHQYoutubeImage(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    return-object p1

    .line 57
    .line 58
    :cond_7
    iget p1, p1, Lcom/narvii/model/Media;->type:I

    .line 59
    .line 60
    const/16 v0, 0x7b

    .line 61
    .line 62
    if-ne p1, v0, :cond_c

    .line 63
    .line 64
    if-le p3, p4, :cond_8

    .line 65
    goto :goto_1

    .line 66
    :cond_8
    move p3, p4

    .line 67
    .line 68
    :goto_1
    const/16 p1, 0x300

    .line 69
    .line 70
    if-le p3, p1, :cond_9

    .line 71
    return-object p2

    .line 72
    .line 73
    :cond_9
    const/16 p1, 0xc0

    .line 74
    .line 75
    if-le p3, p1, :cond_a

    .line 76
    .line 77
    const-string p1, "00"

    .line 78
    .line 79
    .line 80
    invoke-static {p2, p1}, Lcom/narvii/widget/NVImageView;->replaceVideoCoverUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    move-result-object p1

    .line 82
    return-object p1

    .line 83
    .line 84
    :cond_a
    const/16 p1, 0x60

    .line 85
    .line 86
    if-le p3, p1, :cond_b

    .line 87
    .line 88
    const-string p1, "128"

    .line 89
    .line 90
    .line 91
    invoke-static {p2, p1}, Lcom/narvii/widget/NVImageView;->replaceVideoCoverUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    move-result-object p1

    .line 93
    return-object p1

    .line 94
    .line 95
    :cond_b
    const-string p1, "68"

    .line 96
    .line 97
    .line 98
    invoke-static {p2, p1}, Lcom/narvii/widget/NVImageView;->replaceVideoCoverUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    move-result-object p1

    .line 100
    return-object p1

    .line 101
    .line 102
    :cond_c
    iget-object p1, p0, Lcom/narvii/widget/NVImageView;->imageType:Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    invoke-static {p2, p1, p3, p4}, Lcom/narvii/widget/NVImageView;->fitSize(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    .line 106
    move-result-object p1

    .line 107
    return-object p1

    .line 108
    :cond_d
    :goto_2
    return-object v0
.end method

.method protected isReadyToWork(Z)Z
    .locals 0

    return p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/widget/ThumbImageView;->dirty:Z

    .line 7
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/ThumbImageView;->shadowSize:I

    .line 3
    .line 4
    if-lez v0, :cond_2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-lez v0, :cond_2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 14
    move-result v0

    .line 15
    .line 16
    if-lez v0, :cond_2

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/narvii/widget/ThumbImageView;->dirty:Z

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/widget/ThumbImageView;->shadowConfig:Lcom/narvii/widget/shadow/ShadowConfig;

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 28
    move-result v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 32
    move-result v1

    .line 33
    sub-int/2addr v0, v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 37
    move-result v1

    .line 38
    sub-int/2addr v0, v1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 42
    move-result v1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 46
    move-result v2

    .line 47
    sub-int/2addr v1, v2

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 51
    move-result v2

    .line 52
    sub-int/2addr v1, v2

    .line 53
    .line 54
    div-int/lit8 v0, v0, 0x2

    .line 55
    .line 56
    div-int/lit8 v1, v1, 0x2

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 60
    move-result v0

    .line 61
    .line 62
    iget v1, p0, Lcom/narvii/widget/NVImageView;->cornerRadius:I

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 66
    move-result v0

    .line 67
    int-to-float v0, v0

    .line 68
    .line 69
    iput v0, p0, Lcom/narvii/widget/ThumbImageView;->shadowCornerRadius:F

    .line 70
    .line 71
    .line 72
    invoke-direct {p0}, Lcom/narvii/widget/ThumbImageView;->buildShadowConfig()V

    .line 73
    const/4 v0, 0x0

    .line 74
    .line 75
    iput-boolean v0, p0, Lcom/narvii/widget/ThumbImageView;->dirty:Z

    .line 76
    .line 77
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/ThumbImageView;->shadowConfig:Lcom/narvii/widget/shadow/ShadowConfig;

    .line 78
    .line 79
    .line 80
    invoke-static {p1, v0}, Lcom/narvii/widget/shadow/ShadowHelper;->drawShadow(Landroid/graphics/Canvas;Lcom/narvii/widget/shadow/ShadowConfig;)V

    .line 81
    .line 82
    .line 83
    :cond_2
    invoke-super {p0, p1}, Lcom/narvii/widget/NVImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 84
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/narvii/widget/ThumbImageView;->dirty:Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 10
    return-void
.end method

.method public setDirty(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/widget/ThumbImageView;->dirty:Z

    return-void
.end method

.method public setForceRequestSize(II)V
    .locals 0

    iput p1, p0, Lcom/narvii/widget/ThumbImageView;->forceRequestWidth:I

    iput p2, p0, Lcom/narvii/widget/ThumbImageView;->forceRequestHeight:I

    return-void
.end method

.method public setImageMedia(Lcom/narvii/model/Media;)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/widget/ThumbImageView;->dirty:Z

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 7
    move-result p1

    .line 8
    return p1
.end method

.method public setShadowColor(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/ThumbImageView;->shadowColor:I

    .line 3
    const/4 p1, 0x1

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/narvii/widget/ThumbImageView;->dirty:Z

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9
    return-void
.end method

.method public setShadowOffsetX(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/ThumbImageView;->shadowOffsetX:I

    .line 3
    const/4 p1, 0x1

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/narvii/widget/ThumbImageView;->dirty:Z

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9
    return-void
.end method

.method public setShadowOffsetY(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/ThumbImageView;->shadowOffsetY:I

    .line 3
    const/4 p1, 0x1

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/narvii/widget/ThumbImageView;->dirty:Z

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9
    return-void
.end method

.method public setShadowSize(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/ThumbImageView;->shadowSize:I

    .line 3
    const/4 p1, 0x1

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/narvii/widget/ThumbImageView;->dirty:Z

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9
    return-void
.end method
