.class Lcom/narvii/catalog/CatalogFragment$MyAllEntryAdapter;
.super Lcom/narvii/catalog/AllEntriesAdapter;
.source "CatalogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/catalog/CatalogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAllEntryAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/catalog/CatalogFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/catalog/CatalogFragment;)V
    .locals 0

    .line 1340
    iput-object p1, p0, Lcom/narvii/catalog/CatalogFragment$MyAllEntryAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 1341
    invoke-direct {p0, p1}, Lcom/narvii/catalog/AllEntriesAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .line 1346
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$MyAllEntryAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-boolean v1, v0, Lcom/narvii/catalog/CatalogFragment;->showAll:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/narvii/catalog/CatalogFragment;->isAllEntry()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1348
    :cond_0
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$MyAllEntryAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object v0, v0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    :goto_0
    return v2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1356
    const-class p1, Lcom/narvii/catalog/CatalogFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 1357
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$MyAllEntryAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object p2, p2, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    const-string/jumbo p3, "uid"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1358
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$MyAllEntryAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object p4, p2, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    const/4 p5, 0x1

    if-eqz p4, :cond_1

    iget-object p4, p4, Lcom/narvii/catalog/CategoryListAdapter;->allEntryCategory:Lcom/narvii/model/ItemCategory;

    if-eqz p4, :cond_1

    .line 1359
    iget-object p2, p2, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1360
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$MyAllEntryAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object p2, p2, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    iget-object p2, p2, Lcom/narvii/catalog/CategoryListAdapter;->allEntryCategory:Lcom/narvii/model/ItemCategory;

    iget-object p2, p2, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    const-string p3, "categoryId"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1361
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$MyAllEntryAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    iget-object p2, p2, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    iget-object p2, p2, Lcom/narvii/catalog/CategoryListAdapter;->allEntryCategory:Lcom/narvii/model/ItemCategory;

    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "category"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1363
    iget-object p2, p0, Lcom/narvii/catalog/AllEntriesAdapter;->previewList:Ljava/util/List;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    iget-object p2, p0, Lcom/narvii/catalog/AllEntriesAdapter;->previewList:Ljava/util/List;

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Item;

    invoke-virtual {p2}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1364
    :goto_0
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "previewMedia"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "isAllEntry"

    .line 1365
    invoke-virtual {p1, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    const-string p2, "nostat"

    .line 1367
    invoke-virtual {p1, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1368
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return p5
.end method
