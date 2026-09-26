.class public final Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;
.super Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/topic/model/discover/SerialRequestParent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/discover/DiscoverFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DiscoverAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/discover/DiscoverFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/discover/DiscoverFragment;Lcom/narvii/app/NVContext;)V
    .locals 0
    .param p1    # Lcom/narvii/master/home/discover/DiscoverFragment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    const/4 p1, 0x1

    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->dynamicalMode:Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 12
    return-void
.end method

.method private final getSerialRequestChildList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/topic/model/discover/SerialRequestChild;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    check-cast v2, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 24
    .line 25
    instance-of v3, v2, Lcom/narvii/topic/model/discover/SerialRequestChild;

    .line 26
    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    :cond_1
    instance-of v3, v2, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;

    .line 33
    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    check-cast v2, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;

    .line 37
    .line 38
    iget-object v2, v2, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 39
    .line 40
    instance-of v3, v2, Lcom/narvii/topic/model/discover/SerialRequestChild;

    .line 41
    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    const-string v3, "null cannot be cast to non-null type com.narvii.topic.model.discover.SerialRequestChild"

    .line 45
    .line 46
    .line 47
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    check-cast v2, Lcom/narvii/topic/model/discover/SerialRequestChild;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    return-object v0
.end method

.method private final isMainRequestBack()Z
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;->getSubRequestList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    return v2

    .line 13
    :cond_0
    const/4 v1, 0x3

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    move-result v3

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 21
    move-result v1

    .line 22
    const/4 v3, 0x0

    .line 23
    move v4, v3

    .line 24
    .line 25
    :goto_0
    if-ge v4, v1, :cond_2

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v5

    .line 30
    .line 31
    check-cast v5, Lcom/narvii/topic/model/discover/SubRequestHost;

    .line 32
    .line 33
    .line 34
    invoke-interface {v5}, Lcom/narvii/topic/model/discover/SubRequestHost;->isSubRequestFinish()Z

    .line 35
    move-result v5

    .line 36
    .line 37
    if-eqz v5, :cond_1

    .line 38
    return v2

    .line 39
    .line 40
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    return v3
.end method


# virtual methods
.method public addAdapter(ILcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;Z)V
    .locals 0
    .param p2    # Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(ILcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;Z)V

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p2, p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->setParentAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 10
    .line 11
    :goto_0
    instance-of p1, p2, Lcom/narvii/topic/model/discover/SerialRequestChild;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    move-object p1, p2

    .line 15
    .line 16
    check-cast p1, Lcom/narvii/topic/model/discover/SerialRequestChild;

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, p0}, Lcom/narvii/topic/model/discover/SerialRequestChild;->setSerialRequestParent(Lcom/narvii/topic/model/discover/SerialRequestParent;)V

    .line 20
    .line 21
    :cond_1
    instance-of p1, p2, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    check-cast p2, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;

    .line 26
    .line 27
    iget-object p1, p2, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 28
    .line 29
    instance-of p2, p1, Lcom/narvii/topic/model/discover/SerialRequestChild;

    .line 30
    .line 31
    if-eqz p2, :cond_2

    .line 32
    .line 33
    const-string p2, "null cannot be cast to non-null type com.narvii.topic.model.discover.SerialRequestChild"

    .line 34
    .line 35
    .line 36
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    check-cast p1, Lcom/narvii/topic/model/discover/SerialRequestChild;

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, p0}, Lcom/narvii/topic/model/discover/SerialRequestChild;->setSerialRequestParent(Lcom/narvii/topic/model/discover/SerialRequestParent;)V

    .line 42
    :cond_2
    return-void
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/master/home/discover/DiscoverFragment;->getErrorMsg()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getInnerSize()I
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;->getSubRequestList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    return v2

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    move-result v1

    .line 17
    move v3, v2

    .line 18
    .line 19
    :goto_0
    if-ge v2, v1, :cond_2

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v4

    .line 24
    .line 25
    check-cast v4, Lcom/narvii/topic/model/discover/SubRequestHost;

    .line 26
    .line 27
    .line 28
    invoke-interface {v4}, Lcom/narvii/topic/model/discover/SubRequestHost;->isSubRequestFinish()Z

    .line 29
    move-result v4

    .line 30
    .line 31
    if-eqz v4, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object v4

    .line 36
    .line 37
    check-cast v4, Lcom/narvii/topic/model/discover/SubRequestHost;

    .line 38
    .line 39
    .line 40
    invoke-interface {v4}, Lcom/narvii/topic/model/discover/SubRequestHost;->geSubResponseSize()I

    .line 41
    move-result v4

    .line 42
    add-int/2addr v3, v4

    .line 43
    .line 44
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    return v3
.end method

.method public final getSubRequestList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/topic/model/discover/SubRequestHost;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    check-cast v2, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 24
    .line 25
    instance-of v3, v2, Lcom/narvii/topic/model/discover/SubRequestHost;

    .line 26
    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    :cond_1
    instance-of v3, v2, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;

    .line 33
    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    check-cast v2, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;

    .line 37
    .line 38
    iget-object v2, v2, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 39
    .line 40
    instance-of v3, v2, Lcom/narvii/topic/model/discover/SubRequestHost;

    .line 41
    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    const-string v3, "null cannot be cast to non-null type com.narvii.topic.model.discover.SubRequestHost"

    .line 45
    .line 46
    .line 47
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    check-cast v2, Lcom/narvii/topic/model/discover/SubRequestHost;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    return-object v0
.end method

.method public isEmpty()Z
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/master/home/discover/DiscoverFragment;->getContentModuleListResponse()Lcom/narvii/topic/model/discover/ContentModuleListResponse;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/ContentModuleListResponse;->list()Ljava/util/List;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    check-cast v0, Ljava/util/Collection;

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    return v1

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;->getSubRequestList()Ljava/util/List;

    .line 28
    move-result-object v0

    .line 29
    move-object v2, v0

    .line 30
    .line 31
    check-cast v2, Ljava/util/Collection;

    .line 32
    .line 33
    .line 34
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 35
    move-result v2

    .line 36
    xor-int/2addr v2, v1

    .line 37
    const/4 v3, 0x0

    .line 38
    .line 39
    if-eqz v2, :cond_4

    .line 40
    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v2

    .line 48
    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v2

    .line 54
    .line 55
    check-cast v2, Lcom/narvii/topic/model/discover/SubRequestHost;

    .line 56
    .line 57
    .line 58
    invoke-interface {v2}, Lcom/narvii/topic/model/discover/SubRequestHost;->isEnd()Z

    .line 59
    move-result v4

    .line 60
    .line 61
    if-eqz v4, :cond_2

    .line 62
    .line 63
    .line 64
    invoke-interface {v2}, Lcom/narvii/topic/model/discover/SubRequestHost;->geSubResponseSize()I

    .line 65
    move-result v2

    .line 66
    .line 67
    if-lez v2, :cond_1

    .line 68
    :cond_2
    return v3

    .line 69
    :cond_3
    return v1

    .line 70
    :cond_4
    return v3
.end method

.method public isListShow()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/master/home/discover/DiscoverFragment;->getModuleConfigRequestFinished()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;->isMainRequestBack()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/master/home/discover/DiscoverFragment;->getModuleConfigRequest()Lcom/narvii/util/http/ApiRequest;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;->isMainRequestBack()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    :goto_1
    return v0
.end method

.method public isReadyToRequest(Lcom/narvii/topic/model/discover/SerialRequestChild;)Z
    .locals 4
    .param p1    # Lcom/narvii/topic/model/discover/SerialRequestChild;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;->getSerialRequestChildList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_3

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Lcom/narvii/topic/model/discover/SerialRequestChild;

    .line 21
    .line 22
    .line 23
    invoke-static {v1, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    move-result v2

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    goto :goto_0

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-interface {v1}, Lcom/narvii/topic/model/discover/SerialRequestChild;->isRequestFinished()Z

    .line 31
    move-result v2

    .line 32
    const/4 v3, 0x0

    .line 33
    .line 34
    if-nez v2, :cond_2

    .line 35
    return v3

    .line 36
    .line 37
    .line 38
    :cond_2
    invoke-interface {v1}, Lcom/narvii/topic/model/discover/SerialRequestChild;->responseSize()I

    .line 39
    move-result v2

    .line 40
    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    .line 44
    invoke-interface {v1}, Lcom/narvii/topic/model/discover/SerialRequestChild;->isVisibleToUser()Z

    .line 45
    move-result v1

    .line 46
    .line 47
    if-nez v1, :cond_0

    .line 48
    return v3

    .line 49
    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 50
    return p1
.end method

.method public notifyNextRequest(Lcom/narvii/topic/model/discover/SerialRequestChild;)V
    .locals 4
    .param p1    # Lcom/narvii/topic/model/discover/SerialRequestChild;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;->getSerialRequestChildList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/collections/t;->v0(Ljava/util/List;)Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-static {v1, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    goto :goto_1

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 21
    move-result p1

    .line 22
    .line 23
    add-int/lit8 p1, p1, 0x1

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 27
    move-result v1

    .line 28
    .line 29
    :goto_0
    if-ge p1, v1, :cond_2

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    check-cast v2, Lcom/narvii/topic/model/discover/SerialRequestChild;

    .line 36
    .line 37
    .line 38
    invoke-interface {v2}, Lcom/narvii/topic/model/discover/SerialRequestChild;->isRequestFinished()Z

    .line 39
    move-result v3

    .line 40
    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    add-int/lit8 p1, p1, 0x1

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    const-string v0, "notifyNewRequest "

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    const-string v0, "SerialRequest"

    .line 64
    .line 65
    .line 66
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-interface {v2}, Lcom/narvii/topic/model/discover/SerialRequestChild;->requestDataWhenReady()V

    .line 70
    :cond_2
    :goto_1
    return-void
.end method

.method public onErrorRetry()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->onErrorRetry()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1, v2, v2, v1}, Lcom/narvii/master/home/discover/DiscoverFragment;->sendModuleConfigRequest$default(Lcom/narvii/master/home/discover/DiscoverFragment;Lcom/narvii/paging/source/PageRequestCallback;ZILjava/lang/Object;)V

    .line 11
    return-void
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 1
    .param p2    # Lcom/narvii/paging/source/PageRequestCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    .line 3
    .line 4
    new-instance v0, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter$refresh$1;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, p2}, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter$refresh$1;-><init>(Lcom/narvii/paging/source/PageRequestCallback;)V

    .line 8
    const/4 p2, 0x1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0, p2}, Lcom/narvii/master/home/discover/DiscoverFragment;->sendModuleConfigRequest(Lcom/narvii/paging/source/PageRequestCallback;Z)V

    .line 12
    return-void
.end method
