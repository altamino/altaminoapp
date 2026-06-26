.class public Lcom/narvii/widget/SemiProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SemiProgressDrawable.java"

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

    .line 26
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/narvii/widget/SemiProgressDrawable;->context:Landroid/content/Context;

    .line 28
    iput p2, p0, Lcom/narvii/widget/SemiProgressDrawable;->color:I

    .line 29
    iput p3, p0, Lcom/narvii/widget/SemiProgressDrawable;->strokeWidth:I

    .line 30
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/SemiProgressDrawable;->animator:Landroid/animation/ValueAnimator;

    .line 31
    invoke-direct {p0}, Lcom/narvii/widget/SemiProgressDrawable;->init()V

    return-void
.end method

.method static synthetic access$002(Lcom/narvii/widget/SemiProgressDrawable;F)F
    .locals 0

    .line 16
    iput p1, p0, Lcom/narvii/widget/SemiProgressDrawable;->curProgress:F

    return p1
.end method

.method private init()V
    .locals 2

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/SemiProgressDrawable;->paint:Landroid/graphics/Paint;

    .line 37
    iget-object v0, p0, Lcom/narvii/widget/SemiProgressDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 38
    iget-object v0, p0, Lcom/narvii/widget/SemiProgressDrawable;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 39
    iget-object v0, p0, Lcom/narvii/widget/SemiProgressDrawable;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/narvii/widget/SemiProgressDrawable;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    iget-object v0, p0, Lcom/narvii/widget/SemiProgressDrawable;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/narvii/widget/SemiProgressDrawable;->strokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 41
    invoke-direct {p0}, Lcom/narvii/widget/SemiProgressDrawable;->setupAnimator()V

    return-void
.end method

.method private setupAnimator()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 45
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/SemiProgressDrawable;->animator:Landroid/animation/ValueAnimator;

    .line 46
    iget-object v0, p0, Lcom/narvii/widget/SemiProgressDrawable;->animator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 47
    iget-object v0, p0, Lcom/narvii/widget/SemiProgressDrawable;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 48
    iget-object v0, p0, Lcom/narvii/widget/SemiProgressDrawable;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/narvii/widget/SemiProgressDrawable$1;

    invoke-direct {v1, p0}, Lcom/narvii/widget/SemiProgressDrawable$1;-><init>(Lcom/narvii/widget/SemiProgressDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 79
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 80
    iget v0, p0, Lcom/narvii/widget/SemiProgressDrawable;->curProgress:F

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v0, v0, v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 81
    new-instance v4, Landroid/graphics/RectF;

    iget v0, p0, Lcom/narvii/widget/SemiProgressDrawable;->strokeWidth:I

    int-to-float v1, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/narvii/widget/SemiProgressDrawable;->strokeWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/narvii/widget/SemiProgressDrawable;->strokeWidth:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-direct {v4, v1, v0, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 82
    iget-object v8, p0, Lcom/narvii/widget/SemiProgressDrawable;->paint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/high16 v6, 0x43870000    # 270.0f

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 83
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/narvii/widget/SemiProgressDrawable;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/narvii/widget/SemiProgressDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/narvii/widget/SemiProgressDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public start()V
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/narvii/widget/SemiProgressDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/SemiProgressDrawable;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/narvii/widget/SemiProgressDrawable;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/narvii/widget/SemiProgressDrawable;->curProgress:F

    .line 69
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
