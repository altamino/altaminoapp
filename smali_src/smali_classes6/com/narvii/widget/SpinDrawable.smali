.class public Lcom/narvii/widget/SpinDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

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
    iput-object v0, p0, Lcom/narvii/widget/SpinDrawable;->drawBounds:Landroid/graphics/Rect;

    .line 11
    .line 12
    const/16 v0, 0x8

    .line 13
    .line 14
    new-array v1, v0, [F

    .line 15
    .line 16
    iput-object v1, p0, Lcom/narvii/widget/SpinDrawable;->scales:[F

    .line 17
    .line 18
    new-array v1, v0, [I

    .line 19
    .line 20
    iput-object v1, p0, Lcom/narvii/widget/SpinDrawable;->alphas:[I

    .line 21
    const/4 v1, 0x0

    .line 22
    .line 23
    :goto_0
    if-ge v1, v0, :cond_0

    .line 24
    .line 25
    iget-object v2, p0, Lcom/narvii/widget/SpinDrawable;->scales:[F

    .line 26
    .line 27
    const/high16 v3, 0x3f800000    # 1.0f

    .line 28
    int-to-float v4, v1

    .line 29
    mul-float/2addr v4, v3

    .line 30
    .line 31
    const/high16 v3, 0x41000000    # 8.0f

    .line 32
    div-float/2addr v4, v3

    .line 33
    .line 34
    aput v4, v2, v1

    .line 35
    .line 36
    iget-object v2, p0, Lcom/narvii/widget/SpinDrawable;->alphas:[I

    .line 37
    .line 38
    const/16 v3, 0xff

    .line 39
    .line 40
    aput v3, v2, v1

    .line 41
    .line 42
    add-int/lit8 v1, v1, 0x1

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    .line 46
    .line 47
    .line 48
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 49
    .line 50
    iput-object v0, p0, Lcom/narvii/widget/SpinDrawable;->mPaint:Landroid/graphics/Paint;

    .line 51
    .line 52
    .line 53
    const v1, -0xfd2b87

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    .line 58
    iget-object v0, p0, Lcom/narvii/widget/SpinDrawable;->mPaint:Landroid/graphics/Paint;

    .line 59
    .line 60
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    .line 65
    iget-object v0, p0, Lcom/narvii/widget/SpinDrawable;->mPaint:Landroid/graphics/Paint;

    .line 66
    const/4 v1, 0x1

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 70
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :goto_0
    const/16 v1, 0x8

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    iget v1, p0, Lcom/narvii/widget/SpinDrawable;->boudsWidth:F

    .line 8
    .line 9
    const/high16 v2, 0x40000000    # 2.0f

    .line 10
    .line 11
    div-float v3, v1, v2

    .line 12
    float-to-double v3, v3

    .line 13
    .line 14
    .line 15
    const v5, 0x3ecccccd    # 0.4f

    .line 16
    mul-float/2addr v1, v5

    .line 17
    float-to-double v6, v1

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    .line 23
    int-to-double v10, v0

    .line 24
    mul-double/2addr v10, v8

    .line 25
    .line 26
    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    .line 27
    div-double/2addr v10, v8

    .line 28
    .line 29
    .line 30
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    .line 31
    move-result-wide v8

    .line 32
    mul-double/2addr v6, v8

    .line 33
    add-double/2addr v3, v6

    .line 34
    double-to-float v1, v3

    .line 35
    .line 36
    iget v3, p0, Lcom/narvii/widget/SpinDrawable;->boundsHeight:F

    .line 37
    .line 38
    div-float v2, v3, v2

    .line 39
    float-to-double v6, v2

    .line 40
    mul-float/2addr v3, v5

    .line 41
    float-to-double v2, v3

    .line 42
    .line 43
    .line 44
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    .line 45
    move-result-wide v4

    .line 46
    mul-double/2addr v2, v4

    .line 47
    add-double/2addr v6, v2

    .line 48
    double-to-float v2, v6

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 55
    .line 56
    iget-object v1, p0, Lcom/narvii/widget/SpinDrawable;->scales:[F

    .line 57
    .line 58
    aget v1, v1, v0

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 62
    .line 63
    iget-object v1, p0, Lcom/narvii/widget/SpinDrawable;->mPaint:Landroid/graphics/Paint;

    .line 64
    .line 65
    iget-object v2, p0, Lcom/narvii/widget/SpinDrawable;->alphas:[I

    .line 66
    .line 67
    aget v2, v2, v0

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 71
    .line 72
    iget v1, p0, Lcom/narvii/widget/SpinDrawable;->boudsWidth:F

    .line 73
    .line 74
    .line 75
    const v2, 0x3e4ccccd    # 0.2f

    .line 76
    mul-float/2addr v1, v2

    .line 77
    .line 78
    const/high16 v2, 0x3f000000    # 0.5f

    .line 79
    mul-float/2addr v1, v2

    .line 80
    .line 81
    iget-object v2, p0, Lcom/narvii/widget/SpinDrawable;->mPaint:Landroid/graphics/Paint;

    .line 82
    const/4 v3, 0x0

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 89
    .line 90
    add-int/lit8 v0, v0, 0x1

    .line 91
    goto :goto_0

    .line 92
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

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    :goto_0
    const/16 v2, 0x8

    .line 9
    .line 10
    if-ge v1, v2, :cond_0

    .line 11
    const/4 v2, 0x2

    .line 12
    .line 13
    new-array v2, v2, [F

    .line 14
    .line 15
    .line 16
    fill-array-data v2, :array_0

    .line 17
    .line 18
    .line 19
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    const/16 v3, 0x7d

    .line 23
    mul-int/2addr v3, v1

    .line 24
    int-to-long v3, v3

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 28
    const/4 v5, -0x1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 32
    .line 33
    const-wide/16 v6, 0x3e8

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 37
    .line 38
    new-instance v8, Lcom/narvii/widget/SpinDrawable$1;

    .line 39
    .line 40
    .line 41
    invoke-direct {v8, p0, v1}, Lcom/narvii/widget/SpinDrawable$1;-><init>(Lcom/narvii/widget/SpinDrawable;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 45
    .line 46
    const/16 v8, 0xff

    .line 47
    .line 48
    const/16 v9, 0xb4

    .line 49
    .line 50
    .line 51
    filled-new-array {v8, v9}, [I

    .line 52
    move-result-object v8

    .line 53
    .line 54
    .line 55
    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 56
    move-result-object v8

    .line 57
    .line 58
    .line 59
    invoke-virtual {v8, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v8, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v8, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 66
    .line 67
    new-instance v3, Lcom/narvii/widget/SpinDrawable$2;

    .line 68
    .line 69
    .line 70
    invoke-direct {v3, p0, v1}, Lcom/narvii/widget/SpinDrawable$2;-><init>(Lcom/narvii/widget/SpinDrawable;I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v8, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 74
    .line 75
    .line 76
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    add-int/lit8 v1, v1, 0x1

    .line 82
    goto :goto_0

    .line 83
    :cond_0
    return-object v0

    .line 84
    nop

    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
    .end array-data
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public isRunning()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/SpinDrawable;->animators:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Landroid/animation/Animator;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    .line 24
    move-result v0

    .line 25
    return v0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Rect;

    .line 6
    .line 7
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 8
    .line 9
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 10
    .line 11
    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 12
    .line 13
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/widget/SpinDrawable;->drawBounds:Landroid/graphics/Rect;

    .line 19
    .line 20
    iget p1, v0, Landroid/graphics/Rect;->right:I

    .line 21
    .line 22
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 23
    sub-int/2addr p1, v1

    .line 24
    int-to-float p1, p1

    .line 25
    .line 26
    iput p1, p0, Lcom/narvii/widget/SpinDrawable;->boudsWidth:F

    .line 27
    .line 28
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 29
    .line 30
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 31
    sub-int/2addr p1, v0

    .line 32
    int-to-float p1, p1

    .line 33
    .line 34
    iput p1, p0, Lcom/narvii/widget/SpinDrawable;->boundsHeight:F

    .line 35
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param

    iput p1, p0, Lcom/narvii/widget/SpinDrawable;->alpha:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public setLoadingColor(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/SpinDrawable;->mPaint:Landroid/graphics/Paint;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/SpinDrawable;->animators:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/widget/SpinDrawable;->getAnimations()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/widget/SpinDrawable;->animators:Ljava/util/List;

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    .line 13
    :goto_0
    iget-object v1, p0, Lcom/narvii/widget/SpinDrawable;->animators:Ljava/util/List;

    .line 14
    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 17
    move-result v1

    .line 18
    .line 19
    if-ge v0, v1, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/widget/SpinDrawable;->animators:Ljava/util/List;

    .line 22
    .line 23
    .line 24
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    check-cast v1, Landroid/animation/Animator;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 31
    .line 32
    add-int/lit8 v0, v0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/SpinDrawable;->animators:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    .line 8
    :goto_0
    iget-object v1, p0, Lcom/narvii/widget/SpinDrawable;->animators:Ljava/util/List;

    .line 9
    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 12
    move-result v1

    .line 13
    .line 14
    if-ge v0, v1, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/widget/SpinDrawable;->animators:Ljava/util/List;

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Landroid/animation/Animator;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    .line 26
    .line 27
    iget-object v1, p0, Lcom/narvii/widget/SpinDrawable;->animators:Ljava/util/List;

    .line 28
    .line 29
    .line 30
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    check-cast v1, Landroid/animation/Animator;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 37
    .line 38
    add-int/lit8 v0, v0, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return-void
.end method
