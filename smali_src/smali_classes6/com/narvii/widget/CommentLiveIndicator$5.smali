.class Lcom/narvii/widget/CommentLiveIndicator$5;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/CommentLiveIndicator$5;->this$0:Lcom/narvii/widget/CommentLiveIndicator;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/widget/CommentLiveIndicator$5;->val$index:I

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/widget/CommentLiveIndicator$5;->val$curView:Landroid/view/View;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

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
    float-to-double v0, p1

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    const-wide v2, 0x3fe6666666666666L    # 0.7

    .line 17
    .line 18
    cmpl-double v0, v0, v2

    .line 19
    .line 20
    if-lez v0, :cond_1

    .line 21
    const/4 v0, 0x0

    .line 22
    .line 23
    :goto_0
    iget v1, p0, Lcom/narvii/widget/CommentLiveIndicator$5;->val$index:I

    .line 24
    .line 25
    if-ge v0, v1, :cond_0

    .line 26
    .line 27
    sub-int v2, v1, v0

    .line 28
    .line 29
    add-int/lit8 v2, v2, -0x1

    .line 30
    int-to-float v2, v2

    .line 31
    .line 32
    const/high16 v3, 0x3f800000    # 1.0f

    .line 33
    mul-float/2addr v2, v3

    .line 34
    .line 35
    const/high16 v4, 0x40800000    # 4.0f

    .line 36
    div-float/2addr v2, v4

    .line 37
    .line 38
    sub-float v2, v3, v2

    .line 39
    sub-int/2addr v1, v0

    .line 40
    int-to-float v1, v1

    .line 41
    mul-float/2addr v1, v3

    .line 42
    div-float/2addr v1, v4

    .line 43
    sub-float/2addr v3, v1

    .line 44
    .line 45
    iget-object v1, p0, Lcom/narvii/widget/CommentLiveIndicator$5;->this$0:Lcom/narvii/widget/CommentLiveIndicator;

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Lcom/narvii/widget/CommentLiveIndicator;->a(Lcom/narvii/widget/CommentLiveIndicator;)[Landroid/view/View;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    aget-object v1, v1, v0

    .line 52
    .line 53
    sub-float v3, v2, v3

    .line 54
    mul-float/2addr v3, p1

    .line 55
    sub-float/2addr v2, v3

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 59
    .line 60
    add-int/lit8 v0, v0, 0x1

    .line 61
    goto :goto_0

    .line 62
    .line 63
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/CommentLiveIndicator$5;->val$curView:Landroid/view/View;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 67
    :cond_1
    return-void
.end method
