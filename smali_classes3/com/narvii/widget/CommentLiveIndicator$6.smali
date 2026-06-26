.class Lcom/narvii/widget/CommentLiveIndicator$6;
.super Ljava/lang/Object;
.source "CommentLiveIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/CommentLiveIndicator;->getDotAnimation()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/CommentLiveIndicator;

.field final synthetic val$origins:[F

.field final synthetic val$targets:[F


# direct methods
.method constructor <init>(Lcom/narvii/widget/CommentLiveIndicator;[F[F)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/narvii/widget/CommentLiveIndicator$6;->this$0:Lcom/narvii/widget/CommentLiveIndicator;

    iput-object p2, p0, Lcom/narvii/widget/CommentLiveIndicator$6;->val$origins:[F

    iput-object p3, p0, Lcom/narvii/widget/CommentLiveIndicator$6;->val$targets:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 276
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const v0, 0x3f333333    # 0.7f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/narvii/widget/CommentLiveIndicator$6;->this$0:Lcom/narvii/widget/CommentLiveIndicator;

    invoke-static {v1}, Lcom/narvii/widget/CommentLiveIndicator;->access$300(Lcom/narvii/widget/CommentLiveIndicator;)[Landroid/view/View;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/narvii/widget/CommentLiveIndicator$6;->val$origins:[F

    aget v3, v2, v0

    iget-object v4, p0, Lcom/narvii/widget/CommentLiveIndicator$6;->val$targets:[F

    aget v4, v4, v0

    aget v2, v2, v0

    sub-float/2addr v4, v2

    mul-float v4, v4, p1

    add-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
