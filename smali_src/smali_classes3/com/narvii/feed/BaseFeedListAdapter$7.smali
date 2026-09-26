.class Lcom/narvii/feed/BaseFeedListAdapter$7;
.super Lcom/narvii/story/detail/VoteHelper$OnVoteListenerAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter$7;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/feed/BaseFeedListAdapter$7;->val$feed:Lcom/narvii/model/Feed;

    .line 5
    .line 6
    iput p3, p0, Lcom/narvii/feed/BaseFeedListAdapter$7;->val$v:I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/story/detail/VoteHelper$OnVoteListenerAdapter;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onVoteEnd(Z)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter$7;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/feed/BaseFeedListAdapter;->progressList:Ljava/util/HashSet;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/feed/BaseFeedListAdapter$7;->val$feed:Lcom/narvii/model/Feed;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter$7;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter$7;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter$7;->val$feed:Lcom/narvii/model/Feed;

    .line 25
    .line 26
    iget v1, p0, Lcom/narvii/feed/BaseFeedListAdapter$7;->val$v:I

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Lcom/narvii/feed/BaseFeedListAdapter;->onVoteSuccess(Lcom/narvii/model/Feed;I)V

    .line 30
    .line 31
    iget p1, p0, Lcom/narvii/feed/BaseFeedListAdapter$7;->val$v:I

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter$7;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    .line 36
    .line 37
    iget-object v0, p1, Lcom/narvii/feed/BaseFeedListAdapter;->voteIconView:Landroid/view/View;

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    new-instance v0, Lcom/narvii/feed/vote/VoteAnimationHelper;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, p1}, Lcom/narvii/feed/vote/VoteAnimationHelper;-><init>(Landroid/content/Context;)V

    .line 49
    .line 50
    iget-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter$7;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    .line 51
    .line 52
    iget-object p1, p1, Lcom/narvii/feed/BaseFeedListAdapter;->voteIconView:Landroid/view/View;

    .line 53
    .line 54
    iget v1, p0, Lcom/narvii/feed/BaseFeedListAdapter$7;->val$v:I

    .line 55
    const/4 v2, 0x0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p1, v1, v2}, Lcom/narvii/feed/vote/VoteAnimationHelper;->startAnimation(Landroid/view/View;ILcom/narvii/util/Callback;)V

    .line 59
    :cond_0
    return-void
.end method
