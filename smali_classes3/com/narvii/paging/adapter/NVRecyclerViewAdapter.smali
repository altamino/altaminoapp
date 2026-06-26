.class public abstract Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;
.super Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
.source "NVRecyclerViewAdapter.java"

# interfaces
.implements Lcom/narvii/paging/source/DataSourceChangeListener;
.implements Lcom/narvii/paging/source/DataSourceRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/paging/adapter/NVRecyclerViewAdapter$Action;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/narvii/model/NVObject;",
        ">",
        "Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;",
        "Lcom/narvii/paging/source/DataSourceChangeListener;",
        "Lcom/narvii/paging/source/DataSourceRefreshListener;"
    }
.end annotation


# static fields
.field public static final ACTION_DELETE:Ljava/lang/String; = "delete"

.field public static final ACTION_NEW:Ljava/lang/String; = "new"

.field public static final ACTION_UPDATE:Ljava/lang/String; = "update"


# instance fields
.field protected dataSource:Lcom/narvii/paging/source/DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/paging/source/DataSource<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/paging/source/DataSource;)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/paging/source/DataSource;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    if-eqz p2, :cond_0

    .line 33
    invoke-virtual {p2, p1}, Lcom/narvii/paging/source/DataSource;->setContext(Lcom/narvii/app/NVContext;)V

    :cond_0
    if-nez p2, :cond_1

    .line 35
    invoke-virtual {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->createDataSource(Lcom/narvii/app/NVContext;)Lcom/narvii/paging/source/DataSource;

    move-result-object p2

    :cond_1
    iput-object p2, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    .line 36
    iget-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    if-eqz p1, :cond_2

    return-void

    .line 37
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "no data source init in this adapter"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic lambda$onPageListChanged$0(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V
    .locals 0

    .line 138
    invoke-interface {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;->onDataSetChanged()V

    return-void
.end method

.method static synthetic lambda$onPageLoadStatusChanged$1(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V
    .locals 0

    .line 144
    invoke-interface {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;->onDataSetChanged()V

    return-void
.end method


# virtual methods
.method protected autoLoadInitData()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public autoLoadNextPage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract createDataSource(Lcom/narvii/app/NVContext;)Lcom/narvii/paging/source/DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")",
            "Lcom/narvii/paging/source/DataSource<",
            "TT;>;"
        }
    .end annotation
.end method

.method public editDataSource(Ljava/lang/String;Lcom/narvii/model/NVObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "new"

    .line 195
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    iget-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    invoke-virtual {p1}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    .line 197
    invoke-virtual {p1}, Lcom/narvii/paging/source/DataSource;->getPageStorage()Lcom/narvii/paging/storage/PageStorage;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/narvii/paging/storage/PageStorage;->getPosition(Lcom/narvii/model/NVObject;)I

    move-result p1

    if-gez p1, :cond_5

    .line 198
    iget-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/narvii/paging/source/DataSource;->prependData(Lcom/narvii/model/NVObject;Lcom/narvii/paging/storage/PageOperationCallback;)V

    .line 199
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    const-string v0, "delete"

    .line 201
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    iget-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    invoke-virtual {p1, p2}, Lcom/narvii/paging/source/DataSource;->removeData(Lcom/narvii/model/NVObject;)I

    move-result p1

    if-gez p1, :cond_2

    return-void

    .line 206
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_3
    const-string v0, "update"

    .line 207
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 208
    iget-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    invoke-virtual {p1, p2}, Lcom/narvii/paging/source/DataSource;->updateItem(Lcom/narvii/model/NVObject;)I

    move-result p1

    if-gez p1, :cond_4

    return-void

    .line 212
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_5
    :goto_0
    return-void
.end method

.method public getDataSource()Lcom/narvii/paging/source/DataSource;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getPageLoadState()Lcom/narvii/paging/state/PageLoadState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/paging/state/PageLoadState;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getPageLoadState()Lcom/narvii/paging/state/PageLoadState;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/paging/state/PageLoadState;->errorMessage:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItem(I)Lcom/narvii/model/NVObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    invoke-virtual {v0, p1}, Lcom/narvii/paging/source/DataSource;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 132
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->getSize()I

    move-result v0

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getSize()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getPageLoadState()Lcom/narvii/paging/state/PageLoadState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/paging/state/PageLoadState;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->isEmpty()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isListShow()Z
    .locals 1

    .line 171
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->getSize()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->getPageLoadState()Lcom/narvii/paging/state/PageLoadState;

    move-result-object v0

    iget v0, v0, Lcom/narvii/paging/state/PageLoadState;->status:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAttach()V
    .locals 1

    .line 44
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onAttach()V

    .line 45
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0, p0}, Lcom/narvii/paging/source/DataSource;->addDataSourceChangeListener(Lcom/narvii/paging/source/DataSourceChangeListener;)V

    .line 47
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    invoke-virtual {v0, p0}, Lcom/narvii/paging/source/DataSource;->addDataSourceRefreshListener(Lcom/narvii/paging/source/DataSourceRefreshListener;)V

    .line 48
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->autoLoadInitData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->loadInitData()V

    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 82
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onDetach()V

    .line 83
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0, p0}, Lcom/narvii/paging/source/DataSource;->removeDataSourceChangeListener(Lcom/narvii/paging/source/DataSourceChangeListener;)V

    .line 85
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    invoke-virtual {v0, p0}, Lcom/narvii/paging/source/DataSource;->removeDataSourceRefreshListener(Lcom/narvii/paging/source/DataSourceRefreshListener;)V

    :cond_0
    return-void
.end method

.method public onErrorRetry()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->onErrorRetry()V

    :cond_0
    return-void
.end method

.method public onPageListChanged(Lcom/narvii/paging/storage/PageStorage;)V
    .locals 1

    .line 137
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 138
    iget-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dataSetEventDispatcher:Lcom/narvii/util/EventDispatcher;

    sget-object v0, Lcom/narvii/paging/adapter/-$$Lambda$NVRecyclerViewAdapter$aOS2opYbAs8_HXWDVnFZSkyrS0k;->INSTANCE:Lcom/narvii/paging/adapter/-$$Lambda$NVRecyclerViewAdapter$aOS2opYbAs8_HXWDVnFZSkyrS0k;

    invoke-virtual {p1, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public onPageLoadStatusChanged()V
    .locals 2

    .line 143
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 144
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dataSetEventDispatcher:Lcom/narvii/util/EventDispatcher;

    sget-object v1, Lcom/narvii/paging/adapter/-$$Lambda$NVRecyclerViewAdapter$a66cyfK4xGc9VKjjH3h3TGOE69Q;->INSTANCE:Lcom/narvii/paging/adapter/-$$Lambda$NVRecyclerViewAdapter$a66cyfK4xGc9VKjjH3h3TGOE69Q;

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public onRefreshFinishedBeforePageResponse(I)V
    .locals 1

    .line 231
    iget-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->mainIpc:Lcom/narvii/logging/Impression/ImpressionCollector;

    if-eqz p1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-static {p1, v0}, Lcom/narvii/logging/Impression/ImpressionUtils;->clearImpression(Lcom/narvii/logging/Impression/ImpressionCollector;Lcom/narvii/app/NVContext;)V

    :cond_0
    return-void
.end method

.method protected onSubViewClicked(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0, p1, p2}, Lcom/narvii/paging/source/DataSource;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    :cond_0
    return-void
.end method

.method public resetList()V
    .locals 2

    .line 218
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->resetList()V

    .line 219
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->resetDataSource()V

    .line 220
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 221
    iget-boolean v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->attached:Z

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->loadInitData()V

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->mainIpc:Lcom/narvii/logging/Impression/ImpressionCollector;

    if-eqz v0, :cond_1

    .line 225
    iget-object v1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-static {v0, v1}, Lcom/narvii/logging/Impression/ImpressionUtils;->clearImpression(Lcom/narvii/logging/Impression/ImpressionCollector;Lcom/narvii/app/NVContext;)V

    :cond_1
    return-void
.end method

.method public setDataSource(Lcom/narvii/paging/source/DataSource;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {v0, p0}, Lcom/narvii/paging/source/DataSource;->removeDataSourceChangeListener(Lcom/narvii/paging/source/DataSourceChangeListener;)V

    .line 60
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    invoke-virtual {v0}, Lcom/narvii/paging/source/DataSource;->resetDataSource()V

    .line 62
    :cond_1
    iput-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    .line 63
    iget-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    invoke-virtual {p1, p0}, Lcom/narvii/paging/source/DataSource;->addDataSourceChangeListener(Lcom/narvii/paging/source/DataSourceChangeListener;)V

    .line 64
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->autoLoadInitData()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 65
    iget-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->dataSource:Lcom/narvii/paging/source/DataSource;

    invoke-virtual {p1}, Lcom/narvii/paging/source/DataSource;->loadInitData()V

    :cond_2
    return-void
.end method
