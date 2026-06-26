.class public Lcom/narvii/widget/FullsizeImageView;
.super Lcom/narvii/widget/NVImageView;
.source "FullsizeImageView.java"


# instance fields
.field debugPaint:Landroid/graphics/Paint;

.field public forceUhq:Z

.field public hidingHeight:I

.field private final membershipService:Lcom/narvii/wallet/MembershipService;

.field originalHeight:I

.field paint:Landroid/graphics/Paint;

.field public preload:Z

.field public supportUhq:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/FullsizeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/NVImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    sget-object v0, Lcom/narvii/lib/R$styleable;->FullsizeImageView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 42
    sget v0, Lcom/narvii/lib/R$styleable;->FullsizeImageView_preload:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/widget/FullsizeImageView;->preload:Z

    .line 43
    sget v0, Lcom/narvii/lib/R$styleable;->FullsizeImageView_hidingHeight:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/widget/FullsizeImageView;->hidingHeight:I

    .line 45
    sget v0, Lcom/narvii/lib/R$styleable;->FullsizeImageView_supportUhq:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/widget/FullsizeImageView;->supportUhq:Z

    .line 46
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string v0, "membership"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/wallet/MembershipService;

    iput-object p1, p0, Lcom/narvii/widget/FullsizeImageView;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 47
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/FullsizeImageView;->paint:Landroid/graphics/Paint;

    .line 50
    iget-object p1, p0, Lcom/narvii/widget/FullsizeImageView;->paint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    return-void
.end method


# virtual methods
.method protected getCachedBitmap(Ljava/lang/String;)Z
    .locals 5

    .line 107
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->getImageLoader()Lcom/android/volley/toolbox/ImageLoader;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/image/NVImageLoader;

    const-string v1, "v2_"

    .line 109
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "hq"

    invoke-static {p1, v1}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/image/NVImageLoader;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 111
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 112
    iput-boolean v2, p0, Lcom/narvii/widget/NVImageView;->scalePlaceholder:Z

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prefetch bitmap hq "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    return v2

    .line 116
    :cond_1
    invoke-virtual {v0, p1}, Lcom/narvii/util/image/NVImageLoader;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 118
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 119
    iput-boolean v2, p0, Lcom/narvii/widget/NVImageView;->scalePlaceholder:Z

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prefetch bitmap 00 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    return v2

    :cond_2
    const-string v1, "128"

    .line 123
    invoke-static {p1, v1}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/image/NVImageLoader;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 125
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v0, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 126
    iput-boolean v3, p0, Lcom/narvii/widget/NVImageView;->scalePlaceholder:Z

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prefetch bitmap 128 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    return v2

    :cond_3
    const-string v1, "68"

    .line 130
    invoke-static {p1, v1}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/image/NVImageLoader;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 132
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/narvii/widget/NVImageView;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 133
    iput-boolean v3, p0, Lcom/narvii/widget/NVImageView;->scalePlaceholder:Z

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prefetch bitmap 68 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    return v2

    :cond_4
    return v3
.end method

.method public getRequestUrl(Lcom/narvii/model/Media;ZII)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 171
    :cond_0
    iget-object p2, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-static {p2}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 173
    invoke-static {p2}, Lcom/narvii/util/YoutubeUtils;->getHQYoutubeImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 175
    :cond_1
    iget-object p2, p1, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    if-nez p2, :cond_2

    iget-object p2, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 176
    :cond_2
    iget-boolean p1, p0, Lcom/narvii/widget/FullsizeImageView;->supportUhq:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/narvii/widget/FullsizeImageView;->forceUhq:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/narvii/widget/FullsizeImageView;->membershipService:Lcom/narvii/wallet/MembershipService;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const-string p1, "v2_"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "uhq"

    .line 177
    invoke-static {p2, p1}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 179
    :cond_4
    iget-object p1, p0, Lcom/narvii/widget/NVImageView;->imageType:Ljava/lang/String;

    const/16 p3, 0xf00

    invoke-static {p2, p1, p3, p3}, Lcom/narvii/widget/NVImageView;->fitSize(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 64
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 65
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 66
    :goto_0
    iget v1, p0, Lcom/narvii/widget/FullsizeImageView;->hidingHeight:I

    const/4 v2, 0x0

    if-lez v1, :cond_2

    iget v1, p0, Lcom/narvii/widget/FullsizeImageView;->originalHeight:I

    if-lez v1, :cond_2

    if-eqz v0, :cond_2

    .line 67
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    .line 68
    iget v3, p0, Lcom/narvii/widget/FullsizeImageView;->originalHeight:I

    iget v4, p0, Lcom/narvii/widget/FullsizeImageView;->hidingHeight:I

    add-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 69
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    .line 74
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 75
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int v7, v5, v3

    mul-int v8, v4, v6

    if-le v7, v8, :cond_1

    int-to-float v3, v3

    int-to-float v7, v6

    goto :goto_1

    :cond_1
    int-to-float v3, v4

    int-to-float v7, v5

    :goto_1
    div-float/2addr v3, v7

    int-to-float v4, v4

    int-to-float v5, v5

    mul-float v5, v5, v3

    sub-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v4, v4, v5

    int-to-float v1, v1

    int-to-float v6, v6

    mul-float v6, v6, v3

    sub-float/2addr v1, v6

    mul-float v1, v1, v5

    .line 85
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 86
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v8

    .line 87
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    .line 86
    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    add-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v4, v4

    add-float/2addr v1, v5

    float-to-int v1, v1

    int-to-float v1, v1

    .line 88
    invoke-virtual {p1, v4, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 89
    invoke-virtual {p1, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 90
    iget-object v1, p0, Lcom/narvii/widget/FullsizeImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 91
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2

    .line 93
    :cond_2
    invoke-super {p0, p1}, Lcom/narvii/widget/NVImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 95
    :goto_2
    sget-boolean v1, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/narvii/widget/NVImageView;->status:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/narvii/widget/NVImageView;->requestUrl:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v3, "v2_uhq."

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 96
    iget-object v1, p0, Lcom/narvii/widget/FullsizeImageView;->debugPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_3

    .line 97
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/narvii/widget/FullsizeImageView;->debugPaint:Landroid/graphics/Paint;

    .line 99
    :cond_3
    iget-object v1, p0, Lcom/narvii/widget/FullsizeImageView;->debugPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    iget-object v1, p0, Lcom/narvii/widget/FullsizeImageView;->debugPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40400000    # 3.0f

    const/high16 v4, -0x1000000

    invoke-virtual {v1, v3, v2, v2, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 101
    iget-object v1, p0, Lcom/narvii/widget/FullsizeImageView;->debugPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UHQ "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/narvii/widget/FullsizeImageView;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/narvii/widget/FullsizeImageView;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_4
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 56
    invoke-super/range {p0 .. p5}, Lcom/narvii/widget/NVImageView;->onLayout(ZIIII)V

    .line 57
    iget p1, p0, Lcom/narvii/widget/FullsizeImageView;->originalHeight:I

    if-nez p1, :cond_0

    sub-int/2addr p5, p3

    .line 58
    iput p5, p0, Lcom/narvii/widget/FullsizeImageView;->originalHeight:I

    :cond_0
    return-void
.end method

.method protected setImageStatus(IZ)V
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 143
    iget-boolean v1, p0, Lcom/narvii/widget/NVImageView;->scalePlaceholder:Z

    .line 146
    iget-boolean v2, p0, Lcom/narvii/widget/FullsizeImageView;->preload:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    iget-object v2, p0, Lcom/narvii/widget/NVImageView;->media:Lcom/narvii/model/Media;

    if-nez v2, :cond_1

    goto :goto_0

    .line 150
    :cond_1
    iget-object v3, v2, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    if-nez v3, :cond_2

    iget-object v3, v2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_5

    if-eqz v3, :cond_5

    const-string v2, "_00."

    .line 151
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 153
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->getImageLoader()Lcom/android/volley/toolbox/ImageLoader;

    move-result-object v2

    instance-of v2, v2, Lcom/narvii/util/image/NVImageLoader;

    if-nez v2, :cond_4

    const-string v2, "no NVImageLoader available, prefetch doesn\'t work"

    .line 154
    invoke-static {v2}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_4
    invoke-virtual {p0, v3}, Lcom/narvii/widget/FullsizeImageView;->getCachedBitmap(Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v2, 0x0

    .line 159
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/narvii/widget/NVImageView;->setImageStatus(IZ)V

    if-eqz v2, :cond_6

    .line 161
    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 162
    iput-boolean v1, p0, Lcom/narvii/widget/NVImageView;->scalePlaceholder:Z

    :cond_6
    return-void
.end method
