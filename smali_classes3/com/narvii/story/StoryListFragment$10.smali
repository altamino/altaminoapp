.class Lcom/narvii/story/StoryListFragment$10;
.super Ljava/lang/Object;
.source "StoryListFragment.java"

# interfaces
.implements Lcom/narvii/story/widgets/StoryItemPlayControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/StoryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/StoryListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/story/StoryListFragment;)V
    .locals 0

    .line 2232
    iput-object p1, p0, Lcom/narvii/story/StoryListFragment$10;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayNextStory(ILcom/narvii/model/Blog;Ljava/lang/String;Z)V
    .locals 2

    .line 2235
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$10;->this$0:Lcom/narvii/story/StoryListFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/narvii/story/StoryListFragment;->pendingClickNext:Z

    if-eqz p4, :cond_0

    .line 2236
    sget-object p4, Lcom/narvii/logging/ActType;->autoNextStory:Lcom/narvii/logging/ActType;

    goto :goto_0

    :cond_0
    sget-object p4, Lcom/narvii/logging/ActType;->click:Lcom/narvii/logging/ActType;

    :goto_0
    invoke-static {v0, p1, p2, p3, p4}, Lcom/narvii/story/StoryListFragment;->access$3800(Lcom/narvii/story/StoryListFragment;ILcom/narvii/model/Blog;Ljava/lang/String;Lcom/narvii/logging/ActType;)V

    .line 2237
    iget-object p2, p0, Lcom/narvii/story/StoryListFragment$10;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {p2}, Lcom/narvii/story/StoryListFragment;->access$4600(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/widget/recycleview/NVRecyclerView;

    move-result-object p2

    add-int/2addr p1, v1

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public onReplayStory(ILcom/narvii/model/Blog;)V
    .locals 8

    .line 2242
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment$10;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryListFragment;->access$800(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/story/widgets/StoryItemView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2243
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment$10;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryListFragment;->access$800(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/story/widgets/StoryItemView;

    move-result-object p1

    iget-object p1, p1, Lcom/narvii/story/widgets/StoryItemView;->progressBar:Lcom/narvii/widgets/StoryProgressBar;

    invoke-virtual {p1}, Lcom/narvii/widgets/StoryProgressBar;->updatePlayedPollQuiz()V

    .line 2244
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment$10;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryListFragment;->access$800(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/story/widgets/StoryItemView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/story/widgets/StoryItemView;->resetProgressBar()V

    .line 2246
    :cond_0
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment$10;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryListFragment;->access$1500(Lcom/narvii/story/StoryListFragment;)V

    .line 2247
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment$10;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryListFragment;->access$3600(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/nvplayer/INVPlayer;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 2248
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment$10;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryListFragment;->access$3600(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/nvplayer/INVPlayer;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v0}, Lcom/narvii/nvplayer/INVPlayer;->setVolume(F)V

    .line 2249
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment$10;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryListFragment;->access$3600(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/nvplayer/INVPlayer;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/narvii/nvplayer/INVPlayer;->seekToWindow(I)V

    .line 2251
    :cond_1
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment$10;->this$0:Lcom/narvii/story/StoryListFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/narvii/story/StoryListFragment;->access$4700(Lcom/narvii/story/StoryListFragment;Z)V

    .line 2252
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment$10;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryListFragment;->access$1100(Lcom/narvii/story/StoryListFragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/story/StoryListFragment$10;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryListFragment;->access$1800(Lcom/narvii/story/StoryListFragment;)I

    move-result p1

    iget-object v1, p0, Lcom/narvii/story/StoryListFragment$10;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v1}, Lcom/narvii/story/StoryListFragment;->access$4800(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getSize()I

    move-result v1

    sub-int/2addr v1, v0

    if-ge p1, v1, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    .line 2253
    :goto_0
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment$10;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryListFragment;->access$800(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/story/widgets/StoryItemView;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/story/StoryListFragment$10;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v3}, Lcom/narvii/story/StoryListFragment;->access$100(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/model/Blog;

    move-result-object v4

    iget-object p1, p0, Lcom/narvii/story/StoryListFragment$10;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryListFragment;->access$900(Lcom/narvii/story/StoryListFragment;)Landroid/util/SparseArray;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/story/StoryListFragment$10;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {p2}, Lcom/narvii/story/StoryListFragment;->access$100(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/model/Blog;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/model/Blog;->getPublishNdcId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/narvii/model/Community;

    iget-object p1, p0, Lcom/narvii/story/StoryListFragment$10;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-virtual {p1}, Lcom/narvii/story/StoryListFragment;->isShowingPopupViews()Z

    move-result p1

    xor-int/lit8 v7, p1, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/narvii/story/widgets/StoryItemView;->initInterstitialPage(Landroid/support/v4/app/Fragment;Lcom/narvii/model/Blog;Lcom/narvii/model/Community;ZZ)V

    .line 2254
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment$10;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-virtual {p1}, Lcom/narvii/story/StoryListFragment;->onBottomSheetHide()V

    return-void
.end method
