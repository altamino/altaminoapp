.class public Lcom/narvii/catalog/picker/CatalogPickerFragment;
.super Lcom/narvii/catalog/picker/BasePickerFragment;
.source "CatalogPickerFragment.java"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/catalog/picker/CatalogPickerFragment$AIAdapter;,
        Lcom/narvii/catalog/picker/CatalogPickerFragment$IAdapter;,
        Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;,
        Lcom/narvii/catalog/picker/CatalogPickerFragment$SearchAdapter;
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

    .line 53
    invoke-direct {p0}, Lcom/narvii/catalog/picker/BasePickerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 7

    .line 156
    new-instance p1, Lcom/narvii/list/StaticViewAdapter;

    invoke-direct {p1}, Lcom/narvii/list/StaticViewAdapter;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    .line 157
    new-instance v2, Lcom/narvii/list/overlay/OverlayListPlaceholder;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/narvii/list/overlay/OverlayListPlaceholder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Lcom/narvii/list/StaticViewAdapter;->addViews([Landroid/view/View;)V

    .line 159
    new-instance v1, Lcom/narvii/catalog/picker/CatalogPickerFragment$IAdapter;

    invoke-direct {v1, p0}, Lcom/narvii/catalog/picker/CatalogPickerFragment$IAdapter;-><init>(Lcom/narvii/catalog/picker/CatalogPickerFragment;)V

    iput-object v1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->itemAdapter:Lcom/narvii/catalog/CatalogItemAdapter;

    .line 160
    new-instance v1, Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;

    invoke-direct {v1, p0}, Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;-><init>(Lcom/narvii/catalog/picker/BasePickerFragment;)V

    iput-object v1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->selAdapter:Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;

    .line 161
    iget-object v1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->selAdapter:Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;

    iget-object v2, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->itemAdapter:Lcom/narvii/catalog/CatalogItemAdapter;

    invoke-virtual {v1, v2}, Lcom/narvii/list/ProxyAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 162
    iget-object v1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->selAdapter:Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/narvii/list/select/SelectableAdapter;->startSelect(Ljava/util/List;)V

    .line 163
    new-instance v1, Lcom/narvii/list/DivideColumnAdapter;

    invoke-direct {v1, p0}, Lcom/narvii/list/DivideColumnAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 164
    iget-object v2, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->selAdapter:Lcom/narvii/catalog/picker/BasePickerFragment$SelAdapter;

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v4}, Lcom/narvii/list/DivideColumnAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 166
    new-instance v2, Lcom/narvii/catalog/picker/CatalogPickerFragment$SearchAdapter;

    invoke-direct {v2, p0}, Lcom/narvii/catalog/picker/CatalogPickerFragment$SearchAdapter;-><init>(Lcom/narvii/catalog/picker/CatalogPickerFragment;)V

    .line 168
    new-instance v4, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;

    iget-object v5, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->itemAdapter:Lcom/narvii/catalog/CatalogItemAdapter;

    invoke-direct {v4, p0, v5}, Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;-><init>(Lcom/narvii/catalog/picker/CatalogPickerFragment;Lcom/narvii/catalog/CatalogItemAdapter;)V

    iput-object v4, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->adapter:Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;

    .line 169
    new-instance v4, Lcom/narvii/list/DividerAdapter;

    invoke-direct {v4, p0}, Lcom/narvii/list/DividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 170
    iget-object v5, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->adapter:Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;

    iget-object v6, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->categoryId:Ljava/lang/String;

    if-nez v6, :cond_0

    const/4 v6, 0x2

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v4, v5, v6}, Lcom/narvii/list/DividerAdapter;->setAdapter(Landroid/widget/ListAdapter;I)V

    .line 172
    new-instance v5, Lcom/narvii/list/MergeAdapter;

    invoke-direct {v5, p0}, Lcom/narvii/list/MergeAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 173
    invoke-virtual {v5, p1, v3}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 174
    invoke-virtual {v5, v2, v3}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 175
    invoke-virtual {v5, v4, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 176
    invoke-virtual {v5, v1, v3}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 178
    iget-object p1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->categoryId:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 179
    new-instance p1, Lcom/narvii/catalog/picker/CatalogPickerFragment$AIAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/catalog/picker/CatalogPickerFragment$AIAdapter;-><init>(Lcom/narvii/catalog/picker/CatalogPickerFragment;)V

    iput-object p1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->aiadapter:Lcom/narvii/catalog/picker/CatalogPickerFragment$AIAdapter;

    .line 180
    iget-object p1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->aiadapter:Lcom/narvii/catalog/picker/CatalogPickerFragment$AIAdapter;

    invoke-virtual {v5, p1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    :cond_1
    return-object v5
.end method

.method getPreviewMedia()Lcom/narvii/model/Media;
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->category:Lcom/narvii/model/ItemCategory;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/model/ItemCategory;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->category:Lcom/narvii/model/ItemCategory;

    invoke-virtual {v0}, Lcom/narvii/model/ItemCategory;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "previewMedia"

    .line 131
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/Media;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    if-eqz v0, :cond_1

    return-object v0

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->categoryId:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->adapter:Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;

    if-eqz v0, :cond_3

    .line 136
    invoke-virtual {v0}, Lcom/narvii/catalog/CategoryListAdapter;->getRootCategory()Lcom/narvii/model/ItemCategory;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 137
    invoke-virtual {v0}, Lcom/narvii/model/ItemCategory;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 138
    invoke-virtual {v0}, Lcom/narvii/model/ItemCategory;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v0

    return-object v0

    :cond_2
    if-eqz v0, :cond_3

    .line 141
    iget-object v1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->adapter:Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;

    iget-object v1, v1, Lcom/narvii/catalog/CategoryListAdapter;->previewMap:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/narvii/model/ItemCategory;->categoryId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 142
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    .line 143
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Item;

    invoke-virtual {v0}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    .line 53
    invoke-super {p0}, Lcom/narvii/catalog/picker/BasePickerFragment;->hasPostEntry()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 190
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/catalog/picker/BasePickerFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1

    .line 195
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/catalog/picker/BasePickerFragment;->onActivityResult(IILandroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 68
    invoke-super {p0, p1}, Lcom/narvii/catalog/picker/BasePickerFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo p1, "uid"

    .line 70
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->uid:Ljava/lang/String;

    .line 71
    iget-object p1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->uid:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, "mine"

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "account"

    .line 72
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 73
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->uid:Ljava/lang/String;

    :cond_0
    const-string p1, "categoryId"

    .line 75
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->categoryId:Ljava/lang/String;

    const-string p1, "category"

    .line 76
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/narvii/model/ItemCategory;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ItemCategory;

    iput-object p1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->category:Lcom/narvii/model/ItemCategory;

    const-string p1, "pickTitle"

    .line 77
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const p1, 0x7f0f0d55

    .line 79
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->category:Lcom/narvii/model/ItemCategory;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, v0, Lcom/narvii/model/ItemCategory;->label:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 100
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 101
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 102
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    .line 107
    iget v0, p1, Lcom/narvii/notification/Notification;->objectType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->categoryId:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string/jumbo v2, "update"

    if-ne v0, v2, :cond_0

    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v2, v0, Lcom/narvii/model/ItemCategory;

    if-eqz v2, :cond_0

    .line 109
    check-cast v0, Lcom/narvii/model/ItemCategory;

    iput-object v0, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->category:Lcom/narvii/model/ItemCategory;

    .line 110
    invoke-virtual {p0}, Lcom/narvii/catalog/picker/CatalogPickerFragment;->updateBg()V

    return-void

    .line 113
    :cond_0
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v2, "delete"

    if-ne v0, v2, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void

    .line 118
    :cond_1
    iget v0, p1, Lcom/narvii/notification/Notification;->objectType:I

    if-ne v0, v1, :cond_3

    iget-object p1, p1, Lcom/narvii/notification/Notification;->uid:Ljava/lang/String;

    invoke-static {p1}, Lcom/narvii/model/User;->eliminateZeroUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->uid:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 119
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 120
    iget-object p1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->adapter:Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/narvii/catalog/CategoryListAdapter;->refresh(ILcom/narvii/util/Callback;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 122
    iput-boolean p1, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->refreshAfterResume:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 86
    invoke-super {p0}, Lcom/narvii/list/NVListFragment;->onResume()V

    .line 87
    iget-boolean v0, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->refreshAfterResume:Z

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/narvii/catalog/picker/CatalogPickerFragment;->adapter:Lcom/narvii/catalog/picker/CatalogPickerFragment$CAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/narvii/catalog/CategoryListAdapter;->refresh(ILcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 94
    invoke-super {p0, p1, p2}, Lcom/narvii/catalog/picker/BasePickerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/narvii/catalog/picker/CatalogPickerFragment;->updateBg()V

    return-void
.end method

.method updateBg()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/narvii/catalog/CatalogThemeFragment;->backgroundImageView:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p0}, Lcom/narvii/catalog/picker/CatalogPickerFragment;->getPreviewMedia()Lcom/narvii/model/Media;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    return-void
.end method

.method public bridge synthetic willFinish(Lcom/narvii/app/NVActivity;)V
    .locals 0

    .line 53
    invoke-super {p0, p1}, Lcom/narvii/catalog/picker/BasePickerFragment;->willFinish(Lcom/narvii/app/NVActivity;)V

    return-void
.end method
