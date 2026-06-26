.class public final Lcom/narvii/topic/model/discover/SerialRequestHelper;
.super Ljava/lang/Object;
.source "SerialRequestHelper.kt"


# instance fields
.field private final child:Lcom/narvii/topic/model/discover/SerialRequestChild;

.field private final ctx:Lcom/narvii/app/NVContext;

.field private isCurRequestFinished:Z

.field private isCurRequestSent:Z

.field private isItemShown:Z

.field private parent:Lcom/narvii/topic/model/discover/SerialRequestParent;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/SerialRequestChild;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    iput-object p2, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->child:Lcom/narvii/topic/model/discover/SerialRequestChild;

    return-void
.end method

.method private final dispatchRequestConditionChanged(Lcom/narvii/topic/model/discover/SerialRequestChild;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->parent:Lcom/narvii/topic/model/discover/SerialRequestParent;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/narvii/topic/model/discover/SerialRequestParent;->notifyNextRequest(Lcom/narvii/topic/model/discover/SerialRequestChild;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getChild()Lcom/narvii/topic/model/discover/SerialRequestChild;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->child:Lcom/narvii/topic/model/discover/SerialRequestChild;

    return-object v0
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getParent()Lcom/narvii/topic/model/discover/SerialRequestParent;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->parent:Lcom/narvii/topic/model/discover/SerialRequestParent;

    return-object v0
.end method

.method public final isCurRequestFinished()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isCurRequestFinished:Z

    return v0
.end method

.method public final isCurRequestSent()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isCurRequestSent:Z

    return v0
.end method

.method public final isItemShown()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isItemShown:Z

    return v0
.end method

.method public final isReadyToRequest()Z
    .locals 3

    .line 25
    iget-object v0, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->parent:Lcom/narvii/topic/model/discover/SerialRequestParent;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->child:Lcom/narvii/topic/model/discover/SerialRequestChild;

    invoke-interface {v0, v2}, Lcom/narvii/topic/model/discover/SerialRequestParent;->isReadyToRequest(Lcom/narvii/topic/model/discover/SerialRequestChild;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 26
    :goto_1
    iget-boolean v2, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isCurRequestSent:Z

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    .line 27
    iput-boolean v1, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isCurRequestSent:Z

    :cond_2
    return v0
.end method

.method public final isRequestFinished()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isCurRequestFinished:Z

    return v0
.end method

.method public final requestDataWhenReady()V
    .locals 3

    .line 69
    invoke-virtual {p0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isReadyToRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    instance-of v1, v0, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;

    if-eqz v1, :cond_0

    .line 71
    check-cast v0, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->loadInitData()V

    goto :goto_0

    .line 72
    :cond_0
    instance-of v1, v0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-eqz v1, :cond_1

    .line 73
    check-cast v0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final resetSerialRequestChild()V
    .locals 1

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isCurRequestFinished:Z

    .line 81
    iput-boolean v0, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isCurRequestSent:Z

    .line 82
    iput-boolean v0, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isItemShown:Z

    return-void
.end method

.method public final setCurRequestFinished(Z)V
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isCurRequestFinished:Z

    return-void
.end method

.method public final setCurRequestSent(Z)V
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isCurRequestSent:Z

    return-void
.end method

.method public final setItemShown()V
    .locals 2

    .line 45
    iget-boolean v0, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isItemShown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isItemShown:Z

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "item shown "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->child:Lcom/narvii/topic/model/discover/SerialRequestChild;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SerialRequest"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->child:Lcom/narvii/topic/model/discover/SerialRequestChild;

    invoke-direct {p0, v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->dispatchRequestConditionChanged(Lcom/narvii/topic/model/discover/SerialRequestChild;)V

    :cond_0
    return-void
.end method

.method public final setParent(Lcom/narvii/topic/model/discover/SerialRequestParent;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->parent:Lcom/narvii/topic/model/discover/SerialRequestParent;

    return-void
.end method

.method public final setRequestFinished(Lcom/narvii/topic/model/discover/ContentModule;)V
    .locals 2

    .line 37
    iget-boolean v0, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isCurRequestFinished:Z

    if-nez v0, :cond_1

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request finished "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/narvii/topic/model/discover/ContentModule;->dataUrl:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SerialRequest"

    invoke-static {v0, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isCurRequestFinished:Z

    .line 40
    iget-object p1, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->child:Lcom/narvii/topic/model/discover/SerialRequestChild;

    invoke-direct {p0, p1}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->dispatchRequestConditionChanged(Lcom/narvii/topic/model/discover/SerialRequestChild;)V

    :cond_1
    return-void
.end method

.method public final setSerialRequestParent(Lcom/narvii/topic/model/discover/SerialRequestParent;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->parent:Lcom/narvii/topic/model/discover/SerialRequestParent;

    return-void
.end method
