.class public final Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$InnerAdapter;
.super Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;
.source "TopicModuleHorizontalAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InnerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/topic/model/discover/ContentModule;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$InnerAdapter;->this$0:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;

    invoke-direct {p0, p2, p3}, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 106
    invoke-static {p1}, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->access$getDataSetChangeListener$p(Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;)Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->addDataSetChangeListener(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V

    return-void
.end method


# virtual methods
.method public autoLoadNextPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public createPageDataSource(Lcom/narvii/app/NVContext;)Lcom/narvii/paging/source/PageDataSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")",
            "Lcom/narvii/paging/source/PageDataSource<",
            "Lcom/narvii/model/story/StoryTopic;",
            "Lcom/narvii/model/story/StoryTopicListResponse;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$InnerAdapter;->this$0:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;

    new-instance v1, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$DataSource;

    invoke-direct {v1, v0, p1}, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$DataSource;-><init>(Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;Lcom/narvii/app/NVContext;)V

    invoke-static {v0, v1}, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->access$setInnerDataSource$p(Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$DataSource;)V

    .line 111
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$InnerAdapter;->this$0:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;

    invoke-static {p1}, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->access$getInnerDataSource$p(Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;)Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$DataSource;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1
.end method

.method public onRefreshFinishedBeforePageResponse(I)V
    .locals 1

    .line 127
    invoke-super {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->onRefreshFinishedBeforePageResponse(I)V

    .line 128
    iget-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 0

    or-int/lit8 p1, p1, 0x1

    .line 123
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    return-void
.end method

.method protected showPageLoadingStatus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
