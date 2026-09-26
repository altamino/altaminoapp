.class Lcom/narvii/catalog/CatalogFragment$CAdapter;
.super Lcom/narvii/catalog/CategoryListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/catalog/CatalogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/catalog/CatalogFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/catalog/CatalogFragment;Lcom/narvii/catalog/CatalogItemAdapter;)V
    .locals 2

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 3
    .line 4
    iget-object v0, p1, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v1, p1, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/narvii/catalog/CategoryListAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;Ljava/lang/String;Lcom/narvii/catalog/CatalogItemAdapter;)V

    .line 10
    return-void
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->uid:Ljava/lang/String;

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
    return v0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-super {p0}, Lcom/narvii/catalog/CategoryListAdapter;->isEmpty()Z

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public keepForLeaderAndCurator()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->uid:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/catalog/CatalogFragment;->fromOfficialCatalog()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->invalidateOptionsMenu()V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/catalog/CatalogFragment;->update()V

    .line 12
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/ItemCategory;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    check-cast p3, Lcom/narvii/model/ItemCategory;

    .line 7
    .line 8
    const-class p1, Lcom/narvii/catalog/CatalogFragment;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    const-string/jumbo p2, "uid"

    .line 15
    .line 16
    iget-object p4, p0, Lcom/narvii/catalog/CategoryListAdapter;->uid:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    .line 21
    iget-object p2, p3, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 22
    .line 23
    const-string p4, "categoryId"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    .line 28
    const-string p2, "category"

    .line 29
    .line 30
    .line 31
    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    move-result-object p4

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    .line 37
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 38
    .line 39
    .line 40
    invoke-static {p2}, Lcom/narvii/catalog/CatalogFragment;->t(Lcom/narvii/catalog/CatalogFragment;)I

    .line 41
    move-result p2

    .line 42
    const/4 p4, 0x1

    .line 43
    add-int/2addr p2, p4

    .line 44
    .line 45
    const-string p5, "depth"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 49
    .line 50
    iget-object p2, p0, Lcom/narvii/catalog/CategoryListAdapter;->previewMap:Ljava/util/HashMap;

    .line 51
    .line 52
    iget-object p3, p3, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    move-result-object p2

    .line 57
    .line 58
    check-cast p2, Ljava/util/List;

    .line 59
    .line 60
    if-eqz p2, :cond_0

    .line 61
    .line 62
    .line 63
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 64
    move-result p3

    .line 65
    .line 66
    if-lez p3, :cond_0

    .line 67
    const/4 p3, 0x0

    .line 68
    .line 69
    .line 70
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    move-result-object p2

    .line 72
    .line 73
    check-cast p2, Lcom/narvii/model/Item;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    .line 77
    move-result-object p2

    .line 78
    goto :goto_0

    .line 79
    :cond_0
    const/4 p2, 0x0

    .line 80
    .line 81
    :goto_0
    const-string p3, "previewMedia"

    .line 82
    .line 83
    .line 84
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    move-result-object p2

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    .line 90
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Lcom/narvii/catalog/CatalogFragment;->fromMyCatalog()Z

    .line 94
    move-result p2

    .line 95
    .line 96
    const-string p3, "fromMyCatalog"

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 100
    .line 101
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2}, Lcom/narvii/catalog/CatalogFragment;->fromOfficialCatalog()Z

    .line 105
    move-result p2

    .line 106
    .line 107
    const-string p3, "fromOfficialCatalog"

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 111
    .line 112
    const-string p2, "nostat"

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 116
    .line 117
    .line 118
    invoke-static {p0, p1}, Lcom/narvii/catalog/CatalogFragment$CAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 119
    return p4

    .line 120
    .line 121
    .line 122
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 123
    move-result p1

    .line 124
    return p1
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/ItemCategory;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/catalog/CatalogFragment;->isMine()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/catalog/CatalogFragment;->isCurator()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    :cond_0
    check-cast p3, Lcom/narvii/model/ItemCategory;

    .line 23
    .line 24
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 28
    move-result-object p2

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 p2, 0x1

    .line 33
    .line 34
    new-array p4, p2, [Ljava/lang/CharSequence;

    .line 35
    .line 36
    iget-object p5, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 37
    .line 38
    .line 39
    const v0, 0x7f120438

    .line 40
    .line 41
    .line 42
    invoke-virtual {p5, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 43
    move-result-object p5

    .line 44
    const/4 v0, 0x0

    .line 45
    .line 46
    aput-object p5, p4, v0

    .line 47
    .line 48
    new-instance p5, Lcom/narvii/catalog/CatalogFragment$CAdapter$1;

    .line 49
    .line 50
    .line 51
    invoke-direct {p5, p0, p3}, Lcom/narvii/catalog/CatalogFragment$CAdapter$1;-><init>(Lcom/narvii/catalog/CatalogFragment$CAdapter;Lcom/narvii/model/ItemCategory;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p4, p5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 58
    return p2

    .line 59
    .line 60
    .line 61
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 62
    move-result p1

    .line 63
    return p1
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/catalog/CategoryListAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->aiadapter:Lcom/narvii/catalog/AllItemAdapter;

    .line 8
    const/4 p2, 0x0

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iput-boolean v0, p1, Lcom/narvii/catalog/AllItemAdapter;->showLoading:Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0, p2}, Lcom/narvii/catalog/AllItemAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->aiadapter:Lcom/narvii/catalog/AllItemAdapter;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 24
    .line 25
    :cond_0
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->allEntryAdapter:Lcom/narvii/catalog/CatalogFragment$MyAllEntryAdapter;

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iput-boolean v0, p1, Lcom/narvii/catalog/AllEntriesAdapter;->showLoading:Z

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0, p2}, Lcom/narvii/list/NVAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->allEntryAdapter:Lcom/narvii/catalog/CatalogFragment$MyAllEntryAdapter;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 42
    :cond_1
    return-void
.end method

.method sendCategoryRequest()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/catalog/CatalogFragment;->isReady()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 11
    .line 12
    iget-boolean v1, v0, Lcom/narvii/catalog/CatalogFragment;->showAll:Z

    .line 13
    .line 14
    if-nez v1, :cond_2

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/catalog/CatalogFragment;->isAllEntry()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/narvii/catalog/CatalogFragment;->isAllEntry()Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    goto :goto_1

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-super {p0}, Lcom/narvii/catalog/CategoryListAdapter;->sendCategoryRequest()V

    .line 34
    goto :goto_1

    .line 35
    .line 36
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->itemAdapter:Lcom/narvii/catalog/CatalogItemAdapter;

    .line 37
    const/4 v1, 0x1

    .line 38
    .line 39
    iput-boolean v1, v0, Lcom/narvii/catalog/CatalogItemAdapter;->isLeaf:Z

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 42
    .line 43
    iget-boolean v0, v0, Lcom/narvii/catalog/CatalogFragment;->showAll:Z

    .line 44
    :cond_3
    :goto_1
    return-void
.end method

.method protected setResponse(Lcom/narvii/model/api/CategoryListResponse;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/catalog/CategoryListAdapter;->setResponse(Lcom/narvii/model/api/CategoryListResponse;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/narvii/catalog/CatalogFragment;->aiadapter:Lcom/narvii/catalog/AllItemAdapter;

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iput-boolean v1, v0, Lcom/narvii/catalog/AllItemAdapter;->showLoading:Z

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/model/api/CategoryListResponse;->getRootCategory()Lcom/narvii/model/ItemCategory;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    iget v2, v2, Lcom/narvii/model/ItemCategory;->itemsCount:I

    .line 19
    .line 20
    iput v2, v0, Lcom/narvii/catalog/AllItemAdapter;->count:I

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/narvii/catalog/CatalogFragment;->aiadapter:Lcom/narvii/catalog/AllItemAdapter;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/narvii/catalog/CatalogFragment;->allEntryAdapter:Lcom/narvii/catalog/CatalogFragment$MyAllEntryAdapter;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    iget-object p1, p1, Lcom/narvii/model/api/CategoryListResponse;->allEntriesItemCategory:Lcom/narvii/model/ItemCategory;

    .line 36
    .line 37
    if-nez p1, :cond_1

    .line 38
    const/4 v2, 0x0

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_1
    iget v2, p1, Lcom/narvii/model/ItemCategory;->itemsCount:I

    .line 42
    .line 43
    :goto_0
    iput v2, v0, Lcom/narvii/catalog/AllEntriesAdapter;->count:I

    .line 44
    .line 45
    iput-boolean v1, v0, Lcom/narvii/catalog/AllEntriesAdapter;->showLoading:Z

    .line 46
    .line 47
    if-nez p1, :cond_2

    .line 48
    const/4 p1, 0x0

    .line 49
    goto :goto_1

    .line 50
    .line 51
    :cond_2
    iget-object p1, p1, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 52
    .line 53
    :goto_1
    iput-object p1, v0, Lcom/narvii/catalog/AllEntriesAdapter;->allEntryCategoryId:Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 57
    .line 58
    .line 59
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/catalog/CategoryListAdapter;->getType()I

    .line 60
    move-result p1

    .line 61
    const/4 v0, 0x3

    .line 62
    .line 63
    if-ne p1, v0, :cond_4

    .line 64
    .line 65
    iget-object p1, p0, Lcom/narvii/catalog/CategoryListAdapter;->itemAdapter:Lcom/narvii/catalog/CatalogItemAdapter;

    .line 66
    .line 67
    iput-boolean v1, p1, Lcom/narvii/catalog/CatalogItemAdapter;->isLeaf:Z

    .line 68
    :cond_4
    return-void
.end method
