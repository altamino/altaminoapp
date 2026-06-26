.class public Lcom/narvii/widget/ThumbImageView;
.super Lcom/narvii/widget/NVImageView;
.source "ThumbImageView.java"


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

    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    .line 41
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/widget/ThumbImageView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, v0, v1}, Lcom/narvii/widget/ThumbImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/ThumbImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/widget/NVImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/narvii/widget/ThumbImageView;->dirty:Z

    .line 63
    sget-object v0, Lcom/narvii/lib/R$styleable;->ThumbImageView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 65
    sget p2, Lcom/narvii/lib/R$styleable;->ThumbImageView_shadowSize:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/ThumbImageView;->shadowSize:I

    .line 67
    sget p2, Lcom/narvii/lib/R$styleable;->ThumbImageView_shadowOffsetX:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/ThumbImageView;->shadowOffsetX:I

    .line 69
    sget p2, Lcom/narvii/lib/R$styleable;->ThumbImageView_shadowOffsetY:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/ThumbImageView;->shadowOffsetY:I

    .line 71
    sget p2, Lcom/narvii/lib/R$styleable;->ThumbImageView_shadowColor:I

    const/high16 p3, -0x60000000

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/ThumbImageView;->shadowColor:I

    .line 73
    sget p2, Lcom/narvii/lib/R$styleable;->ThumbImageView_android_scaleType:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_0

    .line 75
    sget-object p3, Lcom/narvii/widget/ThumbImageView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    aget-object p2, p3, p2

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 77
    :cond_0
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 79
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    iget p1, p0, Lcom/narvii/widget/ThumbImageView;->shadowSize:I

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    iget p1, p0, Lcom/narvii/widget/NVImageView;->defaultDrawableId:I

    if-nez p1, :cond_1

    .line 82
    sget p1, Lcom/narvii/lib/R$color;->placeholder:I

    iput p1, p0, Lcom/narvii/widget/NVImageView;->defaultDrawableId:I

    .line 85
    :cond_1
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/ThumbImageView;->contentBounds:Landroid/graphics/RectF;

    return-void
.end method

.method private buildShadowConfig()V
    .locals 9

    .line 206
    iget-object v0, p0, Lcom/narvii/widget/ThumbImageView;->contentBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 207
    iget-object v0, p0, Lcom/narvii/widget/ThumbImageView;->contentBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 208
    new-instance v0, Lcom/narvii/widget/shadow/ShadowConfig;

    iget-object v4, p0, Lcom/narvii/widget/ThumbImageView;->contentBounds:Landroid/graphics/RectF;

    iget v5, p0, Lcom/narvii/widget/ThumbImageView;->shadowCornerRadius:F

    iget v6, p0, Lcom/narvii/widget/ThumbImageView;->shadowSize:I

    const/4 v1, 0x2

    new-array v7, v1, [I

    iget v1, p0, Lcom/narvii/widget/ThumbImageView;->shadowOffsetX:I

    const/4 v2, 0x0

    aput v1, v7, v2

    iget v1, p0, Lcom/narvii/widget/ThumbImageView;->shadowOffsetY:I

    const/4 v2, 0x1

    aput v1, v7, v2

    iget v8, p0, Lcom/narvii/widget/ThumbImageView;->shadowColor:I

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/narvii/widget/shadow/ShadowConfig;-><init>(Landroid/graphics/RectF;FI[II)V

    iput-object v0, p0, Lcom/narvii/widget/ThumbImageView;->shadowConfig:Lcom/narvii/widget/shadow/ShadowConfig;

    .line 209
    iget-object v0, p0, Lcom/narvii/widget/ThumbImageView;->shadowConfig:Lcom/narvii/widget/shadow/ShadowConfig;

    invoke-virtual {v0}, Lcom/narvii/widget/shadow/ShadowConfig;->prepareShadow()V

    return-void
.end method


# virtual methods
.method protected getRequestUrl(Lcom/narvii/model/Media;ZII)Ljava/lang/String;
    .locals 1

    .line 90
    invoke-virtual {p0, p2}, Lcom/narvii/widget/ThumbImageView;->isReadyToWork(Z)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_d

    if-eqz p3, :cond_d

    if-nez p4, :cond_1

    goto :goto_4

    .line 95
    :cond_1
    iget p2, p0, Lcom/narvii/widget/ThumbImageView;->forceRequestWidth:I

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    move p2, p3

    .line 98
    :goto_0
    iget p3, p0, Lcom/narvii/widget/ThumbImageView;->forceRequestHeight:I

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    move p3, p4

    .line 102
    :goto_1
    iget-object p4, p1, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    if-nez p4, :cond_4

    iget-object p4, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 104
    :cond_4
    invoke-static {p4}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const/16 p1, 0xb4

    if-gt p2, p1, :cond_6

    const/16 p1, 0x87

    if-le p3, p1, :cond_5

    goto :goto_2

    .line 108
    :cond_5
    invoke-static {v0}, Lcom/narvii/util/YoutubeUtils;->getDefaultYoutubeImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 106
    :cond_6
    :goto_2
    invoke-static {v0}, Lcom/narvii/util/YoutubeUtils;->getHQYoutubeImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 112
    :cond_7
    iget p1, p1, Lcom/narvii/model/Media;->type:I

    const/16 v0, 0x7b

    if-ne p1, v0, :cond_c

    if-le p2, p3, :cond_8

    goto :goto_3

    :cond_8
    move p2, p3

    :goto_3
    const/16 p1, 0x300

    if-le p2, p1, :cond_9

    return-object p4

    :cond_9
    const/16 p1, 0xc0

    if-le p2, p1, :cond_a

    const-string p1, "00"

    .line 118
    invoke-static {p4, p1}, Lcom/narvii/widget/NVImageView;->replaceVideoCoverUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_a
    const/16 p1, 0x60

    if-le p2, p1, :cond_b

    const-string p1, "128"

    .line 120
    invoke-static {p4, p1}, Lcom/narvii/widget/NVImageView;->replaceVideoCoverUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b
    const-string p1, "68"

    .line 122
    invoke-static {p4, p1}, Lcom/narvii/widget/NVImageView;->replaceVideoCoverUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 126
    :cond_c
    iget-object p1, p0, Lcom/narvii/widget/NVImageView;->imageType:Ljava/lang/String;

    invoke-static {p4, p1, p2, p3}, Lcom/narvii/widget/NVImageView;->fitSize(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_d
    :goto_4
    return-object v0
.end method

.method protected isReadyToWork(Z)Z
    .locals 0

    return p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 142
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lcom/narvii/widget/ThumbImageView;->dirty:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 154
    iget v0, p0, Lcom/narvii/widget/ThumbImageView;->shadowSize:I

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    if-lez v0, :cond_2

    .line 155
    iget-boolean v0, p0, Lcom/narvii/widget/ThumbImageView;->dirty:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/widget/ThumbImageView;->shadowConfig:Lcom/narvii/widget/shadow/ShadowConfig;

    if-nez v0, :cond_1

    .line 156
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 157
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 158
    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 159
    iget v1, p0, Lcom/narvii/widget/NVImageView;->cornerRadius:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/narvii/widget/ThumbImageView;->shadowCornerRadius:F

    .line 160
    invoke-direct {p0}, Lcom/narvii/widget/ThumbImageView;->buildShadowConfig()V

    const/4 v0, 0x0

    .line 161
    iput-boolean v0, p0, Lcom/narvii/widget/ThumbImageView;->dirty:Z

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/ThumbImageView;->shadowConfig:Lcom/narvii/widget/shadow/ShadowConfig;

    invoke-static {p1, v0}, Lcom/narvii/widget/shadow/ShadowHelper;->drawShadow(Landroid/graphics/Canvas;Lcom/narvii/widget/shadow/ShadowConfig;)V

    .line 167
    :cond_2
    invoke-super {p0, p1}, Lcom/narvii/widget/NVImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 182
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    const/4 p1, 0x1

    .line 183
    iput-boolean p1, p0, Lcom/narvii/widget/ThumbImageView;->dirty:Z

    .line 184
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setDirty(Z)V
    .locals 0

    .line 177
    iput-boolean p1, p0, Lcom/narvii/widget/ThumbImageView;->dirty:Z

    return-void
.end method

.method public setForceRequestSize(II)V
    .locals 0

    .line 131
    iput p1, p0, Lcom/narvii/widget/ThumbImageView;->forceRequestWidth:I

    .line 132
    iput p2, p0, Lcom/narvii/widget/ThumbImageView;->forceRequestHeight:I

    return-void
.end method

.method public setImageMedia(Lcom/narvii/model/Media;)Z
    .locals 1

    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Lcom/narvii/widget/ThumbImageView;->dirty:Z

    .line 149
    invoke-super {p0, p1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    move-result p1

    return p1
.end method

.method public setShadowColor(I)V
    .locals 0

    .line 188
    iput p1, p0, Lcom/narvii/widget/ThumbImageView;->shadowColor:I

    const/4 p1, 0x1

    .line 189
    iput-boolean p1, p0, Lcom/narvii/widget/ThumbImageView;->dirty:Z

    .line 190
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setShadowOffsetX(I)V
    .locals 0

    .line 194
    iput p1, p0, Lcom/narvii/widget/ThumbImageView;->shadowOffsetX:I

    const/4 p1, 0x1

    .line 195
    iput-boolean p1, p0, Lcom/narvii/widget/ThumbImageView;->dirty:Z

    .line 196
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setShadowOffsetY(I)V
    .locals 0

    .line 200
    iput p1, p0, Lcom/narvii/widget/ThumbImageView;->shadowOffsetY:I

    const/4 p1, 0x1

    .line 201
    iput-boolean p1, p0, Lcom/narvii/widget/ThumbImageView;->dirty:Z

    .line 202
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setShadowSize(I)V
    .locals 0

    .line 171
    iput p1, p0, Lcom/narvii/widget/ThumbImageView;->shadowSize:I

    const/4 p1, 0x1

    .line 172
    iput-boolean p1, p0, Lcom/narvii/widget/ThumbImageView;->dirty:Z

    .line 173
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
