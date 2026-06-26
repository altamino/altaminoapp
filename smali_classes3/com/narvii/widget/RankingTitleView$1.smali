.class Lcom/narvii/widget/RankingTitleView$1;
.super Ljava/lang/Object;
.source "RankingTitleView.java"

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

    .line 361
    iput-object p1, p0, Lcom/narvii/widget/RankingTitleView$1;->this$0:Lcom/narvii/widget/RankingTitleView;

    iput p2, p0, Lcom/narvii/widget/RankingTitleView$1;->val$maxReputation:I

    iput p3, p0, Lcom/narvii/widget/RankingTitleView$1;->val$oldLevel:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 364
    iget-object v0, p0, Lcom/narvii/widget/RankingTitleView$1;->this$0:Lcom/narvii/widget/RankingTitleView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v1, p0, Lcom/narvii/widget/RankingTitleView$1;->val$maxReputation:I

    iget v2, p0, Lcom/narvii/widget/RankingTitleView$1;->val$oldLevel:I

    invoke-static {v0, p1, v1, v2}, Lcom/narvii/widget/RankingTitleView;->access$000(Lcom/narvii/widget/RankingTitleView;FII)V

    return-void
.end method
