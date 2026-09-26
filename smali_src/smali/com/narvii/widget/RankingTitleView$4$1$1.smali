.class Lcom/narvii/widget/RankingTitleView$4$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/RankingTitleView$4$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/narvii/widget/RankingTitleView$4$1;

.field final synthetic val$newLevelMaxRP:I


# direct methods
.method constructor <init>(Lcom/narvii/widget/RankingTitleView$4$1;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/RankingTitleView$4$1$1;->this$2:Lcom/narvii/widget/RankingTitleView$4$1;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/widget/RankingTitleView$4$1$1;->val$newLevelMaxRP:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/RankingTitleView$4$1$1;->this$2:Lcom/narvii/widget/RankingTitleView$4$1;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/widget/RankingTitleView$4$1;->this$1:Lcom/narvii/widget/RankingTitleView$4;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/widget/RankingTitleView$4;->this$0:Lcom/narvii/widget/RankingTitleView;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Ljava/lang/Float;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 16
    move-result p1

    .line 17
    .line 18
    iget v1, p0, Lcom/narvii/widget/RankingTitleView$4$1$1;->val$newLevelMaxRP:I

    .line 19
    .line 20
    iget-object v2, p0, Lcom/narvii/widget/RankingTitleView$4$1$1;->this$2:Lcom/narvii/widget/RankingTitleView$4$1;

    .line 21
    .line 22
    iget-object v2, v2, Lcom/narvii/widget/RankingTitleView$4$1;->this$1:Lcom/narvii/widget/RankingTitleView$4;

    .line 23
    .line 24
    iget v2, v2, Lcom/narvii/widget/RankingTitleView$4;->val$newLevel:I

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1, v1, v2}, Lcom/narvii/widget/RankingTitleView;->d(Lcom/narvii/widget/RankingTitleView;FII)V

    .line 28
    return-void
.end method
