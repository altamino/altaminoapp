.class public Lcom/narvii/catalog/search/CatalogSearchAdapter;
.super Lcom/narvii/catalog/CatalogItemGridAdapter;
.source "SourceFile"


# instance fields
.field communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field isAllEntry:Z

.field isCurationEnabled:Z

.field keyword:Ljava/lang/String;

.field uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/catalog/CatalogItemGridAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    .line 5
    iput-object p2, p0, Lcom/narvii/catalog/search/CatalogSearchAdapter;->uid:Ljava/lang/String;

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    .line 14
    :goto_0
    iput-boolean p1, p0, Lcom/narvii/item/list/ItemGridExAdapter;->showPin:Z

    .line 15
    .line 16
    iput-boolean p3, p0, Lcom/narvii/catalog/search/CatalogSearchAdapter;->isAllEntry:Z

    .line 17
    .line 18
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 22
    .line 23
    iput-object p1, p0, Lcom/narvii/catalog/search/CatalogSearchAdapter;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 24
    .line 25
    const-string p2, "catalog"

    .line 26
    .line 27
    const-string p3, "curationEnabled"

    .line 28
    .line 29
    .line 30
    filled-new-array {p2, p3}, [Ljava/lang/String;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Lcom/narvii/modulization/CommunityConfigHelper;->getModuleBoolean([Ljava/lang/String;)Z

    .line 35
    move-result p1

    .line 36
    .line 37
    iput-boolean p1, p0, Lcom/narvii/catalog/search/CatalogSearchAdapter;->isCurationEnabled:Z

    .line 38
    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/catalog/search/CatalogSearchAdapter;->keyword:Ljava/lang/String;

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    const-string v0, "/item"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/catalog/search/CatalogSearchAdapter;->uid:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    const-string v1, "q"

    .line 25
    .line 26
    const-string v2, "type"

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    const-string v0, "user-all"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 34
    .line 35
    const-string v0, "uid"

    .line 36
    .line 37
    iget-object v2, p0, Lcom/narvii/catalog/search/CatalogSearchAdapter;->uid:Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/catalog/search/CatalogSearchAdapter;->keyword:Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 46
    goto :goto_1

    .line 47
    .line 48
    :cond_1
    iget-boolean v0, p0, Lcom/narvii/catalog/search/CatalogSearchAdapter;->isAllEntry:Z

    .line 49
    .line 50
    if-nez v0, :cond_3

    .line 51
    .line 52
    iget-boolean v0, p0, Lcom/narvii/catalog/search/CatalogSearchAdapter;->isCurationEnabled:Z

    .line 53
    .line 54
    if-nez v0, :cond_2

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_2
    const-string v0, "catalog-all"

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 61
    .line 62
    iget-object v0, p0, Lcom/narvii/catalog/search/CatalogSearchAdapter;->keyword:Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 66
    goto :goto_1

    .line 67
    .line 68
    :cond_3
    :goto_0
    const-string v0, "keywords"

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 72
    .line 73
    iget-object v0, p0, Lcom/narvii/catalog/search/CatalogSearchAdapter;->keyword:Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 77
    .line 78
    .line 79
    :goto_1
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 80
    move-result-object p1

    .line 81
    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/catalog/search/CatalogSearchAdapter;->keyword:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    .line 14
    move-result v0

    .line 15
    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/catalog/search/CatalogSearchAdapter;->keyword:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    .line 14
    move-result v0

    .line 15
    :goto_0
    return v0
.end method

.method public isListShown()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/catalog/search/CatalogSearchAdapter;->keyword:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->isListShown()Z

    .line 14
    move-result v0

    .line 15
    :goto_0
    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "keyword"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    iput-object p1, p0, Lcom/narvii/catalog/search/CatalogSearchAdapter;->keyword:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "keyword"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/narvii/catalog/search/CatalogSearchAdapter;->keyword:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-object v0
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/catalog/search/CatalogSearchAdapter;->keyword:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 6
    return-void
.end method
