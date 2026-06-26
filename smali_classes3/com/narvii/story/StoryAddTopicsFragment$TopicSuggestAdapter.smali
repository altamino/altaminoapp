.class Lcom/narvii/story/StoryAddTopicsFragment$TopicSuggestAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "StoryAddTopicsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/StoryAddTopicsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TopicSuggestAdapter"
.end annotation


# instance fields
.field private highlightText:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/story/StoryAddTopicsFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/story/StoryAddTopicsFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 551
    iput-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicSuggestAdapter;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    .line 552
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicSuggestAdapter;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryAddTopicsFragment;->access$100(Lcom/narvii/story/StoryAddTopicsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 562
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const v0, 0x7f0b0676

    .line 572
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 573
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/story/StoryAddTopicsFragment$SuggestTopicViewHolder;

    if-nez p3, :cond_0

    .line 575
    new-instance p3, Lcom/narvii/story/StoryAddTopicsFragment$SuggestTopicViewHolder;

    iget-object v0, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicSuggestAdapter;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-direct {p3, v0, p2}, Lcom/narvii/story/StoryAddTopicsFragment$SuggestTopicViewHolder;-><init>(Lcom/narvii/story/StoryAddTopicsFragment;Landroid/view/View;)V

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicSuggestAdapter;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryAddTopicsFragment;->access$100(Lcom/narvii/story/StoryAddTopicsFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicSuggestAdapter;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryAddTopicsFragment;->access$100(Lcom/narvii/story/StoryAddTopicsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 578
    iget-object v0, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicSuggestAdapter;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryAddTopicsFragment;->access$100(Lcom/narvii/story/StoryAddTopicsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/TopicTag;

    .line 579
    iget-object v0, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicSuggestAdapter;->highlightText:Ljava/lang/String;

    invoke-virtual {p3, p1, v0}, Lcom/narvii/story/StoryAddTopicsFragment$SuggestTopicViewHolder;->setTopic(Lcom/narvii/model/TopicTag;Ljava/lang/String;)V

    .line 580
    iget-object p3, p3, Lcom/narvii/story/StoryAddTopicsFragment$SuggestTopicViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/narvii/story/StoryAddTopicsFragment$TopicSuggestAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/narvii/story/StoryAddTopicsFragment$TopicSuggestAdapter$1;-><init>(Lcom/narvii/story/StoryAddTopicsFragment$TopicSuggestAdapter;Lcom/narvii/model/TopicTag;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-object p2
.end method

.method public setHighlightText(Ljava/lang/String;)V
    .locals 0

    .line 593
    iput-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicSuggestAdapter;->highlightText:Ljava/lang/String;

    return-void
.end method
