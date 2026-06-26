.class public Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;
.super Lcom/narvii/app/NVFragment;
.source "StoreItemPurchaseConfirmFragment.java"

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

    .line 40
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 46
    new-instance v0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment$1;-><init>(Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;)V

    iput-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->updateStoreItem()V

    return-void
.end method

.method private updateStoreItem()V
    .locals 5

    .line 162
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 164
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->storeItem:Lcom/narvii/model/IStoreItem;

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const v1, 0x7f090ac4

    .line 168
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/NVImageView;

    .line 169
    iget-object v2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->storeItem:Lcom/narvii/model/IStoreItem;

    invoke-interface {v2}, Lcom/narvii/model/IStoreItem;->getStoreIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    const v1, 0x7f090ac7

    .line 171
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/monetization/utils/StoreItemNameView;

    .line 172
    iget-object v2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->storeItem:Lcom/narvii/model/IStoreItem;

    invoke-virtual {v1, v2}, Lcom/narvii/monetization/utils/StoreItemNameView;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 174
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->redeemCouponComponent:Lcom/narvii/wallet/RedeemCouponComponent;

    iget-object v2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->storeItem:Lcom/narvii/model/IStoreItem;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Lcom/narvii/wallet/RedeemCouponComponent;->bindProduct(Lcom/narvii/model/IBaseProduct;ZLcom/narvii/wallet/RedeemCouponComponent$IRedeemCouponCallback;)V

    const v1, 0x7f090acb

    .line 176
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 177
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->storeItem:Lcom/narvii/model/IStoreItem;

    iget-object v2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->membership:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v2}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/narvii/model/IBaseProduct;->getProductPrice(Z)I

    move-result v1

    if-ltz v1, :cond_1

    .line 178
    iget-object v2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->storeItemHelper:Lcom/narvii/monetization/utils/StoreItemHelper;

    iget-object v4, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->storeItem:Lcom/narvii/model/IStoreItem;

    invoke-interface {v4}, Lcom/narvii/model/IStoreItem;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lcom/narvii/monetization/utils/StoreItemHelper;->getPriceExpiredTimeCheck(ILcom/narvii/model/RestrictionInfo;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->benefitsHint:Landroid/view/View;

    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->storeItem:Lcom/narvii/model/IStoreItem;

    invoke-interface {v1}, Lcom/narvii/model/IStoreItem;->getAdditionalBenefits()Lcom/narvii/model/AdditionalBenefits;

    move-result-object v1

    const/16 v2, 0x8

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->storeItem:Lcom/narvii/model/IStoreItem;

    invoke-interface {v1}, Lcom/narvii/model/IStoreItem;->getAdditionalBenefits()Lcom/narvii/model/AdditionalBenefits;

    move-result-object v1

    iget-boolean v1, v1, Lcom/narvii/model/AdditionalBenefits;->firstMonthFreeAminoPlusMembership:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->membership:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v1}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->storeItem:Lcom/narvii/model/IStoreItem;

    invoke-interface {v0}, Lcom/narvii/model/IStoreItem;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->storeItem:Lcom/narvii/model/IStoreItem;

    iget-object v4, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->membership:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v4}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result v4

    invoke-interface {v1, v4}, Lcom/narvii/model/IBaseProduct;->isMembershipPrice(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 184
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->originalPriceHint:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f1037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 186
    new-instance v2, Lcom/narvii/util/text/NVText;

    invoke-direct {v2, v1}, Lcom/narvii/util/text/NVText;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 187
    iget-object v4, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->storeItemHelper:Lcom/narvii/monetization/utils/StoreItemHelper;

    iget v0, v0, Lcom/narvii/model/RestrictionInfo;->restrictValue:I

    invoke-virtual {v4, v0}, Lcom/narvii/monetization/utils/StoreItemHelper;->getCoinsSpannableWithDeleteLine(I)Landroid/text/Spannable;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-virtual {v2, v1}, Lcom/narvii/util/text/NVText;->format([Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->originalPriceHint:Landroid/widget/TextView;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 189
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->originalPriceHint:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->storeItemHelper:Lcom/narvii/monetization/utils/StoreItemHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/narvii/monetization/utils/StoreItemHelper;->getExpiredTimeStringColor(Lcom/narvii/model/OwnershipInfo;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 191
    :cond_3
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->originalPriceHint:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->redeemCouponComponent:Lcom/narvii/wallet/RedeemCouponComponent;

    invoke-virtual {v0}, Lcom/narvii/wallet/RedeemCouponComponent;->destroy()V

    .line 198
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "purchase_confirm"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    return-void
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "StoreItemSubscription"

    return-object v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 142
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

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

    .line 147
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->isModel()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 156
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090255

    if-ne p1, v0, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->close()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 59
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "membership"

    .line 60
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/wallet/MembershipService;

    iput-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->membership:Lcom/narvii/wallet/MembershipService;

    .line 61
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->membership:Lcom/narvii/wallet/MembershipService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/wallet/MembershipService;->refreshWallet(Z)V

    .line 62
    new-instance v0, Lcom/narvii/monetization/utils/StoreItemHelper;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/utils/StoreItemHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->storeItemHelper:Lcom/narvii/monetization/utils/StoreItemHelper;

    .line 64
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.narvii.action.WALLET_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    if-eqz p1, :cond_0

    const-string v0, "storeItem"

    .line 67
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "storeItemType"

    .line 68
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 69
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->createObjectNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    .line 70
    invoke-static {p1, v0}, Lcom/narvii/monetization/store/data/StoreItem;->parseRefObject(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/narvii/model/NVObject;

    move-result-object p1

    .line 71
    instance-of v0, p1, Lcom/narvii/model/IStoreItem;

    if-eqz v0, :cond_0

    .line 72
    check-cast p1, Lcom/narvii/model/IStoreItem;

    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->storeItem:Lcom/narvii/model/IStoreItem;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b02f2

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->unregisterLocalReceiver(Landroid/content/BroadcastReceiver;)V

    .line 123
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    return-void
.end method

.method public onRedeemRequested(Lcom/narvii/model/IBaseProduct;Lcom/narvii/wallet/Coupon;)V
    .locals 1

    .line 207
    iget-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->confirmPurchaseListener:Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment$ConfirmPurchaseListener;

    if-eqz p1, :cond_0

    .line 208
    sget-object p1, Lcom/narvii/logging/ActSemantic;->purchase:Lcom/narvii/logging/ActSemantic;

    invoke-static {p0, p1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "PurchaseButton"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 209
    iget-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->confirmPurchaseListener:Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment$ConfirmPurchaseListener;

    invoke-interface {p1, p2}, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment$ConfirmPurchaseListener;->doPurchase(Lcom/narvii/wallet/Coupon;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 85
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 86
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->storeItem:Lcom/narvii/model/IStoreItem;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "storeItem"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->storeItem:Lcom/narvii/model/IStoreItem;

    invoke-interface {v0}, Lcom/narvii/model/IStoreItem;->objectType()I

    move-result v0

    const-string v1, "storeItemType"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 98
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090255

    .line 100
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090944

    .line 102
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/wallet/RedeemCouponComponent;

    iput-object p2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->redeemCouponComponent:Lcom/narvii/wallet/RedeemCouponComponent;

    .line 104
    iget-object p2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->redeemCouponComponent:Lcom/narvii/wallet/RedeemCouponComponent;

    if-eqz p2, :cond_0

    .line 105
    new-instance v0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment$2;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment$2;-><init>(Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;)V

    invoke-virtual {p2, v0}, Lcom/narvii/wallet/RedeemCouponComponent;->setGetCoinsPreClickListener(Lcom/narvii/list/ObjectItemClickListener;)V

    :cond_0
    const p2, 0x7f0908e3

    .line 113
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->benefitsHint:Landroid/view/View;

    const p2, 0x7f090ac8

    .line 115
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->originalPriceHint:Landroid/widget/TextView;

    .line 117
    invoke-direct {p0}, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->updateStoreItem()V

    return-void
.end method

.method public resetPurchaseView()V
    .locals 0

    .line 202
    invoke-direct {p0}, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->updateStoreItem()V

    return-void
.end method

.method public setConfirmPurchaseListener(Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment$ConfirmPurchaseListener;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->confirmPurchaseListener:Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment$ConfirmPurchaseListener;

    return-void
.end method

.method public setStoreItem(Lcom/narvii/model/IStoreItem;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->storeItem:Lcom/narvii/model/IStoreItem;

    .line 128
    invoke-direct {p0}, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->updateStoreItem()V

    return-void
.end method
