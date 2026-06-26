.class Lcom/narvii/item/detail/ItemDetailFragment$10;
.super Lcom/narvii/story/detail/VoteHelper$OnVoteListenerAdapter;
.source "ItemDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/item/detail/ItemDetailFragment;->vote(Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/item/detail/ItemDetailFragment;

.field final synthetic val$fromBottomBar:Z

.field final synthetic val$fv:I

.field final synthetic val$i:Lcom/narvii/model/Item;


# direct methods
.method constructor <init>(Lcom/narvii/item/detail/ItemDetailFragment;ZLcom/narvii/model/Item;I)V
    .locals 0

    .line 1420
    iput-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$10;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    iput-boolean p2, p0, Lcom/narvii/item/detail/ItemDetailFragment$10;->val$fromBottomBar:Z

    iput-object p3, p0, Lcom/narvii/item/detail/ItemDetailFragment$10;->val$i:Lcom/narvii/model/Item;

    iput p4, p0, Lcom/narvii/item/detail/ItemDetailFragment$10;->val$fv:I

    invoke-direct {p0}, Lcom/narvii/story/detail/VoteHelper$OnVoteListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoteEnd(Z)V
    .locals 3

    .line 1424
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$10;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-static {v0}, Lcom/narvii/item/detail/ItemDetailFragment;->access$2500(Lcom/narvii/item/detail/ItemDetailFragment;)Lcom/narvii/item/detail/HeaderLayout;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1425
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$10;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-static {v0}, Lcom/narvii/item/detail/ItemDetailFragment;->access$2500(Lcom/narvii/item/detail/ItemDetailFragment;)Lcom/narvii/item/detail/HeaderLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/narvii/item/detail/HeaderLayout;->setVoting(Z)V

    .line 1427
    :cond_0
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$10;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    iget-object v0, v0, Lcom/narvii/item/detail/ItemDetailFragment;->itemAdapter:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    if-eqz v0, :cond_1

    .line 1428
    invoke-virtual {v0}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->notifyDataSetChanged()V

    :cond_1
    const v0, 0x7f090165

    if-eqz p1, :cond_4

    .line 1433
    iget-boolean p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$10;->val$fromBottomBar:Z

    if-eqz p1, :cond_3

    .line 1434
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$10;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-static {p1}, Lcom/narvii/item/detail/ItemDetailFragment;->access$2600(Lcom/narvii/item/detail/ItemDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1435
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$10;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-static {p1}, Lcom/narvii/item/detail/ItemDetailFragment;->access$2700(Lcom/narvii/item/detail/ItemDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$10;->val$i:Lcom/narvii/model/Item;

    iget-object v2, p0, Lcom/narvii/item/detail/ItemDetailFragment$10;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;->onFinish(ILjava/lang/Object;)V

    .line 1439
    :cond_3
    iget p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$10;->val$fv:I

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$10;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    iget-object v0, p1, Lcom/narvii/item/detail/ItemDetailFragment;->voteIconView:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 1440
    new-instance v0, Lcom/narvii/feed/vote/VoteAnimationHelper;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/narvii/feed/vote/VoteAnimationHelper;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$10;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    iget-object p1, p1, Lcom/narvii/item/detail/ItemDetailFragment;->voteIconView:Landroid/view/View;

    iget v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$10;->val$fv:I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/narvii/feed/vote/VoteAnimationHelper;->startAnimation(Landroid/view/View;ILcom/narvii/util/Callback;)V

    goto :goto_1

    .line 1443
    :cond_4
    iget-boolean p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$10;->val$fromBottomBar:Z

    if-eqz p1, :cond_5

    .line 1444
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$10;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-static {p1}, Lcom/narvii/item/detail/ItemDetailFragment;->access$2800(Lcom/narvii/item/detail/ItemDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1445
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$10;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-static {p1}, Lcom/narvii/item/detail/ItemDetailFragment;->access$2900(Lcom/narvii/item/detail/ItemDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;->onFinish(ILjava/lang/Object;)V

    goto :goto_1

    .line 1448
    :cond_5
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$10;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-static {p1}, Lcom/narvii/item/detail/ItemDetailFragment;->access$3000(Lcom/narvii/item/detail/ItemDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1449
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$10;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-static {p1}, Lcom/narvii/item/detail/ItemDetailFragment;->access$3100(Lcom/narvii/item/detail/ItemDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$10;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Item;

    iget-object v2, p0, Lcom/narvii/item/detail/ItemDetailFragment$10;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    move-result v0

    iget-object v2, p0, Lcom/narvii/item/detail/ItemDetailFragment$10;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {v2}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Item;

    invoke-virtual {v2}, Lcom/narvii/model/Feed;->getTotalVotesCount()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/feed/FeedContinuousViewer;->updateVoteIcon(IZI)V

    :cond_6
    :goto_1
    return-void
.end method
