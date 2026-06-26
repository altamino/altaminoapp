.class Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder$1$1;
.super Ljava/lang/Object;
.source "StoryAddTopicsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder$1;

.field final synthetic val$dialog:Lcom/narvii/widget/ACMAlertDialog;


# direct methods
.method constructor <init>(Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder$1;Lcom/narvii/widget/ACMAlertDialog;)V
    .locals 0

    .line 506
    iput-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder$1$1;->this$2:Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder$1;

    iput-object p2, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder$1$1;->val$dialog:Lcom/narvii/widget/ACMAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 509
    iget-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder$1$1;->this$2:Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder$1;

    iget-object p1, p1, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder$1;->this$1:Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder;

    iget-object p1, p1, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryAddTopicsFragment;->access$1300(Lcom/narvii/story/StoryAddTopicsFragment;)Lcom/narvii/story/StoryTopicHistoryPrefsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/story/StoryTopicHistoryPrefsHelper;->clearHistory()V

    .line 510
    iget-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder$1$1;->this$2:Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder$1;

    iget-object p1, p1, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder$1;->this$1:Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder;

    iget-object p1, p1, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryAddTopicsFragment;->access$1200(Lcom/narvii/story/StoryAddTopicsFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 511
    iget-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder$1$1;->this$2:Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder$1;

    iget-object p1, p1, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder$1;->this$1:Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder;

    iget-object p1, p1, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryAddTopicsFragment;->access$300(Lcom/narvii/story/StoryAddTopicsFragment;)Lcom/narvii/list/MergeAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 512
    iget-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder$1$1;->val$dialog:Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p1}, Lcom/narvii/widget/ACMAlertDialog;->dismiss()V

    return-void
.end method
