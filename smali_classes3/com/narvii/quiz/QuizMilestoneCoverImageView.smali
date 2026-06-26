.class public Lcom/narvii/quiz/QuizMilestoneCoverImageView;
.super Lcom/narvii/widget/ThumbImageView;
.source "QuizMilestoneCoverImageView.java"


# static fields
.field public static final OVERLAY_HEIGHT_RATIO:I = 0xa


# instance fields
.field private bitmapPaint:Landroid/graphics/Paint;

.field private bitmapShader:Landroid/graphics/BitmapShader;

.field private final imagePath:Landroid/graphics/Path;

.field private overlayPaint:Landroid/graphics/Paint;

.field private final overlayPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/ThumbImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->bitmapPaint:Landroid/graphics/Paint;

    .line 33
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->overlayPaint:Landroid/graphics/Paint;

    .line 34
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->imagePath:Landroid/graphics/Path;

    .line 35
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->overlayPath:Landroid/graphics/Path;

    return-void
.end method

.method private drawOverlay(Landroid/graphics/Canvas;)V
    .locals 5

    .line 78
    iget-object v0, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->overlayPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4b000000    # 8388608.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    iget-object v0, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->overlayPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 80
    iget-object v0, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->overlayPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f666666    # 0.9f

    mul-float v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 81
    iget-object v0, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->overlayPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f733333    # 0.95f

    mul-float v3, v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 82
    iget-object v0, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->overlayPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 83
    iget-object v0, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->overlayPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 84
    iget-object v0, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->overlayPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->overlayPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 41
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    invoke-virtual {v0}, Lcom/narvii/util/drawables/WrapDrawable;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/drawables/gif/WrapGifDrawable;

    .line 46
    invoke-virtual {v0}, Lcom/narvii/util/drawables/WrapDrawable;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/drawables/gif/NVGifDrawable;

    .line 47
    invoke-virtual {v0}, Lcom/narvii/util/drawables/gif/NVGifDrawable;->draw()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 51
    :goto_0
    iget-object v1, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->imagePath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 52
    iget-object v1, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->imagePath:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 53
    iget-object v1, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->imagePath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 54
    iget-object v1, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->imagePath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f666666    # 0.9f

    mul-float v4, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 55
    iget-object v1, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->imagePath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const v6, 0x3f733333    # 0.95f

    mul-float v4, v4, v6

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 56
    iget-object v1, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->imagePath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 57
    iget-object v1, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->imagePath:Landroid/graphics/Path;

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    if-eqz v0, :cond_2

    .line 60
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->bitmapShader:Landroid/graphics/BitmapShader;

    .line 63
    iget-object v0, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->bitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 64
    iget-object v0, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->bitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->bitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 65
    iget-object v0, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->imagePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 66
    invoke-direct {p0, p1}, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->drawOverlay(Landroid/graphics/Canvas;)V

    return-void

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->overlayPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x68000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    iget-object v0, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->imagePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->overlayPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 71
    invoke-direct {p0, p1}, Lcom/narvii/quiz/QuizMilestoneCoverImageView;->drawOverlay(Landroid/graphics/Canvas;)V

    return-void
.end method
