.class Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater;
.super Lcom/narvii/list/NVPagedAdapter;
.source "ShareStickerManageListFragment.java"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShareSticlkerAdapater"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/monetization/store/data/StoreItem;",
        "Lcom/narvii/monetization/store/data/StoreItemListResponse;",
        ">;",
        "Lcom/narvii/notification/NotificationListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater;->this$0:Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;

    .line 154
    invoke-direct {p0, p2}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public autoLoadNextPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public createLoadMoreItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 243
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater;->pageSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 244
    new-instance p2, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p2

    .line 246
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->createLoadMoreItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 169
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/store/items"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "sectionGroupId"

    const-string v2, "sticker"

    .line 170
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v1, "storeGroupId"

    const-string v2, "community-shared"

    .line 171
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    if-eqz p1, :cond_0

    const-string p1, "start0"

    .line 173
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 175
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/monetization/store/data/StoreItem;",
            ">;"
        }
    .end annotation

    .line 159
    const-class v0, Lcom/narvii/monetization/store/data/StoreItem;

    return-object v0
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/monetization/store/data/StoreItem;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/narvii/monetization/store/data/StoreItem;",
            ">;"
        }
    .end annotation

    .line 228
    new-instance p2, Lcom/narvii/util/FilterHelper;

    invoke-direct {p2, p0}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {p2}, Lcom/narvii/util/FilterHelper;->keepForLeader()Lcom/narvii/util/FilterHelper;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 200
    instance-of v0, p1, Lcom/narvii/monetization/store/data/StoreItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 201
    check-cast p1, Lcom/narvii/monetization/store/data/StoreItem;

    invoke-virtual {p1}, Lcom/narvii/monetization/store/data/StoreItem;->getRefObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    const v0, 0x7f0b0411

    .line 205
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f09027a

    .line 207
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 208
    iget-object v0, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->icon:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    const/4 v0, 0x0

    .line 209
    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    const p3, 0x7f090aae

    .line 211
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/monetization/utils/StoreItemNameView;

    .line 212
    invoke-virtual {p3, p1}, Lcom/narvii/monetization/utils/StoreItemNameView;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    const p3, 0x7f090359

    .line 214
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isDisabled()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {p3, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    const p3, 0x7f090aaf

    .line 216
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 217
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v3, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickersCount:I

    const v4, 0x7f0f0cd6

    const v5, 0x7f0f0c04

    invoke-static {v1, v3, v4, v5}, Lcom/narvii/util/text/TextUtils;->getCountText(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget p1, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickersCount:I

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-static {p3, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    const p1, 0x7f09033c

    .line 220
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    :cond_4
    return-object v1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    .line 251
    instance-of v0, p3, Lcom/narvii/monetization/store/data/StoreItem;

    if-eqz v0, :cond_0

    if-eqz p5, :cond_0

    .line 253
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09033c

    if-ne v0, v1, :cond_0

    .line 254
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0361

    .line 255
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const v1, 0x7f0f0c29

    const/4 v2, 0x0

    .line 256
    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const v1, 0x7f0f119f

    .line 257
    new-instance v2, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater$1;

    invoke-direct {v2, p0, p3}, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater$1;-><init>(Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater;Ljava/lang/Object;)V

    const/high16 v3, -0x10000

    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 264
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 268
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 1

    const/4 v0, 0x0

    .line 273
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 150
    check-cast p2, Lcom/narvii/monetization/store/data/StoreItemListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/store/data/StoreItemListResponse;I)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/store/data/StoreItemListResponse;I)V
    .locals 0

    .line 190
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 191
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p1

    const-string p3, "start0"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 192
    iget-object p1, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater;->this$0:Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;

    invoke-static {p1}, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->access$100(Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 194
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater;->this$0:Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;

    invoke-static {p1}, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->access$100(Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lcom/narvii/monetization/store/data/StoreItemListResponse;->list()Ljava/util/List;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 195
    iget-object p1, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater;->this$0:Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;

    iget-object p2, p2, Lcom/narvii/monetization/store/data/StoreItemListResponse;->storeSection:Lcom/narvii/monetization/store/data/StoreSectionMini;

    invoke-static {p1, p2}, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->access$202(Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;Lcom/narvii/monetization/store/data/StoreSectionMini;)Lcom/narvii/monetization/store/data/StoreSectionMini;

    return-void
.end method

.method protected pageSize()I
    .locals 1

    const/16 v0, 0x32

    return v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/monetization/store/data/StoreItemListResponse;",
            ">;"
        }
    .end annotation

    .line 164
    const-class v0, Lcom/narvii/monetization/store/data/StoreItemListResponse;

    return-object v0
.end method
