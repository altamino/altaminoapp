.class Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SharedStickerCollectionListFragment.java"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreItemListAdapter"
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
.field storeHelper:Lcom/narvii/monetization/store/StoreHelper;

.field private storeSection:Lcom/narvii/monetization/store/data/StoreSectionMini;

.field final synthetic this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;

    .line 274
    invoke-direct {p0, p2}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 275
    new-instance p1, Lcom/narvii/monetization/store/StoreHelper;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/monetization/store/StoreHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;->storeHelper:Lcom/narvii/monetization/store/StoreHelper;

    return-void
.end method

.method static synthetic access$400(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;)Lcom/narvii/monetization/store/data/StoreSectionMini;
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;->storeSection:Lcom/narvii/monetization/store/data/StoreSectionMini;

    return-object p0
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 295
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/store/items"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "sectionGroupId"

    const-string v2, "sticker"

    .line 296
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v1, "storeGroupId"

    const-string v2, "community-shared"

    .line 297
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    if-eqz p1, :cond_0

    const-string p1, "start0"

    .line 299
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 301
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1

    .line 280
    const-class v0, Lcom/narvii/monetization/store/data/StoreItem;

    return-object v0
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 0

    .line 349
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
    .locals 7

    .line 364
    instance-of v0, p1, Lcom/narvii/monetization/store/data/StoreItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 365
    check-cast p1, Lcom/narvii/monetization/store/data/StoreItem;

    const v0, 0x7f0b0629

    .line 366
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 367
    invoke-virtual {p1}, Lcom/narvii/monetization/store/data/StoreItem;->getRefObject()Lcom/narvii/model/NVObject;

    move-result-object p3

    const v0, 0x7f090359

    .line 368
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/narvii/model/NVObject;->status()I

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_0

    invoke-virtual {p3}, Lcom/narvii/model/NVObject;->status()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-static {v0, v4}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    const v0, 0x7f090aca

    .line 369
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    const v4, 0x7f090ac7

    .line 370
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 371
    iget-object v5, p1, Lcom/narvii/monetization/store/data/StoreItem;->itemBasicInfo:Lcom/narvii/monetization/store/data/StoreItem$ItemBasicInfo;

    if-nez v5, :cond_2

    move-object v5, v1

    goto :goto_1

    :cond_2
    iget-object v5, v5, Lcom/narvii/monetization/store/data/StoreItem$ItemBasicInfo;->icon:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v5}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 372
    iget-object v0, p1, Lcom/narvii/monetization/store/data/StoreItem;->itemBasicInfo:Lcom/narvii/monetization/store/data/StoreItem$ItemBasicInfo;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, v0, Lcom/narvii/monetization/store/data/StoreItem$ItemBasicInfo;->name:Ljava/lang/String;

    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    iget-object p1, p1, Lcom/narvii/monetization/store/data/StoreItem;->itemRestrictionInfo:Lcom/narvii/model/RestrictionInfo;

    if-eqz p1, :cond_4

    iget p1, p1, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    const/4 p1, 0x1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    const v0, 0x7f0900a2

    .line 376
    invoke-static {p2, v0, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    const p1, 0x7f090c0e

    .line 378
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 381
    instance-of v0, p3, Lcom/narvii/monetization/sticker/model/StickerCollection;

    const v1, 0x7f090019

    if-eqz v0, :cond_5

    .line 382
    check-cast p3, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 383
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    invoke-virtual {v0, p3}, Lcom/narvii/monetization/sticker/StickerHelper;->isStickerPackNew(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    move-result v0

    invoke-static {p2, v1, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 384
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;

    const v1, 0x7f0f111c

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v4, Lcom/narvii/util/text/TextUtils;->numberFormat:Ljava/text/NumberFormat;

    iget-wide v5, p3, Lcom/narvii/monetization/sticker/model/StickerCollection;->usedCount:J

    invoke-virtual {v4, v5, v6}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    invoke-virtual {v0, p3}, Lcom/narvii/monetization/sticker/StickerHelper;->showStickerCollectionUsedTimes(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    move-result p3

    invoke-static {p1, p3}, Lcom/narvii/util/ViewUtils;->visible(Landroid/view/View;Z)V

    goto :goto_4

    .line 387
    :cond_5
    invoke-static {p2, v1, v3}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 388
    invoke-static {p1, v3}, Lcom/narvii/util/ViewUtils;->visible(Landroid/view/View;Z)V

    :goto_4
    return-object p2

    :cond_6
    return-object v1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    .line 398
    instance-of v0, p3, Lcom/narvii/monetization/store/data/StoreItem;

    if-eqz v0, :cond_2

    .line 399
    move-object v0, p3

    check-cast v0, Lcom/narvii/monetization/store/data/StoreItem;

    .line 400
    invoke-virtual {v0}, Lcom/narvii/monetization/store/data/StoreItem;->getRefObject()Lcom/narvii/model/NVObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 401
    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->status()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->status()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 402
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/monetization/store/data/StoreItem;->getRefObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 403
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0f0354

    .line 404
    invoke-virtual {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const p2, 0x7f0f0193

    const/4 p4, 0x0

    .line 405
    invoke-virtual {p1, p2, p4}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const p2, 0x7f0f0348

    .line 406
    new-instance p4, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter$1;

    invoke-direct {p4, p0, p3}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter$1;-><init>(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;Ljava/lang/Object;)V

    const/high16 p3, -0x10000

    invoke-virtual {p1, p2, p4, p3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 412
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    const/4 p1, 0x1

    return p1

    .line 415
    :cond_1
    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;->storeHelper:Lcom/narvii/monetization/store/StoreHelper;

    invoke-virtual {v1, v0}, Lcom/narvii/monetization/store/StoreHelper;->openStoreItemDetail(Lcom/narvii/monetization/store/data/StoreItem;)V

    .line 417
    :cond_2
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 5

    .line 320
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v3, "update"

    if-ne v1, v3, :cond_3

    .line 321
    check-cast v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 323
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object p1

    .line 324
    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 327
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 328
    instance-of v4, v3, Lcom/narvii/monetization/store/data/StoreItem;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/narvii/monetization/store/data/StoreItem;

    iget-object v4, v3, Lcom/narvii/monetization/store/data/StoreItem;->refObjectId:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 330
    invoke-virtual {v3, v0}, Lcom/narvii/monetization/store/data/StoreItem;->setCachedRefObject(Lcom/narvii/model/NVObject;)V

    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_2

    .line 337
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void

    .line 342
    :cond_3
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/monetization/store/data/StoreItem;

    if-eqz v0, :cond_4

    .line 343
    invoke-virtual {p0, p1, v2}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    :cond_4
    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 268
    check-cast p2, Lcom/narvii/monetization/store/data/StoreItemListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/store/data/StoreItemListResponse;I)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/store/data/StoreItemListResponse;I)V
    .locals 0

    .line 306
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 307
    iget-object p2, p2, Lcom/narvii/monetization/store/data/StoreItemListResponse;->storeSection:Lcom/narvii/monetization/store/data/StoreSectionMini;

    iput-object p2, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;->storeSection:Lcom/narvii/monetization/store/data/StoreSectionMini;

    .line 308
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p1

    const-string p2, "start0"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 309
    iget-object p1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;

    invoke-static {p1}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->access$300(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;)V

    :cond_0
    return-void
.end method

.method protected pageSize()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 0

    or-int/lit16 p1, p1, 0x200

    .line 290
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1

    .line 285
    const-class v0, Lcom/narvii/monetization/store/data/StoreItemListResponse;

    return-object v0
.end method
