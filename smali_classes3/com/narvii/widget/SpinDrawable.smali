.class public Lcom/narvii/widget/SpinDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SpinDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field public static final COUNT_CIRCLE:I = 0x8

.field public static final DEFAULT_COLOR:I = -0xfd2b87

.field public static final DURATION:I = 0x3e8

.field public static final RATIO_CIRCLE:F = 0.2f


# instance fields
.field private alpha:I

.field alphas:[I

.field animators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field boudsWidth:F

.field boundsHeight:F

.field drawBounds:Landroid/graphics/Rect;

.field private isRunning:Z

.field mPaint:Landroid/graphics/Paint;

.field scales:[F


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 42
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/SpinDrawable;->drawBounds:Landroid/graphics/Rect;

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 43
    iput-object v1, p0, Lcom/narvii/widget/SpinDrawable;->scales:[F

    new-array v1, v0, [I

    .line 44
    iput-object v1, p0, Lcom/narvii/widget/SpinDrawable;->alphas:[I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 46
    iget-object v2, p0, Lcom/narvii/widget/SpinDrawable;->scales:[F

    const/high16 v3, 0x3f800000    # 1.0f

    int-to-float v4, v1

    mul-float v4, v4, v3

    const/high16 v3, 0x41000000    # 8.0f

    div-float/2addr v4, v3

    aput v4, v2, v1

    .line 47
    iget-object v2, p0, Lcom/narvii/widget/SpinDrawable;->alphas:[I

    const/16 v3, 0xff

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/narvii/widget/SpinDrawable;->mPaint:Landroid/graphics/Paint;

    .line 51
    iget-object v0, p0, Lcom/narvii/widget/SpinDrawable;->mPaint:Landroid/graphics/Paint;

    const v1, -0xfd2b87

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    iget-object v0, p0, Lcom/narvii/widget/SpinDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    iget-object v0, p0, Lcom/narvii/widget/SpinDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 73
    iget v1, p0, Lcom/narvii/widget/SpinDrawable;->boudsWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    float-to-double v3, v3

    const v5, 0x3ecccccd    # 0.4f

    mul-float v1, v1, v5

    float-to-double v6, v1

    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v10, v0

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v8

    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    div-double/2addr v10, v8

    .line 74
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v6

    double-to-float v1, v3

    .line 75
    iget v3, p0, Lcom/narvii/widget/SpinDrawable;->boundsHeight:F

    div-float v2, v3, v2

    float-to-double v6, v2

    mul-float v3, v3, v5

    float-to-double v2, v3

    .line 76
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v6, v2

    double-to-float v2, v6

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 78
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 79
    iget-object v1, p0, Lcom/narvii/widget/SpinDrawable;->scales:[F

    aget v2, v1, v0

    aget v1, v1, v0

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 80
    iget-object v1, p0, Lcom/narvii/widget/SpinDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/narvii/widget/SpinDrawable;->alphas:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 81
    iget v1, p0, Lcom/narvii/widget/SpinDrawable;->boudsWidth:F

    const v2, 0x3e4ccccd    # 0.2f

    mul-float v1, v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    iget-object v2, p0, Lcom/narvii/widget/SpinDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 82
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAnimations()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    const/4 v2, 0x2

    new-array v3, v2, [F

    .line 138
    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    const/16 v4, 0x7d

    mul-int v4, v4, v1

    int-to-long v4, v4

    .line 139
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const/4 v6, -0x1

    .line 140
    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const-wide/16 v7, 0x3e8

    .line 141
    invoke-virtual {v3, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 142
    new-instance v9, Lcom/narvii/widget/SpinDrawable$1;

    invoke-direct {v9, p0, v1}, Lcom/narvii/widget/SpinDrawable$1;-><init>(Lcom/narvii/widget/SpinDrawable;I)V

    invoke-virtual {v3, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v2, [I

    .line 150
    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 151
    invoke-virtual {v2, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 152
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 153
    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 154
    new-instance v4, Lcom/narvii/widget/SpinDrawable$2;

    invoke-direct {v4, p0, v1}, Lcom/narvii/widget/SpinDrawable$2;-><init>(Lcom/narvii/widget/SpinDrawable;I)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 162
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
    .end array-data

    :array_1
    .array-data 4
        0xff
        0xb4
    .end array-data
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public isRunning()Z
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/narvii/widget/SpinDrawable;->animators:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 125
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 126
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    .line 64
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/narvii/widget/SpinDrawable;->drawBounds:Landroid/graphics/Rect;

    .line 66
    iget-object p1, p0, Lcom/narvii/widget/SpinDrawable;->drawBounds:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/narvii/widget/SpinDrawable;->boudsWidth:F

    .line 67
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p1

    int-to-float p1, v0

    iput p1, p0, Lcom/narvii/widget/SpinDrawable;->boundsHeight:F

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/narvii/widget/SpinDrawable;->alpha:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setLoadingColor(I)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/narvii/widget/SpinDrawable;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/narvii/widget/SpinDrawable;->animators:Ljava/util/List;

    if-nez v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/narvii/widget/SpinDrawable;->getAnimations()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/SpinDrawable;->animators:Ljava/util/List;

    :cond_0
    const/4 v0, 0x0

    .line 106
    :goto_0
    iget-object v1, p0, Lcom/narvii/widget/SpinDrawable;->animators:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/narvii/widget/SpinDrawable;->animators:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/narvii/widget/SpinDrawable;->animators:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 116
    :goto_0
    iget-object v1, p0, Lcom/narvii/widget/SpinDrawable;->animators:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 117
    iget-object v1, p0, Lcom/narvii/widget/SpinDrawable;->animators:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    .line 118
    iget-object v1, p0, Lcom/narvii/widget/SpinDrawable;->animators:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
