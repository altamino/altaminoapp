.class Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;->this$1:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;->val$milestoneViewHolder:Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;->makeRecyclerViewScrollable()V

    return-void
.end method

.method private makeRecyclerViewScrollable()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;->this$1:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;->this$1:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/narvii/quiz/QuizMileStoneFragment;->B(Lcom/narvii/quiz/QuizMileStoneFragment;)Lcom/narvii/widget/HorizontalRecyclerView;

    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    iput-boolean v1, v0, Lcom/narvii/widget/HorizontalRecyclerView;->disableTouch:Z

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;->this$1:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/narvii/quiz/QuizMileStoneFragment;->v(Lcom/narvii/quiz/QuizMileStoneFragment;)Lcom/narvii/quiz/QuizMilestoneAvatarView;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;->this$1:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lcom/narvii/quiz/QuizMileStoneFragment;->v(Lcom/narvii/quiz/QuizMileStoneFragment;)Lcom/narvii/quiz/QuizMilestoneAvatarView;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    const/16 v1, 0x8

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;->this$1:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;->val$milestoneViewHolder:Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;->result:Landroid/view/View;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    return-void

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;->val$milestoneViewHolder:Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;->result:Landroid/view/View;

    .line 27
    const/4 v1, 0x0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;->this$1:Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    const v1, 0x7f010037

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    iget-object v1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;->val$milestoneViewHolder:Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;

    .line 48
    .line 49
    iget-object v1, v1, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;->result:Landroid/view/View;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 53
    .line 54
    const-wide/16 v1, 0xc8

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 58
    .line 59
    new-instance v1, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1;

    .line 60
    .line 61
    .line 62
    invoke-direct {v1, p0}, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1$1;-><init>(Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 66
    return-void
.end method
