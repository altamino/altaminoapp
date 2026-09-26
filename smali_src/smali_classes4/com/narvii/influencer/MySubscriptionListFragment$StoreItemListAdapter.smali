.class Lcom/narvii/influencer/MySubscriptionListFragment$StoreItemListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/influencer/MySubscriptionListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreItemListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/monetization/store/data/StoreItem;",
        "Lcom/narvii/monetization/subscription/StoreItemSubscriptionListResponse;",
        ">;",
        "Lcom/narvii/notification/NotificationListener;"
    }
.end annotation


# instance fields
.field private final objectType:I

.field final synthetic this$0:Lcom/narvii/influencer/MySubscriptionListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/influencer/MySubscriptionListFragment;Lcom/narvii/app/NVContext;I)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/influencer/MySubscriptionListFragment$StoreItemListAdapter;->this$0:Lcom/narvii/influencer/MySubscriptionListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iput p3, p0, Lcom/narvii/influencer/MySubscriptionListFragment$StoreItemListAdapter;->objectType:I

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
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    const-string v0, "/store/subscription"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    iget v0, p0, Lcom/narvii/influencer/MySubscriptionListFragment$StoreItemListAdapter;->objectType:I

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    const-string v1, "objectType"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 29
    move-result-object p1

    .line 30
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
    .line 4
    if-eqz v0, :cond_a

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0d0483

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    check-cast p1, Lcom/narvii/monetization/store/data/StoreItem;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/narvii/monetization/store/data/StoreItem;->getRefObject()Lcom/narvii/model/NVObject;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    instance-of p3, p1, Lcom/narvii/model/StoreItemBaseObject;

    .line 20
    .line 21
    if-nez p3, :cond_0

    .line 22
    return-object p2

    .line 23
    .line 24
    :cond_0
    check-cast p1, Lcom/narvii/model/StoreItemBaseObject;

    .line 25
    .line 26
    .line 27
    const p3, 0x7f0a0181

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object p3

    .line 32
    .line 33
    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 34
    .line 35
    .line 36
    invoke-interface {p1}, Lcom/narvii/model/IStoreItem;->getStoreIcon()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    const p3, 0x7f0a0183

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object p3

    .line 48
    .line 49
    check-cast p3, Landroid/widget/TextView;

    .line 50
    .line 51
    .line 52
    invoke-interface {p1}, Lcom/narvii/model/IStoreItem;->getName()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    const p3, 0x7f0a010a

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object p3

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/narvii/model/StoreItemBaseObject;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    .line 67
    move-result-object v0

    .line 68
    const/4 v1, 0x0

    .line 69
    const/4 v2, 0x1

    .line 70
    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    iget v0, v0, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    .line 74
    const/4 v3, 0x2

    .line 75
    .line 76
    if-ne v0, v3, :cond_1

    .line 77
    move v0, v2

    .line 78
    goto :goto_0

    .line 79
    :cond_1
    move v0, v1

    .line 80
    .line 81
    .line 82
    :goto_0
    invoke-static {p3, v0}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 83
    .line 84
    .line 85
    const p3, 0x7f0a0d90

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    move-result-object p3

    .line 90
    .line 91
    check-cast p3, Landroid/widget/TextView;

    .line 92
    .line 93
    iget-object v0, p1, Lcom/narvii/model/StoreItemBaseObject;->ownershipInfo:Lcom/narvii/model/OwnershipInfo;

    .line 94
    .line 95
    if-eqz v0, :cond_2

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/narvii/model/OwnershipInfo;->isExpired()Z

    .line 99
    move-result v0

    .line 100
    .line 101
    if-eqz v0, :cond_2

    .line 102
    move v0, v2

    .line 103
    goto :goto_1

    .line 104
    :cond_2
    move v0, v1

    .line 105
    .line 106
    :goto_1
    iget-object v3, p1, Lcom/narvii/model/StoreItemBaseObject;->ownershipInfo:Lcom/narvii/model/OwnershipInfo;

    .line 107
    .line 108
    if-eqz v3, :cond_3

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3}, Lcom/narvii/model/OwnershipInfo;->isAutoRenew()Z

    .line 112
    move-result v3

    .line 113
    .line 114
    if-eqz v3, :cond_3

    .line 115
    move v3, v2

    .line 116
    goto :goto_2

    .line 117
    :cond_3
    move v3, v1

    .line 118
    .line 119
    :goto_2
    iget-object v4, p0, Lcom/narvii/influencer/MySubscriptionListFragment$StoreItemListAdapter;->this$0:Lcom/narvii/influencer/MySubscriptionListFragment;

    .line 120
    .line 121
    .line 122
    invoke-static {v4}, Lcom/narvii/influencer/MySubscriptionListFragment;->t(Lcom/narvii/influencer/MySubscriptionListFragment;)Lcom/narvii/monetization/utils/StoreItemHelper;

    .line 123
    move-result-object v4

    .line 124
    .line 125
    iget-object v5, p1, Lcom/narvii/model/StoreItemBaseObject;->ownershipInfo:Lcom/narvii/model/OwnershipInfo;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4, v5}, Lcom/narvii/monetization/utils/StoreItemHelper;->getExpiredTimeStringColor(Lcom/narvii/model/OwnershipInfo;)I

    .line 129
    move-result v4

    .line 130
    .line 131
    .line 132
    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    .line 134
    .line 135
    const v4, -0xff3183

    .line 136
    .line 137
    .line 138
    const v5, 0x7f12006b

    .line 139
    .line 140
    if-eqz v3, :cond_4

    .line 141
    .line 142
    .line 143
    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    goto :goto_3

    .line 148
    .line 149
    :cond_4
    if-nez v0, :cond_8

    .line 150
    .line 151
    iget-object p1, p1, Lcom/narvii/model/StoreItemBaseObject;->ownershipInfo:Lcom/narvii/model/OwnershipInfo;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/narvii/model/OwnershipInfo;->daysExpired()I

    .line 155
    move-result p1

    .line 156
    neg-int p1, p1

    .line 157
    .line 158
    .line 159
    const v0, -0xbfc0

    .line 160
    .line 161
    if-nez p1, :cond_5

    .line 162
    .line 163
    iget-object p1, p0, Lcom/narvii/influencer/MySubscriptionListFragment$StoreItemListAdapter;->this$0:Lcom/narvii/influencer/MySubscriptionListFragment;

    .line 164
    .line 165
    .line 166
    const v1, 0x7f120c8b

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 170
    move-result-object p1

    .line 171
    .line 172
    .line 173
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 177
    goto :goto_3

    .line 178
    .line 179
    :cond_5
    if-ne p1, v2, :cond_6

    .line 180
    .line 181
    iget-object p1, p0, Lcom/narvii/influencer/MySubscriptionListFragment$StoreItemListAdapter;->this$0:Lcom/narvii/influencer/MySubscriptionListFragment;

    .line 182
    .line 183
    .line 184
    const v1, 0x7f120c8c

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 188
    move-result-object p1

    .line 189
    .line 190
    .line 191
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 195
    goto :goto_3

    .line 196
    :cond_6
    const/4 v3, 0x7

    .line 197
    .line 198
    if-lez p1, :cond_7

    .line 199
    .line 200
    if-gt p1, v3, :cond_7

    .line 201
    .line 202
    iget-object v3, p0, Lcom/narvii/influencer/MySubscriptionListFragment$StoreItemListAdapter;->this$0:Lcom/narvii/influencer/MySubscriptionListFragment;

    .line 203
    .line 204
    new-array v2, v2, [Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 208
    move-result-object p1

    .line 209
    .line 210
    aput-object p1, v2, v1

    .line 211
    .line 212
    .line 213
    const p1, 0x7f120c8d

    .line 214
    .line 215
    .line 216
    invoke-virtual {v3, p1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 217
    move-result-object p1

    .line 218
    .line 219
    .line 220
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 224
    goto :goto_3

    .line 225
    .line 226
    :cond_7
    if-le p1, v3, :cond_9

    .line 227
    .line 228
    .line 229
    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 233
    goto :goto_3

    .line 234
    .line 235
    .line 236
    :cond_8
    const p1, 0x7f1204ac

    .line 237
    .line 238
    .line 239
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(I)V

    .line 240
    .line 241
    .line 242
    const p1, -0x666667

    .line 243
    .line 244
    .line 245
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 246
    :cond_9
    :goto_3
    return-object p2

    .line 247
    :cond_a
    const/4 p1, 0x0

    .line 248
    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 1
    .line 2
    const-class v0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "storeItem"

    .line 9
    .line 10
    .line 11
    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v0}, Lcom/narvii/influencer/MySubscriptionListFragment$StoreItemListAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 19
    .line 20
    .line 21
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 22
    move-result p1

    .line 23
    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 3
    .line 4
    const-string v1, "update"

    .line 5
    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 9
    .line 10
    instance-of v0, v0, Lcom/narvii/model/StoreItemBaseObject;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    const/4 v1, 0x0

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 23
    move-result v2

    .line 24
    .line 25
    if-ge v1, v2, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    .line 31
    check-cast v2, Lcom/narvii/monetization/store/data/StoreItem;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/narvii/monetization/store/data/StoreItem;->id()Ljava/lang/String;

    .line 35
    move-result-object v3

    .line 36
    .line 37
    iget-object v4, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v4, Lcom/narvii/model/StoreItemBaseObject;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 43
    move-result-object v4

    .line 44
    .line 45
    .line 46
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    move-result v3

    .line 48
    .line 49
    if-eqz v3, :cond_0

    .line 50
    .line 51
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p1, Lcom/narvii/model/StoreItemBaseObject;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, p1}, Lcom/narvii/monetization/store/data/StoreItem;->setChangedRefObject(Lcom/narvii/model/NVObject;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 63
    goto :goto_1

    .line 64
    .line 65
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    :goto_1
    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/monetization/subscription/StoreItemSubscriptionListResponse;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/narvii/monetization/subscription/StoreItemSubscriptionListResponse;

    return-object v0
.end method
