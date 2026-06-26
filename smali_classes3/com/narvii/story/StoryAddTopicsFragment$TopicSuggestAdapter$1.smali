.class Lcom/narvii/story/StoryAddTopicsFragment$TopicSuggestAdapter$1;
.super Ljava/lang/Object;
.source "StoryAddTopicsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/StoryAddTopicsFragment$TopicSuggestAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/story/StoryAddTopicsFragment$TopicSuggestAdapter;

.field final synthetic val$topicTag:Lcom/narvii/model/TopicTag;


# direct methods
.method constructor <init>(Lcom/narvii/story/StoryAddTopicsFragment$TopicSuggestAdapter;Lcom/narvii/model/TopicTag;)V
    .locals 0

    .line 580
    iput-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicSuggestAdapter$1;->this$1:Lcom/narvii/story/StoryAddTopicsFragment$TopicSuggestAdapter;

    iput-object p2, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicSuggestAdapter$1;->val$topicTag:Lcom/narvii/model/TopicTag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 583
    iget-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicSuggestAdapter$1;->this$1:Lcom/narvii/story/StoryAddTopicsFragment$TopicSuggestAdapter;

    iget-object p1, p1, Lcom/narvii/story/StoryAddTopicsFragment$TopicSuggestAdapter;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryAddTopicsFragment;->access$700(Lcom/narvii/story/StoryAddTopicsFragment;)Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicSuggestAdapter$1;->val$topicTag:Lcom/narvii/model/TopicTag;

    invoke-virtual {p1, v0}, Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;->setTag(Lcom/narvii/model/TopicTag;)V

    .line 584
    iget-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicSuggestAdapter$1;->this$1:Lcom/narvii/story/StoryAddTopicsFragment$TopicSuggestAdapter;

    iget-object p1, p1, Lcom/narvii/story/StoryAddTopicsFragment$TopicSuggestAdapter;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryAddTopicsFragment;->access$100(Lcom/narvii/story/StoryAddTopicsFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 585
    iget-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicSuggestAdapter$1;->this$1:Lcom/narvii/story/StoryAddTopicsFragment$TopicSuggestAdapter;

    iget-object p1, p1, Lcom/narvii/story/StoryAddTopicsFragment$TopicSuggestAdapter;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryAddTopicsFragment;->access$300(Lcom/narvii/story/StoryAddTopicsFragment;)Lcom/narvii/list/MergeAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
