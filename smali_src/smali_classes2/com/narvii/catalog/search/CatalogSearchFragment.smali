.class public Lcom/narvii/catalog/search/CatalogSearchFragment;
.super Lcom/narvii/catalog/CatalogThemeFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/catalog/search/CatalogSearchFragment$Adapter;,
        Lcom/narvii/catalog/search/CatalogSearchFragment$SearchAdapter;
    }
.end annotation


# static fields
.field static final ADD_TO_REQUEST:I = 0x1


# instance fields
.field actionMode:Landroid/view/ActionMode;

.field final actionModeCallback:Landroid/view/ActionMode$Callback;

.field adapter:Lcom/narvii/catalog/search/CatalogSearchFragment$Adapter;

.field communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field isAllEntryPage:Z

.field isCurationEnabled:Z

.field selAdapter:Lcom/narvii/list/select/SelectableAdapter;

.field uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/catalog/CatalogThemeFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/catalog/search/CatalogSearchFragment$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/catalog/search/CatalogSearchFragment$1;-><init>(Lcom/narvii/catalog/search/CatalogSearchFragment;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/catalog/search/CatalogSearchFragment;->actionModeCallback:Landroid/view/ActionMode$Callback;

    .line 11
    return-void
.end method


# virtual methods
.method public addTo(Lcom/narvii/model/ItemCategory;)V
    .locals 7

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment;->selAdapter:Lcom/narvii/list/select/SelectableAdapter;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/narvii/list/select/SelectableAdapter;->selections()Ljava/util/List;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    return-void

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v3

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v3

    .line 37
    .line 38
    check-cast v3, Lcom/narvii/model/Item;

    .line 39
    .line 40
    iget-object v3, v3, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 44
    goto :goto_0

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    iget-object v3, p1, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 57
    move-result-object v3

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 61
    move-result-object v4

    .line 62
    .line 63
    new-instance v5, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    const-string v6, "/item/"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const/4 v6, 0x0

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    check-cast v0, Lcom/narvii/model/Item;

    .line 79
    .line 80
    iget-object v0, v0, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v0, "/tag"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 96
    .line 97
    const-string v0, "itemIdList"

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 101
    .line 102
    const-string v0, "categoryIdList"

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, v0, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 106
    .line 107
    iget-object v0, p0, Lcom/narvii/catalog/search/CatalogSearchFragment;->uid:Ljava/lang/String;

    .line 108
    .line 109
    if-eqz v0, :cond_2

    .line 110
    .line 111
    const-string v1, "sourceUid"

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 115
    .line 116
    const-string v0, "destinationUid"

    .line 117
    .line 118
    iget-object v1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment;->uid:Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 122
    .line 123
    .line 124
    :cond_2
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 125
    move-result-object v0

    .line 126
    .line 127
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 131
    move-result-object v2

    .line 132
    .line 133
    .line 134
    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 135
    .line 136
    new-instance v2, Lcom/narvii/catalog/search/CatalogSearchFragment$2;

    .line 137
    .line 138
    .line 139
    invoke-direct {v2, p0, p1}, Lcom/narvii/catalog/search/CatalogSearchFragment$2;-><init>(Lcom/narvii/catalog/search/CatalogSearchFragment;Lcom/narvii/model/ItemCategory;)V

    .line 140
    .line 141
    iput-object v2, v1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 145
    .line 146
    const-string p1, "api"

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 150
    move-result-object p1

    .line 151
    .line 152
    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 153
    .line 154
    iget-object v1, v1, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 158
    return-void
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 5

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/list/StaticViewAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    .line 6
    const/4 v0, 0x1

    .line 7
    .line 8
    new-array v1, v0, [Landroid/view/View;

    .line 9
    .line 10
    new-instance v2, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v3

    .line 15
    .line 16
    .line 17
    invoke-direct {v2, v3}, Lcom/narvii/list/overlay/OverlayListPlaceholder;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v3, 0x0

    .line 19
    .line 20
    aput-object v2, v1, v3

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v1}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    .line 24
    .line 25
    new-instance v1, Lcom/narvii/catalog/search/CatalogSearchFragment$Adapter;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/narvii/catalog/search/CatalogSearchFragment$Adapter;-><init>(Lcom/narvii/catalog/search/CatalogSearchFragment;)V

    .line 29
    .line 30
    iput-object v1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment;->adapter:Lcom/narvii/catalog/search/CatalogSearchFragment$Adapter;

    .line 31
    .line 32
    new-instance v1, Lcom/narvii/list/select/SelectableAdapter;

    .line 33
    .line 34
    .line 35
    const v2, 0x7f0d06c2

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, p0, v2, v3}, Lcom/narvii/list/select/SelectableAdapter;-><init>(Lcom/narvii/app/NVContext;IZ)V

    .line 39
    .line 40
    iput-object v1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment;->selAdapter:Lcom/narvii/list/select/SelectableAdapter;

    .line 41
    .line 42
    iget-object v2, p0, Lcom/narvii/catalog/search/CatalogSearchFragment;->adapter:Lcom/narvii/catalog/search/CatalogSearchFragment$Adapter;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Lcom/narvii/list/ProxyAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 46
    .line 47
    iget-object v1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment;->selAdapter:Lcom/narvii/list/select/SelectableAdapter;

    .line 48
    .line 49
    iget-object v2, p0, Lcom/narvii/catalog/search/CatalogSearchFragment;->adapter:Lcom/narvii/catalog/search/CatalogSearchFragment$Adapter;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Lcom/narvii/list/select/SelectableAdapter;->setListener(Lcom/narvii/list/select/SelectableListener;)V

    .line 53
    .line 54
    new-instance v1, Lcom/narvii/list/DivideColumnAdapter;

    .line 55
    .line 56
    .line 57
    invoke-direct {v1, p0}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 58
    .line 59
    iget-object v2, p0, Lcom/narvii/catalog/search/CatalogSearchFragment;->selAdapter:Lcom/narvii/list/select/SelectableAdapter;

    .line 60
    const/4 v4, 0x3

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2, v4}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v0}, Lcom/narvii/list/DivideColumnAdapter;->setSupportLongClick(Z)V

    .line 67
    .line 68
    new-instance v2, Lcom/narvii/catalog/search/CatalogSearchFragment$SearchAdapter;

    .line 69
    .line 70
    .line 71
    invoke-direct {v2, p0, p0}, Lcom/narvii/catalog/search/CatalogSearchFragment$SearchAdapter;-><init>(Lcom/narvii/catalog/search/CatalogSearchFragment;Lcom/narvii/app/NVContext;)V

    .line 72
    .line 73
    new-instance v4, Lcom/narvii/list/MergeAdapter;

    .line 74
    .line 75
    .line 76
    invoke-direct {v4, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, p1, v3}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, v2, v3}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v4}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 93
    return-object v4
.end method

.method fromMyCatalog()Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "fromMyCatalog"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method fromOfficialCatalog()Z
    .locals 1

    .line 1
    .line 2
    const-string v0, "fromOfficialCatalog"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method isCurator()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/catalog/search/CatalogSearchFragment;->uid:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "account"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/model/User;->isLeader()Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    const/4 v1, 0x1

    .line 27
    :cond_0
    return v1
.end method

.method isMine()Z
    .locals 2

    .line 1
    .line 2
    const-string v0, "account"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment;->uid:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    if-ne p2, v0, :cond_0

    .line 7
    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    const-string p1, "category"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    const-class p2, Lcom/narvii/model/ItemCategory;

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    check-cast p1, Lcom/narvii/model/ItemCategory;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/narvii/catalog/search/CatalogSearchFragment;->addTo(Lcom/narvii/model/ItemCategory;)V

    .line 26
    return-void

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 30
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f121056

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    .line 10
    .line 11
    const-string p1, "uid"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment;->uid:Ljava/lang/String;

    .line 18
    .line 19
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 23
    .line 24
    iput-object p1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 25
    .line 26
    const-string v0, "catalog"

    .line 27
    .line 28
    const-string v1, "curationEnabled"

    .line 29
    .line 30
    .line 31
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/narvii/modulization/CommunityConfigHelper;->getModuleBoolean([Ljava/lang/String;)Z

    .line 36
    move-result p1

    .line 37
    .line 38
    iput-boolean p1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment;->isCurationEnabled:Z

    .line 39
    .line 40
    const-string p1, "isAllEntry"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 44
    move-result p1

    .line 45
    .line 46
    iput-boolean p1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment;->isAllEntryPage:Z

    .line 47
    const/4 p1, 0x1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 51
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 1
    const/4 p2, 0x0

    .line 2
    .line 3
    .line 4
    const v0, 0x7f121078

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, p2, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 8
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7f121078

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment;->selAdapter:Lcom/narvii/list/select/SelectableAdapter;

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/narvii/list/select/SelectableAdapter;->startSelect(Ljava/util/List;)V

    .line 16
    const/4 p1, 0x1

    .line 17
    return p1

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/catalog/search/CatalogSearchFragment;->isMine()Z

    .line 7
    move-result v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/catalog/search/CatalogSearchFragment;->isCurator()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    .line 14
    const v2, 0x7f121078

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    iget-boolean v2, p0, Lcom/narvii/catalog/search/CatalogSearchFragment;->isAllEntryPage:Z

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    iget-boolean v2, p0, Lcom/narvii/catalog/search/CatalogSearchFragment;->isCurationEnabled:Z

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/narvii/catalog/search/CatalogSearchFragment;->adapter:Lcom/narvii/catalog/search/CatalogSearchFragment$Adapter;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iget-object v0, p0, Lcom/narvii/catalog/search/CatalogSearchFragment;->adapter:Lcom/narvii/catalog/search/CatalogSearchFragment$Adapter;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 50
    move-result v0

    .line 51
    .line 52
    if-lez v0, :cond_1

    .line 53
    const/4 v0, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const/4 v0, 0x0

    .line 56
    .line 57
    .line 58
    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 59
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/catalog/search/CatalogSearchFragment;->selAdapter:Lcom/narvii/list/select/SelectableAdapter;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/narvii/list/select/SelectableAdapter;->inSelect()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/catalog/search/CatalogSearchFragment;->isMine()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/catalog/search/CatalogSearchFragment;->selAdapter:Lcom/narvii/list/select/SelectableAdapter;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/list/select/SelectableAdapter;->finishSelect()V

    .line 23
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/catalog/CatalogThemeFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 7
    move-result-object p1

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    .line 15
    move-result-object p1

    .line 16
    const/4 p2, 0x0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 20
    .line 21
    const-string p1, "previewMedia"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    const-class p2, Lcom/narvii/model/Media;

    .line 28
    .line 29
    .line 30
    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    check-cast p1, Lcom/narvii/model/Media;

    .line 34
    .line 35
    iget-object p2, p0, Lcom/narvii/catalog/CatalogThemeFragment;->backgroundImageView:Lcom/narvii/widget/NVImageView;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, p1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 39
    return-void
.end method
