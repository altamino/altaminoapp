.class Lcom/narvii/detail/FeedDetailFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$5;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const p2, 0x7f0a0201

    .line 4
    .line 5
    if-ne p1, p2, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$5;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 8
    .line 9
    iget-object p2, p1, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 13
    move-result-object p1

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p1, v0}, Lcom/narvii/feed/FeedContinuousViewer;->updateVoteIcon(Lcom/narvii/model/Feed;Z)V

    .line 18
    :cond_0
    return-void
.end method

.method public onFinish(ILjava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const p2, 0x7f0a0201

    .line 4
    .line 5
    if-ne p1, p2, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$5;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    .line 10
    const/4 p2, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/narvii/feed/FeedContinuousViewer;->setIsVotting(Z)V

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$5;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 16
    .line 17
    iget-object v0, p1, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1, p2}, Lcom/narvii/feed/FeedContinuousViewer;->updateVoteIcon(Lcom/narvii/model/Feed;Z)V

    .line 25
    :cond_0
    return-void
.end method

.method public onStart(ILjava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const p2, 0x7f0a0201

    .line 4
    .line 5
    if-ne p1, p2, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$5;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    .line 10
    const/4 p2, 0x1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/narvii/feed/FeedContinuousViewer;->setIsVotting(Z)V

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$5;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 16
    .line 17
    iget-object v0, p1, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1, p2}, Lcom/narvii/feed/FeedContinuousViewer;->updateVoteIcon(Lcom/narvii/model/Feed;Z)V

    .line 25
    :cond_0
    return-void
.end method
