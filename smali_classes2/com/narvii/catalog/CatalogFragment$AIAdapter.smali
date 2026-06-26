.class Lcom/narvii/catalog/CatalogFragment$AIAdapter;
.super Lcom/narvii/catalog/AllItemAdapter;
.source "CatalogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/catalog/CatalogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AIAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/catalog/CatalogFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/catalog/CatalogFragment;)V
    .locals 1

    .line 1374
    iput-object p1, p0, Lcom/narvii/catalog/CatalogFragment$AIAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 1375
    iget-object v0, p1, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/narvii/catalog/AllItemAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 1380
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$AIAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-boolean v1, v0, Lcom/narvii/catalog/CatalogFragment;->showAll:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/narvii/catalog/CatalogFragment;->isAllEntry()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1382
    :cond_0
    iget-object v0, p0, Lcom/narvii/catalog/AllItemAdapter;->uid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    .line 1385
    :cond_1
    invoke-super {p0}, Lcom/narvii/catalog/AllItemAdapter;->getCount()I

    move-result v0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1398
    const-class p1, Lcom/narvii/catalog/CatalogFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 1399
    iget-object p2, p0, Lcom/narvii/catalog/AllItemAdapter;->uid:Ljava/lang/String;

    const-string/jumbo p3, "uid"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x1

    const-string p3, "showAll"

    .line 1400
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1404
    iget-object p3, p0, Lcom/narvii/catalog/CatalogFragment$AIAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object p3, p3, Lcom/narvii/catalog/CatalogFragment;->categoryListResponse:Lcom/narvii/model/api/CategoryListResponse;

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    .line 1405
    invoke-virtual {p3}, Lcom/narvii/model/api/CategoryListResponse;->getRootCategory()Lcom/narvii/model/ItemCategory;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, p4

    :goto_0
    if-eqz p3, :cond_1

    .line 1409
    invoke-virtual {p3}, Lcom/narvii/model/ItemCategory;->firstMedia()Lcom/narvii/model/Media;

    move-result-object p3

    goto :goto_1

    :cond_1
    move-object p3, p4

    :goto_1
    if-nez p3, :cond_3

    .line 1412
    iget-object p3, p0, Lcom/narvii/catalog/AllItemAdapter;->list:Ljava/util/List;

    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_2

    iget-object p3, p0, Lcom/narvii/catalog/AllItemAdapter;->list:Ljava/util/List;

    const/4 p4, 0x0

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/Item;

    invoke-virtual {p3}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    move-result-object p4

    :cond_2
    move-object p3, p4

    .line 1414
    :cond_3
    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "previewMedia"

    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1415
    iget-object p3, p0, Lcom/narvii/catalog/CatalogFragment$AIAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {p3}, Lcom/narvii/catalog/CatalogFragment;->fromMyCatalog()Z

    move-result p3

    const-string p4, "fromMyCatalog"

    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1416
    iget-object p3, p0, Lcom/narvii/catalog/CatalogFragment$AIAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {p3}, Lcom/narvii/catalog/CatalogFragment;->fromOfficialCatalog()Z

    move-result p3

    const-string p4, "fromOfficialCatalog"

    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p3, "nostat"

    .line 1417
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p3, "is_all_curation"

    .line 1418
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1419
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return p2
.end method

.method sendReqeust()V
    .locals 1

    .line 1391
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$AIAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    invoke-virtual {v0}, Lcom/narvii/catalog/CatalogFragment;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$AIAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-boolean v0, v0, Lcom/narvii/catalog/CatalogFragment;->showAll:Z

    if-nez v0, :cond_0

    .line 1392
    invoke-super {p0}, Lcom/narvii/catalog/AllItemAdapter;->sendReqeust()V

    :cond_0
    return-void
.end method
