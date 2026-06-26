.class public abstract Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;
.super Lcom/narvii/widget/recycleview/viewholder/RecyclerViewAdriftAdapter;
.source "ModuleHorizontalBaseAdapter.kt"

# interfaces
.implements Lcom/narvii/topic/model/discover/SerialRequestChild;
.implements Lcom/narvii/topic/model/discover/SubRequestHost;


# instance fields
.field private adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

.field private final childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

.field private final contentModule:Lcom/narvii/topic/model/discover/ContentModule;

.field private final displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentModule"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1}, Lcom/narvii/widget/recycleview/viewholder/RecyclerViewAdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    iput-object p3, p0, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    .line 57
    new-instance p1, Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-direct {p1, p0, p0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/SerialRequestChild;)V

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    return-void
.end method


# virtual methods
.method public final getAdapter()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    return-object v0
.end method

.method public final getChildHelper()Lcom/narvii/topic/model/discover/SerialRequestHelper;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    return-object v0
.end method

.method public final getContentModule()Lcom/narvii/topic/model/discover/ContentModule;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    return-object v0
.end method

.method public final getDisplayConfig()Lcom/narvii/topic/ModuleDisplayConfig;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->displayConfig:Lcom/narvii/topic/ModuleDisplayConfig;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .line 18
    invoke-super {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set item shown "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->contentModule:Lcom/narvii/topic/model/discover/ContentModule;

    iget-object v1, v1, Lcom/narvii/topic/model/discover/ContentModule;->dataUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SerialRequest"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setItemShown()V

    :cond_0
    const-string v0, "result"

    .line 23
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public isEnd()Z
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->isSubRequestFinish()Z

    move-result v0

    return v0
.end method

.method public isListShow()Z
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->isListShow()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->isLoading()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public isReadyToRequest()Z
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isReadyToRequest()Z

    move-result v0

    return v0
.end method

.method public isRequestFinished()Z
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isRequestFinished()Z

    move-result v0

    return v0
.end method

.method public isSubRequestFinish()Z
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isRequestFinished()Z

    move-result v0

    return v0
.end method

.method public isVisibleToUser()Z
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isItemShown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 1

    .line 27
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    .line 28
    iget-object p2, p0, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-eqz p2, :cond_0

    or-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    :cond_0
    return-void
.end method

.method public requestDataWhenReady()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->requestDataWhenReady()V

    return-void
.end method

.method public resetEmptyList()V
    .locals 1

    .line 48
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->resetEmptyList()V

    .line 49
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->resetSerialRequestChild()V

    return-void
.end method

.method public resetList()V
    .locals 1

    .line 53
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->resetList()V

    .line 54
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->resetSerialRequestChild()V

    return-void
.end method

.method public final setAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->adapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    return-void
.end method

.method public setSerialRequestParent(Lcom/narvii/topic/model/discover/SerialRequestParent;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/ModuleHorizontalBaseAdapter;->childHelper:Lcom/narvii/topic/model/discover/SerialRequestHelper;

    invoke-virtual {v0, p1}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->setSerialRequestParent(Lcom/narvii/topic/model/discover/SerialRequestParent;)V

    return-void
.end method
