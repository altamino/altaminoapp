.class final Lcom/narvii/monetization/store/view/TippingFeedbackView$createSingleCoinMotionAnimator$1;
.super Ljava/lang/Object;
.source "TippingFeedbackView.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/store/view/TippingFeedbackView;->createSingleCoinMotionAnimator(JJLandroid/widget/ImageView;Landroid/widget/ImageView;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTippingFeedbackView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TippingFeedbackView.kt\ncom/narvii/monetization/store/view/TippingFeedbackView$createSingleCoinMotionAnimator$1\n*L\n1#1,430:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $backCoin:Landroid/widget/ImageView;

.field final synthetic $frontCoin:Landroid/widget/ImageView;

.field final synthetic $updateCallback:Lkotlin/jvm/functions/Function1;

.field final synthetic this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/store/view/TippingFeedbackView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSingleCoinMotionAnimator$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    iput-object p2, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSingleCoinMotionAnimator$1;->$backCoin:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSingleCoinMotionAnimator$1;->$frontCoin:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSingleCoinMotionAnimator$1;->$updateCallback:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 14

    const-string v0, "it"

    .line 268
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const v0, 0x3f19999a    # 0.6f

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSingleCoinMotionAnimator$1;->$backCoin:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 271
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSingleCoinMotionAnimator$1;->$frontCoin:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 272
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSingleCoinMotionAnimator$1;->$frontCoin:Landroid/widget/ImageView;

    goto :goto_0

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSingleCoinMotionAnimator$1;->$backCoin:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 275
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSingleCoinMotionAnimator$1;->$frontCoin:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 276
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSingleCoinMotionAnimator$1;->$backCoin:Landroid/widget/ImageView;

    .line 278
    :goto_0
    iget-object v1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSingleCoinMotionAnimator$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    const/4 v2, 0x1

    int-to-float v3, v2

    sub-float/2addr v3, p1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-static {v1, v0, v3}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$setScaleXY(Lcom/narvii/monetization/store/view/TippingFeedbackView;Landroid/view/View;F)V

    const/16 v1, -0x5a

    int-to-float v1, v1

    mul-float v1, v1, p1

    .line 279
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 281
    iget-object v1, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSingleCoinMotionAnimator$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-static {v1}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getNicknameBackgroundIV$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    .line 282
    iget-object v4, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSingleCoinMotionAnimator$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-static {v4}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getCoinIV$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSingleCoinMotionAnimator$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-static {v5}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getAvatarLayout$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Lcom/narvii/widget/UserAvatarLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSingleCoinMotionAnimator$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-static {v6}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getAvatarView$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSingleCoinMotionAnimator$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-static {v5}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getCoinIV$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40400000    # 3.0f

    mul-float v5, v5, v6

    const/high16 v6, 0x41000000    # 8.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    div-float/2addr v4, v3

    .line 283
    iget-object v3, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSingleCoinMotionAnimator$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-static {v3}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getCoinIV$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v3

    .line 284
    iget-object v5, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSingleCoinMotionAnimator$1;->this$0:Lcom/narvii/monetization/store/view/TippingFeedbackView;

    invoke-static {v5}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->access$getCoinIV$p(Lcom/narvii/monetization/store/view/TippingFeedbackView;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTop()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v4

    .line 286
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v2, -0x1

    :cond_1
    int-to-float v2, v2

    int-to-double v6, v3

    float-to-double v8, v1

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    float-to-double v12, p1

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v10

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v6, v8

    double-to-float v1, v6

    mul-float v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    float-to-double v1, v5

    float-to-double v3, v4

    .line 287
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v3

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 289
    iget-object v0, p0, Lcom/narvii/monetization/store/view/TippingFeedbackView$createSingleCoinMotionAnimator$1;->$updateCallback:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    :cond_2
    return-void

    .line 268
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
