.class public abstract Lcom/narvii/paging/storage/PageStorage;
.super Ljava/util/AbstractList;
.source "PageStorage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/narvii/model/NVObject;",
        ">",
        "Ljava/util/AbstractList<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract appendPage(Ljava/util/List;Lcom/narvii/paging/storage/PageOperationCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/narvii/paging/storage/PageOperationCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getDataList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getItemById(Ljava/lang/String;)Lcom/narvii/model/NVObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getPosition(Lcom/narvii/model/NVObject;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public abstract initPage(Ljava/util/List;Lcom/narvii/paging/storage/PageOperationCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/narvii/paging/storage/PageOperationCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract prependPage(Ljava/util/List;ZLcom/narvii/paging/storage/PageOperationCallback;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;Z",
            "Lcom/narvii/paging/storage/PageOperationCallback;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract removeItem(Lcom/narvii/model/NVObject;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public abstract resetPageData()V
.end method

.method public abstract updateItem(Lcom/narvii/model/NVObject;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method
