.class public Lcom/narvii/headlines/RefreshDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RefreshDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field private static final DEFAULT_DURATION:I = 0x1f4


# instance fields
.field private animator:Landroid/animation/ValueAnimator;

.field private bgDrawableId:I

.field private bgShader:Landroid/graphics/Shader;

.field private bounds:Landroid/graphics/Rect;

.field private context:Landroid/content/Context;

.field private curProgress:F

.field private duration:I

.field private indicatorBitmap:Landroid/graphics/Bitmap;

.field private indicatorDrawableId:I

.field private indicatorShader:Landroid/graphics/Shader;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 30
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/narvii/headlines/RefreshDrawable;->bounds:Landroid/graphics/Rect;

    .line 42
    iput-object p1, p0, Lcom/narvii/headlines/RefreshDrawable;->context:Landroid/content/Context;

    .line 43
    iput p2, p0, Lcom/narvii/headlines/RefreshDrawable;->bgDrawableId:I

    .line 44
    iput p3, p0, Lcom/narvii/headlines/RefreshDrawable;->indicatorDrawableId:I

    .line 45
    iput p4, p0, Lcom/narvii/headlines/RefreshDrawable;->duration:I

    if-nez p4, :cond_0

    const/16 p1, 0x1f4

    .line 47
    iput p1, p0, Lcom/narvii/headlines/RefreshDrawable;->duration:I

    .line 49
    :cond_0
    invoke-direct {p0}, Lcom/narvii/headlines/RefreshDrawable;->init()V

    return-void
.end method

.method static synthetic access$002(Lcom/narvii/headlines/RefreshDrawable;F)F
    .locals 0

    .line 23
    iput p1, p0, Lcom/narvii/headlines/RefreshDrawable;->curProgress:F

    return p1
.end method

.method private init()V
    .locals 3

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/narvii/headlines/RefreshDrawable;->paint:Landroid/graphics/Paint;

    .line 54
    iget-object v0, p0, Lcom/narvii/headlines/RefreshDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    iget-object v0, p0, Lcom/narvii/headlines/RefreshDrawable;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 57
    iget v0, p0, Lcom/narvii/headlines/RefreshDrawable;->bgDrawableId:I

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/narvii/headlines/RefreshDrawable;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/narvii/headlines/RefreshDrawable;->bgDrawableId:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/narvii/headlines/RefreshDrawable;->bgShader:Landroid/graphics/Shader;

    .line 61
    :cond_0
    iget v0, p0, Lcom/narvii/headlines/RefreshDrawable;->indicatorDrawableId:I

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/narvii/headlines/RefreshDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/narvii/headlines/RefreshDrawable;->indicatorDrawableId:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/headlines/RefreshDrawable;->indicatorBitmap:Landroid/graphics/Bitmap;

    .line 63
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/narvii/headlines/RefreshDrawable;->indicatorBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/narvii/headlines/RefreshDrawable;->indicatorShader:Landroid/graphics/Shader;

    .line 66
    :cond_1
    invoke-direct {p0}, Lcom/narvii/headlines/RefreshDrawable;->setupAnimator()V

    return-void
.end method

.method private setupAnimator()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 71
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/headlines/RefreshDrawable;->animator:Landroid/animation/ValueAnimator;

    .line 72
    iget-object v0, p0, Lcom/narvii/headlines/RefreshDrawable;->animator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 73
    iget-object v0, p0, Lcom/narvii/headlines/RefreshDrawable;->animator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/narvii/headlines/RefreshDrawable;->duration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 74
    iget-object v0, p0, Lcom/narvii/headlines/RefreshDrawable;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/narvii/headlines/RefreshDrawable$1;

    invoke-direct {v1, p0}, Lcom/narvii/headlines/RefreshDrawable$1;-><init>(Lcom/narvii/headlines/RefreshDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/narvii/headlines/RefreshDrawable;->bgShader:Landroid/graphics/Shader;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 104
    iget-object v0, p0, Lcom/narvii/headlines/RefreshDrawable;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/narvii/headlines/RefreshDrawable;->bgShader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 105
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/headlines/RefreshDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 106
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/narvii/headlines/RefreshDrawable;->indicatorShader:Landroid/graphics/Shader;

    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 111
    iget-object v0, p0, Lcom/narvii/headlines/RefreshDrawable;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/narvii/headlines/RefreshDrawable;->indicatorShader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 112
    iget-object v0, p0, Lcom/narvii/headlines/RefreshDrawable;->indicatorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 113
    iget-object v1, p0, Lcom/narvii/headlines/RefreshDrawable;->indicatorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 114
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v2, v0

    .line 115
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v1, v2

    int-to-float v0, v0

    .line 117
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, 0x43b40000    # 360.0f

    .line 118
    iget v1, p0, Lcom/narvii/headlines/RefreshDrawable;->curProgress:F

    mul-float v1, v1, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    invoke-virtual {p1, v1, v0, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 119
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/headlines/RefreshDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 120
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/narvii/headlines/RefreshDrawable;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/narvii/headlines/RefreshDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setBackProgress(FF)V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/narvii/headlines/RefreshDrawable;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/narvii/headlines/RefreshDrawable;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v2, 0x1

    aput p2, v0, v2

    .line 144
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/headlines/RefreshDrawable;->animator:Landroid/animation/ValueAnimator;

    .line 145
    iput p1, p0, Lcom/narvii/headlines/RefreshDrawable;->curProgress:F

    .line 146
    iget-object p1, p0, Lcom/narvii/headlines/RefreshDrawable;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 147
    iget-object p1, p0, Lcom/narvii/headlines/RefreshDrawable;->animator:Landroid/animation/ValueAnimator;

    iget p2, p0, Lcom/narvii/headlines/RefreshDrawable;->duration:I

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 148
    iget-object p1, p0, Lcom/narvii/headlines/RefreshDrawable;->animator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/narvii/headlines/RefreshDrawable$2;

    invoke-direct {p2, p0}, Lcom/narvii/headlines/RefreshDrawable$2;-><init>(Lcom/narvii/headlines/RefreshDrawable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 155
    invoke-virtual {p0}, Lcom/narvii/headlines/RefreshDrawable;->start()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/narvii/headlines/RefreshDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public start()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/narvii/headlines/RefreshDrawable;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/narvii/headlines/RefreshDrawable;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 91
    iput v0, p0, Lcom/narvii/headlines/RefreshDrawable;->curProgress:F

    .line 92
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
