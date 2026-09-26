.class Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    new-instance p1, Lcom/narvii/monetization/store/StoreHelper;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, p2}, Lcom/narvii/monetization/store/StoreHelper;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    iput-object p1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;->storeHelper:Lcom/narvii/monetization/store/StoreHelper;

    .line 17
    return-void
.end method

.method static bridge synthetic m(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;)Lcom/narvii/monetization/store/data/StoreSectionMini;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;->storeSection:Lcom/narvii/monetization/store/data/StoreSectionMini;

    return-object p0
.end method


# virtual methods
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

    const-class v0, Lcom/narvii/monetization/store/data/StoreItem;

    return-object v0
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 0

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
    if-eqz v0, :cond_6

    .line 6
    .line 7
    check-cast p1, Lcom/narvii/monetization/store/data/StoreItem;

    .line 8
    .line 9
    .line 10
    const v0, 0x7f0d06d8

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/monetization/store/data/StoreItem;->getRefObject()Lcom/narvii/model/NVObject;

    .line 18
    move-result-object p3

    .line 19
    .line 20
    .line 21
    const v0, 0x7f0a0441

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object v0

    .line 26
    const/4 v2, 0x1

    .line 27
    const/4 v3, 0x0

    .line 28
    .line 29
    if-eqz p3, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3}, Lcom/narvii/model/NVObject;->status()I

    .line 33
    move-result v4

    .line 34
    .line 35
    const/16 v5, 0x9

    .line 36
    .line 37
    if-eq v4, v5, :cond_0

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3}, Lcom/narvii/model/NVObject;->status()I

    .line 41
    move-result v4

    .line 42
    const/4 v5, 0x3

    .line 43
    .line 44
    if-ne v4, v5, :cond_1

    .line 45
    :cond_0
    move v4, v2

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move v4, v3

    .line 48
    .line 49
    .line 50
    :goto_0
    invoke-static {v0, v4}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 51
    .line 52
    .line 53
    const v0, 0x7f0a0dc5

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 60
    .line 61
    .line 62
    const v4, 0x7f0a0dc2

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    move-result-object v4

    .line 67
    .line 68
    check-cast v4, Landroid/widget/TextView;

    .line 69
    .line 70
    iget-object v5, p1, Lcom/narvii/monetization/store/data/StoreItem;->itemBasicInfo:Lcom/narvii/monetization/store/data/StoreItem$ItemBasicInfo;

    .line 71
    .line 72
    if-nez v5, :cond_2

    .line 73
    move-object v5, v1

    .line 74
    goto :goto_1

    .line 75
    .line 76
    :cond_2
    iget-object v5, v5, Lcom/narvii/monetization/store/data/StoreItem$ItemBasicInfo;->icon:Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    :goto_1
    invoke-virtual {v0, v5}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 80
    .line 81
    iget-object v0, p1, Lcom/narvii/monetization/store/data/StoreItem;->itemBasicInfo:Lcom/narvii/monetization/store/data/StoreItem$ItemBasicInfo;

    .line 82
    .line 83
    if-nez v0, :cond_3

    .line 84
    goto :goto_2

    .line 85
    .line 86
    :cond_3
    iget-object v1, v0, Lcom/narvii/monetization/store/data/StoreItem$ItemBasicInfo;->name:Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    iget-object p1, p1, Lcom/narvii/monetization/store/data/StoreItem;->itemRestrictionInfo:Lcom/narvii/model/RestrictionInfo;

    .line 92
    .line 93
    if-eqz p1, :cond_4

    .line 94
    .line 95
    iget p1, p1, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    .line 96
    const/4 v0, 0x2

    .line 97
    .line 98
    if-ne p1, v0, :cond_4

    .line 99
    move p1, v2

    .line 100
    goto :goto_3

    .line 101
    :cond_4
    move p1, v3

    .line 102
    .line 103
    .line 104
    :goto_3
    const v0, 0x7f0a010a

    .line 105
    .line 106
    .line 107
    invoke-static {p2, v0, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 108
    .line 109
    .line 110
    const p1, 0x7f0a0f34

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    move-result-object p1

    .line 115
    .line 116
    check-cast p1, Landroid/widget/TextView;

    .line 117
    .line 118
    instance-of v0, p3, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 119
    .line 120
    .line 121
    const v1, 0x7f0a0025

    .line 122
    .line 123
    if-eqz v0, :cond_5

    .line 124
    .line 125
    check-cast p3, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 126
    .line 127
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;

    .line 128
    .line 129
    iget-object v0, v0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, p3}, Lcom/narvii/monetization/sticker/StickerHelper;->isStickerPackNew(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    .line 133
    move-result v0

    .line 134
    .line 135
    .line 136
    invoke-static {p2, v1, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 137
    .line 138
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;

    .line 139
    .line 140
    new-array v1, v2, [Ljava/lang/Object;

    .line 141
    .line 142
    sget-object v2, Lcom/narvii/util/text/TextUtils;->numberFormat:Ljava/text/NumberFormat;

    .line 143
    .line 144
    iget-wide v4, p3, Lcom/narvii/monetization/sticker/model/StickerCollection;->usedCount:J

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 148
    move-result-object v2

    .line 149
    .line 150
    aput-object v2, v1, v3

    .line 151
    .line 152
    .line 153
    const v2, 0x7f121227

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 157
    move-result-object v0

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    .line 162
    iget-object v0, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;

    .line 163
    .line 164
    iget-object v0, v0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->stickerHelper:Lcom/narvii/monetization/sticker/StickerHelper;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, p3}, Lcom/narvii/monetization/sticker/StickerHelper;->showStickerCollectionUsedTimes(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    .line 168
    move-result p3

    .line 169
    .line 170
    .line 171
    invoke-static {p1, p3}, Lcom/narvii/util/ViewUtils;->visible(Landroid/view/View;Z)V

    .line 172
    goto :goto_4

    .line 173
    .line 174
    .line 175
    :cond_5
    invoke-static {p2, v1, v3}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;IZ)V

    .line 176
    .line 177
    .line 178
    invoke-static {p1, v3}, Lcom/narvii/util/ViewUtils;->visible(Landroid/view/View;Z)V

    .line 179
    :goto_4
    return-object p2

    .line 180
    :cond_6
    return-object v1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/monetization/store/data/StoreItem;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    move-object v0, p3

    .line 6
    .line 7
    check-cast v0, Lcom/narvii/monetization/store/data/StoreItem;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/narvii/monetization/store/data/StoreItem;->getRefObject()Lcom/narvii/model/NVObject;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->status()I

    .line 17
    move-result v2

    .line 18
    .line 19
    const/16 v3, 0x9

    .line 20
    .line 21
    if-eq v2, v3, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->status()I

    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x3

    .line 27
    .line 28
    if-ne v1, v2, :cond_1

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/monetization/store/data/StoreItem;->getRefObject()Lcom/narvii/model/NVObject;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 35
    .line 36
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 40
    move-result-object p2

    .line 41
    .line 42
    .line 43
    invoke-direct {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    const p2, 0x7f1203ac

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 50
    .line 51
    .line 52
    const p2, 0x7f1201e2

    .line 53
    const/4 p4, 0x0

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p2, p4}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 57
    .line 58
    new-instance p2, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter$1;

    .line 59
    .line 60
    .line 61
    invoke-direct {p2, p0, p3}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter$1;-><init>(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;Ljava/lang/Object;)V

    .line 62
    .line 63
    const/high16 p3, -0x10000

    .line 64
    .line 65
    .line 66
    const p4, 0x7f1203a0

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p4, p2, p3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 73
    const/4 p1, 0x1

    .line 74
    return p1

    .line 75
    .line 76
    :cond_1
    iget-object v1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;->storeHelper:Lcom/narvii/monetization/store/StoreHelper;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v0}, Lcom/narvii/monetization/store/StoreHelper;->openStoreItemDetail(Lcom/narvii/monetization/store/data/StoreItem;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 83
    move-result p1

    .line 84
    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 5
    .line 6
    if-eqz v1, :cond_2

    .line 7
    .line 8
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, "update"

    .line 11
    .line 12
    if-ne v1, v2, :cond_2

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v2

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    instance-of v3, v2, Lcom/narvii/monetization/store/data/StoreItem;

    .line 41
    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    check-cast v2, Lcom/narvii/monetization/store/data/StoreItem;

    .line 45
    .line 46
    iget-object v3, v2, Lcom/narvii/monetization/store/data/StoreItem;->refObjectId:Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    invoke-static {v3, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    move-result v3

    .line 51
    .line 52
    if-eqz v3, :cond_0

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v0}, Lcom/narvii/monetization/store/data/StoreItem;->setCachedRefObject(Lcom/narvii/model/NVObject;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 59
    :cond_1
    return-void

    .line 60
    .line 61
    :cond_2
    instance-of v0, v0, Lcom/narvii/monetization/store/data/StoreItem;

    .line 62
    .line 63
    if-eqz v0, :cond_3

    .line 64
    const/4 v0, 0x0

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    .line 68
    :cond_3
    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/monetization/store/data/StoreItemListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/store/data/StoreItemListResponse;I)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/store/data/StoreItemListResponse;I)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 3
    iget-object p2, p2, Lcom/narvii/monetization/store/data/StoreItemListResponse;->storeSection:Lcom/narvii/monetization/store/data/StoreSectionMini;

    iput-object p2, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;->storeSection:Lcom/narvii/monetization/store/data/StoreSectionMini;

    const-string p2, "start0"

    .line 4
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment$StoreItemListAdapter;->this$0:Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;

    .line 5
    invoke-static {p1}, Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;->v(Lcom/narvii/monetization/sticker/shared/SharedStickerCollectionListFragment;)V

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

    .line 1
    .line 2
    or-int/lit16 p1, p1, 0x200

    .line 3
    .line 4
    .line 5
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 6
    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/narvii/monetization/store/data/StoreItemListResponse;

    return-object v0
.end method
