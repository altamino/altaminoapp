.class Lcom/narvii/story/StoryListFragment$9;
.super Ljava/lang/Object;
.source "StoryListFragment.java"

# interfaces
.implements Lcom/narvii/story/widgets/StoryItemClickListener;


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

    .line 2102
    iput-object p1, p0, Lcom/narvii/story/StoryListFragment$9;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onNextDirectionClicked$0$StoryListFragment$9(II)V
    .locals 1

    if-nez p2, :cond_0

    .line 2177
    iget-object p2, p0, Lcom/narvii/story/StoryListFragment$9;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {p2}, Lcom/narvii/story/StoryListFragment;->access$4400(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/widget/recycleview/NVRecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p2

    .line 2178
    instance-of v0, p2, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    check-cast p2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p2

    if-ne p2, p1, :cond_0

    .line 2179
    iget-object p2, p0, Lcom/narvii/story/StoryListFragment$9;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {p2}, Lcom/narvii/story/StoryListFragment;->access$4500(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/widget/recycleview/NVRecyclerView;

    move-result-object p2

    const/4 v0, 0x1

    add-int/2addr p1, v0

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 2180
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment$9;->this$0:Lcom/narvii/story/StoryListFragment;

    iput-boolean v0, p1, Lcom/narvii/story/StoryListFragment;->pendingClickNext:Z

    :cond_0
    return-void
.end method

.method public onNextDirectionClicked(ILcom/narvii/model/Blog;)V
    .locals 7

    .line 2144
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$9;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$400(Lcom/narvii/story/StoryListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2147
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$9;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$800(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/story/widgets/StoryItemView;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 2150
    :cond_1
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$9;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$3200(Lcom/narvii/story/StoryListFragment;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$9;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$3300(Lcom/narvii/story/StoryListFragment;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 2153
    :cond_2
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$9;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$800(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/story/widgets/StoryItemView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/story/widgets/StoryItemView;->isPlayBtnVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2154
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment$9;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryListFragment;->access$3400(Lcom/narvii/story/StoryListFragment;)V

    return-void

    :cond_3
    if-nez p2, :cond_4

    return-void

    .line 2160
    :cond_4
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$9;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$100(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/model/Blog;

    move-result-object v0

    if-nez v0, :cond_5

    return-void

    .line 2163
    :cond_5
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$9;->this$0:Lcom/narvii/story/StoryListFragment;

    iget v1, p2, Lcom/narvii/model/Blog;->currentWindowIndex:I

    invoke-virtual {v0, v1}, Lcom/narvii/story/StoryListFragment;->shouldPauseForPageAboveVideo(I)Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 2166
    :cond_6
    iget-object v0, p2, Lcom/narvii/model/Blog;->sceneList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2167
    :goto_0
    iget v2, p2, Lcom/narvii/model/Blog;->currentWindowIndex:I

    add-int/lit8 v3, v0, -0x1

    const-string v4, "targetSceneId"

    const-string v5, "currentSceneId"

    const/4 v6, 0x1

    if-lt v2, v3, :cond_a

    .line 2168
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$9;->this$0:Lcom/narvii/story/StoryListFragment;

    const/4 v2, 0x0

    sget-object v3, Lcom/narvii/logging/ActType;->click:Lcom/narvii/logging/ActType;

    invoke-static {v0, p1, p2, v2, v3}, Lcom/narvii/story/StoryListFragment;->access$3800(Lcom/narvii/story/StoryListFragment;ILcom/narvii/model/Blog;Ljava/lang/String;Lcom/narvii/logging/ActType;)V

    .line 2170
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$9;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$3900(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getSize()I

    move-result v0

    sub-int/2addr v0, v6

    if-ge p1, v0, :cond_8

    .line 2171
    iput v1, p2, Lcom/narvii/model/Blog;->currentWindowIndex:I

    .line 2172
    iget-object p2, p0, Lcom/narvii/story/StoryListFragment$9;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {p2}, Lcom/narvii/story/StoryListFragment;->access$4000(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/widget/recycleview/NVRecyclerView;

    move-result-object p2

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 2173
    iget-object p2, p0, Lcom/narvii/story/StoryListFragment$9;->this$0:Lcom/narvii/story/StoryListFragment;

    iput-boolean v6, p2, Lcom/narvii/story/StoryListFragment;->pendingClickNext:Z

    goto :goto_1

    .line 2174
    :cond_8
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$9;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$1100(Lcom/narvii/story/StoryListFragment;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$9;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$4100(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;

    if-eqz v0, :cond_9

    .line 2175
    iget-object p2, p0, Lcom/narvii/story/StoryListFragment$9;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {p2}, Lcom/narvii/story/StoryListFragment;->access$4200(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    move-result-object p2

    check-cast p2, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;

    new-instance v0, Lcom/narvii/story/-$$Lambda$StoryListFragment$9$9rdKlzu_dZF1DukhVY1g2uRk-wk;

    invoke-direct {v0, p0, p1}, Lcom/narvii/story/-$$Lambda$StoryListFragment$9$9rdKlzu_dZF1DukhVY1g2uRk-wk;-><init>(Lcom/narvii/story/StoryListFragment$9;I)V

    invoke-virtual {p2, v0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->loadNextPage(Lcom/narvii/paging/source/PageRequestCallback;)V

    goto :goto_1

    .line 2185
    :cond_9
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$9;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$3500(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->actClick()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    sget-object v2, Lcom/narvii/logging/ActSemantic;->nextScene:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v0, v2}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    iget v2, p2, Lcom/narvii/model/Blog;->currentWindowIndex:I

    .line 2186
    invoke-static {p2, v2}, Lcom/narvii/util/StoryUtils;->getSceneId(Lcom/narvii/model/Blog;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    .line 2187
    invoke-static {p2, v1}, Lcom/narvii/util/StoryUtils;->getSceneId(Lcom/narvii/model/Blog;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    .line 2188
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 2190
    iput v1, p2, Lcom/narvii/model/Blog;->currentWindowIndex:I

    .line 2191
    iget-object p2, p0, Lcom/narvii/story/StoryListFragment$9;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {p2}, Lcom/narvii/story/StoryListFragment;->access$3600(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/nvplayer/INVPlayer;

    move-result-object p2

    invoke-interface {p2, v1}, Lcom/narvii/nvplayer/INVPlayer;->seekToWindow(I)V

    .line 2192
    iget-object p2, p0, Lcom/narvii/story/StoryListFragment$9;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {p2, p1}, Lcom/narvii/story/StoryListFragment;->access$3700(Lcom/narvii/story/StoryListFragment;I)V

    .line 2194
    :goto_1
    iget-object p2, p0, Lcom/narvii/story/StoryListFragment$9;->this$0:Lcom/narvii/story/StoryListFragment;

    add-int/2addr p1, v6

    invoke-static {p2, p1}, Lcom/narvii/story/StoryListFragment;->access$2800(Lcom/narvii/story/StoryListFragment;I)V

    goto :goto_2

    :cond_a
    add-int/2addr v2, v6

    if-ge v2, v0, :cond_b

    .line 2197
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$9;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$3500(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->actClick()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/narvii/logging/ActSemantic;->nextScene:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    iget v1, p2, Lcom/narvii/model/Blog;->currentWindowIndex:I

    .line 2198
    invoke-static {p2, v1}, Lcom/narvii/util/StoryUtils;->getSceneId(Lcom/narvii/model/Blog;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    iget v1, p2, Lcom/narvii/model/Blog;->currentWindowIndex:I

    add-int/2addr v1, v6

    .line 2199
    invoke-static {p2, v1}, Lcom/narvii/util/StoryUtils;->getSceneId(Lcom/narvii/model/Blog;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    .line 2200
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 2202
    :cond_b
    iget v0, p2, Lcom/narvii/model/Blog;->currentWindowIndex:I

    add-int/2addr v0, v6

    iput v0, p2, Lcom/narvii/model/Blog;->currentWindowIndex:I

    .line 2203
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$9;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0, p1}, Lcom/narvii/story/StoryListFragment;->access$4300(Lcom/narvii/story/StoryListFragment;I)V

    .line 2204
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$9;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$3600(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/nvplayer/INVPlayer;

    move-result-object v0

    iget p2, p2, Lcom/narvii/model/Blog;->currentWindowIndex:I

    invoke-interface {v0, p2}, Lcom/narvii/nvplayer/INVPlayer;->seekToWindow(I)V

    .line 2205
    iget-object p2, p0, Lcom/narvii/story/StoryListFragment$9;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {p2, p1}, Lcom/narvii/story/StoryListFragment;->access$3700(Lcom/narvii/story/StoryListFragment;I)V

    :goto_2
    return-void
.end method

.method public onPrevDirectionClicked(ILcom/narvii/model/Blog;)V
    .locals 4

    .line 2105
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$9;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$400(Lcom/narvii/story/StoryListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2108
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$9;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$800(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/story/widgets/StoryItemView;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 2111
    :cond_1
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$9;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$3200(Lcom/narvii/story/StoryListFragment;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$9;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$3300(Lcom/narvii/story/StoryListFragment;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 2114
    :cond_2
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$9;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$800(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/story/widgets/StoryItemView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/story/widgets/StoryItemView;->isPlayBtnVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2115
    iget-object p1, p0, Lcom/narvii/story/StoryListFragment$9;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {p1}, Lcom/narvii/story/StoryListFragment;->access$3400(Lcom/narvii/story/StoryListFragment;)V

    return-void

    :cond_3
    if-nez p2, :cond_4

    return-void

    .line 2121
    :cond_4
    iget v0, p2, Lcom/narvii/model/Blog;->currentWindowIndex:I

    const-string v1, "targetSceneId"

    const-string v2, "currentSceneId"

    if-gtz v0, :cond_5

    .line 2122
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$9;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$3500(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->actClick()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    sget-object v3, Lcom/narvii/logging/ActSemantic;->preScene:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v0, v3}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    iget v3, p2, Lcom/narvii/model/Blog;->currentWindowIndex:I

    .line 2123
    invoke-static {p2, v3}, Lcom/narvii/util/StoryUtils;->getSceneId(Lcom/narvii/model/Blog;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const/4 v2, 0x0

    .line 2124
    invoke-static {p2, v2}, Lcom/narvii/util/StoryUtils;->getSceneId(Lcom/narvii/model/Blog;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    .line 2125
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 2127
    iput v2, p2, Lcom/narvii/model/Blog;->currentWindowIndex:I

    .line 2128
    iget-object p2, p0, Lcom/narvii/story/StoryListFragment$9;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {p2}, Lcom/narvii/story/StoryListFragment;->access$3600(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/nvplayer/INVPlayer;

    move-result-object p2

    invoke-interface {p2, v2}, Lcom/narvii/nvplayer/INVPlayer;->seekToWindow(I)V

    .line 2129
    iget-object p2, p0, Lcom/narvii/story/StoryListFragment$9;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {p2, p1}, Lcom/narvii/story/StoryListFragment;->access$3700(Lcom/narvii/story/StoryListFragment;I)V

    goto :goto_0

    .line 2131
    :cond_5
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$9;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$3500(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->actClick()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    sget-object v3, Lcom/narvii/logging/ActSemantic;->preScene:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {v0, v3}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    iget v3, p2, Lcom/narvii/model/Blog;->currentWindowIndex:I

    .line 2132
    invoke-static {p2, v3}, Lcom/narvii/util/StoryUtils;->getSceneId(Lcom/narvii/model/Blog;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    iget v2, p2, Lcom/narvii/model/Blog;->currentWindowIndex:I

    add-int/lit8 v2, v2, -0x1

    .line 2133
    invoke-static {p2, v2}, Lcom/narvii/util/StoryUtils;->getSceneId(Lcom/narvii/model/Blog;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    .line 2134
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 2136
    iget v0, p2, Lcom/narvii/model/Blog;->currentWindowIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p2, Lcom/narvii/model/Blog;->currentWindowIndex:I

    .line 2137
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$9;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$3600(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/nvplayer/INVPlayer;

    move-result-object v0

    iget p2, p2, Lcom/narvii/model/Blog;->currentWindowIndex:I

    invoke-interface {v0, p2}, Lcom/narvii/nvplayer/INVPlayer;->seekToWindow(I)V

    .line 2138
    iget-object p2, p0, Lcom/narvii/story/StoryListFragment$9;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {p2, p1}, Lcom/narvii/story/StoryListFragment;->access$3700(Lcom/narvii/story/StoryListFragment;I)V

    :goto_0
    return-void
.end method
