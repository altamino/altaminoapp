.class Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder$1;
.super Ljava/lang/Object;
.source "StoryAddTopicsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder;


# direct methods
.method constructor <init>(Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder;)V
    .locals 0

    .line 497
    iput-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder$1;->this$1:Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 500
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f090605

    if-ne v0, v2, :cond_0

    .line 502
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v0, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder$1;->this$1:Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder;

    iget-object v0, v0, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 503
    iget-object v0, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder$1;->this$1:Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder;

    iget-object v0, v0, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    const v2, 0x7f0f0364

    invoke-virtual {v0, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 504
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    const v0, 0x7f0f0193

    const/4 v1, 0x0

    .line 505
    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v0, 0x7f0f0348

    .line 506
    new-instance v1, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder$1$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder$1$1;-><init>(Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder$1;Lcom/narvii/widget/ACMAlertDialog;)V

    const/high16 v2, -0x10000

    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 515
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return-void

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder$1;->this$1:Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder;

    iget-object v0, v0, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-virtual {v0}, Lcom/narvii/story/StoryAddTopicsFragment;->isTagFull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 519
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v0, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder$1;->this$1:Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder;

    iget-object v0, v0, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 520
    iget-object v0, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder$1;->this$1:Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder;

    iget-object v0, v0, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    const v2, 0x7f0f0089

    invoke-virtual {v0, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 521
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    const v0, 0x104000a

    .line 522
    new-instance v1, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder$1$2;

    invoke-direct {v1, p0, p1}, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder$1$2;-><init>(Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder$1;Lcom/narvii/widget/ACMAlertDialog;)V

    invoke-virtual {p1, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 528
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return-void

    .line 531
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 532
    instance-of v0, p1, Lcom/narvii/model/TopicTag;

    if-eqz v0, :cond_2

    .line 533
    iget-object v0, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder$1;->this$1:Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder;

    iget-object v0, v0, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryAddTopicsFragment;->access$1200(Lcom/narvii/story/StoryAddTopicsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 534
    iget-object v0, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder$1;->this$1:Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder;

    iget-object v0, v0, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryAddTopicsFragment;->access$700(Lcom/narvii/story/StoryAddTopicsFragment;)Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;

    move-result-object v0

    check-cast p1, Lcom/narvii/model/TopicTag;

    invoke-virtual {v0, p1}, Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;->setTag(Lcom/narvii/model/TopicTag;)V

    .line 536
    :cond_2
    iget-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder$1;->this$1:Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder;

    iget-object p1, p1, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryAddTopicsFragment;->access$300(Lcom/narvii/story/StoryAddTopicsFragment;)Lcom/narvii/list/MergeAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
