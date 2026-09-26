.class public final Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$InnerAdapter;
.super Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;
.source "SourceFile"


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
    .param p1    # Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/topic/model/discover/ContentModule;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "module"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$InnerAdapter;->this$0:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p2, p3}, Lcom/narvii/master/home/discover/adapter/GeneralTopicCardAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->access$getDataSetChangeListener$p(Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;)Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->addDataSetChangeListener(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V

    .line 23
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
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$InnerAdapter;->this$0:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$DataSource;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$DataSource;-><init>(Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;Lcom/narvii/app/NVContext;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->access$setInnerDataSource$p(Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$DataSource;)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$InnerAdapter;->this$0:Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;->access$getInnerDataSource$p(Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter;)Lcom/narvii/master/home/discover/adapter/TopicModuleHorizontalAdapter$DataSource;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 20
    return-object p1
.end method

.method public onRefreshFinishedBeforePageResponse(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->onRefreshFinishedBeforePageResponse(I)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 12
    :cond_0
    return-void
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 0
    .param p2    # Lcom/narvii/paging/source/PageRequestCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    or-int/lit8 p1, p1, 0x1

    .line 3
    .line 4
    .line 5
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    .line 6
    return-void
.end method

.method protected showPageLoadingStatus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
