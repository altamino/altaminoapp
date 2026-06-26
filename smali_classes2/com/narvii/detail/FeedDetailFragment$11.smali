.class Lcom/narvii/detail/FeedDetailFragment$11;
.super Ljava/lang/Object;
.source "FeedDetailFragment.java"

# interfaces
.implements Lcom/narvii/widget/FeedBottomLayout$BottomAnimationListener;


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

    .line 586
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$11;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinished()V
    .locals 4

    .line 589
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment$11;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    iget-object v1, v0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/detail/FeedDetailFragment$11;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    move-result v0

    iget-object v2, p0, Lcom/narvii/detail/FeedDetailFragment$11;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {v2}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/model/Feed;->getTotalVotesCount()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/narvii/feed/FeedContinuousViewer;->updateVoteIcon(IZI)V

    .line 590
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment$11;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/narvii/detail/FeedDetailFragment;->isVoteAnimationFinished:Z

    return-void
.end method
