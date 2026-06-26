.class Lcom/narvii/blog/detail/BlogDetailFragment$7;
.super Lcom/narvii/story/detail/VoteHelper$OnVoteListenerAdapter;
.source "BlogDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/blog/detail/BlogDetailFragment;->vote(Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

.field final synthetic val$b:Lcom/narvii/model/Blog;

.field final synthetic val$fromBottomBar:Z

.field final synthetic val$fv:I


# direct methods
.method constructor <init>(Lcom/narvii/blog/detail/BlogDetailFragment;ZLcom/narvii/model/Blog;I)V
    .locals 0

    .line 2162
    iput-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$7;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    iput-boolean p2, p0, Lcom/narvii/blog/detail/BlogDetailFragment$7;->val$fromBottomBar:Z

    iput-object p3, p0, Lcom/narvii/blog/detail/BlogDetailFragment$7;->val$b:Lcom/narvii/model/Blog;

    iput p4, p0, Lcom/narvii/blog/detail/BlogDetailFragment$7;->val$fv:I

    invoke-direct {p0}, Lcom/narvii/story/detail/VoteHelper$OnVoteListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoteEnd(Z)V
    .locals 3

    .line 2166
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$7;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    iget-object v0, v0, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;->access$5402(Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;Z)Z

    .line 2167
    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$7;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    iget-object v0, v0, Lcom/narvii/blog/detail/BlogDetailFragment;->blogAdapter:Lcom/narvii/blog/detail/BlogDetailFragment$Adapter;

    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    const v0, 0x7f090165

    if-eqz p1, :cond_2

    .line 2170
    iget-boolean p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$7;->val$fromBottomBar:Z

    if-eqz p1, :cond_1

    .line 2171
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$7;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {p1}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$5500(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2172
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$7;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {p1}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$5600(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$7;->val$b:Lcom/narvii/model/Blog;

    iget-object v2, p0, Lcom/narvii/blog/detail/BlogDetailFragment$7;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v2}, Lcom/narvii/blog/detail/BlogDetailFragment;->isGlobalInteractionScope()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;->onFinish(ILjava/lang/Object;)V

    .line 2176
    :cond_1
    iget p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$7;->val$fv:I

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$7;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    iget-object v0, p1, Lcom/narvii/blog/detail/BlogDetailFragment;->voteIconView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 2177
    new-instance v0, Lcom/narvii/feed/vote/VoteAnimationHelper;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/narvii/feed/vote/VoteAnimationHelper;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$7;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    iget-object p1, p1, Lcom/narvii/blog/detail/BlogDetailFragment;->voteIconView:Landroid/view/View;

    iget v1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$7;->val$fv:I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/narvii/feed/vote/VoteAnimationHelper;->startAnimation(Landroid/view/View;ILcom/narvii/util/Callback;)V

    goto :goto_1

    .line 2180
    :cond_2
    iget-boolean p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$7;->val$fromBottomBar:Z

    if-eqz p1, :cond_3

    .line 2181
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$7;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {p1}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$5700(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2182
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$7;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {p1}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$5800(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/narvii/feed/FeedContinuousViewer$ContinuousLoaderListener;->onFail(ILjava/lang/Object;)V

    goto :goto_1

    .line 2185
    :cond_3
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$7;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {p1}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$5900(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2186
    iget-object p1, p0, Lcom/narvii/blog/detail/BlogDetailFragment$7;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-static {p1}, Lcom/narvii/blog/detail/BlogDetailFragment;->access$6000(Lcom/narvii/blog/detail/BlogDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/blog/detail/BlogDetailFragment$7;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Blog;

    iget-object v2, p0, Lcom/narvii/blog/detail/BlogDetailFragment$7;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v2}, Lcom/narvii/blog/detail/BlogDetailFragment;->isGlobalInteractionScope()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    move-result v0

    iget-object v2, p0, Lcom/narvii/blog/detail/BlogDetailFragment$7;->this$0:Lcom/narvii/blog/detail/BlogDetailFragment;

    invoke-virtual {v2}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Blog;

    invoke-virtual {v2}, Lcom/narvii/model/Blog;->getTotalVotesCount()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/feed/FeedContinuousViewer;->updateVoteIcon(IZI)V

    :cond_4
    :goto_1
    return-void
.end method
