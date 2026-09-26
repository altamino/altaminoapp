.class public Lcom/narvii/headlines/RefreshDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Rect;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/headlines/RefreshDrawable;->bounds:Landroid/graphics/Rect;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/headlines/RefreshDrawable;->context:Landroid/content/Context;

    .line 13
    .line 14
    iput p2, p0, Lcom/narvii/headlines/RefreshDrawable;->bgDrawableId:I

    .line 15
    .line 16
    iput p3, p0, Lcom/narvii/headlines/RefreshDrawable;->indicatorDrawableId:I

    .line 17
    .line 18
    iput p4, p0, Lcom/narvii/headlines/RefreshDrawable;->duration:I

    .line 19
    .line 20
    if-nez p4, :cond_0

    .line 21
    .line 22
    const/16 p1, 0x1f4

    .line 23
    .line 24
    iput p1, p0, Lcom/narvii/headlines/RefreshDrawable;->duration:I

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-direct {p0}, Lcom/narvii/headlines/RefreshDrawable;->init()V

    .line 28
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/headlines/RefreshDrawable;F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/headlines/RefreshDrawable;->curProgress:F

    return-void
.end method

.method private init()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/headlines/RefreshDrawable;->paint:Landroid/graphics/Paint;

    .line 8
    .line 9
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/headlines/RefreshDrawable;->paint:Landroid/graphics/Paint;

    .line 15
    const/4 v1, 0x1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 19
    .line 20
    iget v0, p0, Lcom/narvii/headlines/RefreshDrawable;->bgDrawableId:I

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    new-instance v0, Landroid/graphics/BitmapShader;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/narvii/headlines/RefreshDrawable;->context:Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, p0, Lcom/narvii/headlines/RefreshDrawable;->bgDrawableId:I

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 42
    .line 43
    iput-object v0, p0, Lcom/narvii/headlines/RefreshDrawable;->bgShader:Landroid/graphics/Shader;

    .line 44
    .line 45
    :cond_0
    iget v0, p0, Lcom/narvii/headlines/RefreshDrawable;->indicatorDrawableId:I

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lcom/narvii/headlines/RefreshDrawable;->context:Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    iget v1, p0, Lcom/narvii/headlines/RefreshDrawable;->indicatorDrawableId:I

    .line 56
    .line 57
    .line 58
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    iput-object v0, p0, Lcom/narvii/headlines/RefreshDrawable;->indicatorBitmap:Landroid/graphics/Bitmap;

    .line 62
    .line 63
    new-instance v0, Landroid/graphics/BitmapShader;

    .line 64
    .line 65
    iget-object v1, p0, Lcom/narvii/headlines/RefreshDrawable;->indicatorBitmap:Landroid/graphics/Bitmap;

    .line 66
    .line 67
    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 68
    .line 69
    .line 70
    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 71
    .line 72
    iput-object v0, p0, Lcom/narvii/headlines/RefreshDrawable;->indicatorShader:Landroid/graphics/Shader;

    .line 73
    .line 74
    .line 75
    :cond_1
    invoke-direct {p0}, Lcom/narvii/headlines/RefreshDrawable;->setupAnimator()V

    .line 76
    return-void
.end method

.method private setupAnimator()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    new-array v0, v0, [F

    .line 4
    .line 5
    .line 6
    fill-array-data v0, :array_0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/headlines/RefreshDrawable;->animator:Landroid/animation/ValueAnimator;

    .line 13
    const/4 v1, -0x1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/headlines/RefreshDrawable;->animator:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    iget v1, p0, Lcom/narvii/headlines/RefreshDrawable;->duration:I

    .line 21
    int-to-long v1, v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/headlines/RefreshDrawable;->animator:Landroid/animation/ValueAnimator;

    .line 27
    .line 28
    new-instance v1, Lcom/narvii/headlines/RefreshDrawable$1;

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/narvii/headlines/RefreshDrawable$1;-><init>(Lcom/narvii/headlines/RefreshDrawable;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 35
    return-void

    .line 36
    nop

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/headlines/RefreshDrawable;->bgShader:Landroid/graphics/Shader;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/headlines/RefreshDrawable;->paint:Landroid/graphics/Paint;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/headlines/RefreshDrawable;->bgShader:Landroid/graphics/Shader;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/headlines/RefreshDrawable;->paint:Landroid/graphics/Paint;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/narvii/headlines/RefreshDrawable;->indicatorShader:Landroid/graphics/Shader;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/headlines/RefreshDrawable;->paint:Landroid/graphics/Paint;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/narvii/headlines/RefreshDrawable;->indicatorShader:Landroid/graphics/Shader;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/headlines/RefreshDrawable;->indicatorBitmap:Landroid/graphics/Bitmap;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 46
    move-result v0

    .line 47
    .line 48
    iget-object v1, p0, Lcom/narvii/headlines/RefreshDrawable;->indicatorBitmap:Landroid/graphics/Bitmap;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 52
    move-result v1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 56
    move-result-object v2

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    .line 60
    move-result v2

    .line 61
    .line 62
    div-int/lit8 v0, v0, 0x2

    .line 63
    sub-int/2addr v2, v0

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    .line 71
    move-result v0

    .line 72
    .line 73
    div-int/lit8 v1, v1, 0x2

    .line 74
    sub-int/2addr v0, v1

    .line 75
    int-to-float v1, v2

    .line 76
    int-to-float v0, v0

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 80
    .line 81
    const/high16 v0, 0x43b40000    # 360.0f

    .line 82
    .line 83
    iget v1, p0, Lcom/narvii/headlines/RefreshDrawable;->curProgress:F

    .line 84
    mul-float/2addr v1, v0

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    .line 92
    move-result v0

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 96
    move-result-object v2

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterY()F

    .line 100
    move-result v2

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v1, v0, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 107
    move-result-object v0

    .line 108
    .line 109
    iget-object v1, p0, Lcom/narvii/headlines/RefreshDrawable;->paint:Landroid/graphics/Paint;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 116
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/headlines/RefreshDrawable;->animator:Landroid/animation/ValueAnimator;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/headlines/RefreshDrawable;->paint:Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6
    return-void
.end method

.method public setBackProgress(FF)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/headlines/RefreshDrawable;->animator:Landroid/animation/ValueAnimator;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/headlines/RefreshDrawable;->animator:Landroid/animation/ValueAnimator;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 14
    :cond_0
    const/4 v0, 0x2

    .line 15
    .line 16
    new-array v0, v0, [F

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    aput p1, v0, v1

    .line 20
    const/4 v2, 0x1

    .line 21
    .line 22
    aput p2, v0, v2

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    iput-object p2, p0, Lcom/narvii/headlines/RefreshDrawable;->animator:Landroid/animation/ValueAnimator;

    .line 29
    .line 30
    iput p1, p0, Lcom/narvii/headlines/RefreshDrawable;->curProgress:F

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 34
    .line 35
    iget-object p1, p0, Lcom/narvii/headlines/RefreshDrawable;->animator:Landroid/animation/ValueAnimator;

    .line 36
    .line 37
    iget p2, p0, Lcom/narvii/headlines/RefreshDrawable;->duration:I

    .line 38
    int-to-long v0, p2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 42
    .line 43
    iget-object p1, p0, Lcom/narvii/headlines/RefreshDrawable;->animator:Landroid/animation/ValueAnimator;

    .line 44
    .line 45
    new-instance p2, Lcom/narvii/headlines/RefreshDrawable$2;

    .line 46
    .line 47
    .line 48
    invoke-direct {p2, p0}, Lcom/narvii/headlines/RefreshDrawable$2;-><init>(Lcom/narvii/headlines/RefreshDrawable;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/narvii/headlines/RefreshDrawable;->start()V

    .line 55
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/headlines/RefreshDrawable;->paint:Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 6
    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/headlines/RefreshDrawable;->animator:Landroid/animation/ValueAnimator;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 6
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/headlines/RefreshDrawable;->animator:Landroid/animation/ValueAnimator;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    iput v0, p0, Lcom/narvii/headlines/RefreshDrawable;->curProgress:F

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 12
    return-void
.end method
