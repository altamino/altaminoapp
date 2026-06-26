.class public final Lcom/narvii/master/home/story/PublishedStoryListFragment$createAdapter$mergeAdapter$1;
.super Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;
.source "PublishedStoryListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/story/PublishedStoryListFragment;->createAdapter()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/story/PublishedStoryListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/story/PublishedStoryListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/narvii/master/home/story/PublishedStoryListFragment$createAdapter$mergeAdapter$1;->this$0:Lcom/narvii/master/home/story/PublishedStoryListFragment;

    invoke-direct {p0, p2}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/narvii/master/home/story/PublishedStoryListFragment$createAdapter$mergeAdapter$1;->this$0:Lcom/narvii/master/home/story/PublishedStoryListFragment;

    invoke-static {v0}, Lcom/narvii/master/home/story/PublishedStoryListFragment;->access$isUserBlock$p(Lcom/narvii/master/home/story/PublishedStoryListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->isEmpty()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public isListShow()Z
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/narvii/master/home/story/PublishedStoryListFragment$createAdapter$mergeAdapter$1;->this$0:Lcom/narvii/master/home/story/PublishedStoryListFragment;

    invoke-static {v0}, Lcom/narvii/master/home/story/PublishedStoryListFragment;->access$isUserBlock$p(Lcom/narvii/master/home/story/PublishedStoryListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->isListShow()Z

    move-result v0

    :goto_0
    return v0
.end method
