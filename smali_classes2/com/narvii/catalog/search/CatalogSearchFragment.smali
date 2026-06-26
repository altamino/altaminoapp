.class public Lcom/narvii/catalog/search/CatalogSearchFragment;
.super Lcom/narvii/catalog/CatalogThemeFragment;
.source "CatalogSearchFragment.java"


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

    .line 57
    invoke-direct {p0}, Lcom/narvii/catalog/CatalogThemeFragment;-><init>()V

    .line 272
    new-instance v0, Lcom/narvii/catalog/search/CatalogSearchFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/catalog/search/CatalogSearchFragment$1;-><init>(Lcom/narvii/catalog/search/CatalogSearchFragment;)V

    iput-object v0, p0, Lcom/narvii/catalog/search/CatalogSearchFragment;->actionModeCallback:Landroid/view/ActionMode$Callback;

    return-void
.end method


# virtual methods
.method public addTo(Lcom/narvii/model/ItemCategory;)V
    .locals 7

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment;->selAdapter:Lcom/narvii/list/select/SelectableAdapter;

    invoke-virtual {v1}, Lcom/narvii/list/select/SelectableAdapter;->selections()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 316
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 318
    :cond_0
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v1

    .line 319
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 320
    check-cast v3, Lcom/narvii/model/Item;

    .line 321
    iget-object v3, v3, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_0

    .line 323
    :cond_1
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v2

    .line 324
    iget-object v3, p1, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 325
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    .line 326
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/item/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Item;

    iget-object v0, v0, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/tag"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v0, "itemIdList"

    .line 327
    invoke-virtual {v3, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v0, "categoryIdList"

    .line 328
    invoke-virtual {v3, v0, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 329
    iget-object v0, p0, Lcom/narvii/catalog/search/CatalogSearchFragment;->uid:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "sourceUid"

    .line 330
    invoke-virtual {v3, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 331
    iget-object v0, p0, Lcom/narvii/catalog/search/CatalogSearchFragment;->uid:Ljava/lang/String;

    const-string v1, "destinationUid"

    invoke-virtual {v3, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 333
    :cond_2
    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 335
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 336
    new-instance v2, Lcom/narvii/catalog/search/CatalogSearchFragment$2;

    invoke-direct {v2, p0, p1}, Lcom/narvii/catalog/search/CatalogSearchFragment$2;-><init>(Lcom/narvii/catalog/search/CatalogSearchFragment;Lcom/narvii/model/ItemCategory;)V

    iput-object v2, v1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 346
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    const-string p1, "api"

    .line 348
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 349
    iget-object v1, v1, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 5

    .line 125
    new-instance p1, Lcom/narvii/list/StaticViewAdapter;

    invoke-direct {p1}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    .line 126
    new-instance v2, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/narvii/list/overlay/OverlayListPlaceholder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    .line 128
    new-instance v1, Lcom/narvii/catalog/search/CatalogSearchFragment$Adapter;

    invoke-direct {v1, p0}, Lcom/narvii/catalog/search/CatalogSearchFragment$Adapter;-><init>(Lcom/narvii/catalog/search/CatalogSearchFragment;)V

    iput-object v1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment;->adapter:Lcom/narvii/catalog/search/CatalogSearchFragment$Adapter;

    .line 129
    new-instance v1, Lcom/narvii/list/select/SelectableAdapter;

    const v2, 0x7f0b060e

    invoke-direct {v1, p0, v2, v3}, Lcom/narvii/list/select/SelectableAdapter;-><init>(Lcom/narvii/app/NVContext;IZ)V

    iput-object v1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment;->selAdapter:Lcom/narvii/list/select/SelectableAdapter;

    .line 130
    iget-object v1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment;->selAdapter:Lcom/narvii/list/select/SelectableAdapter;

    iget-object v2, p0, Lcom/narvii/catalog/search/CatalogSearchFragment;->adapter:Lcom/narvii/catalog/search/CatalogSearchFragment$Adapter;

    invoke-virtual {v1, v2}, Lcom/narvii/list/ProxyAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 131
    iget-object v1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment;->selAdapter:Lcom/narvii/list/select/SelectableAdapter;

    iget-object v2, p0, Lcom/narvii/catalog/search/CatalogSearchFragment;->adapter:Lcom/narvii/catalog/search/CatalogSearchFragment$Adapter;

    invoke-virtual {v1, v2}, Lcom/narvii/list/select/SelectableAdapter;->setListener(Lcom/narvii/list/select/SelectableListener;)V

    .line 132
    new-instance v1, Lcom/narvii/list/DivideColumnAdapter;

    invoke-direct {v1, p0}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 133
    iget-object v2, p0, Lcom/narvii/catalog/search/CatalogSearchFragment;->selAdapter:Lcom/narvii/list/select/SelectableAdapter;

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v4}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 134
    invoke-virtual {v1, v0}, Lcom/narvii/list/DivideColumnAdapter;->setSupportLongClick(Z)V

    .line 136
    new-instance v2, Lcom/narvii/catalog/search/CatalogSearchFragment$SearchAdapter;

    invoke-direct {v2, p0, p0}, Lcom/narvii/catalog/search/CatalogSearchFragment$SearchAdapter;-><init>(Lcom/narvii/catalog/search/CatalogSearchFragment;Lcom/narvii/app/NVContext;)V

    .line 138
    new-instance v4, Lcom/narvii/list/MergeAdapter;

    invoke-direct {v4, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 139
    invoke-virtual {v4, p1, v3}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 140
    invoke-virtual {v4, v2, v3}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 141
    invoke-virtual {v4, v1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 143
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-object v4
.end method

.method fromMyCatalog()Z
    .locals 1

    const-string v0, "fromMyCatalog"

    .line 163
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method fromOfficialCatalog()Z
    .locals 1

    const-string v0, "fromOfficialCatalog"

    .line 167
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isCurator()Z
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/narvii/catalog/search/CatalogSearchFragment;->uid:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "account"

    .line 154
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 155
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Lcom/narvii/model/User;->isLeader()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method isMine()Z
    .locals 2

    const-string v0, "account"

    .line 148
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 149
    iget-object v1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment;->uid:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    const-string p1, "category"

    .line 174
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/narvii/model/ItemCategory;

    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ItemCategory;

    invoke-virtual {p0, p1}, Lcom/narvii/catalog/search/CatalogSearchFragment;->addTo(Lcom/narvii/model/ItemCategory;)V

    return-void

    .line 177
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 70
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0f0f48

    .line 71
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    const-string/jumbo p1, "uid"

    .line 72
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment;->uid:Ljava/lang/String;

    .line 74
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {p1, p0}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 75
    iget-object p1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "catalog"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "curationEnabled"

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/narvii/modulization/CommunityConfigHelper;->getModuleBoolean([Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment;->isCurationEnabled:Z

    const-string p1, "isAllEntry"

    .line 77
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment;->isAllEntryPage:Z

    .line 78
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const p2, 0x7f0f0f6c

    const/4 v0, 0x0

    .line 102
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 116
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f0f6c

    if-ne v0, v1, :cond_0

    .line 117
    iget-object p1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment;->selAdapter:Lcom/narvii/list/select/SelectableAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/list/select/SelectableAdapter;->startSelect(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1

    .line 120
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    .line 107
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 108
    invoke-virtual {p0}, Lcom/narvii/catalog/search/CatalogSearchFragment;->isMine()Z

    move-result v0

    .line 109
    invoke-virtual {p0}, Lcom/narvii/catalog/search/CatalogSearchFragment;->isCurator()Z

    move-result v1

    const v2, 0x7f0f0f6c

    .line 110
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-boolean v2, p0, Lcom/narvii/catalog/search/CatalogSearchFragment;->isAllEntryPage:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/narvii/catalog/search/CatalogSearchFragment;->isCurationEnabled:Z

    if-eqz v2, :cond_1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/narvii/catalog/search/CatalogSearchFragment;->adapter:Lcom/narvii/catalog/search/CatalogSearchFragment$Adapter;

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/catalog/search/CatalogSearchFragment;->adapter:Lcom/narvii/catalog/search/CatalogSearchFragment$Adapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 110
    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 94
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

    .line 95
    iget-object v0, p0, Lcom/narvii/catalog/search/CatalogSearchFragment;->selAdapter:Lcom/narvii/list/select/SelectableAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/select/SelectableAdapter;->inSelect()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/catalog/search/CatalogSearchFragment;->isMine()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/narvii/catalog/search/CatalogSearchFragment;->selAdapter:Lcom/narvii/list/select/SelectableAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/select/SelectableAdapter;->finishSelect()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 83
    invoke-super {p0, p1, p2}, Lcom/narvii/catalog/CatalogThemeFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 86
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    const-string p1, "previewMedia"

    .line 88
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/narvii/model/Media;

    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Media;

    .line 89
    iget-object p2, p0, Lcom/narvii/catalog/CatalogThemeFragment;->backgroundImageView:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p2, p1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    return-void
.end method
