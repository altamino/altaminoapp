.class Lcom/narvii/story/StoryAddTopicsFragment$TopicEditAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "StoryAddTopicsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/StoryAddTopicsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TopicEditAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/StoryAddTopicsFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/story/StoryAddTopicsFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicEditAdapter;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    .line 296
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 306
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

    .line 316
    iget-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicEditAdapter;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryAddTopicsFragment;->access$600(Lcom/narvii/story/StoryAddTopicsFragment;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    .line 317
    iget-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicEditAdapter;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    const v0, 0x7f0b0672

    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/story/StoryAddTopicsFragment;->access$602(Lcom/narvii/story/StoryAddTopicsFragment;Landroid/view/View;)Landroid/view/View;

    .line 319
    :cond_0
    iget-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicEditAdapter;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryAddTopicsFragment;->access$600(Lcom/narvii/story/StoryAddTopicsFragment;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;

    invoke-static {p1, p2}, Lcom/narvii/story/StoryAddTopicsFragment;->access$702(Lcom/narvii/story/StoryAddTopicsFragment;Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;)Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;

    .line 320
    iget-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicEditAdapter;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryAddTopicsFragment;->access$700(Lcom/narvii/story/StoryAddTopicsFragment;)Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;

    move-result-object p1

    if-nez p1, :cond_1

    .line 321
    iget-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicEditAdapter;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    new-instance p2, Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;

    invoke-static {p1}, Lcom/narvii/story/StoryAddTopicsFragment;->access$600(Lcom/narvii/story/StoryAddTopicsFragment;)Landroid/view/View;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;-><init>(Lcom/narvii/story/StoryAddTopicsFragment;Landroid/view/View;)V

    invoke-static {p1, p2}, Lcom/narvii/story/StoryAddTopicsFragment;->access$702(Lcom/narvii/story/StoryAddTopicsFragment;Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;)Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;

    .line 323
    :cond_1
    iget-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicEditAdapter;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryAddTopicsFragment;->access$700(Lcom/narvii/story/StoryAddTopicsFragment;)Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/story/StoryAddTopicsFragment$TopicAddContainerViewHolder;->updateView()V

    .line 324
    iget-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicEditAdapter;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryAddTopicsFragment;->access$600(Lcom/narvii/story/StoryAddTopicsFragment;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
