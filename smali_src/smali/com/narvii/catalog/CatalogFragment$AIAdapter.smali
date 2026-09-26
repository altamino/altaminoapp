.class Lcom/narvii/catalog/CatalogFragment$AIAdapter;
.super Lcom/narvii/catalog/AllItemAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/catalog/CatalogFragment$AIAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 3
    .line 4
    iget-object v0, p1, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, v0}, Lcom/narvii/catalog/AllItemAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 8
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
.method public getCount()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$AIAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 3
    .line 4
    iget-boolean v1, v0, Lcom/narvii/catalog/CatalogFragment;->showAll:Z

    .line 5
    .line 6
    if-nez v1, :cond_2

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/catalog/CatalogFragment;->isAllEntry()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/catalog/AllItemAdapter;->uid:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    const/4 v0, 0x2

    .line 23
    return v0

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-super {p0}, Lcom/narvii/catalog/AllItemAdapter;->getCount()I

    .line 27
    move-result v0

    .line 28
    return v0

    .line 29
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 30
    return v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    .line 2
    const-class p1, Lcom/narvii/catalog/CatalogFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    const-string/jumbo p2, "uid"

    .line 9
    .line 10
    iget-object p3, p0, Lcom/narvii/catalog/AllItemAdapter;->uid:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    const-string/jumbo p2, "showAll"

    .line 16
    const/4 p3, 0x1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 20
    .line 21
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$AIAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 22
    .line 23
    iget-object p2, p2, Lcom/narvii/catalog/CatalogFragment;->categoryListResponse:Lcom/narvii/model/api/CategoryListResponse;

    .line 24
    const/4 p4, 0x0

    .line 25
    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/narvii/model/api/CategoryListResponse;->getRootCategory()Lcom/narvii/model/ItemCategory;

    .line 30
    move-result-object p2

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object p2, p4

    .line 33
    .line 34
    :goto_0
    if-eqz p2, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Lcom/narvii/model/ItemCategory;->firstMedia()Lcom/narvii/model/Media;

    .line 38
    move-result-object p2

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move-object p2, p4

    .line 41
    .line 42
    :goto_1
    if-nez p2, :cond_3

    .line 43
    .line 44
    iget-object p2, p0, Lcom/narvii/catalog/AllItemAdapter;->list:Ljava/util/List;

    .line 45
    .line 46
    if-eqz p2, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 50
    move-result p2

    .line 51
    .line 52
    if-lez p2, :cond_2

    .line 53
    .line 54
    iget-object p2, p0, Lcom/narvii/catalog/AllItemAdapter;->list:Ljava/util/List;

    .line 55
    const/4 p4, 0x0

    .line 56
    .line 57
    .line 58
    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    move-result-object p2

    .line 60
    .line 61
    check-cast p2, Lcom/narvii/model/Item;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    .line 65
    move-result-object p4

    .line 66
    :cond_2
    move-object p2, p4

    .line 67
    .line 68
    :cond_3
    const-string p4, "previewMedia"

    .line 69
    .line 70
    .line 71
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    move-result-object p2

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    .line 77
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$AIAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2}, Lcom/narvii/catalog/CatalogFragment;->fromMyCatalog()Z

    .line 81
    move-result p2

    .line 82
    .line 83
    const-string p4, "fromMyCatalog"

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 87
    .line 88
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$AIAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2}, Lcom/narvii/catalog/CatalogFragment;->fromOfficialCatalog()Z

    .line 92
    move-result p2

    .line 93
    .line 94
    const-string p4, "fromOfficialCatalog"

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 98
    .line 99
    const-string p2, "nostat"

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 103
    .line 104
    const-string p2, "is_all_curation"

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 108
    .line 109
    .line 110
    invoke-static {p0, p1}, Lcom/narvii/catalog/CatalogFragment$AIAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 111
    return p3
.end method

.method sendReqeust()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$AIAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/catalog/CatalogFragment;->isReady()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$AIAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 11
    .line 12
    iget-boolean v0, v0, Lcom/narvii/catalog/CatalogFragment;->showAll:Z

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-super {p0}, Lcom/narvii/catalog/AllItemAdapter;->sendReqeust()V

    .line 18
    :cond_0
    return-void
.end method
