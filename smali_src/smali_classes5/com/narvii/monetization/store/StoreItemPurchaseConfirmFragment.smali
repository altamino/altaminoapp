.class public Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/narvii/wallet/RedeemCouponComponent$IRedeemCouponCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment$ConfirmPurchaseListener;
    }
.end annotation


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String; = "purchase_confirm"


# instance fields
.field private benefitsHint:Landroid/view/View;

.field private confirmPurchaseListener:Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment$ConfirmPurchaseListener;

.field private membership:Lcom/narvii/wallet/MembershipService;

.field private originalPriceHint:Landroid/widget/TextView;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private redeemCouponComponent:Lcom/narvii/wallet/RedeemCouponComponent;

.field private storeItem:Lcom/narvii/model/IStoreItem;

.field private storeItemHelper:Lcom/narvii/monetization/utils/StoreItemHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment$1;-><init>(Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 11
    return-void
.end method

.method static bridge synthetic n(Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->updateStoreItem()V

    return-void
.end method

.method private updateStoreItem()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->storeItem:Lcom/narvii/model/IStoreItem;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto/16 :goto_2

    .line 13
    .line 14
    .line 15
    :cond_0
    const v1, 0x7f0a0dbf

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Lcom/narvii/widget/NVImageView;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->storeItem:Lcom/narvii/model/IStoreItem;

    .line 24
    .line 25
    .line 26
    invoke-interface {v2}, Lcom/narvii/model/IStoreItem;->getStoreIcon()Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    const v1, 0x7f0a0dc2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    check-cast v1, Lcom/narvii/monetization/utils/StoreItemNameView;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->storeItem:Lcom/narvii/model/IStoreItem;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Lcom/narvii/monetization/utils/StoreItemNameView;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 45
    .line 46
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->redeemCouponComponent:Lcom/narvii/wallet/RedeemCouponComponent;

    .line 47
    .line 48
    iget-object v2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->storeItem:Lcom/narvii/model/IStoreItem;

    .line 49
    const/4 v3, 0x0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2, v3, p0}, Lcom/narvii/wallet/RedeemCouponComponent;->bindProduct(Lcom/narvii/model/IBaseProduct;ZLcom/narvii/wallet/RedeemCouponComponent$IRedeemCouponCallback;)V

    .line 53
    .line 54
    .line 55
    const v1, 0x7f0a0dc6

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    check-cast v0, Landroid/widget/TextView;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->storeItem:Lcom/narvii/model/IStoreItem;

    .line 64
    .line 65
    iget-object v2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->membership:Lcom/narvii/wallet/MembershipService;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 69
    move-result v2

    .line 70
    .line 71
    .line 72
    invoke-interface {v1, v2}, Lcom/narvii/model/IBaseProduct;->getProductPrice(Z)I

    .line 73
    move-result v1

    .line 74
    .line 75
    if-ltz v1, :cond_1

    .line 76
    .line 77
    iget-object v2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->storeItemHelper:Lcom/narvii/monetization/utils/StoreItemHelper;

    .line 78
    .line 79
    iget-object v4, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->storeItem:Lcom/narvii/model/IStoreItem;

    .line 80
    .line 81
    .line 82
    invoke-interface {v4}, Lcom/narvii/model/IStoreItem;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    .line 83
    move-result-object v4

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v1, v4}, Lcom/narvii/monetization/utils/StoreItemHelper;->getPriceExpiredTimeCheck(ILcom/narvii/model/RestrictionInfo;)Ljava/lang/String;

    .line 87
    move-result-object v1

    .line 88
    goto :goto_0

    .line 89
    .line 90
    :cond_1
    const-string v1, ""

    .line 91
    .line 92
    .line 93
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->benefitsHint:Landroid/view/View;

    .line 96
    .line 97
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->storeItem:Lcom/narvii/model/IStoreItem;

    .line 98
    .line 99
    .line 100
    invoke-interface {v1}, Lcom/narvii/model/IStoreItem;->getAdditionalBenefits()Lcom/narvii/model/AdditionalBenefits;

    .line 101
    move-result-object v1

    .line 102
    .line 103
    const/16 v2, 0x8

    .line 104
    .line 105
    if-eqz v1, :cond_2

    .line 106
    .line 107
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->storeItem:Lcom/narvii/model/IStoreItem;

    .line 108
    .line 109
    .line 110
    invoke-interface {v1}, Lcom/narvii/model/IStoreItem;->getAdditionalBenefits()Lcom/narvii/model/AdditionalBenefits;

    .line 111
    move-result-object v1

    .line 112
    .line 113
    iget-boolean v1, v1, Lcom/narvii/model/AdditionalBenefits;->firstMonthFreeAminoPlusMembership:Z

    .line 114
    .line 115
    if-eqz v1, :cond_2

    .line 116
    .line 117
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->membership:Lcom/narvii/wallet/MembershipService;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 121
    move-result v1

    .line 122
    .line 123
    if-nez v1, :cond_2

    .line 124
    move v1, v3

    .line 125
    goto :goto_1

    .line 126
    :cond_2
    move v1, v2

    .line 127
    .line 128
    .line 129
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    .line 131
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->storeItem:Lcom/narvii/model/IStoreItem;

    .line 132
    .line 133
    .line 134
    invoke-interface {v0}, Lcom/narvii/model/IStoreItem;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    .line 135
    move-result-object v0

    .line 136
    .line 137
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->storeItem:Lcom/narvii/model/IStoreItem;

    .line 138
    .line 139
    iget-object v4, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->membership:Lcom/narvii/wallet/MembershipService;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v4}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 143
    move-result v4

    .line 144
    .line 145
    .line 146
    invoke-interface {v1, v4}, Lcom/narvii/model/IBaseProduct;->isMembershipPrice(Z)Z

    .line 147
    move-result v1

    .line 148
    .line 149
    if-eqz v1, :cond_3

    .line 150
    .line 151
    if-eqz v0, :cond_3

    .line 152
    .line 153
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->originalPriceHint:Landroid/widget/TextView;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 160
    move-result-object v1

    .line 161
    .line 162
    .line 163
    const v2, 0x7f121148

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 167
    move-result-object v1

    .line 168
    .line 169
    new-instance v2, Lcom/narvii/util/text/NVText;

    .line 170
    .line 171
    .line 172
    invoke-direct {v2, v1}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;)V

    .line 173
    const/4 v1, 0x1

    .line 174
    .line 175
    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 176
    .line 177
    iget-object v4, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->storeItemHelper:Lcom/narvii/monetization/utils/StoreItemHelper;

    .line 178
    .line 179
    iget v0, v0, Lcom/narvii/model/RestrictionInfo;->restrictValue:I

    .line 180
    .line 181
    .line 182
    invoke-virtual {v4, v0}, Lcom/narvii/monetization/utils/StoreItemHelper;->getCoinsSpannableWithDeleteLine(I)Landroid/text/Spannable;

    .line 183
    move-result-object v0

    .line 184
    .line 185
    aput-object v0, v1, v3

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2, v1}, Lcom/narvii/util/text/NVText;->format([Ljava/lang/CharSequence;)V

    .line 189
    .line 190
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->originalPriceHint:Landroid/widget/TextView;

    .line 191
    .line 192
    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 196
    .line 197
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->originalPriceHint:Landroid/widget/TextView;

    .line 198
    .line 199
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->storeItemHelper:Lcom/narvii/monetization/utils/StoreItemHelper;

    .line 200
    const/4 v2, 0x0

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v2}, Lcom/narvii/monetization/utils/StoreItemHelper;->getExpiredTimeStringColor(Lcom/narvii/model/OwnershipInfo;)I

    .line 204
    move-result v1

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 208
    goto :goto_2

    .line 209
    .line 210
    :cond_3
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->originalPriceHint:Landroid/widget/TextView;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 214
    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->redeemCouponComponent:Lcom/narvii/wallet/RedeemCouponComponent;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/wallet/RedeemCouponComponent;->destroy()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-string v1, "purchase_confirm"

    .line 12
    const/4 v2, 0x1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentManager;->l1(Ljava/lang/String;I)V

    .line 16
    return-void
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "store_item_subscription"

    return-object v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isFinalPage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isModel()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->isModel()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 7
    move-result p1

    .line 8
    .line 9
    .line 10
    const v0, 0x7f0a0316

    .line 11
    .line 12
    if-ne p1, v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->close()V

    .line 16
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "membership"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/wallet/MembershipService;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->membership:Lcom/narvii/wallet/MembershipService;

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/narvii/wallet/MembershipService;->refreshWallet(Z)V

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/monetization/utils/StoreItemHelper;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/narvii/monetization/utils/StoreItemHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->storeItemHelper:Lcom/narvii/monetization/utils/StoreItemHelper;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 27
    .line 28
    new-instance v1, Landroid/content/IntentFilter;

    .line 29
    .line 30
    const-string v2, "com.narvii.action.WALLET_CHANGED"

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    const-string v0, "storeItem"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    const-string v1, "storeItemType"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 50
    move-result p1

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->createObjectNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    .line 57
    invoke-static {p1, v0}, Lcom/narvii/monetization/store/data/StoreItem;->parseRefObject(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/narvii/model/NVObject;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    instance-of v0, p1, Lcom/narvii/model/IStoreItem;

    .line 61
    .line 62
    if-eqz v0, :cond_0

    .line 63
    .line 64
    check-cast p1, Lcom/narvii/model/IStoreItem;

    .line 65
    .line 66
    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->storeItem:Lcom/narvii/model/IStoreItem;

    .line 67
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d0327

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    .line 9
    return-void
.end method

.method public onRedeemRequested(Lcom/narvii/model/IBaseProduct;Lcom/narvii/wallet/Coupon;)V
    .locals 1
    .param p1    # Lcom/narvii/model/IBaseProduct;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/wallet/Coupon;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->confirmPurchaseListener:Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment$ConfirmPurchaseListener;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    sget-object p1, Lcom/narvii/logging/ActSemantic;->purchase:Lcom/narvii/logging/ActSemantic;

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    const-string v0, "PurchaseButton"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->confirmPurchaseListener:Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment$ConfirmPurchaseListener;

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, p2}, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment$ConfirmPurchaseListener;->doPurchase(Lcom/narvii/wallet/Coupon;)V

    .line 25
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->storeItem:Lcom/narvii/model/IStoreItem;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-string v1, "storeItem"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->storeItem:Lcom/narvii/model/IStoreItem;

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Lcom/narvii/model/IStoreItem;->objectType()I

    .line 20
    move-result v0

    .line 21
    .line 22
    const-string v1, "storeItemType"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 26
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a0316

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    .line 15
    .line 16
    const p2, 0x7f0a0c02

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    check-cast p2, Lcom/narvii/wallet/RedeemCouponComponent;

    .line 23
    .line 24
    iput-object p2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->redeemCouponComponent:Lcom/narvii/wallet/RedeemCouponComponent;

    .line 25
    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    new-instance v0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment$2;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment$2;-><init>(Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v0}, Lcom/narvii/wallet/RedeemCouponComponent;->setGetCoinsPreClickListener(Lcom/narvii/list/ObjectItemClickListener;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    const p2, 0x7f0a0ba2

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    iput-object p2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->benefitsHint:Landroid/view/View;

    .line 44
    .line 45
    .line 46
    const p2, 0x7f0a0dc3

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    check-cast p1, Landroid/widget/TextView;

    .line 53
    .line 54
    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->originalPriceHint:Landroid/widget/TextView;

    .line 55
    .line 56
    .line 57
    invoke-direct {p0}, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->updateStoreItem()V

    .line 58
    return-void
.end method

.method public resetPurchaseView()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->updateStoreItem()V

    .line 4
    return-void
.end method

.method public setConfirmPurchaseListener(Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment$ConfirmPurchaseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->confirmPurchaseListener:Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment$ConfirmPurchaseListener;

    return-void
.end method

.method public setStoreItem(Lcom/narvii/model/IStoreItem;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->storeItem:Lcom/narvii/model/IStoreItem;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->updateStoreItem()V

    .line 6
    return-void
.end method
