.class Lcom/narvii/catalog/search/CatalogSearchFragment$Adapter;
.super Lcom/narvii/catalog/search/CatalogSearchAdapter;
.source "CatalogSearchFragment.java"

# interfaces
.implements Lcom/narvii/list/select/SelectableSource;
.implements Lcom/narvii/list/select/SelectableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/catalog/search/CatalogSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/catalog/search/CatalogSearchFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/catalog/search/CatalogSearchFragment;)V
    .locals 2

    .line 205
    iput-object p1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment$Adapter;->this$0:Lcom/narvii/catalog/search/CatalogSearchFragment;

    .line 206
    iget-object v0, p1, Lcom/narvii/catalog/search/CatalogSearchFragment;->uid:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/narvii/catalog/search/CatalogSearchFragment;->isAllEntryPage:Z

    invoke-direct {p0, p1, v0, v1}, Lcom/narvii/catalog/search/CatalogSearchAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public canSelect(ILjava/lang/Object;Z)Z
    .locals 3

    const/4 p1, 0x1

    if-eqz p3, :cond_0

    .line 244
    iget-object p2, p0, Lcom/narvii/catalog/search/CatalogSearchFragment$Adapter;->this$0:Lcom/narvii/catalog/search/CatalogSearchFragment;

    iget-object p2, p2, Lcom/narvii/catalog/search/CatalogSearchFragment;->selAdapter:Lcom/narvii/list/select/SelectableAdapter;

    invoke-virtual {p2}, Lcom/narvii/list/select/SelectableAdapter;->selections()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/16 p3, 0x32

    if-lt p2, p3, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/catalog/search/CatalogSearchFragment$Adapter;->this$0:Lcom/narvii/catalog/search/CatalogSearchFragment;

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

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 231
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/item/list/ItemGridExAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0904e4

    .line 232
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/catalog/search/CatalogSearchFragment$Adapter;->this$0:Lcom/narvii/catalog/search/CatalogSearchFragment;

    iget-object p3, p3, Lcom/narvii/catalog/search/CatalogSearchFragment;->selAdapter:Lcom/narvii/list/select/SelectableAdapter;

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

    .line 238
    iget-object p1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment$Adapter;->this$0:Lcom/narvii/catalog/search/CatalogSearchFragment;

    invoke-virtual {p1}, Lcom/narvii/catalog/search/CatalogSearchFragment;->isMine()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment$Adapter;->this$0:Lcom/narvii/catalog/search/CatalogSearchFragment;

    invoke-virtual {p1}, Lcom/narvii/catalog/search/CatalogSearchFragment;->isCurator()Z

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

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ItemListResponse;I)V
    .locals 0

    .line 217
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/item/list/ItemGridExAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ItemListResponse;I)V

    .line 218
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->invalidateOptionsMenu()V

    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 204
    check-cast p2, Lcom/narvii/model/api/ItemListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/catalog/search/CatalogSearchFragment$Adapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ItemListResponse;I)V

    return-void
.end method

.method public onSelectModeChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 254
    iget-object p1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment$Adapter;->this$0:Lcom/narvii/catalog/search/CatalogSearchFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment$Adapter;->this$0:Lcom/narvii/catalog/search/CatalogSearchFragment;

    iget-object v1, v1, Lcom/narvii/catalog/search/CatalogSearchFragment;->actionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p1, Lcom/narvii/catalog/search/CatalogSearchFragment;->actionMode:Landroid/view/ActionMode;

    goto :goto_0

    .line 256
    :cond_0
    iget-object p1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment$Adapter;->this$0:Lcom/narvii/catalog/search/CatalogSearchFragment;

    iget-object p1, p1, Lcom/narvii/catalog/search/CatalogSearchFragment;->actionMode:Landroid/view/ActionMode;

    if-eqz p1, :cond_1

    .line 257
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 260
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onSelectionChanged(Ljava/lang/Object;Z)V
    .locals 0

    .line 265
    iget-object p1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment$Adapter;->this$0:Lcom/narvii/catalog/search/CatalogSearchFragment;

    iget-object p2, p1, Lcom/narvii/catalog/search/CatalogSearchFragment;->actionMode:Landroid/view/ActionMode;

    if-eqz p2, :cond_0

    .line 266
    iget-object p1, p1, Lcom/narvii/catalog/search/CatalogSearchFragment;->selAdapter:Lcom/narvii/list/select/SelectableAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/select/SelectableAdapter;->selections()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 267
    iget-object p1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment$Adapter;->this$0:Lcom/narvii/catalog/search/CatalogSearchFragment;

    iget-object p1, p1, Lcom/narvii/catalog/search/CatalogSearchFragment;->actionMode:Landroid/view/ActionMode;

    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    :cond_0
    return-void
.end method

.method protected openItemDetailIntent(Lcom/narvii/model/Item;I)Landroid/content/Intent;
    .locals 1

    .line 223
    invoke-super {p0, p1, p2}, Lcom/narvii/item/list/ItemGridExAdapter;->openItemDetailIntent(Lcom/narvii/model/Item;I)Landroid/content/Intent;

    move-result-object p1

    .line 224
    iget-object p2, p0, Lcom/narvii/catalog/search/CatalogSearchFragment$Adapter;->this$0:Lcom/narvii/catalog/search/CatalogSearchFragment;

    invoke-virtual {p2}, Lcom/narvii/catalog/search/CatalogSearchFragment;->fromMyCatalog()Z

    move-result p2

    const-string v0, "fromMyCatalog"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 225
    iget-object p2, p0, Lcom/narvii/catalog/search/CatalogSearchFragment$Adapter;->this$0:Lcom/narvii/catalog/search/CatalogSearchFragment;

    invoke-virtual {p2}, Lcom/narvii/catalog/search/CatalogSearchFragment;->fromOfficialCatalog()Z

    move-result p2

    const-string v0, "fromOfficialCatalog"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p1
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 1

    .line 211
    invoke-super {p0, p1}, Lcom/narvii/catalog/search/CatalogSearchAdapter;->setKeyword(Ljava/lang/String;)V

    .line 212
    iget-object p1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment$Adapter;->this$0:Lcom/narvii/catalog/search/CatalogSearchFragment;

    const v0, 0x7f0b0079

    invoke-virtual {p1, v0}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    return-void
.end method
