.class public Lcom/narvii/monetization/store/StoreItemPurchaseHelper;
.super Ljava/lang/Object;
.source "StoreItemPurchaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/monetization/store/StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener;
    }
.end annotation


# static fields
.field public static final ERR_PURCHASE_COMMUNITY_NOT_SATISFIED:I = 0x1006

.field public static final ERR_PURCHASE_MEMBERSHIP_NOT_SATISFIED:I = 0x1005

.field public static final ERR_PURCHASE_NOT_ENOUGH_COINS:I = 0x10cc


# instance fields
.field private confirmPurchaseListener:Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment$ConfirmPurchaseListener;

.field private final context:Landroid/content/Context;

.field private eventListener:Lcom/narvii/monetization/store/StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener;

.field private f:Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;

.field private iStoreItem:Lcom/narvii/model/IStoreItem;

.field private membershipService:Lcom/narvii/wallet/MembershipService;

.field private final nvContext:Lcom/narvii/app/NVContext;

.field public source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$1;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$1;-><init>(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)V

    iput-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->confirmPurchaseListener:Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment$ConfirmPurchaseListener;

    .line 77
    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 78
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->context:Landroid/content/Context;

    const-string v0, "membership"

    .line 80
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/wallet/MembershipService;

    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->membershipService:Lcom/narvii/wallet/MembershipService;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;Lcom/narvii/wallet/Coupon;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->sendPurchaseRequest(Lcom/narvii/wallet/Coupon;)V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/model/IStoreItem;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->iStoreItem:Lcom/narvii/model/IStoreItem;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;Lcom/narvii/model/IStoreItem;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->statistics(Lcom/narvii/model/IStoreItem;)V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->f:Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/wallet/MembershipService;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->membershipService:Lcom/narvii/wallet/MembershipService;

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/monetization/store/StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->eventListener:Lcom/narvii/monetization/store/StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->showExpireDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->showMembershipDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;Ljava/lang/String;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->showJoinCommunityDialog(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->nvContext:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method private sendPurchaseRequest(Lcom/narvii/wallet/Coupon;)V
    .locals 7

    .line 154
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->iStoreItem:Lcom/narvii/model/IStoreItem;

    if-nez v0, :cond_0

    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->eventListener:Lcom/narvii/monetization/store/StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener;

    if-eqz v0, :cond_1

    .line 159
    invoke-interface {v0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener;->onPurchaseStart()V

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "api"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 164
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 165
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    const-string v3, "store/purchase"

    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 166
    iget-object v2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->iStoreItem:Lcom/narvii/model/IStoreItem;

    invoke-interface {v2}, Lcom/narvii/model/IStoreItem;->id()Ljava/lang/String;

    move-result-object v2

    const-string v3, "objectId"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 167
    iget-object v2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->iStoreItem:Lcom/narvii/model/IStoreItem;

    invoke-interface {v2}, Lcom/narvii/model/IStoreItem;->objectType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "objectType"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const/4 v2, 0x1

    .line 168
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "v"

    invoke-virtual {v1, v4, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 169
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v3

    if-eqz p1, :cond_2

    .line 171
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v4

    .line 172
    iget-object p1, p1, Lcom/narvii/wallet/Coupon;->couponMappingId:Ljava/lang/String;

    invoke-virtual {v4, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    const-string p1, "couponMappingIdList"

    .line 173
    invoke-virtual {v3, p1, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 175
    :cond_2
    iget-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->iStoreItem:Lcom/narvii/model/IStoreItem;

    invoke-interface {p1}, Lcom/narvii/model/IStoreItem;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    move-result-object p1

    const/4 v4, 0x0

    const-string v5, "discountStatus"

    if-eqz p1, :cond_3

    .line 176
    iget v6, p1, Lcom/narvii/model/RestrictionInfo;->discountStatus:I

    if-ne v6, v2, :cond_3

    iget-object v6, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->membershipService:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v6}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 177
    invoke-virtual {v3, v5, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 178
    iget v5, p1, Lcom/narvii/model/RestrictionInfo;->discountValue:I

    const-string v6, "discountValue"

    invoke-virtual {v3, v6, v5}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_0

    .line 180
    :cond_3
    invoke-virtual {v3, v5, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :goto_0
    const-string v5, "isAutoRenew"

    if-eqz p1, :cond_4

    .line 184
    invoke-virtual {p1}, Lcom/narvii/model/RestrictionInfo;->hasAvailableDuration()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 185
    invoke-virtual {v3, v5, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_1

    .line 187
    :cond_4
    invoke-virtual {v3, v5, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :goto_1
    const-string p1, "paymentContext"

    .line 189
    invoke-virtual {v1, p1, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 190
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    new-instance v1, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;

    const-class v2, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v1, p0, v2}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;-><init>(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;Ljava/lang/Class;)V

    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method private showExpireDialog()V
    .locals 2

    .line 269
    new-instance v0, Lcom/narvii/membership/MembershipExpireDialog;

    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/membership/MembershipExpireDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 270
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->source:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/membership/MembershipExpireDialog;->source:Ljava/lang/String;

    .line 271
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method private showJoinCommunityDialog(Ljava/lang/String;I)V
    .locals 3

    .line 281
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 282
    invoke-virtual {v0, p1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 283
    new-instance p1, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$3;

    invoke-direct {p1, p0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$3;-><init>(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)V

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 291
    new-instance p1, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$4;

    invoke-direct {p1, p0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$4;-><init>(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)V

    const v1, 0x7f0f0193

    const v2, -0x444445

    invoke-virtual {v0, v1, p1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 299
    new-instance p1, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$5;

    invoke-direct {p1, p0, p2}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$5;-><init>(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;I)V

    const p2, 0x7f0f0aa0

    const v1, -0xff8501

    invoke-virtual {v0, p2, p1, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 310
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method private showMembershipDialog()V
    .locals 2

    .line 275
    new-instance v0, Lcom/narvii/membership/MembershipHintDialog;

    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {v0, v1}, Lcom/narvii/membership/MembershipHintDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 276
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->source:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/membership/MembershipHintDialog;->source:Ljava/lang/String;

    .line 277
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method private statistics(Lcom/narvii/model/IStoreItem;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public openPurchaseDialog()V
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->nvContext:Lcom/narvii/app/NVContext;

    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 100
    check-cast v0, Lcom/narvii/app/NVFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    goto :goto_0

    .line 101
    :cond_0
    instance-of v1, v0, Landroid/support/v4/app/FragmentActivity;

    if-eqz v1, :cond_1

    .line 102
    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 105
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    :cond_2
    if-nez v2, :cond_3

    return-void

    .line 111
    :cond_3
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->eventListener:Lcom/narvii/monetization/store/StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener;

    if-eqz v1, :cond_4

    .line 112
    invoke-interface {v1}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener;->onShowPurchaseDialog()V

    :cond_4
    const v1, 0x7f010029

    const v3, 0x7f01002b

    .line 115
    invoke-virtual {v2, v1, v3}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    .line 116
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->f:Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 117
    :cond_5
    new-instance v1, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;

    invoke-direct {v1}, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;-><init>()V

    iput-object v1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->f:Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;

    .line 118
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->f:Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;

    iget-object v3, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->iStoreItem:Lcom/narvii/model/IStoreItem;

    invoke-virtual {v1, v3}, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 119
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->f:Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;

    iget-object v3, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->confirmPurchaseListener:Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment$ConfirmPurchaseListener;

    invoke-virtual {v1, v3}, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->setConfirmPurchaseListener(Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment$ConfirmPurchaseListener;)V

    .line 122
    :cond_6
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->f:Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_7

    return-void

    :cond_7
    const v1, 0x7f090637

    .line 126
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    goto :goto_1

    :cond_8
    const v1, 0x1020002

    :goto_1
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->f:Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;

    const-string v3, "purchase_confirm"

    invoke-virtual {v2, v1, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 127
    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 128
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public openPurchaseDialogWithCheck()V
    .locals 0

    .line 93
    invoke-virtual {p0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->openPurchaseDialog()V

    return-void
.end method

.method public sendPurchaseRequest()V
    .locals 1

    const/4 v0, 0x0

    .line 150
    invoke-direct {p0, v0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->sendPurchaseRequest(Lcom/narvii/wallet/Coupon;)V

    return-void
.end method

.method public setPurchaseEventListener(Lcom/narvii/monetization/store/StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->eventListener:Lcom/narvii/monetization/store/StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener;

    return-void
.end method

.method public setStoreItem(Lcom/narvii/model/IStoreItem;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->iStoreItem:Lcom/narvii/model/IStoreItem;

    return-void
.end method

.method public tryResumePurchaseConfirmFragment()V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->f:Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x0

    .line 134
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->nvContext:Lcom/narvii/app/NVContext;

    instance-of v2, v1, Lcom/narvii/app/NVFragment;

    if-eqz v2, :cond_1

    .line 135
    check-cast v1, Lcom/narvii/app/NVFragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    goto :goto_0

    .line 136
    :cond_1
    instance-of v2, v1, Landroid/support/v4/app/FragmentActivity;

    if-eqz v2, :cond_2

    .line 137
    move-object v0, v1

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 140
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "purchase_confirm"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;

    iput-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->f:Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;

    .line 144
    :cond_3
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->f:Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 145
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->f:Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;

    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->confirmPurchaseListener:Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment$ConfirmPurchaseListener;

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->setConfirmPurchaseListener(Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment$ConfirmPurchaseListener;)V

    :cond_4
    return-void
.end method
