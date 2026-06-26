.class public abstract Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "NVRecyclerViewBaseAdapter.java"

# interfaces
.implements Lcom/narvii/logging/Area;
.implements Lcom/narvii/app/NVContext;
.implements Lcom/narvii/app/NVInteractionScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;
    }
.end annotation


# instance fields
.field protected attached:Z

.field protected context:Lcom/narvii/app/NVContext;

.field protected dataSetEventDispatcher:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mainIpc:Lcom/narvii/logging/Impression/ImpressionCollector;

.field protected parentAdapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

.field protected recyclerView:Landroid/support/v7/widget/RecyclerView;

.field public final subviewClickListener:Landroid/view/View$OnClickListener;

.field public final subviewLongClickListener:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 58
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dataSetEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 172
    new-instance v0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$1;

    invoke-direct {v0, p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$1;-><init>(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    iput-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 179
    new-instance v0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$2;

    invoke-direct {v0, p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$2;-><init>(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V

    iput-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 70
    iput-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    return-void
.end method


# virtual methods
.method public addDataSetChangeListener(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dataSetEventDispatcher:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    return-void
.end method

.method public addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V
    .locals 1

    const/4 v0, 0x1

    .line 245
    invoke-virtual {p0, p1, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;Z)V

    return-void
.end method

.method public addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 253
    iget-object p2, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->mainIpc:Lcom/narvii/logging/Impression/ImpressionCollector;

    if-nez p2, :cond_1

    .line 254
    iput-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->mainIpc:Lcom/narvii/logging/Impression/ImpressionCollector;

    goto :goto_0

    :cond_1
    const-string p2, "already have a main impression collector"

    .line 256
    invoke-static {p2}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 259
    :cond_2
    :goto_0
    invoke-virtual {p1, p0}, Lcom/narvii/logging/Impression/ImpressionCollector;->setAdapter(Lcom/narvii/logging/Area;)V

    .line 260
    iget-object p2, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    instance-of p2, p2, Lcom/narvii/paging/NVRecyclerViewFragment;

    if-eqz p2, :cond_3

    .line 261
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->noImpression()Z

    move-result p2

    if-nez p2, :cond_4

    .line 262
    iget-object p2, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    check-cast p2, Lcom/narvii/paging/NVRecyclerViewFragment;

    invoke-virtual {p2, p1}, Lcom/narvii/paging/NVRecyclerViewFragment;->addImpressionCollectorInListView(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    goto :goto_1

    :cond_3
    const-string/jumbo p1, "parent context is not NVRecyclerViewFragment"

    .line 265
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public dispatchLoginResult(ZLandroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-string v1, "__adapter"

    .line 422
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "__adapterClass"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 424
    invoke-virtual {p0, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onLoginResult(ZLandroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public dispatchOnItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 223
    instance-of v0, p3, Lcom/narvii/model/StrategyObject;

    if-eqz v0, :cond_0

    .line 224
    move-object v0, p3

    check-cast v0, Lcom/narvii/model/StrategyObject;

    invoke-interface {v0}, Lcom/narvii/model/StrategyObject;->getStrategyInfo()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/narvii/logging/LogUtils;->nextPageStrategyInfo:Ljava/lang/String;

    .line 226
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public ensureLogin(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2

    .line 410
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    instance-of v0, v0, Lcom/narvii/paging/NVRecyclerViewFragment;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const-string v1, "__adapter"

    .line 411
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 413
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "__adapterClass"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    check-cast v0, Lcom/narvii/paging/NVRecyclerViewFragment;

    .line 415
    invoke-virtual {v0, p1, p2}, Lcom/narvii/app/NVFragment;->ensureLogin(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    .line 417
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "context is not NVListFragment"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getClickEventBuilder(Lcom/narvii/logging/Impression/ImpressionCollector;Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 2

    .line 292
    invoke-virtual {p0, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getImpressionObjectInfo(Lcom/narvii/logging/Impression/ImpressionCollector;Ljava/lang/Object;)Lcom/narvii/logging/ObjectInfo;

    move-result-object v0

    .line 293
    invoke-static {p0}, Lcom/narvii/logging/LogEvent;->builder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/narvii/logging/LogEvent$Builder;->objectInfo(Lcom/narvii/logging/ObjectInfo;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/logging/LogEvent$Builder;->actClick()Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p3

    if-nez v0, :cond_0

    .line 294
    instance-of v1, p2, Lcom/narvii/model/NVObject;

    if-eqz v1, :cond_0

    .line 295
    check-cast p2, Lcom/narvii/model/NVObject;

    invoke-virtual {p3, p2}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    :cond_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 298
    invoke-virtual {p1, p3, v0}, Lcom/narvii/logging/Impression/ImpressionCollector;->completeImpressionLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V

    :cond_1
    return-object p3
.end method

.method protected getClickEventBuilder(Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 304
    invoke-virtual {p0, p1, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getClickEventBuilder(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method protected getClickEventBuilder(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->mainIpc:Lcom/narvii/logging/Impression/ImpressionCollector;

    invoke-virtual {p0, v0, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getClickEventBuilder(Lcom/narvii/logging/Impression/ImpressionCollector;Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getContextId()J
    .locals 2

    .line 364
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContextId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getImpressionObjectInfo(Lcom/narvii/logging/Impression/ImpressionCollector;Ljava/lang/Object;)Lcom/narvii/logging/ObjectInfo;
    .locals 1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    .line 278
    invoke-virtual {p1, p2}, Lcom/narvii/logging/Impression/ImpressionCollector;->getImpressionObjectInfo(Ljava/lang/Object;)Lcom/narvii/logging/ObjectInfo;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method protected getImpressionObjectInfo(Ljava/lang/Object;)Lcom/narvii/logging/ObjectInfo;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->mainIpc:Lcom/narvii/logging/Impression/ImpressionCollector;

    invoke-virtual {p0, v0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getImpressionObjectInfo(Lcom/narvii/logging/Impression/ImpressionCollector;Ljava/lang/Object;)Lcom/narvii/logging/ObjectInfo;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 2

    .line 405
    invoke-virtual {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 406
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    :goto_0
    return-wide v0
.end method

.method public getParentAdapter()Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->parentAdapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    return-object v0
.end method

.method public getParentContext()Lcom/narvii/app/NVContext;
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public getService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0, p1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSize()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isDarkTheme()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 114
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGlobalInteractionScope()Z
    .locals 2

    .line 382
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    instance-of v1, v0, Lcom/narvii/app/NVInteractionScope;

    if-eqz v1, :cond_0

    .line 383
    check-cast v0, Lcom/narvii/app/NVInteractionScope;

    invoke-interface {v0}, Lcom/narvii/app/NVInteractionScope;->isGlobalInteractionScope()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isListShow()Z
    .locals 1

    .line 124
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isLoading()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public logClickEvent(Lcom/narvii/logging/ActSemantic;)V
    .locals 1

    const/4 v0, 0x0

    .line 328
    invoke-virtual {p0, p1, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->logClickEvent(Lcom/narvii/logging/ActSemantic;Z)V

    return-void
.end method

.method public logClickEvent(Lcom/narvii/logging/ActSemantic;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 333
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->logClickEvent(Lcom/narvii/logging/ActSemantic;ZZ)V

    return-void
.end method

.method public logClickEvent(Lcom/narvii/logging/ActSemantic;ZZ)V
    .locals 0

    .line 337
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 339
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->toThirdParty()Lcom/narvii/logging/LogEvent$Builder;

    :cond_0
    if-eqz p3, :cond_1

    .line 341
    iget-object p2, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->mainIpc:Lcom/narvii/logging/Impression/ImpressionCollector;

    if-eqz p2, :cond_1

    const/4 p3, 0x0

    .line 342
    invoke-virtual {p2, p1, p3}, Lcom/narvii/logging/Impression/ImpressionCollector;->completeImpressionLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V

    .line 344
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method

.method public logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V
    .locals 1

    const/4 v0, 0x0

    .line 308
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;Z)V

    return-void
.end method

.method public logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;Z)V
    .locals 0

    .line 312
    invoke-virtual {p0, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getClickEventBuilder(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 314
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->toThirdParty()Lcom/narvii/logging/LogEvent$Builder;

    .line 316
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method

.method public logClickEventAttachObject(Lcom/narvii/model/NVObject;Lcom/narvii/logging/ActSemantic;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 324
    :cond_0
    invoke-static {p0, p2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method

.method protected noImpression()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAttach()V
    .locals 3

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->attached:Z

    .line 80
    instance-of v0, p0, Lcom/narvii/notification/NotificationListener;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    const-string v1, "notification"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 82
    iget-object v1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    move-object v2, p0

    check-cast v2, Lcom/narvii/notification/NotificationListener;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/notification/NotificationCenter;->registerListener(Lcom/narvii/app/NVContext;Lcom/narvii/notification/NotificationListener;)V

    :cond_0
    return-void
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 168
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 169
    iput-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method

.method public onDetach()V
    .locals 4

    .line 87
    instance-of v0, p0, Lcom/narvii/notification/NotificationListener;

    if-eqz v0, :cond_4

    .line 88
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    const-string v1, "notification"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 90
    iget-object v1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 92
    instance-of v3, v1, Lcom/narvii/app/NVFragment;

    if-eqz v3, :cond_0

    .line 93
    check-cast v1, Lcom/narvii/app/NVFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->isFinishing()Z

    move-result v1

    goto :goto_1

    .line 96
    :cond_0
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_3

    .line 100
    iget-object v1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 101
    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_2

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 103
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-virtual {v0, v2, v1}, Lcom/narvii/notification/NotificationCenter;->unregisterListener(Lcom/narvii/app/NVContext;Z)V

    :cond_4
    return-void
.end method

.method public onErrorRetry()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 128
    invoke-virtual {p0, v0, v1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    return-void
.end method

.method public onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onLoginResult(ZLandroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 432
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "openHangout"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "intent"

    .line 433
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 434
    invoke-virtual {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onLongClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 1

    .line 50
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method protected onSubviewClick(Landroid/view/View;Z)Z
    .locals 9

    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    move-object v7, p1

    move-object v2, v0

    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x8

    const/4 v4, 0x1

    if-ge v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    and-int/2addr v3, v4

    if-eqz v3, :cond_8

    .line 190
    instance-of v3, v2, Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_7

    .line 191
    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    .line 192
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eq v0, p0, :cond_2

    .line 193
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-eqz v0, :cond_2

    .line 194
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onSubviewClick(Landroid/view/View;Z)Z

    move-result p1

    return p1

    .line 197
    :cond_2
    invoke-virtual {v2, v7}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v5

    const/4 v0, -0x1

    if-ne v5, v0, :cond_3

    return v1

    .line 202
    :cond_3
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    if-eqz v0, :cond_6

    .line 203
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    .line 204
    invoke-virtual {v4, v5}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz p2, :cond_4

    move-object v3, p0

    move-object v8, p1

    .line 206
    invoke-virtual/range {v3 .. v8}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onLongClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_4
    if-eq p1, v7, :cond_5

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    :goto_3
    move-object v8, p1

    move-object v3, p0

    .line 208
    invoke-virtual/range {v3 .. v8}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dispatchOnItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_6
    return v1

    .line 214
    :cond_7
    move-object v7, v2

    check-cast v7, Landroid/view/View;

    .line 215
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    return v1
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 109
    invoke-interface {p2, p1}, Lcom/narvii/paging/source/PageRequestCallback;->onPageRequestFinished(I)V

    :cond_0
    return-void
.end method

.method public removeDataSetChangeListener(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dataSetEventDispatcher:Lcom/narvii/util/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public resetEmptyList()V
    .locals 0

    return-void
.end method

.method public resetList()V
    .locals 0

    return-void
.end method

.method public setParentAdapter(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->parentAdapter:Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected tagCellForLog(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 376
    :cond_0
    invoke-static {p1, p2}, Lcom/narvii/logging/LogUtils;->setAttachedObject(Landroid/view/View;Ljava/lang/Object;)V

    .line 377
    invoke-static {p1, p0}, Lcom/narvii/logging/LogUtils;->setShownInAdapter(Landroid/view/View;Lcom/narvii/logging/Area;)V

    return-void
.end method
