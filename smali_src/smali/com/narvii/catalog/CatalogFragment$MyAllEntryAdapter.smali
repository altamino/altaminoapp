.class Lcom/narvii/catalog/CatalogFragment$MyAllEntryAdapter;
.super Lcom/narvii/catalog/AllEntriesAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/catalog/CatalogFragment$MyAllEntryAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/catalog/AllEntriesAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
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
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$MyAllEntryAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 3
    .line 4
    iget-boolean v1, v0, Lcom/narvii/catalog/CatalogFragment;->showAll:Z

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/catalog/CatalogFragment;->isAllEntry()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/catalog/CatalogFragment$MyAllEntryAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    const/4 v0, 0x2

    .line 26
    return v0

    .line 27
    :cond_1
    :goto_0
    return v2
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
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$MyAllEntryAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 9
    .line 10
    iget-object p2, p2, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    .line 11
    .line 12
    const-string/jumbo p3, "uid"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$MyAllEntryAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 18
    .line 19
    iget-object p4, p2, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    .line 20
    const/4 p5, 0x1

    .line 21
    .line 22
    if-eqz p4, :cond_1

    .line 23
    .line 24
    iget-object p4, p4, Lcom/narvii/catalog/CategoryListAdapter;->allEntryCategory:Lcom/narvii/model/ItemCategory;

    .line 25
    .line 26
    if-eqz p4, :cond_1

    .line 27
    .line 28
    iget-object p2, p2, Lcom/narvii/catalog/CatalogFragment;->uid:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    .line 33
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$MyAllEntryAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 34
    .line 35
    iget-object p2, p2, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    .line 36
    .line 37
    iget-object p2, p2, Lcom/narvii/catalog/CategoryListAdapter;->allEntryCategory:Lcom/narvii/model/ItemCategory;

    .line 38
    .line 39
    iget-object p2, p2, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 40
    .line 41
    const-string p3, "categoryId"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    .line 46
    iget-object p2, p0, Lcom/narvii/catalog/CatalogFragment$MyAllEntryAdapter;->this$0:Lcom/narvii/catalog/CatalogFragment;

    .line 47
    .line 48
    iget-object p2, p2, Lcom/narvii/catalog/CatalogFragment;->adapter:Lcom/narvii/catalog/CatalogFragment$CAdapter;

    .line 49
    .line 50
    iget-object p2, p2, Lcom/narvii/catalog/CategoryListAdapter;->allEntryCategory:Lcom/narvii/model/ItemCategory;

    .line 51
    .line 52
    .line 53
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    move-result-object p2

    .line 55
    .line 56
    const-string p3, "category"

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    .line 61
    iget-object p2, p0, Lcom/narvii/catalog/AllEntriesAdapter;->previewList:Ljava/util/List;

    .line 62
    .line 63
    if-eqz p2, :cond_0

    .line 64
    .line 65
    .line 66
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 67
    move-result p2

    .line 68
    .line 69
    if-lez p2, :cond_0

    .line 70
    .line 71
    iget-object p2, p0, Lcom/narvii/catalog/AllEntriesAdapter;->previewList:Ljava/util/List;

    .line 72
    const/4 p3, 0x0

    .line 73
    .line 74
    .line 75
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    move-result-object p2

    .line 77
    .line 78
    check-cast p2, Lcom/narvii/model/Item;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    .line 82
    move-result-object p2

    .line 83
    goto :goto_0

    .line 84
    :cond_0
    const/4 p2, 0x0

    .line 85
    .line 86
    :goto_0
    const-string p3, "previewMedia"

    .line 87
    .line 88
    .line 89
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    move-result-object p2

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    .line 95
    const-string p2, "isAllEntry"

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 99
    .line 100
    :cond_1
    const-string p2, "nostat"

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 104
    .line 105
    .line 106
    invoke-static {p0, p1}, Lcom/narvii/catalog/CatalogFragment$MyAllEntryAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 107
    return p5
.end method
