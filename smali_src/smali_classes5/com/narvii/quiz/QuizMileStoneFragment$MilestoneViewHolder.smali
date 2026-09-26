.class Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    const p1, 0x7f0a0a36

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    check-cast p1, Landroid/widget/TextView;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;->number:Landroid/widget/TextView;

    .line 17
    .line 18
    .line 19
    const p1, 0x7f0a0c31

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    iput-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;->result:Landroid/view/View;

    .line 26
    .line 27
    .line 28
    const p1, 0x7f0a1030

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    iput-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;->whiteBarLeft:Landroid/view/View;

    .line 35
    .line 36
    .line 37
    const p1, 0x7f0a1031

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    iput-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;->whiteBarRight:Landroid/view/View;

    .line 44
    .line 45
    .line 46
    const p1, 0x7f0a0bb2

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    check-cast p1, Lcom/narvii/quiz/QuizMilestoneAvatarView;

    .line 53
    .line 54
    iput-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;->milestoneAvatar:Lcom/narvii/quiz/QuizMilestoneAvatarView;

    .line 55
    return-void
.end method
