.class Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater;->this$0:Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    move-result v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater;->pageSize()I

    .line 18
    move-result v1

    .line 19
    .line 20
    if-ge v0, v1, :cond_0

    .line 21
    .line 22
    new-instance p2, Landroid/view/View;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 30
    return-object p2

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->createLoadMoreItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "/store/items"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    const-string v1, "sectionGroupId"

    .line 13
    .line 14
    const-string v2, "sticker"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 18
    .line 19
    const-string v1, "storeGroupId"

    .line 20
    .line 21
    const-string v2, "community-shared"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    const-string p1, "start0"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 35
    move-result-object p1

    .line 36
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

    .line 1
    .line 2
    new-instance p2, Lcom/narvii/util/FilterHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p2, p0}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/narvii/util/FilterHelper;->keepForLeader()Lcom/narvii/util/FilterHelper;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p1}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    .line 13
    move-result-object p1

    .line 14
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

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/monetization/store/data/StoreItem;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    check-cast p1, Lcom/narvii/monetization/store/data/StoreItem;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/monetization/store/data/StoreItem;->getRefObject()Lcom/narvii/model/NVObject;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    return-object v1

    .line 17
    .line 18
    .line 19
    :cond_0
    const v0, 0x7f0d0447

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    .line 26
    const p3, 0x7f0a0343

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object p3

    .line 31
    .line 32
    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 33
    .line 34
    iget-object v0, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->icon:Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 38
    const/4 v0, 0x0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 42
    .line 43
    .line 44
    const p3, 0x7f0a0da8

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    move-result-object p3

    .line 49
    .line 50
    check-cast p3, Lcom/narvii/monetization/utils/StoreItemNameView;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3, p1}, Lcom/narvii/monetization/utils/StoreItemNameView;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 54
    .line 55
    .line 56
    const p3, 0x7f0a0441

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    move-result-object p3

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isDisabled()Z

    .line 64
    move-result v1

    .line 65
    const/4 v2, 0x1

    .line 66
    .line 67
    if-nez v1, :cond_2

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isClosed()Z

    .line 71
    move-result v1

    .line 72
    .line 73
    if-eqz v1, :cond_1

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    move v1, v0

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    :goto_0
    move v1, v2

    .line 78
    .line 79
    .line 80
    :goto_1
    invoke-static {p3, v1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 81
    .line 82
    .line 83
    const p3, 0x7f0a0da9

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    move-result-object p3

    .line 88
    .line 89
    check-cast p3, Landroid/widget/TextView;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 93
    move-result-object v1

    .line 94
    .line 95
    iget v3, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickersCount:I

    .line 96
    .line 97
    .line 98
    const v4, 0x7f120dfe

    .line 99
    .line 100
    .line 101
    const v5, 0x7f120d2f

    .line 102
    .line 103
    .line 104
    invoke-static {v1, v3, v4, v5}, Lcom/narvii/util/text/TextUtils;->getCountText(Landroid/content/Context;III)Ljava/lang/String;

    .line 105
    move-result-object v1

    .line 106
    .line 107
    .line 108
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    .line 110
    iget p1, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickersCount:I

    .line 111
    .line 112
    if-eqz p1, :cond_3

    .line 113
    move v0, v2

    .line 114
    .line 115
    .line 116
    :cond_3
    invoke-static {p3, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 117
    .line 118
    .line 119
    const p1, 0x7f0a0417

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 123
    move-result-object p1

    .line 124
    .line 125
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    return-object p2

    .line 130
    :cond_4
    return-object v1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/monetization/store/data/StoreItem;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    if-eqz p5, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 10
    move-result v0

    .line 11
    .line 12
    .line 13
    const v1, 0x7f0a0417

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    const v1, 0x7f1203b9

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 31
    .line 32
    .line 33
    const v1, 0x7f120d57

    .line 34
    const/4 v2, 0x0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 38
    .line 39
    new-instance v1, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater$1;

    .line 40
    .line 41
    .line 42
    invoke-direct {v1, p0, p3}, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater$1;-><init>(Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater;Ljava/lang/Object;)V

    .line 43
    .line 44
    const/high16 v2, -0x10000

    .line 45
    .line 46
    .line 47
    const v3, 0x7f1212a7

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v3, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 54
    .line 55
    .line 56
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 57
    move-result p1

    .line 58
    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    .line 5
    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/monetization/store/data/StoreItemListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/store/data/StoreItemListResponse;I)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/store/data/StoreItemListResponse;I)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    const-string p3, "start0"

    .line 3
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater;->this$0:Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;

    .line 4
    invoke-static {p1}, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->u(Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater;->this$0:Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;

    .line 5
    invoke-static {p1}, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->u(Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lcom/narvii/monetization/store/data/StoreItemListResponse;->list()Ljava/util/List;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment$ShareSticlkerAdapater;->this$0:Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;

    .line 6
    iget-object p2, p2, Lcom/narvii/monetization/store/data/StoreItemListResponse;->storeSection:Lcom/narvii/monetization/store/data/StoreSectionMini;

    invoke-static {p1, p2}, Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;->w(Lcom/narvii/monetization/sticker/shared/ShareStickerManageListFragment;Lcom/narvii/monetization/store/data/StoreSectionMini;)V

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

    const-class v0, Lcom/narvii/monetization/store/data/StoreItemListResponse;

    return-object v0
.end method
