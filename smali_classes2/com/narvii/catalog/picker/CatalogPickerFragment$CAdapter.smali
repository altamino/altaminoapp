.class Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;
.super Lcom/narvii/catalog/CategoryListAdapter;
.source "CatalogPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/catalog/picker/CatalogPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/catalog/picker/CatalogPickerFragment;Lcom/narvii/catalog/CatalogItemAdapter;)V
    .locals 2

    .line 224
    iput-object p1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    .line 225
    iget-object v0, p1, Lcom/narvii/catalog/picker/CatalogPickerFragment;->uid:Ljava/lang/String;

    iget-object v1, p1, Lcom/narvii/catalog/picker/CatalogPickerFragment;->categoryId:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/narvii/catalog/CategoryListAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;Ljava/lang/String;Lcom/narvii/catalog/CatalogItemAdapter;)V

    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 1

    .line 265
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 266
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->invalidateOptionsMenu()V

    .line 267
    iget-object v0, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    invoke-virtual {v0}, Lcom/narvii/catalog/picker/CatalogPickerFragment;->updateBg()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 272
    instance-of v0, p3, Lcom/narvii/model/ItemCategory;

    if-eqz v0, :cond_1

    .line 273
    move-object p1, p3

    check-cast p1, Lcom/narvii/model/ItemCategory;

    .line 274
    const-class p2, Lcom/narvii/catalog/picker/CatalogPickerFragment;

    invoke-static {p2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p2

    const/4 p4, 0x1

    const-string p5, "pickOnFinish"

    .line 275
    invoke-virtual {p2, p5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 276
    iget-object p5, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    iget-object p5, p5, Lcom/narvii/catalog/picker/CatalogPickerFragment;->uid:Ljava/lang/String;

    const-string/jumbo v0, "uid"

    invoke-virtual {p2, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    iget-object p5, p1, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    const-string v0, "categoryId"

    invoke-virtual {p2, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string p5, "category"

    invoke-virtual {p2, p5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    iget-object p3, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    iget-object p3, p3, Lcom/narvii/catalog/picker/BasePickerFragment;->selection:Ljava/util/ArrayList;

    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string p5, "itemList"

    invoke-virtual {p2, p5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    iget-object p3, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    iget p3, p3, Lcom/narvii/catalog/picker/BasePickerFragment;->maximum:I

    const-string p5, "maximum"

    invoke-virtual {p2, p5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 281
    iget-object p3, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    iget p3, p3, Lcom/narvii/catalog/picker/BasePickerFragment;->mode:I

    const-string p5, "mode"

    invoke-virtual {p2, p5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    iget-object p3, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    iget-boolean p3, p3, Lcom/narvii/catalog/picker/BasePickerFragment;->canSelectOfficial:Z

    const-string p5, "canSelectOfficial"

    invoke-virtual {p2, p5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 283
    iget-object p3, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    iget-object p3, p3, Lcom/narvii/catalog/picker/BasePickerFragment;->title:Ljava/lang/String;

    const-string p5, "title"

    invoke-virtual {p2, p5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    iget-object p3, p0, Lcom/narvii/catalog/CategoryListAdapter;->previewMap:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 285
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_0

    const/4 p3, 0x0

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Item;

    invoke-virtual {p1}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 286
    :goto_0
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "previewMedia"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    iget-object p1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    invoke-virtual {p1, p2, p4}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return p4

    .line 290
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected setResponse(Lcom/narvii/model/api/CategoryListResponse;)V
    .locals 3

    .line 230
    iget-object v0, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    iget-object v0, v0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->aiadapter:Lcom/narvii/catalog/picker/CatalogPickerFragment$AIAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/narvii/model/api/CategoryListResponse;->getRootCategory()Lcom/narvii/model/ItemCategory;

    move-result-object v0

    iget-object v0, v0, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/narvii/model/api/CategoryListResponse;->getSubCategoryList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    .line 231
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter$1;

    invoke-direct {v0, p0}, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter$1;-><init>(Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 255
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/catalog/CategoryListAdapter;->setResponse(Lcom/narvii/model/api/CategoryListResponse;)V

    .line 256
    iget-object v0, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    iget-object v0, v0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->aiadapter:Lcom/narvii/catalog/picker/CatalogPickerFragment$AIAdapter;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 257
    iput-boolean v1, v0, Lcom/narvii/catalog/AllItemAdapter;->showLoading:Z

    .line 258
    invoke-virtual {p1}, Lcom/narvii/model/api/CategoryListResponse;->getRootCategory()Lcom/narvii/model/ItemCategory;

    move-result-object p1

    iget p1, p1, Lcom/narvii/model/ItemCategory;->itemsCount:I

    iput p1, v0, Lcom/narvii/catalog/AllItemAdapter;->count:I

    .line 259
    iget-object p1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;->this$0:Lcom/narvii/catalog/picker/CatalogPickerFragment;

    iget-object p1, p1, Lcom/narvii/catalog/picker/CatalogPickerFragment;->aiadapter:Lcom/narvii/catalog/picker/CatalogPickerFragment$AIAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method
