.class public Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder;
.super Ljava/lang/Object;
.source "StoryAddTopicsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/StoryAddTopicsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TopicHistoryContainerViewHolder"
.end annotation


# instance fields
.field public historyFlowLayout:Lcom/narvii/util/layouts/NVFlowLayout;

.field public itemView:Landroid/view/View;

.field public ivDelete:Landroid/view/View;

.field private onTagClickListener:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/narvii/story/StoryAddTopicsFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/story/StoryAddTopicsFragment;Landroid/view/View;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    new-instance p1, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder$1;

    invoke-direct {p1, p0}, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder$1;-><init>(Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder;)V

    iput-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder;->onTagClickListener:Landroid/view/View$OnClickListener;

    .line 470
    iput-object p2, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder;->itemView:Landroid/view/View;

    .line 471
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090605

    .line 472
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder;->ivDelete:Landroid/view/View;

    const p1, 0x7f090517

    .line 473
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/layouts/NVFlowLayout;

    iput-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder;->historyFlowLayout:Lcom/narvii/util/layouts/NVFlowLayout;

    .line 474
    iget-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder;->ivDelete:Landroid/view/View;

    iget-object p2, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder;->onTagClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private createTopicView(Lcom/narvii/model/TopicTag;Lcom/narvii/util/layouts/NVFlowLayout;)Landroid/widget/TextView;
    .locals 3

    .line 490
    iget-object v0, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0678

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 491
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 492
    iget-object v0, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder;->onTagClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 493
    invoke-virtual {p1}, Lcom/narvii/model/TopicTag;->getTagTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 543
    iget-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder;->this$0:Lcom/narvii/story/StoryAddTopicsFragment;

    invoke-virtual {p1}, Lcom/narvii/story/StoryAddTopicsFragment;->hideKeyBoard()V

    return-void
.end method

.method public setHistory(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/TopicTag;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 478
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    goto :goto_1

    .line 482
    :cond_0
    iget-object p2, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 483
    iget-object p2, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder;->historyFlowLayout:Lcom/narvii/util/layouts/NVFlowLayout;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 484
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/TopicTag;

    .line 485
    iget-object v0, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder;->historyFlowLayout:Lcom/narvii/util/layouts/NVFlowLayout;

    invoke-direct {p0, p2, v0}, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder;->createTopicView(Lcom/narvii/model/TopicTag;Lcom/narvii/util/layouts/NVFlowLayout;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void

    .line 479
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/narvii/story/StoryAddTopicsFragment$TopicHistoryContainerViewHolder;->itemView:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
