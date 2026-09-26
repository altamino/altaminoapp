.class Lcom/narvii/widget/RankingTitleView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/RankingTitleView;->updateReputation(IILcom/narvii/widget/RankingTitleView$OnAnimListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/RankingTitleView;

.field final synthetic val$maxReputation:I

.field final synthetic val$oldLevel:I


# direct methods
.method constructor <init>(Lcom/narvii/widget/RankingTitleView;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/RankingTitleView$1;->this$0:Lcom/narvii/widget/RankingTitleView;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/widget/RankingTitleView$1;->val$maxReputation:I

    .line 5
    .line 6
    iput p3, p0, Lcom/narvii/widget/RankingTitleView$1;->val$oldLevel:I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/RankingTitleView$1;->this$0:Lcom/narvii/widget/RankingTitleView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Ljava/lang/Float;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 12
    move-result p1

    .line 13
    .line 14
    iget v1, p0, Lcom/narvii/widget/RankingTitleView$1;->val$maxReputation:I

    .line 15
    .line 16
    iget v2, p0, Lcom/narvii/widget/RankingTitleView$1;->val$oldLevel:I

    .line 17
    .line 18
    .line 19
    invoke-static {v0, p1, v1, v2}, Lcom/narvii/widget/RankingTitleView;->d(Lcom/narvii/widget/RankingTitleView;FII)V

    .line 20
    return-void
.end method
