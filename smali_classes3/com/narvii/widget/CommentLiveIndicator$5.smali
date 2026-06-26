.class Lcom/narvii/widget/CommentLiveIndicator$5;
.super Ljava/lang/Object;
.source "CommentLiveIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/CommentLiveIndicator;->getDotsPreviewAnimators()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/CommentLiveIndicator;

.field final synthetic val$curView:Landroid/view/View;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/narvii/widget/CommentLiveIndicator;ILandroid/view/View;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/narvii/widget/CommentLiveIndicator$5;->this$0:Lcom/narvii/widget/CommentLiveIndicator;

    iput p2, p0, Lcom/narvii/widget/CommentLiveIndicator$5;->val$index:I

    iput-object p3, p0, Lcom/narvii/widget/CommentLiveIndicator$5;->val$curView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 241
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v0, p1

    const-wide v2, 0x3fe6666666666666L    # 0.7

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    const/4 v0, 0x0

    .line 243
    :goto_0
    iget v1, p0, Lcom/narvii/widget/CommentLiveIndicator$5;->val$index:I

    if-ge v0, v1, :cond_0

    sub-int v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v2, v4

    sub-float v2, v3, v2

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float v1, v1, v3

    div-float/2addr v1, v4

    sub-float/2addr v3, v1

    .line 246
    iget-object v1, p0, Lcom/narvii/widget/CommentLiveIndicator$5;->this$0:Lcom/narvii/widget/CommentLiveIndicator;

    invoke-static {v1}, Lcom/narvii/widget/CommentLiveIndicator;->access$300(Lcom/narvii/widget/CommentLiveIndicator;)[Landroid/view/View;

    move-result-object v1

    aget-object v1, v1, v0

    sub-float v3, v2, v3

    mul-float v3, v3, p1

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/CommentLiveIndicator$5;->val$curView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method
