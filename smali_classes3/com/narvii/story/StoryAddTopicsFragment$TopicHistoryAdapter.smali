.class Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "StoryAddTopicsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/StoryAddTopicsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TopicHistoryAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/StoryAddTopicsFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/story/StoryAddTopicsFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryAdapter;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    .line 433
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryAdapter;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryAddTopicsFragment;->access$100(Lcom/narvii/story/StoryAddTopicsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryAdapter;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryAddTopicsFragment;->access$1200(Lcom/narvii/story/StoryAddTopicsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 443
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

    const p1, 0x7f0b0673

    .line 453
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 454
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder;

    if-nez p2, :cond_0

    .line 456
    new-instance p2, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder;

    iget-object p3, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryAdapter;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-direct {p2, p3, p1}, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder;-><init>(Lcom/narvii/story/StoryAddTopicsFragment;Landroid/view/View;)V

    .line 458
    :cond_0
    iget-object p3, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryAdapter;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-static {p3}, Lcom/narvii/story/StoryAddTopicsFragment;->access$1200(Lcom/narvii/story/StoryAddTopicsFragment;)Ljava/util/List;

    move-result-object p3

    iget-object v0, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryAdapter;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryAddTopicsFragment;->access$100(Lcom/narvii/story/StoryAddTopicsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, p3, v0}, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder;->setHistory(Ljava/util/List;Z)V

    return-object p1
.end method
