.class public Lcom/narvii/widget/SecretImageViewDelegate;
.super Ljava/lang/Object;
.source "SecretImageViewDelegate.java"

# interfaces
.implements Lcom/narvii/widget/NVImageView$OnImageChangedListener;
.implements Lcom/narvii/widget/ISecretImage;


# static fields
.field static ytMaxSize:I

.field static ytMinSize:I

.field static ytPaint:Landroid/graphics/Paint;

.field static ytSymbol:Ljava/lang/String;


# instance fields
.field private bitmapRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private blurBmp:Landroid/graphics/Bitmap;

.field private blurDrawable:Landroid/graphics/drawable/Drawable;

.field private blurLightenColor:I

.field private blurOrigHeight:I

.field private blurOrigWidth:I

.field private blurPaint:Landroid/graphics/Paint;

.field private blurRadius:I

.field private cornerRadius:I

.field public forceBlur:Z

.field private host:Lcom/narvii/widget/NVImageView;

.field private hostHeight:I

.field private hostWidth:I

.field private mRectDst:Landroid/graphics/RectF;

.field private matrix:Landroid/graphics/Matrix;

.field private media:Lcom/narvii/model/Media;

.field public needHidden:Z

.field private overlayColor:I

.field private overlayPaint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private radii:[F

.field private shader:Landroid/graphics/BitmapShader;

.field private ytBgPaint:Landroid/graphics/Paint;

.field private ytBitmap:Landroid/graphics/Bitmap;

.field private ytRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lcom/narvii/widget/NVImageView;I)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->needHidden:Z

    .line 34
    iput-boolean v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->forceBlur:Z

    .line 48
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->mRectDst:Landroid/graphics/RectF;

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurPaint:Landroid/graphics/Paint;

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->overlayPaint:Landroid/graphics/Paint;

    .line 69
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->overlayPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 70
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurRadius:I

    .line 71
    iput-object p1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 72
    iget-object p1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, p0}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 73
    iput p2, p0, Lcom/narvii/widget/SecretImageViewDelegate;->cornerRadius:I

    .line 74
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->matrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private drawLoadingDrawable(Landroid/graphics/Canvas;)V
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    iget-object v0, v0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 308
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0x777778

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 309
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method private drawPlayButton(Landroid/graphics/Canvas;)V
    .locals 9

    .line 321
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    iget-boolean v0, v0, Lcom/narvii/widget/NVImageView;->hidePlayButton:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->media:Lcom/narvii/model/Media;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    iget-boolean v0, v0, Lcom/narvii/widget/NVImageView;->forceShowPlayButton:Z

    if-eqz v0, :cond_7

    :cond_0
    iget v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->hostWidth:I

    if-lez v0, :cond_7

    iget v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->hostHeight:I

    if-lez v0, :cond_7

    .line 322
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->ytBgPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 323
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->ytBgPaint:Landroid/graphics/Paint;

    .line 324
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->ytBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 325
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->ytBgPaint:Landroid/graphics/Paint;

    const-string v2, "#22000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 327
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v6, v0

    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    int-to-float v7, v0

    iget-object v8, p0, Lcom/narvii/widget/SecretImageViewDelegate;->ytBgPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 328
    sget-object v0, Lcom/narvii/widget/SecretImageViewDelegate;->ytPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 329
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/narvii/widget/SecretImageViewDelegate;->ytPaint:Landroid/graphics/Paint;

    .line 330
    sget-object v0, Lcom/narvii/widget/SecretImageViewDelegate;->ytPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 331
    sget-object v0, Lcom/narvii/widget/SecretImageViewDelegate;->ytPaint:Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 332
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/narvii/lib/R$string;->fa_play:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/narvii/widget/SecretImageViewDelegate;->ytSymbol:Ljava/lang/String;

    .line 333
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/narvii/lib/R$dimen;->video_play_min_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/narvii/widget/SecretImageViewDelegate;->ytMinSize:I

    .line 335
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/narvii/lib/R$dimen;->video_play_max_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/narvii/widget/SecretImageViewDelegate;->ytMaxSize:I

    .line 338
    :cond_2
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->ytBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 339
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/narvii/lib/R$drawable;->ic_sr_media_play:I

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->ytBitmap:Landroid/graphics/Bitmap;

    .line 340
    new-instance v0, Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->ytRectF:Landroid/graphics/RectF;

    .line 342
    :cond_3
    iget v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->hostHeight:I

    iget v2, p0, Lcom/narvii/widget/SecretImageViewDelegate;->hostWidth:I

    if-ge v0, v2, :cond_4

    goto :goto_0

    :cond_4
    move v0, v2

    :goto_0
    int-to-float v0, v0

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float v0, v0, v2

    float-to-int v0, v0

    .line 344
    sget v2, Lcom/narvii/widget/SecretImageViewDelegate;->ytMinSize:I

    if-ge v0, v2, :cond_5

    move v0, v2

    .line 345
    :cond_5
    sget v2, Lcom/narvii/widget/SecretImageViewDelegate;->ytMaxSize:I

    if-le v0, v2, :cond_6

    move v0, v2

    .line 346
    :cond_6
    iget-object v2, p0, Lcom/narvii/widget/SecretImageViewDelegate;->ytRectF:Landroid/graphics/RectF;

    iget v3, p0, Lcom/narvii/widget/SecretImageViewDelegate;->hostWidth:I

    sub-int v4, v3, v0

    shr-int/2addr v4, v1

    int-to-float v4, v4

    iget v5, p0, Lcom/narvii/widget/SecretImageViewDelegate;->hostHeight:I

    sub-int v6, v5, v0

    shr-int/2addr v6, v1

    int-to-float v6, v6

    add-int/2addr v3, v0

    shr-int/2addr v3, v1

    int-to-float v3, v3

    add-int/2addr v5, v0

    shr-int/lit8 v0, v5, 0x1

    int-to-float v0, v0

    invoke-virtual {v2, v4, v6, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 347
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->ytBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/narvii/widget/SecretImageViewDelegate;->ytRectF:Landroid/graphics/RectF;

    sget-object v3, Lcom/narvii/widget/SecretImageViewDelegate;->ytPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_7
    return-void
.end method

.method private drawRoundPath(Landroid/graphics/Path;Landroid/graphics/RectF;FI)V
    .locals 5

    .line 269
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->radii:[F

    const/16 v1, 0x8

    if-nez v0, :cond_0

    new-array v0, v1, [F

    .line 270
    iput-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->radii:[F

    :cond_0
    and-int/lit8 v0, p4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->radii:[F

    aput v4, v0, v2

    .line 274
    aput v4, v0, v3

    goto :goto_0

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->radii:[F

    aput p3, v0, v2

    .line 277
    aput p3, v0, v3

    :goto_0
    and-int/lit8 v0, p4, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eqz v0, :cond_2

    .line 280
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->radii:[F

    aput v4, v0, v3

    .line 281
    aput v4, v0, v2

    goto :goto_1

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->radii:[F

    aput p3, v0, v3

    .line 284
    aput p3, v0, v2

    :goto_1
    and-int/lit8 v0, p4, 0x4

    const/4 v2, 0x5

    const/4 v3, 0x4

    if-eqz v0, :cond_3

    .line 287
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->radii:[F

    aput v4, v0, v3

    .line 288
    aput v4, v0, v2

    goto :goto_2

    .line 290
    :cond_3
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->radii:[F

    aput p3, v0, v3

    .line 291
    aput p3, v0, v2

    :goto_2
    and-int/2addr p4, v1

    const/4 v0, 0x7

    const/4 v1, 0x6

    if-eqz p4, :cond_4

    .line 294
    iget-object p3, p0, Lcom/narvii/widget/SecretImageViewDelegate;->radii:[F

    aput v4, p3, v1

    .line 295
    aput v4, p3, v0

    goto :goto_3

    .line 297
    :cond_4
    iget-object p4, p0, Lcom/narvii/widget/SecretImageViewDelegate;->radii:[F

    aput p3, p4, v1

    .line 298
    aput p3, p4, v0

    .line 300
    :goto_3
    iget-object p3, p0, Lcom/narvii/widget/SecretImageViewDelegate;->radii:[F

    sget-object p4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method private drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FILandroid/graphics/Paint;)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p3, v0

    if-lez v1, :cond_0

    if-nez p4, :cond_0

    .line 254
    invoke-virtual {p1, p2, p3, p3, p5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_0
    cmpl-float v0, p3, v0

    if-lez v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->path:Landroid/graphics/Path;

    if-nez v0, :cond_1

    .line 257
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->path:Landroid/graphics/Path;

    goto :goto_0

    .line 259
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 261
    :goto_0
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->path:Landroid/graphics/Path;

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/narvii/widget/SecretImageViewDelegate;->drawRoundPath(Landroid/graphics/Path;Landroid/graphics/RectF;FI)V

    .line 262
    iget-object p2, p0, Lcom/narvii/widget/SecretImageViewDelegate;->path:Landroid/graphics/Path;

    invoke-virtual {p1, p2, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 264
    :cond_2
    invoke-virtual {p1, p2, p5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public drawSecret(Landroid/graphics/Canvas;)V
    .locals 12

    .line 158
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->hostWidth:I

    .line 159
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->hostHeight:I

    .line 160
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    iget v1, v0, Lcom/narvii/widget/NVImageView;->status:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_e

    .line 161
    iget-object v1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    const/4 v0, 0x0

    if-eqz v1, :cond_7

    .line 162
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-lez v2, :cond_7

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-gtz v2, :cond_1

    goto/16 :goto_5

    .line 165
    :cond_1
    iget v2, p0, Lcom/narvii/widget/SecretImageViewDelegate;->hostWidth:I

    iget-object v3, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x2

    .line 166
    iget v3, p0, Lcom/narvii/widget/SecretImageViewDelegate;->hostHeight:I

    iget-object v4, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v3, v3, 0x2

    .line 167
    new-instance v4, Landroid/graphics/RectF;

    mul-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    mul-int/lit8 v6, v3, 0x2

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/narvii/widget/SecretImageViewDelegate;->mRectDst:Landroid/graphics/RectF;

    .line 169
    iget-object v4, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurBmp:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v4, v2, :cond_2

    iget-object v4, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v4, v3, :cond_8

    .line 174
    :cond_2
    :try_start_0
    instance-of v4, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_3

    move-object v4, v1

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_1

    :cond_3
    move-object v4, v0

    :goto_1
    if-eqz v4, :cond_4

    .line 177
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 178
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    goto :goto_2

    .line 180
    :cond_4
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 181
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    :goto_2
    mul-int v8, v5, v3

    mul-int v9, v2, v6

    const/high16 v10, 0x3f000000    # 0.5f

    if-le v8, v9, :cond_5

    int-to-float v8, v3

    int-to-float v9, v6

    div-float/2addr v8, v9

    int-to-float v9, v2

    int-to-float v11, v5

    mul-float v11, v11, v8

    sub-float/2addr v9, v11

    mul-float v9, v9, v10

    move v10, v8

    const/4 v8, 0x0

    goto :goto_3

    :cond_5
    int-to-float v8, v2

    int-to-float v9, v5

    div-float/2addr v8, v9

    int-to-float v9, v3

    int-to-float v11, v6

    mul-float v11, v11, v8

    sub-float/2addr v9, v11

    mul-float v9, v9, v10

    move v10, v8

    move v8, v9

    const/4 v9, 0x0

    .line 192
    :goto_3
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurBmp:Landroid/graphics/Bitmap;

    .line 193
    iget-object v2, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurBmp:Landroid/graphics/Bitmap;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 194
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v11, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurBmp:Landroid/graphics/Bitmap;

    invoke-direct {v2, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 195
    invoke-virtual {v2, v9, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 196
    invoke-virtual {v2, v10, v10}, Landroid/graphics/Canvas;->scale(FF)V

    if-eqz v4, :cond_6

    .line 198
    iget-object v1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 199
    iget-object v1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4, v7, v7, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    .line 201
    invoke-virtual {v1, v3, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 202
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 205
    :goto_4
    new-instance v1, Lcom/narvii/util/blur/NativeBlurProcess;

    invoke-direct {v1}, Lcom/narvii/util/blur/NativeBlurProcess;-><init>()V

    iget-object v2, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurBmp:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurRadius:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/blur/NativeBlurProcess;->blur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurBmp:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v1

    .line 207
    iput-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurBmp:Landroid/graphics/Bitmap;

    const-string v2, "fail to process blur image"

    .line 208
    invoke-static {v2, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 163
    :cond_7
    :goto_5
    invoke-direct {p0, p1}, Lcom/narvii/widget/SecretImageViewDelegate;->drawLoadingDrawable(Landroid/graphics/Canvas;)V

    .line 213
    :cond_8
    :goto_6
    iget-object v1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurBmp:Landroid/graphics/Bitmap;

    if-nez v1, :cond_9

    .line 214
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_8

    .line 216
    :cond_9
    iget-object v1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->shader:Landroid/graphics/BitmapShader;

    if-eqz v1, :cond_b

    .line 217
    iget-object v1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->bitmapRef:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_a

    move-object v1, v0

    goto :goto_7

    .line 218
    :cond_a
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 219
    :goto_7
    iget-object v2, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurBmp:Landroid/graphics/Bitmap;

    if-eq v1, v2, :cond_b

    .line 220
    iput-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->shader:Landroid/graphics/BitmapShader;

    .line 223
    :cond_b
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->shader:Landroid/graphics/BitmapShader;

    if-nez v0, :cond_c

    .line 224
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurBmp:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->shader:Landroid/graphics/BitmapShader;

    .line 225
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurBmp:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->bitmapRef:Ljava/lang/ref/WeakReference;

    .line 227
    :cond_c
    iget v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->hostWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    div-float/2addr v0, v1

    .line 228
    iget v1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->hostHeight:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    div-float/2addr v1, v3

    .line 229
    iget-object v2, p0, Lcom/narvii/widget/SecretImageViewDelegate;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 230
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->shader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 231
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->shader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 232
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 233
    iget-object v4, p0, Lcom/narvii/widget/SecretImageViewDelegate;->mRectDst:Landroid/graphics/RectF;

    iget v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->cornerRadius:I

    int-to-float v5, v0

    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    iget v6, v0, Lcom/narvii/widget/NVImageView;->cornerMask:I

    iget-object v7, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurPaint:Landroid/graphics/Paint;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/narvii/widget/SecretImageViewDelegate;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FILandroid/graphics/Paint;)V

    .line 234
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 235
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 236
    invoke-direct {p0, p1}, Lcom/narvii/widget/SecretImageViewDelegate;->drawPlayButton(Landroid/graphics/Canvas;)V

    .line 237
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 240
    :goto_8
    iget v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurLightenColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-lez v0, :cond_d

    .line 242
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurLightenColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 243
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v5, v0

    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 245
    :cond_d
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->overlayPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->overlayColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 246
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v5, v0

    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/narvii/widget/SecretImageViewDelegate;->overlayPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_9

    .line 248
    :cond_e
    invoke-direct {p0, p1}, Lcom/narvii/widget/SecretImageViewDelegate;->drawLoadingDrawable(Landroid/graphics/Canvas;)V

    :goto_9
    return-void
.end method

.method public layout()V
    .locals 1

    .line 151
    iget v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurOrigWidth:I

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurOrigWidth:I

    .line 153
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurOrigHeight:I

    :cond_0
    return-void
.end method

.method public needBlur()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->needHidden:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->forceBlur:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 315
    iget-boolean p1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->needHidden:Z

    if-eqz p1, :cond_0

    .line 316
    iget-object p1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/widget/SecretImageViewDelegate;->setImageDrawable2(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBlurLightenColor(I)V
    .locals 0

    .line 147
    iput p1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurLightenColor:I

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget-object p1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurBmp:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurBmp:Landroid/graphics/Bitmap;

    .line 83
    iput-object p1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->bitmapRef:Ljava/lang/ref/WeakReference;

    .line 84
    iput-object p1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->shader:Landroid/graphics/BitmapShader;

    :cond_0
    return-void
.end method

.method public setImageDrawable2(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    :cond_0
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 101
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 103
    :cond_1
    iput-object p1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurDrawable:Landroid/graphics/drawable/Drawable;

    .line 105
    :goto_0
    iget-object p1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    .line 106
    iget-object p1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurBmp:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    .line 107
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 108
    iput-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurBmp:Landroid/graphics/Bitmap;

    :cond_2
    return-void
.end method

.method public setImageForceBlur(Lcom/narvii/model/Media;ZI)V
    .locals 0

    .line 134
    iput-boolean p2, p0, Lcom/narvii/widget/SecretImageViewDelegate;->forceBlur:Z

    .line 135
    iput p3, p0, Lcom/narvii/widget/SecretImageViewDelegate;->overlayColor:I

    .line 136
    iget-boolean p2, p0, Lcom/narvii/widget/SecretImageViewDelegate;->needHidden:Z

    invoke-virtual {p0, p1, p2}, Lcom/narvii/widget/SecretImageViewDelegate;->setImageMedia(Lcom/narvii/model/Media;Z)Z

    return-void
.end method

.method public setImageMedia(Lcom/narvii/model/Media;Z)Z
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 122
    :goto_0
    iput-boolean p2, p0, Lcom/narvii/widget/SecretImageViewDelegate;->needHidden:Z

    .line 123
    iget-object p2, p0, Lcom/narvii/widget/SecretImageViewDelegate;->media:Lcom/narvii/model/Media;

    invoke-static {p2, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 124
    iput-object p2, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurBmp:Landroid/graphics/Bitmap;

    .line 125
    iput-object p2, p0, Lcom/narvii/widget/SecretImageViewDelegate;->shader:Landroid/graphics/BitmapShader;

    .line 126
    iput-object p2, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurDrawable:Landroid/graphics/drawable/Drawable;

    .line 128
    :cond_1
    iput-object p1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->media:Lcom/narvii/model/Media;

    .line 129
    iget-object p2, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p2, p1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    move-result p1

    return p1
.end method

.method public setImageResource(I)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 114
    iget-object p1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurBmp:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 115
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p1, 0x0

    .line 116
    iput-object p1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurBmp:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;Z)Z
    .locals 0

    .line 141
    iput-boolean p2, p0, Lcom/narvii/widget/SecretImageViewDelegate;->needHidden:Z

    .line 142
    iget-object p2, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p2, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
