.class Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "QuizMileStoneFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/quiz/QuizMileStoneFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MileStoneAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final EDGE_PLACEHOLDER:I = 0x0

.field public static final NORMAL_MILESTONE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/narvii/quiz/QuizMileStoneFragment;


# direct methods
.method constructor <init>(Lcom/narvii/quiz/QuizMileStoneFragment;)V
    .locals 0

    .line 480
    iput-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method private atEdge(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 611
    invoke-virtual {p0}, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v0

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method private showLeftBar(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showRightBar(I)Z
    .locals 1

    .line 505
    invoke-virtual {p0}, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 619
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-static {v0}, Lcom/narvii/quiz/QuizMileStoneFragment;->access$2200(Lcom/narvii/quiz/QuizMileStoneFragment;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 604
    invoke-direct {p0, p1}, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->atEdge(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 510
    instance-of v0, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;

    if-eqz v0, :cond_d

    .line 513
    check-cast p1, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;

    .line 515
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-static {v0}, Lcom/narvii/quiz/QuizMileStoneFragment;->access$1300(Lcom/narvii/quiz/QuizMileStoneFragment;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    if-gt p2, v0, :cond_1

    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-static {v0}, Lcom/narvii/quiz/QuizMileStoneFragment;->access$1300(Lcom/narvii/quiz/QuizMileStoneFragment;)I

    move-result v0

    add-int/2addr v0, v1

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-static {v0}, Lcom/narvii/quiz/QuizMileStoneFragment;->access$1400(Lcom/narvii/quiz/QuizMileStoneFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 516
    :goto_1
    iget-object v3, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;->number:Landroid/widget/TextView;

    const/16 v4, 0x8

    if-eqz v0, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    const/16 v5, 0x8

    :goto_2
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 517
    iget-object v3, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;->number:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    iget-object v3, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    iget v3, v3, Lcom/narvii/quiz/QuizMileStoneFragment;->backgroundColor:I

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    const v3, -0xe7e7e8

    .line 519
    :goto_3
    iget-object v5, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;->number:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 520
    iget-object v3, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;->result:Landroid/view/View;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_4

    :cond_4
    const/16 v0, 0x8

    :goto_4
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 522
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-static {v0}, Lcom/narvii/quiz/QuizMileStoneFragment;->access$1300(Lcom/narvii/quiz/QuizMileStoneFragment;)I

    move-result v0

    add-int/2addr v0, v1

    if-ne p2, v0, :cond_5

    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-static {v0}, Lcom/narvii/quiz/QuizMileStoneFragment;->access$1500(Lcom/narvii/quiz/QuizMileStoneFragment;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    .line 523
    :goto_5
    iget-object v3, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;->result:Landroid/view/View;

    if-eqz v0, :cond_6

    const v0, 0x7f080470

    goto :goto_6

    :cond_6
    const v0, 0x7f08046e

    :goto_6
    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 524
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    const-string v3, "currentQuestion"

    invoke-virtual {v0, v3}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    .line 525
    iget-object v3, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;->result:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 526
    iget-object v3, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;->milestoneAvatar:Lcom/narvii/quiz/QuizMilestoneAvatarView;

    iget-object v5, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-static {v5}, Lcom/narvii/quiz/QuizMileStoneFragment;->access$1300(Lcom/narvii/quiz/QuizMileStoneFragment;)I

    move-result v5

    add-int/2addr v5, v1

    const/4 v6, 0x4

    if-ne p2, v5, :cond_8

    iget-object v5, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-static {v5}, Lcom/narvii/quiz/QuizMileStoneFragment;->access$1600(Lcom/narvii/quiz/QuizMileStoneFragment;)Lcom/narvii/widget/HorizontalRecyclerView;

    move-result-object v5

    iget-boolean v5, v5, Lcom/narvii/widget/HorizontalRecyclerView;->disableTouch:Z

    if-eqz v5, :cond_7

    const/4 v5, 0x4

    goto :goto_7

    :cond_7
    const/4 v5, 0x0

    goto :goto_7

    :cond_8
    const/16 v5, 0x8

    :goto_7
    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 527
    iget-object v3, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;->milestoneAvatar:Lcom/narvii/quiz/QuizMilestoneAvatarView;

    iget-object v5, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-static {v5}, Lcom/narvii/quiz/QuizMileStoneFragment;->access$1700(Lcom/narvii/quiz/QuizMileStoneFragment;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/narvii/quiz/QuizMilestoneAvatarView;->setMileStoneColor(I)V

    .line 528
    iget-object v3, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    const-string v5, "account"

    invoke-virtual {v3, v5}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/account/AccountService;

    .line 529
    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v3

    .line 530
    iget-object v5, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;->milestoneAvatar:Lcom/narvii/quiz/QuizMilestoneAvatarView;

    invoke-virtual {v5, v3}, Lcom/narvii/quiz/QuizMilestoneAvatarView;->setUser(Lcom/narvii/model/User;)V

    .line 531
    iget-object v3, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;->result:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    add-int/2addr v0, v1

    if-ne p2, v0, :cond_9

    .line 532
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-static {v0}, Lcom/narvii/quiz/QuizMileStoneFragment;->access$1800(Lcom/narvii/quiz/QuizMileStoneFragment;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 533
    iget-object v0, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;->result:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 534
    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-static {v0, v1}, Lcom/narvii/quiz/QuizMileStoneFragment;->access$1802(Lcom/narvii/quiz/QuizMileStoneFragment;Z)Z

    .line 535
    iget-object v0, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;->result:Landroid/view/View;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 536
    new-instance v0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter$1;-><init>(Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;)V

    const-wide/16 v3, 0x12c

    invoke-static {v0, v3, v4}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 588
    :cond_9
    iget-object v0, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;->whiteBarLeft:Landroid/view/View;

    invoke-direct {p0, p2}, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->showLeftBar(I)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x0

    goto :goto_8

    :cond_a
    const/4 v3, 0x4

    :goto_8
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 589
    iget-object v0, p1, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;->whiteBarRight:Landroid/view/View;

    invoke-direct {p0, p2}, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->showRightBar(I)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v6, 0x0

    :cond_b
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 591
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 592
    iget-object v3, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-static {v3}, Lcom/narvii/quiz/QuizMileStoneFragment;->access$2100(Lcom/narvii/quiz/QuizMileStoneFragment;)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 593
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 595
    iget-object p1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-static {p1}, Lcom/narvii/quiz/QuizMileStoneFragment;->access$1300(Lcom/narvii/quiz/QuizMileStoneFragment;)I

    move-result p1

    add-int/2addr p1, v1

    if-ne p2, p1, :cond_c

    goto :goto_9

    :cond_c
    const/4 v1, 0x0

    :cond_d
    :goto_9
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 489
    :cond_0
    iget-object p2, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0b05c3

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 490
    new-instance p2, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;

    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-direct {p2, v0, p1}, Lcom/narvii/quiz/QuizMileStoneFragment$MilestoneViewHolder;-><init>(Lcom/narvii/quiz/QuizMileStoneFragment;Landroid/view/View;)V

    return-object p2

    .line 492
    :cond_1
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 493
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    iget-object v1, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-static {v1}, Lcom/narvii/quiz/QuizMileStoneFragment;->access$1200(Lcom/narvii/quiz/QuizMileStoneFragment;)I

    move-result v1

    invoke-direct {p2, v1, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 494
    new-instance p2, Lcom/narvii/quiz/QuizMileStoneFragment$EdgePlaceholderViewHolder;

    iget-object v0, p0, Lcom/narvii/quiz/QuizMileStoneFragment$MileStoneAdapter;->this$0:Lcom/narvii/quiz/QuizMileStoneFragment;

    invoke-direct {p2, v0, p1}, Lcom/narvii/quiz/QuizMileStoneFragment$EdgePlaceholderViewHolder;-><init>(Lcom/narvii/quiz/QuizMileStoneFragment;Landroid/view/View;)V

    return-object p2
.end method
