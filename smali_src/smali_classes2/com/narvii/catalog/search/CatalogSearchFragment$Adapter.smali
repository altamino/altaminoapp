.class Lcom/narvii/catalog/search/CatalogSearchFragment$Adapter;
.super Lcom/narvii/catalog/search/CatalogSearchAdapter;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment$Adapter;->this$0:Lcom/narvii/catalog/search/CatalogSearchFragment;

    .line 3
    .line 4
    iget-object v0, p1, Lcom/narvii/catalog/search/CatalogSearchFragment;->uid:Ljava/lang/String;

    .line 5
    .line 6
    iget-boolean v1, p1, Lcom/narvii/catalog/search/CatalogSearchFragment;->isAllEntryPage:Z

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1, v0, v1}, Lcom/narvii/catalog/search/CatalogSearchAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;Z)V

    .line 10
    return-void
.end method


# virtual methods
.method public canSelect(ILjava/lang/Object;Z)Z
    .locals 2

    .line 1
    const/4 p1, 0x1

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    iget-object p2, p0, Lcom/narvii/catalog/search/CatalogSearchFragment$Adapter;->this$0:Lcom/narvii/catalog/search/CatalogSearchFragment;

    .line 6
    .line 7
    iget-object p2, p2, Lcom/narvii/catalog/search/CatalogSearchFragment;->selAdapter:Lcom/narvii/list/select/SelectableAdapter;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/narvii/list/select/SelectableAdapter;->selections()Ljava/util/List;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    .line 14
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 15
    move-result p2

    .line 16
    .line 17
    const/16 p3, 0x32

    .line 18
    .line 19
    if-lt p2, p3, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/catalog/search/CatalogSearchFragment$Adapter;->this$0:Lcom/narvii/catalog/search/CatalogSearchFragment;

    .line 26
    .line 27
    new-array p1, p1, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object p3

    .line 32
    const/4 v1, 0x0

    .line 33
    .line 34
    aput-object p3, p1, v1

    .line 35
    .line 36
    .line 37
    const p3, 0x7f120202

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p3, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-static {p2, p1, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 49
    return v1

    .line 50
    :cond_0
    return p1
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/item/list/ItemGridExAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    const p2, 0x7f0a0633

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    iget-object p3, p0, Lcom/narvii/catalog/search/CatalogSearchFragment$Adapter;->this$0:Lcom/narvii/catalog/search/CatalogSearchFragment;

    .line 14
    .line 15
    iget-object p3, p3, Lcom/narvii/catalog/search/CatalogSearchFragment;->selAdapter:Lcom/narvii/list/select/SelectableAdapter;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p3}, Lcom/narvii/list/select/SelectableAdapter;->inSelect()Z

    .line 19
    move-result p3

    .line 20
    .line 21
    if-eqz p3, :cond_0

    .line 22
    const/4 p3, 0x4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p3, 0x0

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 28
    return-object p1
.end method

.method public isSelectable(ILjava/lang/Object;)Z
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment$Adapter;->this$0:Lcom/narvii/catalog/search/CatalogSearchFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/catalog/search/CatalogSearchFragment;->isMine()Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment$Adapter;->this$0:Lcom/narvii/catalog/search/CatalogSearchFragment;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/catalog/search/CatalogSearchFragment;->isCurator()Z

    .line 14
    move-result p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 21
    :goto_1
    return p1
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ItemListResponse;I)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/item/list/ItemGridExAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ItemListResponse;I)V

    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->invalidateOptionsMenu()V

    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/model/api/ItemListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/catalog/search/CatalogSearchFragment$Adapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ItemListResponse;I)V

    return-void
.end method

.method public onSelectModeChanged(Z)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment$Adapter;->this$0:Lcom/narvii/catalog/search/CatalogSearchFragment;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment$Adapter;->this$0:Lcom/narvii/catalog/search/CatalogSearchFragment;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/narvii/catalog/search/CatalogSearchFragment;->actionModeCallback:Landroid/view/ActionMode$Callback;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iput-object v0, p1, Lcom/narvii/catalog/search/CatalogSearchFragment;->actionMode:Landroid/view/ActionMode;

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment$Adapter;->this$0:Lcom/narvii/catalog/search/CatalogSearchFragment;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/narvii/catalog/search/CatalogSearchFragment;->actionMode:Landroid/view/ActionMode;

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 32
    return-void
.end method

.method public onSelectionChanged(Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment$Adapter;->this$0:Lcom/narvii/catalog/search/CatalogSearchFragment;

    .line 3
    .line 4
    iget-object p2, p1, Lcom/narvii/catalog/search/CatalogSearchFragment;->actionMode:Landroid/view/ActionMode;

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    iget-object p1, p1, Lcom/narvii/catalog/search/CatalogSearchFragment;->selAdapter:Lcom/narvii/list/select/SelectableAdapter;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/list/select/SelectableAdapter;->selections()Ljava/util/List;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 16
    move-result p1

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    iget-object p1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment$Adapter;->this$0:Lcom/narvii/catalog/search/CatalogSearchFragment;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/narvii/catalog/search/CatalogSearchFragment;->actionMode:Landroid/view/ActionMode;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    .line 31
    :cond_0
    return-void
.end method

.method protected openItemDetailIntent(Lcom/narvii/model/Item;I)Landroid/content/Intent;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/item/list/ItemGridExAdapter;->openItemDetailIntent(Lcom/narvii/model/Item;I)Landroid/content/Intent;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget-object p2, p0, Lcom/narvii/catalog/search/CatalogSearchFragment$Adapter;->this$0:Lcom/narvii/catalog/search/CatalogSearchFragment;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/narvii/catalog/search/CatalogSearchFragment;->fromMyCatalog()Z

    .line 10
    move-result p2

    .line 11
    .line 12
    const-string v0, "fromMyCatalog"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 16
    .line 17
    iget-object p2, p0, Lcom/narvii/catalog/search/CatalogSearchFragment$Adapter;->this$0:Lcom/narvii/catalog/search/CatalogSearchFragment;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/narvii/catalog/search/CatalogSearchFragment;->fromOfficialCatalog()Z

    .line 21
    move-result p2

    .line 22
    .line 23
    const-string v0, "fromOfficialCatalog"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 27
    return-object p1
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/catalog/search/CatalogSearchAdapter;->setKeyword(Ljava/lang/String;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/catalog/search/CatalogSearchFragment$Adapter;->this$0:Lcom/narvii/catalog/search/CatalogSearchFragment;

    .line 6
    .line 7
    .line 8
    const v0, 0x7f0d008f

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    .line 12
    return-void
.end method
