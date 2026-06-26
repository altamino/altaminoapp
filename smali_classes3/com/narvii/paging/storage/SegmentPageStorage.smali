.class public Lcom/narvii/paging/storage/SegmentPageStorage;
.super Lcom/narvii/paging/storage/PageStorage;
.source "SegmentPageStorage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/narvii/model/NVObject;",
        ">",
        "Lcom/narvii/paging/storage/PageStorage<",
        "TT;>;"
    }
.end annotation


# instance fields
.field pageData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/narvii/paging/storage/PageStorage;-><init>()V

    return-void
.end method


# virtual methods
.method public appendPage(Ljava/util/List;Lcom/narvii/paging/storage/PageOperationCallback;)V
    .locals 0

    return-void
.end method

.method public get(I)Lcom/narvii/model/NVObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/narvii/paging/storage/SegmentPageStorage;->get(I)Lcom/narvii/model/NVObject;

    move-result-object p1

    return-object p1
.end method

.method public getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 56
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getItemById(Ljava/lang/String;)Lcom/narvii/model/NVObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPosition(Lcom/narvii/model/NVObject;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public initPage(Ljava/util/List;Lcom/narvii/paging/storage/PageOperationCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/narvii/paging/storage/PageOperationCallback;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public prependPage(Ljava/util/List;ZLcom/narvii/paging/storage/PageOperationCallback;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public removeItem(Lcom/narvii/model/NVObject;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public resetPageData()V
    .locals 0

    return-void
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateItem(Lcom/narvii/model/NVObject;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
