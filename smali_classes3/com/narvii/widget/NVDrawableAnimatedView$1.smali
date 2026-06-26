.class Lcom/narvii/widget/NVDrawableAnimatedView$1;
.super Ljava/lang/Object;
.source "NVDrawableAnimatedView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/NVDrawableAnimatedView;->configLayerAnimator(Lcom/narvii/widget/NVDrawableAnimatedView$Layer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastFraction:F

.field final synthetic this$0:Lcom/narvii/widget/NVDrawableAnimatedView;

.field final synthetic val$info:Lcom/narvii/widget/NVDrawableAnimatedView$Layer;


# direct methods
.method constructor <init>(Lcom/narvii/widget/NVDrawableAnimatedView;Lcom/narvii/widget/NVDrawableAnimatedView$Layer;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$1;->this$0:Lcom/narvii/widget/NVDrawableAnimatedView;

    iput-object p2, p0, Lcom/narvii/widget/NVDrawableAnimatedView$1;->val$info:Lcom/narvii/widget/NVDrawableAnimatedView$Layer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 394
    iput p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$1;->lastFraction:F

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 10

    .line 398
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 400
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 401
    iget p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$1;->lastFraction:F

    cmpl-float v1, v0, p1

    if-lez v1, :cond_0

    sub-float p1, v0, p1

    .line 402
    iget-object v1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$1;->val$info:Lcom/narvii/widget/NVDrawableAnimatedView$Layer;

    iget v1, v1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationInterval:F

    mul-float p1, p1, v1

    goto/16 :goto_1

    .line 404
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$1;->val$info:Lcom/narvii/widget/NVDrawableAnimatedView$Layer;

    iget p1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationInterval:F

    mul-float p1, p1, v0

    goto/16 :goto_1

    .line 407
    :cond_1
    iget v1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$1;->lastFraction:F

    sub-float v3, v0, v1

    iget-object v4, p0, Lcom/narvii/widget/NVDrawableAnimatedView$1;->val$info:Lcom/narvii/widget/NVDrawableAnimatedView$Layer;

    iget v5, v4, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationInterval:F

    mul-float v3, v3, v5

    .line 408
    iget v5, v4, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationType:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_3

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    .line 410
    iget v1, v4, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->toScaleX:F

    iget v5, v4, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->baseScaleX:F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v7, p0, Lcom/narvii/widget/NVDrawableAnimatedView$1;->val$info:Lcom/narvii/widget/NVDrawableAnimatedView$Layer;

    iget v8, v7, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->fromValue:F

    iget v9, v7, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationInterval:F

    add-float/2addr v8, v9

    sub-float/2addr v6, v8

    mul-float v5, v5, v6

    add-float/2addr v1, v5

    iput v1, v4, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scaleX:F

    .line 411
    iget v1, v7, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->toScaleY:F

    iget v4, v7, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->baseScaleY:F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v5, p0, Lcom/narvii/widget/NVDrawableAnimatedView$1;->val$info:Lcom/narvii/widget/NVDrawableAnimatedView$Layer;

    iget v6, v5, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->fromValue:F

    iget v5, v5, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationInterval:F

    add-float/2addr v6, v5

    sub-float/2addr p1, v6

    mul-float v4, v4, p1

    add-float/2addr v1, v4

    iput v1, v7, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scaleY:F

    goto :goto_0

    .line 413
    :cond_2
    iget v1, v4, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->fromScaleX:F

    iget v5, v4, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->baseScaleX:F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v7, p0, Lcom/narvii/widget/NVDrawableAnimatedView$1;->val$info:Lcom/narvii/widget/NVDrawableAnimatedView$Layer;

    iget v8, v7, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->fromValue:F

    sub-float/2addr v6, v8

    mul-float v5, v5, v6

    add-float/2addr v1, v5

    iput v1, v4, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scaleX:F

    .line 414
    iget v1, v7, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->fromScaleY:F

    iget v4, v7, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->baseScaleY:F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v5, p0, Lcom/narvii/widget/NVDrawableAnimatedView$1;->val$info:Lcom/narvii/widget/NVDrawableAnimatedView$Layer;

    iget v5, v5, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->fromValue:F

    sub-float/2addr p1, v5

    mul-float v4, v4, p1

    add-float/2addr v1, v4

    iput v1, v7, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scaleY:F

    :cond_3
    :goto_0
    move p1, v3

    .line 418
    :goto_1
    iput v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$1;->lastFraction:F

    .line 420
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView$1;->val$info:Lcom/narvii/widget/NVDrawableAnimatedView$Layer;

    iget v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationType:I

    if-ne v1, v2, :cond_4

    .line 421
    iget v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateX:F

    sub-float/2addr v1, p1

    iput v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateX:F

    goto :goto_2

    :cond_4
    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 423
    iget v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateX:F

    add-float/2addr v1, p1

    iput v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateX:F

    goto :goto_2

    :cond_5
    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    .line 425
    iget v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateY:F

    sub-float/2addr v1, p1

    iput v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateY:F

    goto :goto_2

    :cond_6
    const/4 v2, 0x4

    if-ne v1, v2, :cond_7

    .line 427
    iget v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateY:F

    add-float/2addr v1, p1

    iput v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateY:F

    goto :goto_2

    :cond_7
    const/4 v2, 0x5

    if-ne v1, v2, :cond_8

    .line 429
    iget v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->rotateDegree:F

    add-float/2addr v1, p1

    iput v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->rotateDegree:F

    goto :goto_2

    :cond_8
    const/4 v2, 0x6

    if-ne v1, v2, :cond_9

    .line 431
    iget v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->rotateDegree:F

    sub-float/2addr v1, p1

    iput v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->rotateDegree:F

    .line 434
    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView$1;->this$0:Lcom/narvii/widget/NVDrawableAnimatedView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
