.class public Lcom/narvii/monetization/store/StoreItemPurchaseHelper;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$1;-><init>(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->confirmPurchaseListener:Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment$ConfirmPurchaseListener;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->context:Landroid/content/Context;

    .line 19
    .line 20
    const-string v0, "membership"

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    check-cast p1, Lcom/narvii/wallet/MembershipService;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 29
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/monetization/store/StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->eventListener:Lcom/narvii/monetization/store/StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->f:Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/model/IStoreItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->iStoreItem:Lcom/narvii/model/IStoreItem;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/wallet/MembershipService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->membershipService:Lcom/narvii/wallet/MembershipService;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->nvContext:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;Lcom/narvii/wallet/Coupon;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->sendPurchaseRequest(Lcom/narvii/wallet/Coupon;)V

    return-void
.end method

.method static bridge synthetic g(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->showExpireDialog()V

    return-void
.end method

.method static bridge synthetic h(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->showJoinCommunityDialog(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic i(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->showMembershipDialog()V

    return-void
.end method

.method static bridge synthetic j(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;Lcom/narvii/model/IStoreItem;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->statistics(Lcom/narvii/model/IStoreItem;)V

    return-void
.end method

.method private sendPurchaseRequest(Lcom/narvii/wallet/Coupon;)V
    .locals 7

    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->iStoreItem:Lcom/narvii/model/IStoreItem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->eventListener:Lcom/narvii/monetization/store/StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener;->onPurchaseStart()V

    :cond_1
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "api"

    .line 3
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 4
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    const-string v3, "store/purchase"

    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    iget-object v2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->iStoreItem:Lcom/narvii/model/IStoreItem;

    .line 6
    invoke-interface {v2}, Lcom/narvii/model/IStoreItem;->id()Ljava/lang/String;

    move-result-object v2

    const-string v3, "objectId"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    iget-object v2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->iStoreItem:Lcom/narvii/model/IStoreItem;

    .line 7
    invoke-interface {v2}, Lcom/narvii/model/IStoreItem;->objectType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "objectType"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v2, "v"

    const/4 v3, 0x1

    .line 8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 9
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    if-eqz p1, :cond_2

    .line 10
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v4

    .line 11
    iget-object p1, p1, Lcom/narvii/wallet/Coupon;->couponMappingId:Ljava/lang/String;

    invoke-virtual {v4, p1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    const-string p1, "couponMappingIdList"

    .line 12
    invoke-virtual {v2, p1, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    :cond_2
    iget-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->iStoreItem:Lcom/narvii/model/IStoreItem;

    .line 13
    invoke-interface {p1}, Lcom/narvii/model/IStoreItem;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    move-result-object p1

    const/4 v4, 0x0

    const-string v5, "discountStatus"

    if-eqz p1, :cond_3

    .line 14
    iget v6, p1, Lcom/narvii/model/RestrictionInfo;->discountStatus:I

    if-ne v6, v3, :cond_3

    iget-object v6, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->membershipService:Lcom/narvii/wallet/MembershipService;

    invoke-virtual {v6}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 15
    invoke-virtual {v2, v5, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v5, "discountValue"

    .line 16
    iget v6, p1, Lcom/narvii/model/RestrictionInfo;->discountValue:I

    invoke-virtual {v2, v5, v6}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_0

    .line 17
    :cond_3
    invoke-virtual {v2, v5, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :goto_0
    const-string v5, "isAutoRenew"

    if-eqz p1, :cond_4

    .line 18
    invoke-virtual {p1}, Lcom/narvii/model/RestrictionInfo;->hasAvailableDuration()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 19
    invoke-virtual {v2, v5, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_1

    .line 20
    :cond_4
    invoke-virtual {v2, v5, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :goto_1
    const-string p1, "paymentContext"

    .line 21
    invoke-virtual {v1, p1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 22
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

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/membership/MembershipExpireDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/membership/MembershipExpireDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->source:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v1, v0, Lcom/narvii/membership/MembershipExpireDialog;->source:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 15
    return-void
.end method

.method private showJoinCommunityDialog(Ljava/lang/String;I)V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    new-instance p1, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$3;

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, p0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$3;-><init>(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 23
    .line 24
    new-instance p1, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$4;

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, p0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$4;-><init>(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)V

    .line 28
    .line 29
    .line 30
    const v1, -0x444445

    .line 31
    .line 32
    .line 33
    const v2, 0x7f1201e2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2, p1, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 37
    .line 38
    new-instance p1, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$5;

    .line 39
    .line 40
    .line 41
    invoke-direct {p1, p0, p2}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$5;-><init>(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;I)V

    .line 42
    .line 43
    .line 44
    const p2, -0xff8501

    .line 45
    .line 46
    .line 47
    const v1, 0x7f120b53

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1, p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 54
    return-void
.end method

.method private showMembershipDialog()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/membership/MembershipHintDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/membership/MembershipHintDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->source:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v1, v0, Lcom/narvii/membership/MembershipHintDialog;->source:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 15
    return-void
.end method

.method private statistics(Lcom/narvii/model/IStoreItem;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "statistics"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    .line 11
    .line 12
    instance-of v1, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const-string v1, "Activates Sticker Set"

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    instance-of v1, p1, Lcom/narvii/model/ChatBubble;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    const-string v1, "Activates Chat Bubble"

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_1
    instance-of v1, p1, Lcom/narvii/monetization/avatarframe/AvatarFrame;

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    const-string v1, "Activates Profile Frame"

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const/4 v1, 0x0

    .line 33
    .line 34
    :goto_0
    if-eqz v1, :cond_4

    .line 35
    .line 36
    .line 37
    invoke-interface {p1}, Lcom/narvii/model/IStoreItem;->getRestrictionInfo()Lcom/narvii/model/RestrictionInfo;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    iget p1, p1, Lcom/narvii/model/RestrictionInfo;->restrictType:I

    .line 41
    const/4 v2, 0x4

    .line 42
    .line 43
    if-ne p1, v2, :cond_3

    .line 44
    .line 45
    const-string p1, "Paid with Coins"

    .line 46
    goto :goto_1

    .line 47
    .line 48
    :cond_3
    const-string p1, "Free with Amino+"

    .line 49
    .line 50
    .line 51
    :goto_1
    invoke-interface {v0, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    const-string v2, "Type"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v2, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->source:Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v1, " Total"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 85
    :cond_4
    return-void
.end method


# virtual methods
.method public openPurchaseDialog()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/narvii/app/NVFragment;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move-object v0, v2

    .line 23
    .line 24
    :goto_0
    if-eqz v0, :cond_2

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    :cond_2
    if-nez v2, :cond_3

    .line 35
    return-void

    .line 36
    .line 37
    :cond_3
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->eventListener:Lcom/narvii/monetization/store/StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener;

    .line 38
    .line 39
    if-eqz v1, :cond_4

    .line 40
    .line 41
    .line 42
    invoke-interface {v1}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener;->onShowPurchaseDialog()V

    .line 43
    .line 44
    .line 45
    :cond_4
    const v1, 0x7f010037

    .line 46
    .line 47
    .line 48
    const v3, 0x7f010039

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v1, v3}, Landroidx/fragment/app/FragmentTransaction;->y(II)Landroidx/fragment/app/FragmentTransaction;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->f:Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;

    .line 54
    .line 55
    if-eqz v1, :cond_5

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    .line 59
    move-result v1

    .line 60
    .line 61
    if-eqz v1, :cond_6

    .line 62
    .line 63
    :cond_5
    new-instance v1, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;

    .line 64
    .line 65
    .line 66
    invoke-direct {v1}, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;-><init>()V

    .line 67
    .line 68
    iput-object v1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->f:Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;

    .line 69
    .line 70
    iget-object v3, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->iStoreItem:Lcom/narvii/model/IStoreItem;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v3}, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    .line 74
    .line 75
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->f:Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;

    .line 76
    .line 77
    iget-object v3, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->confirmPurchaseListener:Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment$ConfirmPurchaseListener;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v3}, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->setConfirmPurchaseListener(Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment$ConfirmPurchaseListener;)V

    .line 81
    .line 82
    :cond_6
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->f:Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 86
    move-result v1

    .line 87
    .line 88
    if-eqz v1, :cond_7

    .line 89
    return-void

    .line 90
    .line 91
    .line 92
    :cond_7
    const v1, 0x7f0a07b8

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    if-eqz v0, :cond_8

    .line 99
    goto :goto_1

    .line 100
    .line 101
    .line 102
    :cond_8
    const v1, 0x1020002

    .line 103
    .line 104
    :goto_1
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->f:Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;

    .line 105
    .line 106
    const-string v3, "purchase_confirm"

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v1, v0, v3}, Landroidx/fragment/app/FragmentTransaction;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentTransaction;->h(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 116
    return-void
.end method

.method public openPurchaseDialogWithCheck()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->openPurchaseDialog()V

    .line 4
    return-void
.end method

.method public sendPurchaseRequest()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->sendPurchaseRequest(Lcom/narvii/wallet/Coupon;)V

    return-void
.end method

.method public setPurchaseEventListener(Lcom/narvii/monetization/store/StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->eventListener:Lcom/narvii/monetization/store/StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener;

    return-void
.end method

.method public setStoreItem(Lcom/narvii/model/IStoreItem;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->iStoreItem:Lcom/narvii/model/IStoreItem;

    return-void
.end method

.method public tryResumePurchaseConfirmFragment()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->f:Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 13
    .line 14
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/app/NVFragment;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 22
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_1
    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const/4 v0, 0x0

    .line 32
    .line 33
    :goto_0
    if-eqz v0, :cond_3

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    const-string v1, "purchase_confirm"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    check-cast v0, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->f:Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;

    .line 48
    .line 49
    :cond_3
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->f:Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;

    .line 50
    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    .line 55
    move-result v0

    .line 56
    .line 57
    if-nez v0, :cond_4

    .line 58
    .line 59
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->f:Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;

    .line 60
    .line 61
    iget-object v1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->confirmPurchaseListener:Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment$ConfirmPurchaseListener;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->setConfirmPurchaseListener(Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment$ConfirmPurchaseListener;)V

    .line 65
    :cond_4
    return-void
.end method
