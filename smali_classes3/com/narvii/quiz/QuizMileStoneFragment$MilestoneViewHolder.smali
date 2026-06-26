.class Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "QuizMileStoneFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/quiz/QuizMileStoneFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MilestoneViewHolder"
.end annotation


# instance fields
.field milestoneAvatar:Lcom/narvii/quiz/QuizMilestoneAvatarView;

.field number:Landroid/widget/TextView;

.field result:Landroid/view/View;

.field final synthetic this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

.field whiteBarLeft:Landroid/view/View;

.field whiteBarRight:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/narvii/quiz/QuizMileStoneFragment;Landroid/view/View;)V
    .locals 0

    .line 639
    iput-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 640
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f09079e

    .line 641
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;->number:Landroid/widget/TextView;

    const p1, 0x7f090973

    .line 642
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;->result:Landroid/view/View;

    const p1, 0x7f090d0b

    .line 643
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;->whiteBarLeft:Landroid/view/View;

    const p1, 0x7f090d0c

    .line 644
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;->whiteBarRight:Landroid/view/View;

    const p1, 0x7f0908f3

    .line 645
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/quiz/QuizMilestoneAvatarView;

    iput-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;->milestoneAvatar:Lcom/narvii/quiz/QuizMilestoneAvatarView;

    return-void
.end method
