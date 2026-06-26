.class Lcom/narvii/catalog/CatalogFragment$CAdapter;
.super Lcom/narvii/catalog/CategoryListAdapter;
.source "CatalogFragment.java"


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

    .line 1071
    iput-object p1, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 1072
    iget-object v0, p1, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    iget-object v1, p1, Lcom/narvii/catalog/CatalogFragment;->categoryId:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/narvii/catalog/CategoryListAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;Ljava/lang/String;Lcom/narvii/catalog/CatalogItemAdapter;)V

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    .line 1098
    iget-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->uid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1101
    :cond_0
    invoke-super {p0}, Lcom/narvii/catalog/CategoryListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keepForLeaderAndCurator()Z
    .locals 1

    .line 1093
    iget-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->uid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

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

    .line 1106
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1107
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->invalidateOptionsMenu()V

    .line 1108
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {v0}, Lcom/narvii/catalog/CatalogFragment;->update()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1149
    instance-of v0, p3, Lcom/narvii/model/ItemCategory;

    if-eqz v0, :cond_1

    .line 1150
    check-cast p3, Lcom/narvii/model/ItemCategory;

    .line 1151
    const-class p1, Lcom/narvii/catalog/CatalogFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 1152
    iget-object p2, p0, Lcom/narvii/catalog/CategoryListAdapter;->uid:Ljava/lang/String;

    const-string/jumbo p4, "uid"

    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1153
    iget-object p2, p3, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    const-string p4, "categoryId"

    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1154
    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p4, "category"

    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1156
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-static {p2}, Lcom/narvii/catalog/CatalogFragment;->access$300(Lcom/narvii/catalog/CatalogFragment;)I

    move-result p2

    const/4 p4, 0x1

    add-int/2addr p2, p4

    const-string p5, "depth"

    invoke-virtual {p1, p5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1157
    iget-object p2, p0, Lcom/narvii/catalog/CategoryListAdapter;->previewMap:Ljava/util/HashMap;

    iget-object p3, p3, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_0

    .line 1158
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_0

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Item;

    invoke-virtual {p2}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1159
    :goto_0
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "previewMedia"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1160
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {p2}, Lcom/narvii/catalog/CatalogFragment;->fromMyCatalog()Z

    move-result p2

    const-string p3, "fromMyCatalog"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1161
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {p2}, Lcom/narvii/catalog/CatalogFragment;->fromOfficialCatalog()Z

    move-result p2

    const-string p3, "fromOfficialCatalog"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "nostat"

    .line 1162
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1163
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return p4

    .line 1166
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1171
    instance-of v0, p3, Lcom/narvii/model/ItemCategory;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {v0}, Lcom/narvii/catalog/CatalogFragment;->isMine()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {v0}, Lcom/narvii/catalog/CatalogFragment;->isCurator()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1172
    :cond_0
    check-cast p3, Lcom/narvii/model/ItemCategory;

    .line 1173
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    new-array p4, p2, [Ljava/lang/CharSequence;

    const/4 p5, 0x0

    .line 1174
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    const v1, 0x7f0f03cd

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p4, p5

    new-instance p5, Lcom/narvii/catalog/CatalogFragment$CAdapter$1;

    invoke-direct {p5, p0, p3}, Lcom/narvii/catalog/CatalogFragment$CAdapter$1;-><init>(Lcom/narvii/catalog/CatalogFragment$CAdapter;Lcom/narvii/model/ItemCategory;)V

    invoke-virtual {p1, p4, p5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1188
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return p2

    .line 1191
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onLongClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

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

    .line 1114
    invoke-super {p0, p1, p2}, Lcom/narvii/catalog/CategoryListAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 1115
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->aiadapter:Lcom/narvii/catalog/AllItemAdapter;

    const/4 p2, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1116
    iput-boolean v0, p1, Lcom/narvii/catalog/AllItemAdapter;->showLoading:Z

    .line 1117
    invoke-virtual {p1, v0, p2}, Lcom/narvii/catalog/AllItemAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 1118
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->aiadapter:Lcom/narvii/catalog/AllItemAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1120
    :cond_0
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->allEntryAdapter:Lcom/narvii/catalog/CatalogFragment$MyAllEntryAdapter;

    if-eqz p1, :cond_1

    .line 1121
    iput-boolean v0, p1, Lcom/narvii/catalog/AllEntriesAdapter;->showLoading:Z

    .line 1122
    invoke-virtual {p1, v0, p2}, Lcom/narvii/list/NVAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 1123
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->allEntryAdapter:Lcom/narvii/catalog/CatalogFragment$MyAllEntryAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method sendCategoryRequest()V
    .locals 2

    .line 1077
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {v0}, Lcom/narvii/catalog/CatalogFragment;->isReady()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1078
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-boolean v1, v0, Lcom/narvii/catalog/CatalogFragment;->showAll:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/narvii/catalog/CatalogFragment;->isAllEntry()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1083
    :cond_0
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {v0}, Lcom/narvii/catalog/CatalogFragment;->isAllEntry()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1086
    :cond_1
    invoke-super {p0}, Lcom/narvii/catalog/CategoryListAdapter;->sendCategoryRequest()V

    goto :goto_1

    .line 1079
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/narvii/catalog/CategoryListAdapter;->itemAdapter:Lcom/narvii/catalog/CatalogItemAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/narvii/catalog/CatalogItemAdapter;->isLeaf:Z

    .line 1080
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-boolean v0, v0, Lcom/narvii/catalog/CatalogFragment;->showAll:Z

    :cond_3
    :goto_1
    return-void
.end method

.method protected setResponse(Lcom/narvii/model/api/CategoryListResponse;)V
    .locals 3

    .line 1129
    invoke-super {p0, p1}, Lcom/narvii/catalog/CategoryListAdapter;->setResponse(Lcom/narvii/model/api/CategoryListResponse;)V

    .line 1130
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object v0, v0, Lcom/narvii/catalog/CatalogFragment;->aiadapter:Lcom/narvii/catalog/AllItemAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1131
    iput-boolean v1, v0, Lcom/narvii/catalog/AllItemAdapter;->showLoading:Z

    .line 1132
    invoke-virtual {p1}, Lcom/narvii/model/api/CategoryListResponse;->getRootCategory()Lcom/narvii/model/ItemCategory;

    move-result-object v2

    iget v2, v2, Lcom/narvii/model/ItemCategory;->itemsCount:I

    iput v2, v0, Lcom/narvii/catalog/AllItemAdapter;->count:I

    .line 1133
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object v0, v0, Lcom/narvii/catalog/CatalogFragment;->aiadapter:Lcom/narvii/catalog/AllItemAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1135
    :cond_0
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object v0, v0, Lcom/narvii/catalog/CatalogFragment;->allEntryAdapter:Lcom/narvii/catalog/CatalogFragment$MyAllEntryAdapter;

    if-eqz v0, :cond_3

    .line 1136
    iget-object v2, p1, Lcom/narvii/model/api/CategoryListResponse;->allEntriesItemCategory:Lcom/narvii/model/ItemCategory;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget v2, v2, Lcom/narvii/model/ItemCategory;->itemsCount:I

    :goto_0
    iput v2, v0, Lcom/narvii/catalog/AllEntriesAdapter;->count:I

    .line 1138
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object v0, v0, Lcom/narvii/catalog/CatalogFragment;->allEntryAdapter:Lcom/narvii/catalog/CatalogFragment$MyAllEntryAdapter;

    iput-boolean v1, v0, Lcom/narvii/catalog/AllEntriesAdapter;->showLoading:Z

    .line 1139
    iget-object p1, p1, Lcom/narvii/model/api/CategoryListResponse;->allEntriesItemCategory:Lcom/narvii/model/ItemCategory;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    iget-object p1, p1, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    :goto_1
    iput-object p1, v0, Lcom/narvii/catalog/AllEntriesAdapter;->allEntryCategoryId:Ljava/lang/String;

    .line 1140
    iget-object p1, p0, Lcom/narvii/catalog/CatalogFragment$CAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object p1, p1, Lcom/narvii/catalog/CatalogFragment;->allEntryAdapter:Lcom/narvii/catalog/CatalogFragment$MyAllEntryAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1142
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/catalog/CategoryListAdapter;->getType()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 1143
    iget-object p1, p0, Lcom/narvii/catalog/CategoryListAdapter;->itemAdapter:Lcom/narvii/catalog/CatalogItemAdapter;

    iput-boolean v1, p1, Lcom/narvii/catalog/CatalogItemAdapter;->isLeaf:Z

    :cond_4
    return-void
.end method
