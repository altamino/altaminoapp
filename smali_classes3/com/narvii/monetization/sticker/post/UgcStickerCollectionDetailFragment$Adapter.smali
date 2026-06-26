.class Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;
.super Lcom/narvii/detail/DetailAdapter;
.source "UgcStickerCollectionDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/detail/DetailAdapter<",
        "Lcom/narvii/monetization/sticker/model/StickerCollection;",
        "Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    .line 432
    invoke-direct {p0, p2}, Lcom/narvii/detail/DetailAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected buildCells(Ljava/util/List;)V
    .locals 1

    .line 502
    sget-object v0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->DETAIL:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 494
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    iget-boolean v0, v0, Lcom/narvii/detail/DetailFragment;->preview:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 497
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sticker-collection/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    invoke-virtual {v2}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "includeStickers"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method protected getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .line 529
    sget-object v0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->DETAIL:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_9

    const p1, 0x7f0b06aa

    .line 530
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 531
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p2

    check-cast p2, Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz p2, :cond_8

    const p3, 0x7f090aae

    .line 533
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/monetization/utils/StoreItemNameView;

    .line 534
    invoke-virtual {p3, p2}, Lcom/narvii/monetization/utils/StoreItemNameView;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    const p3, 0x7f090279

    .line 536
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 537
    invoke-virtual {p2}, Lcom/narvii/monetization/sticker/model/StickerCollection;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {p3, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 541
    invoke-virtual {p2}, Lcom/narvii/monetization/sticker/model/StickerCollection;->getOriginalCommunity()Lcom/narvii/model/Community;

    move-result-object p3

    const-string v0, "config"

    .line 542
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 543
    iget p3, p3, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    if-eq p3, v0, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const v0, 0x7f090ace

    .line 546
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/StoreItemStatusView;

    .line 547
    iget-object v3, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    invoke-static {v3}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->access$300(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;)Z

    move-result v3

    xor-int/2addr v3, v1

    invoke-static {v0, v3}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    const v3, 0x7f090a6d

    .line 548
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;

    const v4, 0x7f090a6e

    .line 549
    invoke-static {p1, v4, p3}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 550
    invoke-virtual {v3, p2}, Lcom/narvii/monetization/sticker/widget/StickerCollectionSourceView;->setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    const v3, 0x7f090c0e

    .line 552
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 553
    iget-object v4, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    const v5, 0x7f0f111b

    new-array v6, v1, [Ljava/lang/Object;

    sget-object v7, Lcom/narvii/util/text/TextUtils;->numberFormat:Ljava/text/NumberFormat;

    iget-wide v8, p2, Lcom/narvii/monetization/sticker/model/StickerCollection;->usedCount:J

    invoke-virtual {v7, v8, v9}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 554
    iget-object v4, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    invoke-static {v4}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->access$000(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;)Lcom/narvii/monetization/sticker/StickerHelper;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/narvii/monetization/sticker/StickerHelper;->showStickerCollectionUsedTimes(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    const v3, 0x7f0900e0

    .line 556
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 558
    invoke-virtual {p2}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isShared()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 559
    invoke-virtual {p2}, Lcom/narvii/monetization/sticker/model/StickerCollection;->getOriginalAuthor()Lcom/narvii/model/User;

    move-result-object v4

    goto :goto_1

    .line 560
    :cond_1
    iget-object v4, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    invoke-static {v4}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->access$300(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 561
    iget-object v4, p2, Lcom/narvii/monetization/sticker/model/StickerCollection;->author:Lcom/narvii/model/User;

    goto :goto_1

    :cond_2
    move-object v4, v5

    .line 564
    :goto_1
    invoke-virtual {p2}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isShared()Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v4, :cond_3

    .line 565
    invoke-virtual {v4, v5}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-static {v3, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    goto :goto_4

    :cond_4
    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 567
    :goto_3
    invoke-static {v3, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    :goto_4
    if-eqz v4, :cond_6

    const v1, 0x7f090c10

    .line 570
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/UserAvatarLayout;

    .line 571
    invoke-virtual {v1, v4}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    const/high16 v2, 0x3fc00000    # 1.5f

    .line 572
    invoke-virtual {v1, v2}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarStroke(F)V

    const v2, 0x7f090764

    .line 574
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/NicknameView;

    .line 575
    iput-boolean p3, v2, Lcom/narvii/widget/NicknameView;->hideRole:Z

    .line 576
    invoke-virtual {v2, p3}, Lcom/narvii/widget/NicknameView;->setHideRankingBadge(Z)V

    .line 577
    invoke-virtual {v2, v4}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    if-eqz p3, :cond_6

    const/16 v5, 0x8

    .line 581
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const v1, -0xededee

    .line 582
    invoke-virtual {v2, v1}, Lcom/narvii/widget/NicknameView;->setTextColor(I)V

    .line 586
    :cond_6
    new-instance v1, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter$2;

    invoke-direct {v1, p0, p3, v4}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter$2;-><init>(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;ZLcom/narvii/model/User;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 602
    iget-object p3, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    iget-object v1, p3, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->storeItemOwnStatusController:Lcom/narvii/monetization/StoreItemOwnStatusController;

    if-nez v1, :cond_7

    .line 603
    new-instance v1, Lcom/narvii/monetization/StickerCollectionOwnStatusController;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/narvii/monetization/StickerCollectionOwnStatusController;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;)V

    iput-object v1, p3, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->storeItemOwnStatusController:Lcom/narvii/monetization/StoreItemOwnStatusController;

    .line 604
    iget-object p3, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    iget-boolean p3, p3, Lcom/narvii/detail/DetailFragment;->preview:Z

    invoke-virtual {v0, p3}, Lcom/narvii/monetization/StoreItemStatusView;->setPreview(Z)V

    .line 606
    :cond_7
    iget-object p3, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    iget-object p3, p3, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->storeItemOwnStatusController:Lcom/narvii/monetization/StoreItemOwnStatusController;

    invoke-virtual {p3, p2}, Lcom/narvii/monetization/StoreItemOwnStatusController;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    :cond_8
    return-object p1

    .line 611
    :cond_9
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/detail/DetailAdapter;->getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected getCellTypes(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/detail/DetailAdapter$CellType;",
            ">;)V"
        }
    .end annotation

    .line 507
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->getCellTypes(Ljava/util/List;)V

    .line 508
    sget-object v0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->DETAIL:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public objectType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/monetization/sticker/model/StickerCollection;",
            ">;"
        }
    .end annotation

    .line 484
    const-class v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    return-object v0
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    .line 513
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz v1, :cond_3

    .line 514
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v2, "update"

    if-eq v1, v2, :cond_2

    const-string v2, "edit"

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "delete"

    if-ne v1, p1, :cond_3

    .line 520
    check-cast v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 521
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    goto :goto_2

    .line 515
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-static {v0, p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->getUpdatedStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;Lcom/narvii/monetization/sticker/model/StickerCollection;)Lcom/narvii/monetization/sticker/model/StickerCollection;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 516
    iget-object v0, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 517
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->setObject(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    :cond_3
    :goto_2
    return-void
.end method

.method protected bridge synthetic onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V
    .locals 0

    .line 429
    check-cast p2, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;)V

    return-void
.end method

.method protected onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;)V
    .locals 0

    .line 478
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailAdapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V

    .line 479
    iget-object p1, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->requestFinished:Z

    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;",
            ">;"
        }
    .end annotation

    .line 489
    const-class v0, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;

    return-object v0
.end method

.method public bridge synthetic setObject(Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 429
    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->setObject(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    return-void
.end method

.method public setObject(Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 1

    .line 437
    new-instance v0, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;

    invoke-direct {v0}, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;-><init>()V

    .line 438
    iput-object p1, v0, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 439
    invoke-virtual {p0, v0}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->setResponse(Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;)V

    .line 440
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->invalidateOptionsMenu()V

    return-void
.end method

.method public bridge synthetic setResponse(Lcom/narvii/model/api/ObjectResponse;)V
    .locals 0

    .line 429
    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->setResponse(Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;)V

    return-void
.end method

.method public setResponse(Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;)V
    .locals 3

    .line 449
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->setResponse(Lcom/narvii/model/api/ObjectResponse;)V

    .line 451
    iget-object v0, p1, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz v0, :cond_1

    .line 452
    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isShared()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    invoke-static {v0}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->access$000(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;)Lcom/narvii/monetization/sticker/StickerHelper;

    move-result-object v0

    iget-object v1, p1, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/StickerHelper;->isCreatedByMe(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 453
    :cond_0
    iget-object v0, p1, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    new-instance v1, Lcom/narvii/util/FilterHelper;

    invoke-direct {v1, p0}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v2, p1, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    iget-object v2, v2, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    iget-object v0, v0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->stickerListAdapter:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$StickerListAdapter;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz v1, :cond_2

    .line 458
    iget-object v1, v1, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/narvii/list/NVArrayAdapter;->setList(Ljava/util/ArrayList;)V

    .line 461
    :cond_2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    invoke-static {v0}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->access$100(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;)V

    .line 462
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    invoke-static {v0}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->access$200(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;)V

    if-eqz p1, :cond_3

    .line 464
    iget-object v0, p1, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    invoke-static {v0}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;->access$000(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;)Lcom/narvii/monetization/sticker/StickerHelper;

    move-result-object v0

    iget-object v1, p1, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/sticker/StickerHelper;->isCreatedByMe(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_3

    .line 465
    iget-object v0, p0, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 466
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->removeRightView()V

    const v1, 0x7f0f03cd

    .line 467
    new-instance v2, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter$1;

    invoke-direct {v2, p0, p1}, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter$1;-><init>(Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment$Adapter;Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/app/NVActivity;->setActionBarRightView(ILandroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method
