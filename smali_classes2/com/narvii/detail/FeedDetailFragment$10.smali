.class Lcom/narvii/detail/FeedDetailFragment$10;
.super Ljava/lang/Object;
.source "FeedDetailFragment.java"

# interfaces
.implements Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/detail/FeedDetailFragment;->attachSBB()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/detail/FeedDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/detail/FeedDetailFragment;)V
    .locals 0

    .line 559
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$10;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/Object;)V
    .locals 1

    const p2, 0x7f090165

    if-ne p1, p2, :cond_0

    .line 580
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$10;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    iget-object p2, p1, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/narvii/feed/FeedContinuousViewer;->updateVoteIcon(Lcom/narvii/model/Feed;Z)V

    :cond_0
    return-void
.end method

.method public onFinish(ILjava/lang/Object;)V
    .locals 1

    const p2, 0x7f090165

    if-ne p1, p2, :cond_0

    .line 572
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$10;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    iget-object p1, p1, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/narvii/feed/FeedContinuousViewer;->setIsVotting(Z)V

    .line 573
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$10;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    iget-object v0, p1, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/narvii/feed/FeedContinuousViewer;->updateVoteIcon(Lcom/narvii/model/Feed;Z)V

    :cond_0
    return-void
.end method

.method public onStart(ILjava/lang/Object;)V
    .locals 1

    const p2, 0x7f090165

    if-ne p1, p2, :cond_0

    .line 564
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$10;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    iget-object p1, p1, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/narvii/feed/FeedContinuousViewer;->setIsVotting(Z)V

    .line 565
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$10;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    iget-object v0, p1, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/narvii/feed/FeedContinuousViewer;->updateVoteIcon(Lcom/narvii/model/Feed;Z)V

    :cond_0
    return-void
.end method
