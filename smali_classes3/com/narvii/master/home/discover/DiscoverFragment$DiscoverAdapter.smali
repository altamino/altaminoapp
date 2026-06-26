.class public final Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;
.super Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;
.source "DiscoverFragment.kt"

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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDiscoverFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverFragment.kt\ncom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter\n*L\n1#1,616:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/discover/DiscoverFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/discover/DiscoverFragment;Lcom/narvii/app/NVContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    invoke-direct {p0, p2}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 p1, 0x1

    .line 170
    iput-boolean p1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->dynamicalMode:Z

    .line 171
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public addAdapter(ILcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;Z)V
    .locals 0

    .line 219
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->addAdapter(ILcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;Z)V

    if-eqz p2, :cond_0

    .line 220
    invoke-virtual {p2, p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->setParentAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    .line 221
    :cond_0
    instance-of p1, p2, Lcom/narvii/topic/model/discover/SerialRequestChild;

    if-eqz p1, :cond_1

    .line 222
    move-object p1, p2

    check-cast p1, Lcom/narvii/topic/model/discover/SerialRequestChild;

    invoke-interface {p1, p0}, Lcom/narvii/topic/model/discover/SerialRequestChild;->setSerialRequestParent(Lcom/narvii/topic/model/discover/SerialRequestParent;)V

    .line 224
    :cond_1
    instance-of p1, p2, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;

    if-eqz p1, :cond_3

    .line 225
    check-cast p2, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;

    iget-object p1, p2, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    instance-of p2, p1, Lcom/narvii/topic/model/discover/SerialRequestChild;

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    .line 226
    check-cast p1, Lcom/narvii/topic/model/discover/SerialRequestChild;

    invoke-interface {p1, p0}, Lcom/narvii/topic/model/discover/SerialRequestChild;->setSerialRequestParent(Lcom/narvii/topic/model/discover/SerialRequestParent;)V

    goto :goto_0

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.narvii.topic.model.discover.SerialRequestChild"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    invoke-virtual {v0}, Lcom/narvii/master/home/discover/DiscoverFragment;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getInnerSize()I
    .locals 5

    .line 306
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;->getSubRequestList()Ljava/util/List;

    move-result-object v0

    .line 307
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 312
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 313
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/topic/model/discover/SubRequestHost;

    invoke-interface {v4}, Lcom/narvii/topic/model/discover/SubRequestHost;->isSubRequestFinish()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 314
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/topic/model/discover/SubRequestHost;

    invoke-interface {v4}, Lcom/narvii/topic/model/discover/SubRequestHost;->geSubResponseSize()I

    move-result v4

    add-int/2addr v3, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public final getSerialRequestChildList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/topic/model/discover/SerialRequestChild;",
            ">;"
        }
    .end annotation

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 265
    iget-object v1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 266
    instance-of v3, v2, Lcom/narvii/topic/model/discover/SerialRequestChild;

    if-eqz v3, :cond_1

    .line 267
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_1
    instance-of v3, v2, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;

    if-eqz v3, :cond_0

    .line 270
    check-cast v2, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;

    iget-object v2, v2, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    instance-of v3, v2, Lcom/narvii/topic/model/discover/SerialRequestChild;

    if-eqz v3, :cond_0

    if-eqz v2, :cond_2

    .line 271
    check-cast v2, Lcom/narvii/topic/model/discover/SerialRequestChild;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.narvii.topic.model.discover.SerialRequestChild"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-object v0
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

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 279
    iget-object v1, p0, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 280
    instance-of v3, v2, Lcom/narvii/topic/model/discover/SubRequestHost;

    if-eqz v3, :cond_1

    .line 281
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_1
    instance-of v3, v2, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;

    if-eqz v3, :cond_0

    .line 284
    check-cast v2, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;

    iget-object v2, v2, Lcom/narvii/paging/adapter/RecyclerViewProxyAdapter;->wrapped:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    instance-of v3, v2, Lcom/narvii/topic/model/discover/SubRequestHost;

    if-eqz v3, :cond_0

    if-eqz v2, :cond_2

    .line 285
    check-cast v2, Lcom/narvii/topic/model/discover/SubRequestHost;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.narvii.topic.model.discover.SubRequestHost"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-object v0
.end method

.method public isEmpty()Z
    .locals 7

    .line 202
    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    invoke-virtual {v0}, Lcom/narvii/master/home/discover/DiscoverFragment;->getContentModuleListResponse()Lcom/narvii/topic/model/discover/ContentModuleListResponse;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/narvii/topic/model/discover/ContentModuleListResponse;->list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

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
    if-ne v0, v2, :cond_2

    return v2

    .line 205
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;->getSubRequestList()Ljava/util/List;

    move-result-object v0

    .line 206
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    if-eqz v3, :cond_6

    .line 207
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_5

    .line 208
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/topic/model/discover/SubRequestHost;

    .line 209
    invoke-interface {v5}, Lcom/narvii/topic/model/discover/SubRequestHost;->isEnd()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Lcom/narvii/topic/model/discover/SubRequestHost;->geSubResponseSize()I

    move-result v5

    if-lez v5, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return v1

    :cond_5
    return v2

    :cond_6
    return v1
.end method

.method public isListShow()Z
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    invoke-virtual {v0}, Lcom/narvii/master/home/discover/DiscoverFragment;->getModuleConfigRequestFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;->isMainRequestBack()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    invoke-virtual {v0}, Lcom/narvii/master/home/discover/DiscoverFragment;->getModuleConfigRequest()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;->isMainRequestBack()Z

    move-result v0

    if-nez v0, :cond_0

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

.method public final isMainRequestBack()Z
    .locals 6

    .line 292
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;->getSubRequestList()Ljava/util/List;

    move-result-object v0

    .line 293
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x3

    .line 297
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    .line 298
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/topic/model/discover/SubRequestHost;

    invoke-interface {v5}, Lcom/narvii/topic/model/discover/SubRequestHost;->isSubRequestFinish()Z

    move-result v5

    if-eqz v5, :cond_1

    return v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public isReadyToRequest(Lcom/narvii/topic/model/discover/SerialRequestChild;)Z
    .locals 4

    .line 231
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;->getSerialRequestChildList()Ljava/util/List;

    move-result-object v0

    .line 232
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/topic/model/discover/SerialRequestChild;

    .line 233
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 236
    :cond_1
    invoke-interface {v1}, Lcom/narvii/topic/model/discover/SerialRequestChild;->isRequestFinished()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    return v3

    .line 239
    :cond_2
    invoke-interface {v1}, Lcom/narvii/topic/model/discover/SerialRequestChild;->responseSize()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/narvii/topic/model/discover/SerialRequestChild;->isVisibleToUser()Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public notifyNextRequest(Lcom/narvii/topic/model/discover/SerialRequestChild;)V
    .locals 4

    .line 247
    invoke-virtual {p0}, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;->getSerialRequestChildList()Ljava/util/List;

    move-result-object v0

    if-eqz p1, :cond_2

    .line 248
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/topic/model/discover/SerialRequestChild;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 251
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 252
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge p1, v1, :cond_2

    .line 253
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/topic/model/discover/SerialRequestChild;

    .line 254
    invoke-interface {v2}, Lcom/narvii/topic/model/discover/SerialRequestChild;->isRequestFinished()Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 257
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyNewRequest "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SerialRequest"

    invoke-static {v0, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-interface {v2}, Lcom/narvii/topic/model/discover/SerialRequestChild;->requestDataWhenReady()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onErrorRetry()V
    .locals 3

    .line 175
    invoke-super {p0}, Lcom/narvii/paging/adapter/RecyclerViewMergeAdapter;->onErrorRetry()V

    .line 176
    iget-object v0, p0, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v1, v2}, Lcom/narvii/master/home/discover/DiscoverFragment;->sendModuleConfigRequest$default(Lcom/narvii/master/home/discover/DiscoverFragment;Lcom/narvii/paging/source/PageRequestCallback;ZILjava/lang/Object;)V

    return-void
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 1

    .line 184
    iget-object p1, p0, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter;->this$0:Lcom/narvii/master/home/discover/DiscoverFragment;

    new-instance v0, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter$refresh$1;

    invoke-direct {v0, p2}, Lcom/narvii/master/home/discover/DiscoverFragment$DiscoverAdapter$refresh$1;-><init>(Lcom/narvii/paging/source/PageRequestCallback;)V

    const/4 p2, 0x1

    invoke-virtual {p1, v0, p2}, Lcom/narvii/master/home/discover/DiscoverFragment;->sendModuleConfigRequest(Lcom/narvii/paging/source/PageRequestCallback;Z)V

    return-void
.end method
