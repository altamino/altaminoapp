.class public final Lcom/narvii/topic/model/discover/SerialRequestHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final child:Lcom/narvii/topic/model/discover/SerialRequestChild;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ctx:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isCurRequestFinished:Z

.field private isCurRequestSent:Z

.field private isItemShown:Z

.field private parent:Lcom/narvii/topic/model/discover/SerialRequestParent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/SerialRequestChild;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/topic/model/discover/SerialRequestChild;
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
    const-string v0, "child"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->child:Lcom/narvii/topic/model/discover/SerialRequestChild;

    .line 18
    return-void
.end method

.method private final dispatchRequestConditionChanged(Lcom/narvii/topic/model/discover/SerialRequestChild;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->parent:Lcom/narvii/topic/model/discover/SerialRequestParent;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/narvii/topic/model/discover/SerialRequestParent;->notifyNextRequest(Lcom/narvii/topic/model/discover/SerialRequestChild;)V

    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public final getChild()Lcom/narvii/topic/model/discover/SerialRequestChild;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->child:Lcom/narvii/topic/model/discover/SerialRequestChild;

    return-object v0
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getParent()Lcom/narvii/topic/model/discover/SerialRequestParent;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->parent:Lcom/narvii/topic/model/discover/SerialRequestParent;

    return-object v0
.end method

.method public final isCurRequestFinished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isCurRequestFinished:Z

    return v0
.end method

.method public final isCurRequestSent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isCurRequestSent:Z

    return v0
.end method

.method public final isItemShown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isItemShown:Z

    return v0
.end method

.method public final isReadyToRequest()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->parent:Lcom/narvii/topic/model/discover/SerialRequestParent;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v2, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->child:Lcom/narvii/topic/model/discover/SerialRequestChild;

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v2}, Lcom/narvii/topic/model/discover/SerialRequestParent;->isReadyToRequest(Lcom/narvii/topic/model/discover/SerialRequestChild;)Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    move v0, v1

    .line 20
    .line 21
    :goto_1
    iget-boolean v2, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isCurRequestSent:Z

    .line 22
    .line 23
    if-nez v2, :cond_2

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iput-boolean v1, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isCurRequestSent:Z

    .line 28
    :cond_2
    return v0
.end method

.method public final isRequestFinished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isCurRequestFinished:Z

    return v0
.end method

.method public final requestDataWhenReady()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isReadyToRequest()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 9
    .line 10
    instance-of v1, v0, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->loadInitData()V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    instance-of v1, v0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    check-cast v0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 25
    const/4 v1, 0x0

    .line 26
    const/4 v2, 0x0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method public final resetSerialRequestChild()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isCurRequestFinished:Z

    iput-boolean v0, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isCurRequestSent:Z

    iput-boolean v0, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isItemShown:Z

    return-void
.end method

.method public final setCurRequestFinished(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isCurRequestFinished:Z

    return-void
.end method

.method public final setCurRequestSent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isCurRequestSent:Z

    return-void
.end method

.method public final setItemShown()V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isItemShown:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isItemShown:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->child:Lcom/narvii/topic/model/discover/SerialRequestChild;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    const-string v2, "item shown "

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    const-string v1, "SerialRequest"

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->child:Lcom/narvii/topic/model/discover/SerialRequestChild;

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, v0}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->dispatchRequestConditionChanged(Lcom/narvii/topic/model/discover/SerialRequestChild;)V

    .line 37
    :cond_0
    return-void
.end method

.method public final setParent(Lcom/narvii/topic/model/discover/SerialRequestParent;)V
    .locals 0
    .param p1    # Lcom/narvii/topic/model/discover/SerialRequestParent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->parent:Lcom/narvii/topic/model/discover/SerialRequestParent;

    return-void
.end method

.method public final setRequestFinished(Lcom/narvii/topic/model/discover/ContentModule;)V
    .locals 2
    .param p1    # Lcom/narvii/topic/model/discover/ContentModule;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isCurRequestFinished:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p1, Lcom/narvii/topic/model/discover/ContentModule;->dataUrl:Ljava/lang/String;

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    .line 12
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    const-string v1, "request finished "

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    const-string v0, "SerialRequest"

    .line 30
    .line 31
    .line 32
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const/4 p1, 0x1

    .line 34
    .line 35
    iput-boolean p1, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->isCurRequestFinished:Z

    .line 36
    .line 37
    iget-object p1, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->child:Lcom/narvii/topic/model/discover/SerialRequestChild;

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, p1}, Lcom/narvii/topic/model/discover/SerialRequestHelper;->dispatchRequestConditionChanged(Lcom/narvii/topic/model/discover/SerialRequestChild;)V

    .line 41
    :cond_1
    return-void
.end method

.method public final setSerialRequestParent(Lcom/narvii/topic/model/discover/SerialRequestParent;)V
    .locals 0
    .param p1    # Lcom/narvii/topic/model/discover/SerialRequestParent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/topic/model/discover/SerialRequestHelper;->parent:Lcom/narvii/topic/model/discover/SerialRequestParent;

    return-void
.end method
