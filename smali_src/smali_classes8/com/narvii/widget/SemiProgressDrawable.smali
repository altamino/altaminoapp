.class public Lcom/narvii/widget/SemiProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field private static final DURATION:I = 0x3e8


# instance fields
.field private animator:Landroid/animation/ValueAnimator;

.field private color:I

.field private context:Landroid/content/Context;

.field private curProgress:F

.field private paint:Landroid/graphics/Paint;

.field private strokeWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/widget/SemiProgressDrawable;->context:Landroid/content/Context;

    .line 6
    .line 7
    iput p2, p0, Lcom/narvii/widget/SemiProgressDrawable;->color:I

    .line 8
    .line 9
    iput p3, p0, Lcom/narvii/widget/SemiProgressDrawable;->strokeWidth:I

    .line 10
    .line 11
    new-instance p1, Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    .line 14
    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    .line 15
    .line 16
    iput-object p1, p0, Lcom/narvii/widget/SemiProgressDrawable;->animator:Landroid/animation/ValueAnimator;

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/narvii/widget/SemiProgressDrawable;->init()V

    .line 20
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/widget/SemiProgressDrawable;F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/narvii/widget/SemiProgressDrawable;->curProgress:F

    return-void
.end method

.method private init()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/widget/SemiProgressDrawable;->paint:Landroid/graphics/Paint;

    .line 8
    .line 9
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/widget/SemiProgressDrawable;->paint:Landroid/graphics/Paint;

    .line 15
    const/4 v1, 0x1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/widget/SemiProgressDrawable;->paint:Landroid/graphics/Paint;

    .line 21
    .line 22
    iget v1, p0, Lcom/narvii/widget/SemiProgressDrawable;->color:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/widget/SemiProgressDrawable;->paint:Landroid/graphics/Paint;

    .line 28
    .line 29
    iget v1, p0, Lcom/narvii/widget/SemiProgressDrawable;->strokeWidth:I

    .line 30
    int-to-float v1, v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/narvii/widget/SemiProgressDrawable;->setupAnimator()V

    .line 37
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
    iput-object v0, p0, Lcom/narvii/widget/SemiProgressDrawable;->animator:Landroid/animation/ValueAnimator;

    .line 13
    const/4 v1, -0x1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/widget/SemiProgressDrawable;->animator:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    const-wide/16 v1, 0x3e8

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/widget/SemiProgressDrawable;->animator:Landroid/animation/ValueAnimator;

    .line 26
    .line 27
    new-instance v1, Lcom/narvii/widget/SemiProgressDrawable$1;

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, p0}, Lcom/narvii/widget/SemiProgressDrawable$1;-><init>(Lcom/narvii/widget/SemiProgressDrawable;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 34
    return-void

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    .line 5
    const/high16 v0, 0x43b40000    # 360.0f

    .line 6
    .line 7
    iget v1, p0, Lcom/narvii/widget/SemiProgressDrawable;->curProgress:F

    .line 8
    mul-float/2addr v1, v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    .line 16
    move-result v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterY()F

    .line 24
    move-result v2

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v1, v0, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 28
    .line 29
    new-instance v4, Landroid/graphics/RectF;

    .line 30
    .line 31
    iget v0, p0, Lcom/narvii/widget/SemiProgressDrawable;->strokeWidth:I

    .line 32
    int-to-float v1, v0

    .line 33
    int-to-float v0, v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 40
    .line 41
    iget v3, p0, Lcom/narvii/widget/SemiProgressDrawable;->strokeWidth:I

    .line 42
    sub-int/2addr v2, v3

    .line 43
    int-to-float v2, v2

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 47
    move-result-object v3

    .line 48
    .line 49
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 50
    .line 51
    iget v5, p0, Lcom/narvii/widget/SemiProgressDrawable;->strokeWidth:I

    .line 52
    sub-int/2addr v3, v5

    .line 53
    int-to-float v3, v3

    .line 54
    .line 55
    .line 56
    invoke-direct {v4, v1, v0, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 57
    const/4 v5, 0x0

    .line 58
    .line 59
    const/high16 v6, 0x43870000    # 270.0f

    .line 60
    const/4 v7, 0x0

    .line 61
    .line 62
    iget-object v8, p0, Lcom/narvii/widget/SemiProgressDrawable;->paint:Landroid/graphics/Paint;

    .line 63
    move-object v3, p1

    .line 64
    .line 65
    .line 66
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 70
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
    iget-object v0, p0, Lcom/narvii/widget/SemiProgressDrawable;->animator:Landroid/animation/ValueAnimator;

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
    iget-object v0, p0, Lcom/narvii/widget/SemiProgressDrawable;->paint:Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6
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
    iget-object v0, p0, Lcom/narvii/widget/SemiProgressDrawable;->paint:Landroid/graphics/Paint;

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
    .line 3
    invoke-virtual {p0}, Lcom/narvii/widget/SemiProgressDrawable;->isRunning()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/SemiProgressDrawable;->animator:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 13
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/SemiProgressDrawable;->animator:Landroid/animation/ValueAnimator;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    iput v0, p0, Lcom/narvii/widget/SemiProgressDrawable;->curProgress:F

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 12
    return-void
.end method
