.class Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;
.super Lcom/narvii/detail/DetailAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;
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
.field stated:Z

.field final synthetic this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/detail/DetailAdapter;-><init>(Lcom/narvii/app/NVContext;)V

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
.method protected buildCells(Ljava/util/List;)V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    sget-object v0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->DETAIL:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    return-void
.end method

.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v2, "/sticker-collection/"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    const-string v1, "includeStickers"

    .line 34
    .line 35
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 43
    move-result-object v0

    .line 44
    return-object v0
.end method

.method protected getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    .line 7
    const p1, 0x7f0d06fe

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    iget-object p3, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    .line 18
    .line 19
    .line 20
    invoke-static {p3}, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->t(Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;)I

    .line 21
    move-result p3

    .line 22
    .line 23
    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 24
    return-object p1

    .line 25
    .line 26
    :cond_0
    sget-object v0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->DETAIL:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 27
    .line 28
    if-ne p1, v0, :cond_4

    .line 29
    .line 30
    .line 31
    const p1, 0x7f0d06fc

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 39
    move-result-object p2

    .line 40
    .line 41
    check-cast p2, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 42
    .line 43
    if-eqz p2, :cond_3

    .line 44
    .line 45
    .line 46
    const p3, 0x7f0a0da8

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object p3

    .line 51
    .line 52
    check-cast p3, Lcom/narvii/monetization/utils/StoreItemNameView;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p3, p2}, Lcom/narvii/monetization/utils/StoreItemNameView;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 56
    .line 57
    .line 58
    const p3, 0x7f0a0342

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    move-result-object p3

    .line 63
    .line 64
    check-cast p3, Landroid/widget/TextView;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Lcom/narvii/monetization/sticker/model/StickerCollection;->getDescription()Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    .line 71
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    move-result v1

    .line 73
    const/4 v2, 0x0

    .line 74
    const/4 v3, 0x1

    .line 75
    .line 76
    if-eqz v1, :cond_1

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    invoke-static {p3, v2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 83
    goto :goto_0

    .line 84
    .line 85
    :cond_1
    new-instance v1, Lcom/narvii/util/text/NVText;

    .line 86
    .line 87
    .line 88
    invoke-direct {v1, v0}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    new-instance v0, Lcom/narvii/util/text/DefaultTagClickListener;

    .line 91
    .line 92
    .line 93
    invoke-direct {v0}, Lcom/narvii/util/text/DefaultTagClickListener;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v0}, Lcom/narvii/util/text/NVText;->markAllEntries(Lcom/narvii/util/text/OnTagClickListener;)I

    .line 97
    .line 98
    .line 99
    invoke-virtual {p3, v3}, Landroid/view/View;->setClickable(Z)V

    .line 100
    .line 101
    .line 102
    invoke-static {}, Lcom/narvii/util/text/LinkTouchMovementMethod;->getInstance()Lcom/narvii/util/text/LinkTouchMovementMethod;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    .line 106
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 107
    .line 108
    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p3, v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 112
    .line 113
    .line 114
    invoke-static {p3, v3}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 115
    .line 116
    .line 117
    :goto_0
    const p3, 0x7f0a0dc9

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 121
    move-result-object p3

    .line 122
    .line 123
    check-cast p3, Lcom/narvii/monetization/StoreItemStatusView;

    .line 124
    .line 125
    iget-object v0, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    .line 126
    .line 127
    iget-object v1, v0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->storeItemOwnStatusController:Lcom/narvii/monetization/StoreItemOwnStatusController;

    .line 128
    .line 129
    if-nez v1, :cond_2

    .line 130
    .line 131
    new-instance v1, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter$1;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    .line 135
    move-result-object v4

    .line 136
    .line 137
    .line 138
    invoke-direct {v1, p0, v4, p3}, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter$1;-><init>(Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;Lcom/narvii/app/NVContext;Lcom/narvii/monetization/StoreItemStatusView;)V

    .line 139
    .line 140
    iput-object v1, v0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->storeItemOwnStatusController:Lcom/narvii/monetization/StoreItemOwnStatusController;

    .line 141
    .line 142
    :cond_2
    iget-object p3, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    .line 143
    .line 144
    iget-object p3, p3, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->storeItemOwnStatusController:Lcom/narvii/monetization/StoreItemOwnStatusController;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p3, p2}, Lcom/narvii/monetization/StoreItemOwnStatusController;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 148
    .line 149
    .line 150
    const p3, 0x7f0a0f34

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 154
    move-result-object p3

    .line 155
    .line 156
    check-cast p3, Landroid/widget/TextView;

    .line 157
    .line 158
    iget-object v0, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    .line 159
    .line 160
    new-array v1, v3, [Ljava/lang/Object;

    .line 161
    .line 162
    sget-object v3, Lcom/narvii/util/text/TextUtils;->numberFormat:Ljava/text/NumberFormat;

    .line 163
    .line 164
    iget-wide v4, p2, Lcom/narvii/monetization/sticker/model/StickerCollection;->usedCount:J

    .line 165
    .line 166
    .line 167
    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 168
    move-result-object v3

    .line 169
    .line 170
    aput-object v3, v1, v2

    .line 171
    .line 172
    .line 173
    const v2, 0x7f121226

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 177
    move-result-object v0

    .line 178
    .line 179
    .line 180
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    .line 182
    iget-object v0, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    .line 183
    .line 184
    .line 185
    invoke-static {v0}, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->u(Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;)Lcom/narvii/monetization/sticker/StickerHelper;

    .line 186
    move-result-object v0

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, p2}, Lcom/narvii/monetization/sticker/StickerHelper;->showStickerCollectionUsedTimes(Lcom/narvii/monetization/sticker/model/StickerCollection;)Z

    .line 190
    move-result p2

    .line 191
    .line 192
    .line 193
    invoke-static {p3, p2}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 194
    :cond_3
    return-object p1

    .line 195
    .line 196
    .line 197
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/detail/DetailAdapter;->getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 198
    move-result-object p1

    .line 199
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->getCellTypes(Ljava/util/List;)V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    sget-object v0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->DETAIL:Lcom/narvii/detail/DetailAdapter$CellType;

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    return-void
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/detail/DetailAdapter;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->v(Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;)V

    .line 9
    return-void
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

    const-class v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    return-object v0
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 3
    .line 4
    instance-of v0, v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "update"

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 23
    .line 24
    .line 25
    invoke-static {v0, p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->getUpdatedStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;Lcom/narvii/monetization/sticker/model/StickerCollection;)Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    iget-object v0, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->setObject(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    .line 36
    :cond_0
    return-void
.end method

.method protected bridge synthetic onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;)V

    return-void
.end method

.method protected onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailAdapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V

    iget-object p1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p1, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->requestFinished:Z

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

    const-class v0, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;

    return-object v0
.end method

.method public bridge synthetic setObject(Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->setObject(Lcom/narvii/monetization/sticker/model/StickerCollection;)V

    return-void
.end method

.method public setObject(Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;

    invoke-direct {v0}, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;-><init>()V

    iput-object p1, v0, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 3
    invoke-virtual {p0, v0}, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->setResponse(Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;)V

    return-void
.end method

.method public bridge synthetic setResponse(Lcom/narvii/model/api/ObjectResponse;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->setResponse(Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;)V

    return-void
.end method

.method public setResponse(Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;)V
    .locals 5

    const/4 v0, 0x0

    const-string v1, "Source"

    if-eqz p1, :cond_2

    .line 2
    iget-object v2, p1, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz v2, :cond_2

    .line 3
    invoke-virtual {v2}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isUserCreated()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    .line 4
    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-class v2, Lcom/narvii/monetization/sticker/post/UgcStickerCollectionDetailFragment;

    .line 5
    invoke-static {v2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    .line 6
    iget-object v3, p1, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-virtual {v3}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    iget-object p1, p1, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "prefetch"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/narvii/detail/DetailAdapter;->source:Ljava/lang/String;

    .line 8
    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-static {p0, v2}, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    .line 10
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    iget-object p1, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    .line 11
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    :cond_1
    :goto_0
    return-void

    .line 12
    :cond_2
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->setResponse(Lcom/narvii/model/api/ObjectResponse;)V

    .line 13
    iget-object v2, p1, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/narvii/monetization/sticker/model/StickerCollection;->isShared()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 14
    iget-object v2, p1, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    new-instance v3, Lcom/narvii/util/FilterHelper;

    invoke-direct {v3, p0}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v4, p1, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    iget-object v4, v4, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, v2, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    :cond_3
    iget-object v2, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    .line 15
    iget-object v2, v2, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;->stickerListAdapter:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$StickerListAdapter;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    if-eqz v3, :cond_4

    .line 16
    iget-object v3, v3, Lcom/narvii/monetization/sticker/model/StickerCollection;->stickerList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/narvii/list/NVArrayAdapter;->setList(Ljava/util/ArrayList;)V

    :cond_4
    iget-boolean v2, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->stated:Z

    if-nez v2, :cond_7

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->stated:Z

    const-string v3, "statistics"

    .line 17
    invoke-virtual {p0, v3}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/util/statistics/StatisticsService;

    .line 18
    iget-object p1, p1, Lcom/narvii/monetization/sticker/model/StickerCollectionResponse;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    iget-object p1, p1, Lcom/narvii/model/StoreItemBaseObject;->restrictionInfo:Lcom/narvii/model/RestrictionInfo;

    iget p1, p1, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    const/4 v4, 0x4

    if-ne p1, v4, :cond_5

    move v0, v2

    :cond_5
    const-string p1, "Amino+ Product Detail Page (Store)"

    .line 19
    invoke-interface {v3, p1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    const-string v2, "Amino+ Product Detail Page (Store) Total"

    invoke-virtual {p1, v2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    if-eqz v0, :cond_6

    const-string v0, "One Off Sticker"

    goto :goto_1

    :cond_6
    const-string v0, "Sticker"

    :goto_1
    const-string v2, "Type"

    .line 20
    invoke-virtual {p1, v2, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment$Adapter;->this$0:Lcom/narvii/monetization/sticker/collection/StickerCollectionDetailFragment;

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    :cond_7
    return-void
.end method
