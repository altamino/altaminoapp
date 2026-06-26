.class Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;
.super Ljava/lang/Object;
.source "QuizMileStoneFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;

.field final synthetic val$milestoneViewHolder:Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;


# direct methods
.method constructor <init>(Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;)V
    .locals 0

    .line 536
    iput-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;->this$1:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;

    iput-object p2, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;->val$milestoneViewHolder:Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1900(Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;)V
    .locals 0

    .line 536
    invoke-direct {p0}, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;->makeRecyclerViewScrollable()V

    return-void
.end method

.method private makeRecyclerViewScrollable()V
    .locals 2

    .line 580
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;->this$1:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 581
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;->this$1:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;

    iget-object v0, v0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-static {v0}, Lcom/narvii/quiz/QuizMileStoneFragment;->access$1600(Lcom/narvii/quiz/QuizMileStoneFragment;)Lcom/narvii/widget/HorizontalRecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/narvii/widget/HorizontalRecyclerView;->disableTouch:Z

    .line 582
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;->this$1:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;

    iget-object v0, v0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-static {v0}, Lcom/narvii/quiz/QuizMileStoneFragment;->access$2000(Lcom/narvii/quiz/QuizMileStoneFragment;)Lcom/narvii/quiz/QuizMilestoneAvatarView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;->this$1:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;

    iget-object v0, v0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-static {v0}, Lcom/narvii/quiz/QuizMileStoneFragment;->access$2000(Lcom/narvii/quiz/QuizMileStoneFragment;)Lcom/narvii/quiz/QuizMilestoneAvatarView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 539
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;->this$1:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;

    iget-object v0, v0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;->val$milestoneViewHolder:Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;

    iget-object v0, v0, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;->result:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 545
    :cond_1
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;->val$milestoneViewHolder:Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;

    iget-object v0, v0, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;->result:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 546
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;->this$1:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;

    iget-object v0, v0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010029

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 547
    iget-object v1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;->val$milestoneViewHolder:Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;

    iget-object v1, v1, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;->result:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v1, 0xc8

    .line 548
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 549
    new-instance v1, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1;

    invoke-direct {v1, p0}, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1;-><init>(Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method
