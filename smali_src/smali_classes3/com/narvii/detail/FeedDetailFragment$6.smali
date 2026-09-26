.class Lcom/narvii/detail/FeedDetailFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$6;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationFinished()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment$6;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/detail/FeedDetailFragment;->continuousLoader:Lcom/narvii/feed/FeedContinuousViewer;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iget-object v2, p0, Lcom/narvii/detail/FeedDetailFragment$6;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->isGlobalInteractionScope()Z

    .line 14
    move-result v2

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    .line 18
    move-result v0

    .line 19
    .line 20
    iget-object v2, p0, Lcom/narvii/detail/FeedDetailFragment$6;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/narvii/model/Feed;->getTotalVotesCount()I

    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0, v3, v2}, Lcom/narvii/feed/FeedContinuousViewer;->updateVoteIcon(IZI)V

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment$6;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    .line 35
    const/4 v1, 0x1

    .line 36
    .line 37
    iput-boolean v1, v0, Lcom/narvii/detail/FeedDetailFragment;->isVoteAnimationFinished:Z

    .line 38
    return-void
.end method
