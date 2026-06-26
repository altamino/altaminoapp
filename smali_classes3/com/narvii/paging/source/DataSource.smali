.class public abstract Lcom/narvii/paging/source/DataSource;
.super Ljava/lang/Object;
.source "DataSource.kt"

# interfaces
.implements Lcom/narvii/paging/storage/PageOperationCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/narvii/model/NVObject;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/narvii/paging/storage/PageOperationCallback;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDataSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DataSource.kt\ncom/narvii/paging/source/DataSource\n*L\n1#1,178:1\n*E\n"
.end annotation


# instance fields
.field private changeDispatcher:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/paging/source/DataSourceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private context:Lcom/narvii/app/NVContext;

.field private dataSourceInterceptor:Lcom/narvii/paging/source/DataSourceInterceptor;

.field private final initPage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private pageLoadState:Lcom/narvii/paging/state/PageLoadState;

.field private final pageStorage:Lcom/narvii/paging/storage/PageStorage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/paging/storage/PageStorage<",
            "TT;>;"
        }
    .end annotation
.end field

.field private refreshDispatcher:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/paging/source/DataSourceRefreshListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 34
    new-instance v0, Lcom/narvii/paging/storage/ListPageStorage;

    invoke-direct {v0}, Lcom/narvii/paging/storage/ListPageStorage;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/narvii/paging/source/DataSource;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/paging/storage/PageStorage;)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/narvii/paging/storage/ListPageStorage;

    invoke-direct {v0}, Lcom/narvii/paging/storage/ListPageStorage;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/paging/source/DataSource;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/paging/storage/PageStorage;)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/paging/storage/PageStorage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/util/List<",
            "+TT;>;",
            "Lcom/narvii/paging/storage/PageStorage<",
            "TT;>;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/narvii/paging/source/DataSource;->setContext(Lcom/narvii/app/NVContext;)V

    .line 42
    iput-object p2, p0, Lcom/narvii/paging/source/DataSource;->initPage:Ljava/util/List;

    .line 43
    iput-object p3, p0, Lcom/narvii/paging/source/DataSource;->pageStorage:Lcom/narvii/paging/storage/PageStorage;

    .line 44
    new-instance p1, Lcom/narvii/paging/state/PageLoadState;

    invoke-direct {p1}, Lcom/narvii/paging/state/PageLoadState;-><init>()V

    iput-object p1, p0, Lcom/narvii/paging/source/DataSource;->pageLoadState:Lcom/narvii/paging/state/PageLoadState;

    .line 45
    new-instance p1, Lcom/narvii/util/EventDispatcher;

    invoke-direct {p1}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object p1, p0, Lcom/narvii/paging/source/DataSource;->changeDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 46
    new-instance p1, Lcom/narvii/util/EventDispatcher;

    invoke-direct {p1}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object p1, p0, Lcom/narvii/paging/source/DataSource;->refreshDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 47
    iget-object p1, p0, Lcom/narvii/paging/source/DataSource;->pageStorage:Lcom/narvii/paging/storage/PageStorage;

    if-eqz p1, :cond_1

    .line 50
    iget-object p1, p0, Lcom/narvii/paging/source/DataSource;->initPage:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    const/4 p3, 0x1

    xor-int/2addr p1, p3

    if-ne p1, p3, :cond_0

    .line 51
    iget-object p1, p0, Lcom/narvii/paging/source/DataSource;->pageStorage:Lcom/narvii/paging/storage/PageStorage;

    invoke-virtual {p1, p2, p0}, Lcom/narvii/paging/storage/PageStorage;->initPage(Ljava/util/List;Lcom/narvii/paging/storage/PageOperationCallback;)V

    :cond_0
    return-void

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Page Storage is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final updatePageLoadState(I)V
    .locals 1

    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, p1, v0}, Lcom/narvii/paging/source/DataSource;->updatePageLoadState(ILjava/lang/String;)V

    return-void
.end method

.method private final updatePageLoadState(ILjava/lang/String;)V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/narvii/paging/source/DataSource;->pageLoadState:Lcom/narvii/paging/state/PageLoadState;

    iget v1, v0, Lcom/narvii/paging/state/PageLoadState;->status:I

    if-ne v1, p1, :cond_0

    return-void

    .line 130
    :cond_0
    iput p1, v0, Lcom/narvii/paging/state/PageLoadState;->status:I

    .line 131
    iput-object p2, v0, Lcom/narvii/paging/state/PageLoadState;->errorMessage:Ljava/lang/String;

    .line 132
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->notifyPageLoadStatusChange()V

    return-void
.end method


# virtual methods
.method public final addDataSourceChangeListener(Lcom/narvii/paging/source/DataSourceChangeListener;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/narvii/paging/source/DataSource;->changeDispatcher:Lcom/narvii/util/EventDispatcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final addDataSourceRefreshListener(Lcom/narvii/paging/source/DataSourceRefreshListener;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/narvii/paging/source/DataSource;->refreshDispatcher:Lcom/narvii/util/EventDispatcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final appendData(Ljava/util/List;Lcom/narvii/paging/storage/PageOperationCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;",
            "Lcom/narvii/paging/storage/PageOperationCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/narvii/paging/source/DataSource;->pageStorage:Lcom/narvii/paging/storage/PageStorage;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/narvii/paging/storage/PageStorage;->appendPage(Ljava/util/List;Lcom/narvii/paging/storage/PageOperationCallback;)V

    :cond_0
    return-void
.end method

.method public final getChangeDispatcher()Lcom/narvii/util/EventDispatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/paging/source/DataSourceChangeListener;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/narvii/paging/source/DataSource;->changeDispatcher:Lcom/narvii/util/EventDispatcher;

    return-object v0
.end method

.method public getContext()Lcom/narvii/app/NVContext;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/narvii/paging/source/DataSource;->context:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public getDataSourceInterceptor()Lcom/narvii/paging/source/DataSourceInterceptor;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/narvii/paging/source/DataSource;->dataSourceInterceptor:Lcom/narvii/paging/source/DataSourceInterceptor;

    return-object v0
.end method

.method public final getInitPage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/narvii/paging/source/DataSource;->initPage:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Lcom/narvii/model/NVObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/narvii/paging/source/DataSource;->pageStorage:Lcom/narvii/paging/storage/PageStorage;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/NVObject;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final getItemById(Ljava/lang/String;)Lcom/narvii/model/NVObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/narvii/paging/source/DataSource;->pageStorage:Lcom/narvii/paging/storage/PageStorage;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/narvii/paging/storage/PageStorage;->getItemById(Ljava/lang/String;)Lcom/narvii/model/NVObject;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final getPageLoadState()Lcom/narvii/paging/state/PageLoadState;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/narvii/paging/source/DataSource;->pageLoadState:Lcom/narvii/paging/state/PageLoadState;

    return-object v0
.end method

.method public final getPageStorage()Lcom/narvii/paging/storage/PageStorage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/narvii/paging/storage/PageStorage<",
            "TT;>;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/narvii/paging/source/DataSource;->pageStorage:Lcom/narvii/paging/storage/PageStorage;

    return-object v0
.end method

.method public final getRefreshDispatcher()Lcom/narvii/util/EventDispatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/paging/source/DataSourceRefreshListener;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/narvii/paging/source/DataSource;->refreshDispatcher:Lcom/narvii/util/EventDispatcher;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/narvii/paging/source/DataSource;->pageStorage:Lcom/narvii/paging/storage/PageStorage;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final initPageSize()I
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/narvii/paging/source/DataSource;->initPage:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/narvii/paging/source/DataSource;->pageStorage:Lcom/narvii/paging/storage/PageStorage;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractList;->isEmpty()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public loadInitData()V
    .locals 0

    return-void
.end method

.method protected final notifyPageLoadStatusChange()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/narvii/paging/source/DataSource;->changeDispatcher:Lcom/narvii/util/EventDispatcher;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/narvii/paging/source/DataSource$notifyPageLoadStatusChange$1;->INSTANCE:Lcom/narvii/paging/source/DataSource$notifyPageLoadStatusChange$1;

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method

.method protected final notifyPageSourceChange()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/narvii/paging/source/DataSource;->changeDispatcher:Lcom/narvii/util/EventDispatcher;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/narvii/paging/source/DataSource$notifyPageSourceChange$1;

    invoke-direct {v1, p0}, Lcom/narvii/paging/source/DataSource$notifyPageSourceChange$1;-><init>(Lcom/narvii/paging/source/DataSource;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method

.method public onEmptyPageAppended()V
    .locals 0

    return-void
.end method

.method public onEmptyPagePrepend()V
    .locals 0

    return-void
.end method

.method public abstract onErrorRetry()V
.end method

.method public onInitialized(I)V
    .locals 0

    return-void
.end method

.method public onPageAppended(I)V
    .locals 0

    return-void
.end method

.method public onPagePrepend(I)V
    .locals 0

    return-void
.end method

.method protected final pageLoadBegin()V
    .locals 1

    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, v0}, Lcom/narvii/paging/source/DataSource;->updatePageLoadState(I)V

    return-void
.end method

.method protected final pageLoadFailed(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 119
    invoke-direct {p0, v0, p1}, Lcom/narvii/paging/source/DataSource;->updatePageLoadState(ILjava/lang/String;)V

    return-void
.end method

.method protected final pageLoadFinished()V
    .locals 1

    const/4 v0, 0x1

    .line 115
    invoke-direct {p0, v0}, Lcom/narvii/paging/source/DataSource;->updatePageLoadState(I)V

    return-void
.end method

.method public final prependData(Lcom/narvii/model/NVObject;Lcom/narvii/paging/storage/PageOperationCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/narvii/paging/storage/PageOperationCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/narvii/paging/source/DataSource;->pageStorage:Lcom/narvii/paging/storage/PageStorage;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/narvii/model/NVObject;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1, v2, p2}, Lcom/narvii/paging/storage/PageStorage;->prependPage(Ljava/util/List;ZLcom/narvii/paging/storage/PageOperationCallback;)Z

    :cond_0
    return-void
.end method

.method public abstract refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
.end method

.method public final removeData(Lcom/narvii/model/NVObject;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/narvii/paging/source/DataSource;->pageStorage:Lcom/narvii/paging/storage/PageStorage;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/narvii/paging/storage/PageStorage;->removeItem(Lcom/narvii/model/NVObject;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public final removeDataSourceChangeListener(Lcom/narvii/paging/source/DataSourceChangeListener;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/narvii/paging/source/DataSource;->changeDispatcher:Lcom/narvii/util/EventDispatcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final removeDataSourceRefreshListener(Lcom/narvii/paging/source/DataSourceRefreshListener;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/narvii/paging/source/DataSource;->refreshDispatcher:Lcom/narvii/util/EventDispatcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public resetDataSource()V
    .locals 1

    .line 95
    new-instance v0, Lcom/narvii/paging/state/PageLoadState;

    invoke-direct {v0}, Lcom/narvii/paging/state/PageLoadState;-><init>()V

    iput-object v0, p0, Lcom/narvii/paging/source/DataSource;->pageLoadState:Lcom/narvii/paging/state/PageLoadState;

    .line 96
    iget-object v0, p0, Lcom/narvii/paging/source/DataSource;->pageStorage:Lcom/narvii/paging/storage/PageStorage;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/paging/storage/PageStorage;->resetPageData()V

    :cond_0
    return-void
.end method

.method public final setChangeDispatcher(Lcom/narvii/util/EventDispatcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/paging/source/DataSourceChangeListener;",
            ">;)V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/narvii/paging/source/DataSource;->changeDispatcher:Lcom/narvii/util/EventDispatcher;

    return-void
.end method

.method public setContext(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/narvii/paging/source/DataSource;->context:Lcom/narvii/app/NVContext;

    return-void
.end method

.method public setDataSourceInterceptor(Lcom/narvii/paging/source/DataSourceInterceptor;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/narvii/paging/source/DataSource;->dataSourceInterceptor:Lcom/narvii/paging/source/DataSourceInterceptor;

    return-void
.end method

.method public final setPageLoadState(Lcom/narvii/paging/state/PageLoadState;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/narvii/paging/source/DataSource;->pageLoadState:Lcom/narvii/paging/state/PageLoadState;

    return-void
.end method

.method public final setRefreshDispatcher(Lcom/narvii/util/EventDispatcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/paging/source/DataSourceRefreshListener;",
            ">;)V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/narvii/paging/source/DataSource;->refreshDispatcher:Lcom/narvii/util/EventDispatcher;

    return-void
.end method

.method public final updateItem(Lcom/narvii/model/NVObject;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/narvii/paging/source/DataSource;->pageStorage:Lcom/narvii/paging/storage/PageStorage;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/narvii/paging/storage/PageStorage;->updateItem(Lcom/narvii/model/NVObject;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method
