.class public Lcom/narvii/catalog/CatalogItemAdapter;
.super Lcom/narvii/catalog/CatalogItemGridAdapter;
.source "CatalogItemAdapter.java"


# static fields
.field public static final PAGE_SIZE:I = 0x64


# instance fields
.field final categoryId:Ljava/lang/String;

.field isLeaf:Z


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/narvii/catalog/CatalogItemGridAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 20
    iput-object p2, p0, Lcom/narvii/catalog/CatalogItemAdapter;->categoryId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 31
    iget-boolean p1, p0, Lcom/narvii/catalog/CatalogItemAdapter;->isLeaf:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 34
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/item-category/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/catalog/CatalogItemAdapter;->categoryId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/narvii/catalog/CatalogItemAdapter;->isLeaf:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 1

    .line 26
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method protected pageSize()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public responseFirstPage(Lcom/narvii/model/api/ItemListResponse;)V
    .locals 3

    const/4 v0, 0x1

    .line 50
    invoke-virtual {p0, v0}, Lcom/narvii/catalog/CatalogItemAdapter;->createRequest(Z)Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x2

    :cond_0
    invoke-virtual {p0, v1, p1, v0}, Lcom/narvii/item/list/ItemGridExAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ItemListResponse;I)V

    return-void
.end method
