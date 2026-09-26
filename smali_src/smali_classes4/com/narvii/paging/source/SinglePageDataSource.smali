.class public abstract Lcom/narvii/paging/source/SinglePageDataSource;
.super Lcom/narvii/paging/source/DataSource;
.source "SourceFile"


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
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/paging/source/DataSource;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/util/List;)V
    .locals 0
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
    invoke-direct {p0, p1, p2}, Lcom/narvii/paging/source/DataSource;-><init>(Lcom/narvii/app/NVContext;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public loadInitData()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->resetDataSource()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/paging/source/SinglePageDataSource;->pageData()Ljava/util/List;

    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/narvii/paging/source/DataSource;->appendData(Ljava/util/List;Lcom/narvii/paging/storage/PageOperationCallback;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->notifyPageSourceChange()V

    .line 15
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 0
    .param p2    # Lcom/narvii/paging/source/PageRequestCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-interface {p2, p1}, Lcom/narvii/paging/source/PageRequestCallback;->onPageRequestFinished(I)V

    .line 7
    :cond_0
    return-void
.end method
