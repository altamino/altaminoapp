.class Lcom/narvii/widget/RankingTitleView$4$1$1;
.super Ljava/lang/Object;
.source "RankingTitleView.java"

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

    .line 430
    iput-object p1, p0, Lcom/narvii/widget/RankingTitleView$4$1$1;->this$2:Lcom/narvii/widget/RankingTitleView$4$1;

    iput p2, p0, Lcom/narvii/widget/RankingTitleView$4$1$1;->val$newLevelMaxRP:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 433
    iget-object v0, p0, Lcom/narvii/widget/RankingTitleView$4$1$1;->this$2:Lcom/narvii/widget/RankingTitleView$4$1;

    iget-object v0, v0, Lcom/narvii/widget/RankingTitleView$4$1;->this$1:Lcom/narvii/widget/RankingTitleView$4;

    iget-object v0, v0, Lcom/narvii/widget/RankingTitleView$4;->this$0:Lcom/narvii/widget/RankingTitleView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v1, p0, Lcom/narvii/widget/RankingTitleView$4$1$1;->val$newLevelMaxRP:I

    iget-object v2, p0, Lcom/narvii/widget/RankingTitleView$4$1$1;->this$2:Lcom/narvii/widget/RankingTitleView$4$1;

    iget-object v2, v2, Lcom/narvii/widget/RankingTitleView$4$1;->this$1:Lcom/narvii/widget/RankingTitleView$4;

    iget v2, v2, Lcom/narvii/widget/RankingTitleView$4;->val$newLevel:I

    invoke-static {v0, p1, v1, v2}, Lcom/narvii/widget/RankingTitleView;->access$000(Lcom/narvii/widget/RankingTitleView;FII)V

    return-void
.end method
