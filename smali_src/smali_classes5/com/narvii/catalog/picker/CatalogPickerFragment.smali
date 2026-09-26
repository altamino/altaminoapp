.class public Lcom/narvii/catalog/picker/CatalogPickerFragment;
.super Lcom/narvii/catalog/picker/BasePickerFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;,
        Lcom/narvii/catalog/picker/CatalogPickerFragment$IAdapter;,
        Lcom/narvii/catalog/picker/CatalogPickerFragment$SearchAdapter;,
        Lcom/narvii/catalog/picker/CatalogPickerFragment$AIAdapter;
    }
.end annotation


# static fields
.field static final ALL_ITEMS_REQUEST:I = 0xa


# instance fields
.field adapter:Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;

.field aiadapter:Lcom/narvii/catalog/picker/CatalogPickerFragment$AIAdapter;

.field category:Lcom/narvii/model/ItemCategory;

.field categoryId:Ljava/lang/String;

.field itemAdapter:Lcom/narvii/catalog/CatalogItemAdapter;

.field refreshAfterResume:Z

.field selAdapter:Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;

.field uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/catalog/picker/BasePickerFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 7

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/list/StaticViewAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    .line 6
    const/4 v0, 0x1

    .line 7
    .line 8
    new-array v1, v0, [Landroid/view/View;

    .line 9
    .line 10
    new-instance v2, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v3

    .line 15
    .line 16
    .line 17
    invoke-direct {v2, v3}, Lcom/narvii/list/overlay/OverlayListPlaceholder;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v3, 0x0

    .line 19
    .line 20
    aput-object v2, v1, v3

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v1}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    .line 24
    .line 25
    new-instance v1, Lcom/narvii/catalog/picker/CatalogPickerFragment$IAdapter;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/narvii/catalog/picker/CatalogPickerFragment$IAdapter;-><init>(Lcom/narvii/catalog/picker/CatalogPickerFragment;)V

    .line 29
    .line 30
    iput-object v1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->itemAdapter:Lcom/narvii/catalog/CatalogItemAdapter;

    .line 31
    .line 32
    new-instance v1, Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, p0}, Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;-><init>(Lcom/narvii/catalog/picker/BasePickerFragment;)V

    .line 36
    .line 37
    iput-object v1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->selAdapter:Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;

    .line 38
    .line 39
    iget-object v2, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->itemAdapter:Lcom/narvii/catalog/CatalogItemAdapter;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Lcom/narvii/list/ProxyAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 43
    .line 44
    iget-object v1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->selAdapter:Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;

    .line 45
    const/4 v2, 0x0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Lcom/narvii/list/select/SelectableAdapter;->startSelect(Ljava/util/List;)V

    .line 49
    .line 50
    new-instance v1, Lcom/narvii/list/DivideColumnAdapter;

    .line 51
    .line 52
    .line 53
    invoke-direct {v1, p0}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 54
    .line 55
    iget-object v2, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->selAdapter:Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;

    .line 56
    const/4 v4, 0x3

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2, v4}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 60
    .line 61
    new-instance v2, Lcom/narvii/catalog/picker/CatalogPickerFragment$SearchAdapter;

    .line 62
    .line 63
    .line 64
    invoke-direct {v2, p0}, Lcom/narvii/catalog/picker/CatalogPickerFragment$SearchAdapter;-><init>(Lcom/narvii/catalog/picker/CatalogPickerFragment;)V

    .line 65
    .line 66
    new-instance v4, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;

    .line 67
    .line 68
    iget-object v5, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->itemAdapter:Lcom/narvii/catalog/CatalogItemAdapter;

    .line 69
    .line 70
    .line 71
    invoke-direct {v4, p0, v5}, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;-><init>(Lcom/narvii/catalog/picker/CatalogPickerFragment;Lcom/narvii/catalog/CatalogItemAdapter;)V

    .line 72
    .line 73
    iput-object v4, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->adapter:Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;

    .line 74
    .line 75
    new-instance v4, Lcom/narvii/list/DividerAdapter;

    .line 76
    .line 77
    .line 78
    invoke-direct {v4, p0}, Lcom/narvii/list/DividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 79
    .line 80
    iget-object v5, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->adapter:Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;

    .line 81
    .line 82
    iget-object v6, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->categoryId:Ljava/lang/String;

    .line 83
    .line 84
    if-nez v6, :cond_0

    .line 85
    const/4 v6, 0x2

    .line 86
    goto :goto_0

    .line 87
    :cond_0
    move v6, v3

    .line 88
    .line 89
    .line 90
    :goto_0
    invoke-virtual {v4, v5, v6}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 91
    .line 92
    new-instance v5, Lcom/narvii/list/MergeAdapter;

    .line 93
    .line 94
    .line 95
    invoke-direct {v5, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5, p1, v3}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5, v2, v3}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v5, v4, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5, v1, v3}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 108
    .line 109
    iget-object p1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->categoryId:Ljava/lang/String;

    .line 110
    .line 111
    if-nez p1, :cond_1

    .line 112
    .line 113
    new-instance p1, Lcom/narvii/catalog/picker/CatalogPickerFragment$AIAdapter;

    .line 114
    .line 115
    .line 116
    invoke-direct {p1, p0}, Lcom/narvii/catalog/picker/CatalogPickerFragment$AIAdapter;-><init>(Lcom/narvii/catalog/picker/CatalogPickerFragment;)V

    .line 117
    .line 118
    iput-object p1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->aiadapter:Lcom/narvii/catalog/picker/CatalogPickerFragment$AIAdapter;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 122
    :cond_1
    return-object v5
.end method

.method getPreviewMedia()Lcom/narvii/model/Media;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->category:Lcom/narvii/model/ItemCategory;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/model/ItemCategory;->firstMedia()Lcom/narvii/model/Media;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->category:Lcom/narvii/model/ItemCategory;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/model/ItemCategory;->firstMedia()Lcom/narvii/model/Media;

    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    .line 19
    :cond_0
    const-string v0, "previewMedia"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    const-class v1, Lcom/narvii/model/Media;

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    check-cast v0, Lcom/narvii/model/Media;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    return-object v0

    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->categoryId:Ljava/lang/String;

    .line 37
    .line 38
    if-nez v0, :cond_3

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->adapter:Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/narvii/catalog/CategoryListAdapter;->getRootCategory()Lcom/narvii/model/ItemCategory;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/narvii/model/ItemCategory;->firstMedia()Lcom/narvii/model/Media;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/narvii/model/ItemCategory;->firstMedia()Lcom/narvii/model/Media;

    .line 58
    move-result-object v0

    .line 59
    return-object v0

    .line 60
    .line 61
    :cond_2
    if-eqz v0, :cond_3

    .line 62
    .line 63
    iget-object v1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->adapter:Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;

    .line 64
    .line 65
    iget-object v1, v1, Lcom/narvii/catalog/CategoryListAdapter;->previewMap:Ljava/util/HashMap;

    .line 66
    .line 67
    iget-object v0, v0, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    check-cast v0, Ljava/util/List;

    .line 74
    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    .line 78
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 79
    move-result v1

    .line 80
    .line 81
    if-lez v1, :cond_3

    .line 82
    const/4 v1, 0x0

    .line 83
    .line 84
    .line 85
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    check-cast v0, Lcom/narvii/model/Item;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    .line 92
    move-result-object v0

    .line 93
    return-object v0

    .line 94
    :cond_3
    const/4 v0, 0x0

    .line 95
    return-object v0
.end method

.method public bridge synthetic hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/catalog/picker/BasePickerFragment;->hasPostEntry()Ljava/lang/Boolean;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0xa

    .line 3
    .line 4
    if-ne p1, v0, :cond_2

    .line 5
    const/4 p1, 0x2

    .line 6
    .line 7
    if-eq p2, p1, :cond_1

    .line 8
    const/4 p1, -0x1

    .line 9
    .line 10
    if-ne p2, p1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 17
    .line 18
    .line 19
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/catalog/picker/BasePickerFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 20
    goto :goto_1

    .line 21
    .line 22
    .line 23
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/catalog/picker/BasePickerFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 24
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/catalog/picker/BasePickerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p1, "uid"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    iput-object p1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->uid:Ljava/lang/String;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const-string p1, "mine"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 19
    move-result p1

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    const-string p1, "account"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    iput-object p1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->uid:Ljava/lang/String;

    .line 36
    .line 37
    :cond_0
    const-string p1, "categoryId"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    iput-object p1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->categoryId:Ljava/lang/String;

    .line 44
    .line 45
    const-string p1, "category"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    const-class v0, Lcom/narvii/model/ItemCategory;

    .line 52
    .line 53
    .line 54
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    check-cast p1, Lcom/narvii/model/ItemCategory;

    .line 58
    .line 59
    iput-object p1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->category:Lcom/narvii/model/ItemCategory;

    .line 60
    .line 61
    const-string p1, "pickTitle"

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    if-nez p1, :cond_1

    .line 68
    .line 69
    .line 70
    const p1, 0x7f120e82

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    :cond_1
    iget-object v0, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->category:Lcom/narvii/model/ItemCategory;

    .line 77
    .line 78
    if-nez v0, :cond_2

    .line 79
    goto :goto_0

    .line 80
    .line 81
    :cond_2
    iget-object p1, v0, Lcom/narvii/model/ItemCategory;->label:Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 8
    const/4 p2, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 12
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 4

    .line 1
    .line 2
    iget v0, p1, Lcom/narvii/notification/Notification;->objectType:I

    .line 3
    .line 4
    const/16 v1, 0xd

    .line 5
    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    iget-object v0, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->categoryId:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 19
    .line 20
    const-string v2, "update"

    .line 21
    .line 22
    if-ne v0, v2, :cond_0

    .line 23
    .line 24
    iget-object v2, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 25
    .line 26
    instance-of v3, v2, Lcom/narvii/model/ItemCategory;

    .line 27
    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    check-cast v2, Lcom/narvii/model/ItemCategory;

    .line 31
    .line 32
    iput-object v2, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->category:Lcom/narvii/model/ItemCategory;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/catalog/picker/CatalogPickerFragment;->updateBg()V

    .line 36
    return-void

    .line 37
    .line 38
    :cond_0
    const-string v2, "delete"

    .line 39
    .line 40
    if-ne v0, v2, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 44
    return-void

    .line 45
    .line 46
    :cond_1
    iget v0, p1, Lcom/narvii/notification/Notification;->objectType:I

    .line 47
    .line 48
    if-ne v0, v1, :cond_3

    .line 49
    .line 50
    iget-object p1, p1, Lcom/narvii/notification/Notification;->uid:Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Lcom/narvii/model/User;->eliminateZeroUid(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->uid:Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    move-result p1

    .line 61
    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 66
    move-result p1

    .line 67
    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    iget-object p1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->adapter:Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;

    .line 71
    const/4 v0, 0x0

    .line 72
    const/4 v1, 0x0

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0, v1}, Lcom/narvii/catalog/CategoryListAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    const/4 p1, 0x1

    .line 78
    .line 79
    iput-boolean p1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->refreshAfterResume:Z

    .line 80
    :cond_3
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->refreshAfterResume:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->adapter:Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/narvii/catalog/CategoryListAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 15
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/catalog/picker/BasePickerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/catalog/picker/CatalogPickerFragment;->updateBg()V

    .line 7
    return-void
.end method

.method updateBg()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/catalog/CatalogThemeFragment;->backgroundImageView:Lcom/narvii/widget/NVImageView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/catalog/picker/CatalogPickerFragment;->getPreviewMedia()Lcom/narvii/model/Media;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 10
    return-void
.end method

.method public bridge synthetic willFinish(Lcom/narvii/app/NVActivity;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/catalog/picker/BasePickerFragment;->willFinish(Lcom/narvii/app/NVActivity;)V

    .line 4
    return-void
.end method
