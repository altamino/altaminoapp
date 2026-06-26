.class public abstract Lcom/narvii/paging/source/SinglePageDataSource;
.super Lcom/narvii/paging/source/DataSource;
.source "SinglePageDataSource.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/narvii/model/NVObject;",
        ">",
        "Lcom/narvii/paging/source/DataSource<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/narvii/paging/source/DataSource;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/narvii/paging/source/DataSource;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public loadInitData()V
    .locals 2

    .line 19
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->resetDataSource()V

    .line 20
    invoke-virtual {p0}, Lcom/narvii/paging/source/SinglePageDataSource;->pageData()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/narvii/paging/source/DataSource;->appendData(Ljava/util/List;Lcom/narvii/paging/storage/PageOperationCallback;)V

    .line 21
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->notifyPageSourceChange()V

    return-void
.end method

.method public onErrorRetry()V
    .locals 0

    return-void
.end method

.method public abstract pageData()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 25
    invoke-interface {p2, p1}, Lcom/narvii/paging/source/PageRequestCallback;->onPageRequestFinished(I)V

    :cond_0
    return-void
.end method
