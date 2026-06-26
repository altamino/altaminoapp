.class Lcom/narvii/feed/BaseFeedListAdapter$8;
.super Lcom/narvii/story/detail/VoteHelper$OnVoteListenerAdapter;
.source "BaseFeedListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/feed/BaseFeedListAdapter;->vote(Lcom/narvii/model/Feed;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/BaseFeedListAdapter;

.field final synthetic val$feed:Lcom/narvii/model/Feed;

.field final synthetic val$v:I


# direct methods
.method constructor <init>(Lcom/narvii/feed/BaseFeedListAdapter;Lcom/narvii/model/Feed;I)V
    .locals 0

    .line 914
    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter$8;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    iput-object p2, p0, Lcom/narvii/feed/BaseFeedListAdapter$8;->val$feed:Lcom/narvii/model/Feed;

    iput p3, p0, Lcom/narvii/feed/BaseFeedListAdapter$8;->val$v:I

    invoke-direct {p0}, Lcom/narvii/story/detail/VoteHelper$OnVoteListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoteEnd(Z)V
    .locals 3

    .line 918
    iget-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter$8;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    iget-object v0, v0, Lcom/narvii/feed/BaseFeedListAdapter;->progressList:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/narvii/feed/BaseFeedListAdapter$8;->val$feed:Lcom/narvii/model/Feed;

    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 919
    iget-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter$8;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    if-eqz p1, :cond_0

    .line 922
    iget-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter$8;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    iget-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter$8;->val$feed:Lcom/narvii/model/Feed;

    iget v1, p0, Lcom/narvii/feed/BaseFeedListAdapter$8;->val$v:I

    invoke-virtual {p1, v0, v1}, Lcom/narvii/feed/BaseFeedListAdapter;->onVoteSuccess(Lcom/narvii/model/Feed;I)V

    .line 924
    iget p1, p0, Lcom/narvii/feed/BaseFeedListAdapter$8;->val$v:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter$8;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    iget-object v0, p1, Lcom/narvii/feed/BaseFeedListAdapter;->voteIconView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 925
    new-instance v0, Lcom/narvii/feed/vote/VoteAnimationHelper;

    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/narvii/feed/vote/VoteAnimationHelper;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter$8;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    iget-object p1, p1, Lcom/narvii/feed/BaseFeedListAdapter;->voteIconView:Landroid/view/View;

    iget v1, p0, Lcom/narvii/feed/BaseFeedListAdapter$8;->val$v:I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/narvii/feed/vote/VoteAnimationHelper;->startAnimation(Landroid/view/View;ILcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method
