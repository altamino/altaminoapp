.class public Lcom/narvii/catalog/search/CatalogSearchAdapter;
.super Lcom/narvii/catalog/CatalogItemGridAdapter;
.source "CatalogSearchAdapter.java"


# instance fields
.field communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field isAllEntry:Z

.field isCurationEnabled:Z

.field keyword:Ljava/lang/String;

.field uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;Z)V
    .locals 2

    .line 23
    invoke-direct {p0, p1}, Lcom/narvii/catalog/CatalogItemGridAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 24
    iput-object p2, p0, Lcom/narvii/catalog/search/CatalogSearchAdapter;->uid:Ljava/lang/String;

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-nez p3, :cond_0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 25
    :goto_0
    iput-boolean p2, p0, Lcom/narvii/item/list/ItemGridExAdapter;->showPin:Z

    .line 27
    iput-boolean p3, p0, Lcom/narvii/catalog/search/CatalogSearchAdapter;->isAllEntry:Z

    .line 28
    new-instance p2, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {p2, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/catalog/search/CatalogSearchAdapter;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 29
    iget-object p2, p0, Lcom/narvii/catalog/search/CatalogSearchAdapter;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/String;

    const-string v1, "catalog"

    aput-object v1, p3, v0

    const-string v0, "curationEnabled"

    aput-object v0, p3, p1

    invoke-virtual {p2, p3}, Lcom/narvii/modulization/CommunityConfigHelper;->getModuleBoolean([Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/catalog/search/CatalogSearchAdapter;->isCurationEnabled:Z

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 67
    iget-object p1, p0, Lcom/narvii/catalog/search/CatalogSearchAdapter;->keyword:Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 69
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "/item"

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 70
    iget-object v0, p0, Lcom/narvii/catalog/search/CatalogSearchAdapter;->uid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "q"

    const-string/jumbo v2, "type"

    if-nez v0, :cond_1

    const-string/jumbo v0, "user-all"

    .line 71
    invoke-virtual {p1, v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 72
    iget-object v0, p0, Lcom/narvii/catalog/search/CatalogSearchAdapter;->uid:Ljava/lang/String;

    const-string/jumbo v2, "uid"

    invoke-virtual {p1, v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 73
    iget-object v0, p0, Lcom/narvii/catalog/search/CatalogSearchAdapter;->keyword:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_1

    .line 74
    :cond_1
    iget-boolean v0, p0, Lcom/narvii/catalog/search/CatalogSearchAdapter;->isAllEntry:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/narvii/catalog/search/CatalogSearchAdapter;->isCurationEnabled:Z

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "catalog-all"

    .line 78
    invoke-virtual {p1, v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 79
    iget-object v0, p0, Lcom/narvii/catalog/search/CatalogSearchAdapter;->keyword:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_1

    :cond_3
    :goto_0
    const-string v0, "keywords"

    .line 75
    invoke-virtual {p1, v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 76
    iget-object v0, p0, Lcom/narvii/catalog/search/CatalogSearchAdapter;->keyword:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 81
    :goto_1
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/narvii/catalog/search/CatalogSearchAdapter;->keyword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/narvii/catalog/search/CatalogSearchAdapter;->keyword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public isListShown()Z
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/narvii/catalog/search/CatalogSearchAdapter;->keyword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->isListShown()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 46
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "keyword"

    .line 47
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/catalog/search/CatalogSearchAdapter;->keyword:Ljava/lang/String;

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 39
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/narvii/catalog/search/CatalogSearchAdapter;->keyword:Ljava/lang/String;

    const-string v2, "keyword"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/narvii/catalog/search/CatalogSearchAdapter;->keyword:Ljava/lang/String;

    .line 34
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    return-void
.end method
