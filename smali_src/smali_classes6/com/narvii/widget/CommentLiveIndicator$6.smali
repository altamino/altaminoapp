.class Lcom/narvii/widget/CommentLiveIndicator$6;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/CommentLiveIndicator$6;->this$0:Lcom/narvii/widget/CommentLiveIndicator;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/widget/CommentLiveIndicator$6;->val$origins:[F

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/widget/CommentLiveIndicator$6;->val$targets:[F

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Ljava/lang/Float;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 10
    move-result p1

    .line 11
    .line 12
    .line 13
    const v0, 0x3f333333    # 0.7f

    .line 14
    .line 15
    cmpl-float v0, p1, v0

    .line 16
    .line 17
    if-lez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    .line 19
    :goto_0
    const/4 v1, 0x4

    .line 20
    .line 21
    if-ge v0, v1, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/widget/CommentLiveIndicator$6;->this$0:Lcom/narvii/widget/CommentLiveIndicator;

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Lcom/narvii/widget/CommentLiveIndicator;->a(Lcom/narvii/widget/CommentLiveIndicator;)[Landroid/view/View;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    aget-object v1, v1, v0

    .line 30
    .line 31
    iget-object v2, p0, Lcom/narvii/widget/CommentLiveIndicator$6;->val$origins:[F

    .line 32
    .line 33
    aget v2, v2, v0

    .line 34
    .line 35
    iget-object v3, p0, Lcom/narvii/widget/CommentLiveIndicator$6;->val$targets:[F

    .line 36
    .line 37
    aget v3, v3, v0

    .line 38
    sub-float/2addr v3, v2

    .line 39
    mul-float/2addr v3, p1

    .line 40
    add-float/2addr v2, v3

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 44
    .line 45
    add-int/lit8 v0, v0, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method
