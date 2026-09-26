.class public abstract Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;
.super Lcom/narvii/widget/recycleview/viewholder/RecyclerViewAdriftAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/topic/model/discover/SerialRequestChild;
.implements Lcom/narvii/topic/model/discover/SubRequestHost;


# instance fields
.field private adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final contentModule:Lcom/narvii/topic/model/discover/ContentModule;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/topic/model/discover/ContentModule;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/topic/ModuleDisplayConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "contentModule"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/narvii/widget/recycleview/viewholder/RecyclerViewAdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 14
    .line 15
    iput-object p2, p0, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    .line 16
    .line 17
    iput-object p3, p0, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    .line 18
    .line 19
    new-instance p1, Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, p0, p0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/SerialRequestChild;)V

    .line 23
    .line 24
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 25
    return-void
.end method


# virtual methods
.method public final getAdapter()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    return-object v0
.end method

.method public final getChildHelper()Lcom/narvii/topic/model/discover/SerialRequestHelper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    return-object v0
.end method

.method public final getContentModule()Lcom/narvii/topic/model/discover/ContentModule;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    return-object v0
.end method

.method public final getDisplayConfig()Lcom/narvii/topic/ModuleDisplayConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getErrorMessage()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/narvii/topic/model/discover/ContentModule;->dataUrl:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    const-string v2, "set item shown "

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v2, " , "

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    const-string v1, "SerialRequest"

    .line 38
    .line 39
    .line 40
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setItemShown()V

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 49
    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->isEmpty()Z

    .line 11
    move-result v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    :goto_0
    return v0
.end method

.method public isEnd()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->isSubRequestFinish()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public isListShow()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->isListShow()Z

    .line 11
    move-result v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->isLoading()Z

    .line 11
    move-result v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    :goto_0
    return v0
.end method

.method public isReadyToRequest()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isReadyToRequest()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isRequestFinished()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

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
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

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
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->getErrorMessage()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

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

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 1
    .param p2    # Lcom/narvii/paging/source/PageRequestCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    .line 4
    .line 5
    iget-object p2, p0, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    or-int/lit8 p1, p1, 0x1

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, p1, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    .line 14
    :cond_0
    return-void
.end method

.method public requestDataWhenReady()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

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
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->resetEmptyList()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

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
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->resetList()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->resetSerialRequestChild()V

    .line 9
    return-void
.end method

.method public final setAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V
    .locals 0
    .param p1    # Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    return-void
.end method

.method public setSerialRequestParent(Lcom/narvii/topic/model/discover/SerialRequestParent;)V
    .locals 1
    .param p1    # Lcom/narvii/topic/model/discover/SerialRequestParent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setSerialRequestParent(Lcom/narvii/topic/model/discover/SerialRequestParent;)V

    .line 6
    return-void
.end method
