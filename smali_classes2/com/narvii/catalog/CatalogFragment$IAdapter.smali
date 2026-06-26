.class Lcom/narvii/catalog/CatalogFragment$IAdapter;
.super Lcom/narvii/catalog/CatalogItemAdapter;
.source "CatalogFragment.java"

# interfaces
.implements Lcom/narvii/list/select/SelectableSource;
.implements Lcom/narvii/list/select/SelectableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/catalog/CatalogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/catalog/CatalogFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/catalog/CatalogFragment;)V
    .locals 1

    .line 1196
    iput-object p1, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 1197
    iget-object v0, p1, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/narvii/catalog/CatalogItemAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public canSelect(ILjava/lang/Object;Z)Z
    .locals 3

    const/4 p1, 0x1

    if-eqz p3, :cond_0

    .line 1268
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object p2, p2, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    invoke-virtual {p2}, Lcom/narvii/list/select/SelectableAdapter;->selections()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/16 p3, 0x32

    if-lt p2, p3, :cond_0

    .line 1269
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    const v1, 0x7f0f01b3

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v2, 0x0

    aput-object p3, p1, v2

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return v2

    :cond_0
    return p1
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 1215
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {v0}, Lcom/narvii/catalog/CatalogFragment;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1218
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/item"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 1219
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {v1}, Lcom/narvii/catalog/CatalogFragment;->isAllEntry()Z

    move-result v1

    const-string/jumbo v2, "type"

    if-eqz v1, :cond_1

    const-string p1, "keywords"

    .line 1220
    invoke-virtual {v0, v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_0

    .line 1221
    :cond_1
    iget-object v1, p0, Lcom/narvii/catalog/CatalogItemAdapter;->categoryId:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object v1, v1, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string p1, "catalog-all"

    .line 1222
    invoke-virtual {v0, v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_0

    .line 1223
    :cond_2
    iget-object v1, p0, Lcom/narvii/catalog/CatalogItemAdapter;->categoryId:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string/jumbo p1, "user-all"

    .line 1224
    invoke-virtual {v0, v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1225
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1229
    :goto_0
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1

    .line 1227
    :cond_3
    invoke-super {p0, p1}, Lcom/narvii/catalog/CatalogItemAdapter;->createRequest(Z)Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Item;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/narvii/model/Item;",
            ">;"
        }
    .end annotation

    .line 1246
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {v0}, Lcom/narvii/catalog/CatalogFragment;->isMine()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 1249
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/catalog/CatalogItemGridAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1255
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/item/list/ItemGridExAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0904e4

    .line 1256
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object p3, p3, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    invoke-virtual {p3}, Lcom/narvii/list/select/SelectableAdapter;->inSelect()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x4

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    return-object p1
.end method

.method public isSelectable(ILjava/lang/Object;)Z
    .locals 0

    .line 1262
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {p1}, Lcom/narvii/catalog/CatalogFragment;->isMine()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {p1}, Lcom/narvii/catalog/CatalogFragment;->isCurator()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public keepForLeaderAndCurator()Z
    .locals 1

    .line 1234
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object v0, v0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {v0}, Lcom/narvii/catalog/CatalogFragment;->fromOfficialCatalog()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 1312
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {v0}, Lcom/narvii/catalog/CatalogFragment;->isAllEntry()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object v0, v0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/narvii/item/list/ItemGridExAdapter;->showPin:Z

    .line 1313
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 1304
    invoke-super {p0, p1}, Lcom/narvii/item/list/ItemGridExAdapter;->onNotification(Lcom/narvii/notification/Notification;)V

    .line 1305
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/Item;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "new"

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/narvii/notification/Notification;->uid:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/model/User;->eliminateZeroUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object v1, v1, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1306
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    :cond_0
    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ItemListResponse;I)V
    .locals 0

    .line 1239
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/item/list/ItemGridExAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ItemListResponse;I)V

    .line 1240
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->invalidateOptionsMenu()V

    .line 1241
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {p1}, Lcom/narvii/catalog/CatalogFragment;->update()V

    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1195
    check-cast p2, Lcom/narvii/model/api/ItemListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/catalog/CatalogFragment$IAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ItemListResponse;I)V

    return-void
.end method

.method public onSelectModeChanged(Z)V
    .locals 3

    .line 1277
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {v0}, Lcom/narvii/catalog/CatalogFragment;->isAllEntry()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 1281
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object v2, v2, Lcom/narvii/catalog/CatalogFragment;->actionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/catalog/CatalogFragment;->actionMode:Landroid/view/ActionMode;

    goto :goto_0

    .line 1283
    :cond_1
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object v0, v0, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/narvii/catalog/CatalogFragment$SelAdapter;->selAll:Z

    .line 1284
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1285
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object v0, v0, Lcom/narvii/catalog/CatalogFragment;->actionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    .line 1286
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1289
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object v0, v0, Lcom/narvii/catalog/CatalogFragment;->searchAdapter:Lcom/narvii/catalog/CatalogFragment$SearchAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/catalog/search/CatalogSearchBarAdapter;->setInSelect(Z)V

    .line 1290
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment$IAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onSelectionChanged(Ljava/lang/Object;Z)V
    .locals 2

    .line 1295
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object p2, p1, Lcom/narvii/catalog/CatalogFragment;->actionMode:Landroid/view/ActionMode;

    if-eqz p2, :cond_1

    .line 1296
    iget-object v0, p1, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    iget-boolean v1, v0, Lcom/narvii/catalog/CatalogFragment$SelAdapter;->selAll:Z

    if-eqz v1, :cond_0

    const v0, 0x7f0f019d

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1297
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/list/select/SelectableAdapter;->selections()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 1296
    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 1298
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->actionMode:Landroid/view/ActionMode;

    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    :cond_1
    return-void
.end method

.method protected openItemDetailIntent(Lcom/narvii/model/Item;I)Landroid/content/Intent;
    .locals 1

    .line 1207
    invoke-super {p0, p1, p2}, Lcom/narvii/item/list/ItemGridExAdapter;->openItemDetailIntent(Lcom/narvii/model/Item;I)Landroid/content/Intent;

    move-result-object p1

    .line 1208
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {p2}, Lcom/narvii/catalog/CatalogFragment;->fromMyCatalog()Z

    move-result p2

    const-string v0, "fromMyCatalog"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1209
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {p2}, Lcom/narvii/catalog/CatalogFragment;->fromOfficialCatalog()Z

    move-result p2

    const-string v0, "fromOfficialCatalog"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p1
.end method

.method updateList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Item;",
            ">;)V"
        }
    .end annotation

    .line 1201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 1202
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment$IAdapter;->notifyDataSetChanged()V

    return-void
.end method
