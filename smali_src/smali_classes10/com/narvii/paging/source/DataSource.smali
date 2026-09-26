.class public abstract Lcom/narvii/paging/source/DataSource;
.super Ljava/lang/Object;
.source "SourceFile"

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


# instance fields
.field private changeDispatcher:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/paging/source/DataSourceChangeListener;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private context:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private dataSourceInterceptor:Lcom/narvii/paging/source/DataSourceInterceptor;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final initPage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private pageLoadState:Lcom/narvii/paging/state/PageLoadState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pageStorage:Lcom/narvii/paging/storage/PageStorage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/paging/storage/PageStorage<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/narvii/paging/storage/ListPageStorage;

    invoke-direct {v0}, Lcom/narvii/paging/storage/ListPageStorage;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/narvii/paging/source/DataSource;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/paging/storage/PageStorage;)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/narvii/paging/storage/ListPageStorage;

    invoke-direct {v0}, Lcom/narvii/paging/storage/ListPageStorage;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/paging/source/DataSource;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/paging/storage/PageStorage;)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/util/List;Lcom/narvii/paging/storage/PageStorage;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/paging/storage/PageStorage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Lcom/narvii/paging/source/DataSource;->setContext(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/paging/source/DataSource;->initPage:Ljava/util/List;

    iput-object p3, p0, Lcom/narvii/paging/source/DataSource;->pageStorage:Lcom/narvii/paging/storage/PageStorage;

    .line 5
    new-instance p1, Lcom/narvii/paging/state/PageLoadState;

    invoke-direct {p1}, Lcom/narvii/paging/state/PageLoadState;-><init>()V

    iput-object p1, p0, Lcom/narvii/paging/source/DataSource;->pageLoadState:Lcom/narvii/paging/state/PageLoadState;

    .line 6
    new-instance p1, Lcom/narvii/util/EventDispatcher;

    invoke-direct {p1}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object p1, p0, Lcom/narvii/paging/source/DataSource;->changeDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 7
    new-instance p1, Lcom/narvii/util/EventDispatcher;

    invoke-direct {p1}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object p1, p0, Lcom/narvii/paging/source/DataSource;->refreshDispatcher:Lcom/narvii/util/EventDispatcher;

    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    .line 8
    move-object p1, p2

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    .line 9
    invoke-virtual {p3, p2, p0}, Lcom/narvii/paging/storage/PageStorage;->initPage(Ljava/util/List;Lcom/narvii/paging/storage/PageOperationCallback;)V

    :cond_0
    return-void

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Page Storage is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic a(Lcom/narvii/paging/source/DataSourceChangeListener;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/paging/source/DataSource;->notifyPageLoadStatusChange$lambda$0(Lcom/narvii/paging/source/DataSourceChangeListener;)V

    return-void
.end method

.method public static synthetic b(Lcom/narvii/paging/source/DataSource;Lcom/narvii/paging/source/DataSourceChangeListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/paging/source/DataSource;->notifyPageSourceChange$lambda$1(Lcom/narvii/paging/source/DataSource;Lcom/narvii/paging/source/DataSourceChangeListener;)V

    return-void
.end method

.method private static final notifyPageLoadStatusChange$lambda$0(Lcom/narvii/paging/source/DataSourceChangeListener;)V
    .locals 0

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-interface {p0}, Lcom/narvii/paging/source/DataSourceChangeListener;->onPageLoadStatusChanged()V

    .line 6
    :cond_0
    return-void
.end method

.method private static final notifyPageSourceChange$lambda$1(Lcom/narvii/paging/source/DataSource;Lcom/narvii/paging/source/DataSourceChangeListener;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/narvii/paging/source/DataSource;->pageStorage:Lcom/narvii/paging/storage/PageStorage;

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, p0}, Lcom/narvii/paging/source/DataSourceChangeListener;->onPageListChanged(Lcom/narvii/paging/storage/PageStorage;)V

    .line 13
    :cond_0
    return-void
.end method

.method private final updatePageLoadState(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/paging/source/DataSource;->updatePageLoadState(ILjava/lang/String;)V

    return-void
.end method

.method private final updatePageLoadState(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/paging/source/DataSource;->pageLoadState:Lcom/narvii/paging/state/PageLoadState;

    .line 2
    iget v1, v0, Lcom/narvii/paging/state/PageLoadState;->status:I

    if-ne v1, p1, :cond_0

    return-void

    .line 3
    :cond_0
    iput p1, v0, Lcom/narvii/paging/state/PageLoadState;->status:I

    .line 4
    iput-object p2, v0, Lcom/narvii/paging/state/PageLoadState;->errorMessage:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->notifyPageLoadStatusChange()V

    return-void
.end method


# virtual methods
.method public final addDataSourceChangeListener(Lcom/narvii/paging/source/DataSourceChangeListener;)V
    .locals 1
    .param p1    # Lcom/narvii/paging/source/DataSourceChangeListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/source/DataSource;->changeDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 8
    :cond_0
    return-void
.end method

.method public final addDataSourceRefreshListener(Lcom/narvii/paging/source/DataSourceRefreshListener;)V
    .locals 1
    .param p1    # Lcom/narvii/paging/source/DataSourceRefreshListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/source/DataSource;->refreshDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->addListener(Ljava/lang/Object;)V

    .line 8
    :cond_0
    return-void
.end method

.method public final appendData(Ljava/util/List;Lcom/narvii/paging/storage/PageOperationCallback;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/paging/storage/PageOperationCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;",
            "Lcom/narvii/paging/storage/PageOperationCallback;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "list"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/paging/source/DataSource;->pageStorage:Lcom/narvii/paging/storage/PageStorage;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Lcom/narvii/paging/storage/PageStorage;->appendPage(Ljava/util/List;Lcom/narvii/paging/storage/PageOperationCallback;)V

    .line 13
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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/paging/source/DataSource;->changeDispatcher:Lcom/narvii/util/EventDispatcher;

    return-object v0
.end method

.method public getContext()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/paging/source/DataSource;->context:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public getDataSourceInterceptor()Lcom/narvii/paging/source/DataSourceInterceptor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/source/DataSource;->pageStorage:Lcom/narvii/paging/storage/PageStorage;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    check-cast p1, Lcom/narvii/model/NVObject;

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    return-object p1
.end method

.method public final getItemById(Ljava/lang/String;)Lcom/narvii/model/NVObject;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "id"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/paging/source/DataSource;->pageStorage:Lcom/narvii/paging/storage/PageStorage;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/narvii/paging/storage/PageStorage;->getItemById(Ljava/lang/String;)Lcom/narvii/model/NVObject;

    .line 13
    move-result-object p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return-object p1
.end method

.method public final getPageLoadState()Lcom/narvii/paging/state/PageLoadState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/paging/source/DataSource;->refreshDispatcher:Lcom/narvii/util/EventDispatcher;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/source/DataSource;->pageStorage:Lcom/narvii/paging/storage/PageStorage;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public final initPageSize()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/source/DataSource;->initPage:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/source/DataSource;->pageStorage:Lcom/narvii/paging/storage/PageStorage;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    :goto_0
    return v0
.end method

.method public loadInitData()V
    .locals 0

    return-void
.end method

.method protected final notifyPageLoadStatusChange()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/source/DataSource;->changeDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v1, Lcom/narvii/paging/source/a;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Lcom/narvii/paging/source/a;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 13
    :cond_0
    return-void
.end method

.method protected final notifyPageSourceChange()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/source/DataSource;->changeDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v1, Lcom/narvii/paging/source/b;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/narvii/paging/source/b;-><init>(Lcom/narvii/paging/source/DataSource;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 13
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

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/narvii/paging/source/DataSource;->updatePageLoadState(I)V

    .line 5
    return-void
.end method

.method protected final pageLoadFailed(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0, p1}, Lcom/narvii/paging/source/DataSource;->updatePageLoadState(ILjava/lang/String;)V

    .line 5
    return-void
.end method

.method protected final pageLoadFinished()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/narvii/paging/source/DataSource;->updatePageLoadState(I)V

    .line 5
    return-void
.end method

.method public final prependData(Lcom/narvii/model/NVObject;Lcom/narvii/paging/storage/PageOperationCallback;)V
    .locals 3
    .param p1    # Lcom/narvii/model/NVObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/paging/storage/PageOperationCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/narvii/paging/storage/PageOperationCallback;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "obj"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/paging/source/DataSource;->pageStorage:Lcom/narvii/paging/storage/PageStorage;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    const/4 v1, 0x1

    .line 11
    .line 12
    new-array v1, v1, [Lcom/narvii/model/NVObject;

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    aput-object p1, v1, v2

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lkotlin/collections/t;->g([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1, v2, p2}, Lcom/narvii/paging/storage/PageStorage;->prependPage(Ljava/util/List;ZLcom/narvii/paging/storage/PageOperationCallback;)Z

    .line 23
    :cond_0
    return-void
.end method

.method public abstract refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .param p2    # Lcom/narvii/paging/source/PageRequestCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public final removeData(Lcom/narvii/model/NVObject;)I
    .locals 1
    .param p1    # Lcom/narvii/model/NVObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "obj"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/paging/source/DataSource;->pageStorage:Lcom/narvii/paging/storage/PageStorage;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/narvii/paging/storage/PageStorage;->removeItem(Lcom/narvii/model/NVObject;)I

    .line 13
    move-result p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, -0x1

    .line 16
    :goto_0
    return p1
.end method

.method public final removeDataSourceChangeListener(Lcom/narvii/paging/source/DataSourceChangeListener;)V
    .locals 1
    .param p1    # Lcom/narvii/paging/source/DataSourceChangeListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/source/DataSource;->changeDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 8
    :cond_0
    return-void
.end method

.method public final removeDataSourceRefreshListener(Lcom/narvii/paging/source/DataSourceRefreshListener;)V
    .locals 1
    .param p1    # Lcom/narvii/paging/source/DataSourceRefreshListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/source/DataSource;->refreshDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/util/EventDispatcher;->removeListener(Ljava/lang/Object;)V

    .line 8
    :cond_0
    return-void
.end method

.method public resetDataSource()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/paging/state/PageLoadState;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/paging/state/PageLoadState;-><init>()V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/paging/source/DataSource;->pageLoadState:Lcom/narvii/paging/state/PageLoadState;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/paging/source/DataSource;->pageStorage:Lcom/narvii/paging/storage/PageStorage;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/paging/storage/PageStorage;->resetPageData()V

    .line 15
    :cond_0
    return-void
.end method

.method public final setChangeDispatcher(Lcom/narvii/util/EventDispatcher;)V
    .locals 0
    .param p1    # Lcom/narvii/util/EventDispatcher;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/paging/source/DataSourceChangeListener;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/narvii/paging/source/DataSource;->changeDispatcher:Lcom/narvii/util/EventDispatcher;

    return-void
.end method

.method public setContext(Lcom/narvii/app/NVContext;)V
    .locals 0
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/paging/source/DataSource;->context:Lcom/narvii/app/NVContext;

    return-void
.end method

.method public setDataSourceInterceptor(Lcom/narvii/paging/source/DataSourceInterceptor;)V
    .locals 0
    .param p1    # Lcom/narvii/paging/source/DataSourceInterceptor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/paging/source/DataSource;->dataSourceInterceptor:Lcom/narvii/paging/source/DataSourceInterceptor;

    return-void
.end method

.method public final setPageLoadState(Lcom/narvii/paging/state/PageLoadState;)V
    .locals 1
    .param p1    # Lcom/narvii/paging/state/PageLoadState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/paging/source/DataSource;->pageLoadState:Lcom/narvii/paging/state/PageLoadState;

    return-void
.end method

.method public final setRefreshDispatcher(Lcom/narvii/util/EventDispatcher;)V
    .locals 0
    .param p1    # Lcom/narvii/util/EventDispatcher;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/paging/source/DataSourceRefreshListener;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/narvii/paging/source/DataSource;->refreshDispatcher:Lcom/narvii/util/EventDispatcher;

    return-void
.end method

.method public final updateItem(Lcom/narvii/model/NVObject;)I
    .locals 1
    .param p1    # Lcom/narvii/model/NVObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "item"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/paging/source/DataSource;->pageStorage:Lcom/narvii/paging/storage/PageStorage;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/narvii/paging/storage/PageStorage;->updateItem(Lcom/narvii/model/NVObject;)I

    .line 13
    move-result p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, -0x1

    .line 16
    :goto_0
    return p1
.end method
