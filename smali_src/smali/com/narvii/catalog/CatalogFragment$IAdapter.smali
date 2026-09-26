.class Lcom/narvii/catalog/CatalogFragment$IAdapter;
.super Lcom/narvii/catalog/CatalogItemAdapter;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 3
    .line 4
    iget-object v0, p1, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, v0}, Lcom/narvii/catalog/CatalogItemAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 8
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
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 6
    .line 7
    iget-object p2, p2, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

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
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

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

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/catalog/CatalogFragment;->isReady()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    const-string v1, "/item"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/narvii/catalog/CatalogFragment;->isAllEntry()Z

    .line 26
    move-result v1

    .line 27
    .line 28
    const-string/jumbo v2, "type"

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    const-string p1, "keywords"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_1
    iget-object v1, p0, Lcom/narvii/catalog/CatalogItemAdapter;->categoryId:Ljava/lang/String;

    .line 39
    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    iget-object v3, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 43
    .line 44
    iget-object v3, v3, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    .line 45
    .line 46
    if-nez v3, :cond_2

    .line 47
    .line 48
    const-string p1, "catalog-all"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_2
    if-nez v1, :cond_3

    .line 55
    .line 56
    const-string/jumbo p1, "user-all"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 60
    .line 61
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 62
    .line 63
    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    .line 64
    .line 65
    const-string/jumbo v1, "uid"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 69
    .line 70
    .line 71
    :goto_0
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 72
    move-result-object p1

    .line 73
    return-object p1

    .line 74
    .line 75
    .line 76
    :cond_3
    invoke-super {p0, p1}, Lcom/narvii/catalog/CatalogItemAdapter;->createRequest(Z)Lcom/narvii/util/http/ApiRequest;

    .line 77
    move-result-object p1

    .line 78
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/catalog/CatalogFragment;->isMine()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-object p1

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/catalog/CatalogItemGridAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
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
    iget-object p3, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 14
    .line 15
    iget-object p3, p3, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

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
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/catalog/CatalogFragment;->isMine()Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/catalog/CatalogFragment;->isCurator()Z

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

.method public keepForLeaderAndCurator()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/catalog/CatalogFragment;->fromOfficialCatalog()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/catalog/CatalogFragment;->isAllEntry()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    .line 19
    :goto_0
    iput-boolean v0, p0, Lcom/narvii/item/list/ItemGridExAdapter;->showPin:Z

    .line 20
    .line 21
    .line 22
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 23
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/item/list/ItemGridExAdapter;->onNotification(Lcom/narvii/notification/Notification;)V

    .line 4
    .line 5
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 6
    .line 7
    instance-of v0, v0, Lcom/narvii/model/Item;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "new"

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    iget-object v0, p1, Lcom/narvii/notification/Notification;->uid:Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/narvii/model/User;->eliminateZeroUid(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    move-result v0

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    const/4 v0, 0x1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    .line 36
    :cond_0
    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ItemListResponse;I)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/item/list/ItemGridExAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ItemListResponse;I)V

    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->invalidateOptionsMenu()V

    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 4
    invoke-virtual {p1}, Lcom/narvii/catalog/CatalogFragment;->update()V

    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/model/api/ItemListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/catalog/CatalogFragment$IAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ItemListResponse;I)V

    return-void
.end method

.method public onSelectModeChanged(Z)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/catalog/CatalogFragment;->isAllEntry()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    iget-object v2, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 20
    .line 21
    iget-object v2, v2, Lcom/narvii/catalog/CatalogFragment;->actionModeCallback:Landroid/view/ActionMode$Callback;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    iput-object v1, v0, Lcom/narvii/catalog/CatalogFragment;->actionMode:Landroid/view/ActionMode;

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    .line 33
    const/4 v1, 0x0

    .line 34
    .line 35
    iput-boolean v1, v0, Lcom/narvii/catalog/CatalogFragment$SelAdapter;->selAll:Z

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/narvii/catalog/CatalogFragment;->actionMode:Landroid/view/ActionMode;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 48
    .line 49
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/narvii/catalog/CatalogFragment;->searchAdapter:Lcom/narvii/catalog/CatalogFragment$SearchAdapter;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1}, Lcom/narvii/catalog/search/CatalogSearchBarAdapter;->setInSelect(Z)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment$IAdapter;->notifyDataSetChanged()V

    .line 58
    return-void
.end method

.method public onSelectionChanged(Ljava/lang/Object;Z)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 3
    .line 4
    iget-object p2, p1, Lcom/narvii/catalog/CatalogFragment;->actionMode:Landroid/view/ActionMode;

    .line 5
    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    iget-object v0, p1, Lcom/narvii/catalog/CatalogFragment;->selAdapter:Lcom/narvii/catalog/CatalogFragment$SelAdapter;

    .line 9
    .line 10
    iget-boolean v1, v0, Lcom/narvii/catalog/CatalogFragment$SelAdapter;->selAll:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    const v0, 0x7f1201ec

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/list/select/SelectableAdapter;->selections()Ljava/util/List;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 28
    move-result p1

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->actionMode:Landroid/view/ActionMode;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    .line 43
    :cond_1
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
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/narvii/catalog/CatalogFragment;->fromMyCatalog()Z

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
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$IAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/narvii/catalog/CatalogFragment;->fromOfficialCatalog()Z

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

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/catalog/CatalogFragment$IAdapter;->notifyDataSetChanged()V

    .line 11
    return-void
.end method
