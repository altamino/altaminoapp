.class public Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;
.super Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/topic/model/ModuleItemCountHost;
.implements Lcom/narvii/topic/model/discover/SerialRequestChild;
.implements Lcom/narvii/topic/model/discover/SubRequestHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter$DataSource;,
        Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter$FeaturedTopicViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter<",
        "Lcom/narvii/model/story/StoryTopic;",
        "Lcom/narvii/model/story/StoryTopicListResponse;",
        ">;",
        "Lcom/narvii/topic/model/ModuleItemCountHost;",
        "Lcom/narvii/topic/model/discover/SerialRequestChild;",
        "Lcom/narvii/topic/model/discover/SubRequestHost;"
    }
.end annotation


# instance fields
.field private allItemCount:I

.field private final childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ctx:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final module:Lcom/narvii/topic/model/discover/ContentModule;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/topic/model/discover/ContentModule;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "module"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->ctx:Lcom/narvii/app/NVContext;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    .line 18
    .line 19
    new-instance p1, Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, p0, p0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/SerialRequestChild;)V

    .line 23
    .line 24
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 25
    return-void
.end method

.method public static final synthetic access$getChildHelper$p(Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;)Lcom/narvii/topic/model/discover/SerialRequestHelper;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$setAllItemCount$p(Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->allItemCount:I

    .line 3
    return-void
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public allItemCount()I
    .locals 1

    iget v0, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->allItemCount:I

    return v0
.end method

.method public autoLoadNextPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public createPageDataSource(Lcom/narvii/app/NVContext;)Lcom/narvii/paging/source/PageDataSource;
    .locals 1
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
    new-instance v0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter$DataSource;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter$DataSource;-><init>(Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;Lcom/narvii/app/NVContext;)V

    .line 6
    return-object v0
.end method

.method public geSubResponseSize()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getSize()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/topic/model/discover/ContentModule;->moduleType:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "moduleType"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    return-object v0
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Lcom/narvii/model/NVObject;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->getItem(I)Lcom/narvii/model/story/StoryTopic;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lcom/narvii/model/story/StoryTopic;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 3
    invoke-super {p0, p1}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/story/StoryTopic;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 4
    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setItemShown()V

    :cond_0
    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->getItem(I)Lcom/narvii/model/story/StoryTopic;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->getErrorMessage()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-super {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItemCount()I

    .line 12
    move-result v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->getMaxSize()I

    .line 16
    move-result v1

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 20
    move-result v0

    .line 21
    return v0
.end method

.method public getMaxSize()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public final getModule()Lcom/narvii/topic/model/discover/ContentModule;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    return-object v0
.end method

.method protected isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEnd()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->isSubRequestFinish()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public isReadyToRequest()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/topic/model/discover/ContentModule;->dataUrl:Ljava/lang/String;

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v2, "check ready "

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    const-string v1, "SerialRequest"

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isReadyToRequest()Z

    .line 32
    move-result v0

    .line 33
    return v0
.end method

.method public isRequestFinished()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isRequestFinished()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isSubRequestFinish()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isRequestFinished()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isVisibleToUser()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->getErrorMessage()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isItemShown()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 23
    :goto_1
    return v0
.end method

.method public onAttach()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->onAttach()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/master/home/discover/adapter/ModuleDivideColumnIPC;

    .line 6
    .line 7
    const-class v1, Lcom/narvii/model/story/StoryTopic;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->module:Lcom/narvii/topic/model/discover/ContentModule;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lcom/narvii/master/home/discover/adapter/ModuleDivideColumnIPC;-><init>(Ljava/lang/Class;Lcom/narvii/topic/model/discover/ContentModule;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    .line 16
    return-void
.end method

.method protected onBindItemViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "holder"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    instance-of v0, p1, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter$FeaturedTopicViewHolder;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    move-object v0, p1

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter$FeaturedTopicViewHolder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter$FeaturedTopicViewHolder;->getGeneralTopicCard()Lcom/narvii/topic/widgets/GeneralTopicCard;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p2}, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->getItem(I)Lcom/narvii/model/story/StoryTopic;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/narvii/topic/widgets/GeneralTopicCard;->setTopic(Lcom/narvii/model/story/StoryTopic;)V

    .line 24
    .line 25
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p2}, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->getItem(I)Lcom/narvii/model/story/StoryTopic;

    .line 29
    move-result-object p2

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->tagCellForLog(Landroid/view/View;Ljava/lang/Object;)V

    .line 33
    :cond_0
    return-void
.end method

.method protected onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p2, "parent"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance p2, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter$FeaturedTopicViewHolder;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    const v1, 0x7f0d03ce

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    const-string v0, "inflate(...)"

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p2, p0, p1}, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter$FeaturedTopicViewHolder;-><init>(Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;Landroid/view/View;)V

    .line 32
    return-object p2
.end method

.method public onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0
    .param p1    # Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->getItem(I)Lcom/narvii/model/story/StoryTopic;

    .line 4
    move-result-object p1

    .line 5
    const/4 p2, 0x0

    .line 6
    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    const-class p3, Lcom/narvii/topic/TopicTabFragment;

    .line 10
    .line 11
    .line 12
    invoke-static {p3}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 13
    move-result-object p3

    .line 14
    .line 15
    const-string p4, "topic"

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    move-result-object p5

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    .line 24
    iget p4, p1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    .line 25
    .line 26
    if-nez p4, :cond_0

    .line 27
    .line 28
    new-instance p3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    const-string p4, "topic0problem : StoryTopicView open with error: "

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 47
    return p2

    .line 48
    .line 49
    :cond_0
    sget-object p4, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1, p4}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    .line 59
    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    const-string p4, "null cannot be cast to non-null type com.narvii.app.NVActivity"

    .line 67
    .line 68
    .line 69
    invoke-static {p1, p4}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->isGlobalInteractionScope()Z

    .line 75
    move-result p1

    .line 76
    .line 77
    if-nez p1, :cond_1

    .line 78
    .line 79
    const-string p1, "__communityId"

    .line 80
    .line 81
    .line 82
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    .line 84
    :cond_1
    const-string p1, "__interactionScope"

    .line 85
    const/4 p2, 0x1

    .line 86
    .line 87
    .line 88
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    .line 95
    invoke-static {p1, p3}, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 96
    :cond_2
    return p2
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 0
    .param p2    # Lcom/narvii/paging/source/PageRequestCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    .line 4
    return-void
.end method

.method public requestDataWhenReady()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->requestDataWhenReady()V

    .line 6
    return-void
.end method

.method public resetEmptyList()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->resetEmptyList()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->resetSerialRequestChild()V

    .line 9
    return-void
.end method

.method public resetList()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->resetList()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->resetSerialRequestChild()V

    .line 9
    return-void
.end method

.method public responseSize()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getSize()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public setSerialRequestParent(Lcom/narvii/topic/model/discover/SerialRequestParent;)V
    .locals 1
    .param p1    # Lcom/narvii/topic/model/discover/SerialRequestParent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "serialRequestParent"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/GridTopicCardAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setSerialRequestParent(Lcom/narvii/topic/model/discover/SerialRequestParent;)V

    .line 11
    return-void
.end method

.method protected showPageLoadingStatus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
