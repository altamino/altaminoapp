.class Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;
.super Lcom/narvii/util/http/ApiJsonResponseListener;
.source "StoreItemPurchaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->sendPurchaseRequest(Lcom/narvii/wallet/Coupon;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiJsonResponseListener<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;Ljava/lang/Class;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiJsonResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/api/ApiResponse;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 221
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    const/16 p3, 0x1005

    if-ne p2, p3, :cond_1

    .line 223
    iget-object p2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    invoke-static {p2}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->access$400(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/wallet/MembershipService;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/wallet/MembershipService;->hasMemberShipExpired()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 224
    iget-object p2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    invoke-static {p2}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->access$600(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)V

    goto :goto_1

    .line 226
    :cond_0
    iget-object p2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    invoke-static {p2}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->access$700(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)V

    goto :goto_1

    :cond_1
    const/16 p3, 0x1006

    const/4 p5, 0x0

    if-ne p2, p3, :cond_4

    .line 230
    invoke-virtual {p0}, Lcom/narvii/util/http/ApiJsonResponseListener;->errorJson()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p2

    new-array p3, p1, [Ljava/lang/String;

    const-string p6, "availableCommunity"

    aput-object p6, p3, p5

    invoke-static {p2, p3}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    .line 234
    :try_start_0
    sget-object p5, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class p6, Lcom/narvii/model/Community;

    invoke-virtual {p5, p2, p6}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Community;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 236
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    move-object p2, p3

    :goto_0
    if-eqz p2, :cond_3

    .line 241
    iget-object p3, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    iget p2, p2, Lcom/narvii/model/Community;->id:I

    invoke-static {p3, p4, p2}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->access$800(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;Ljava/lang/String;I)V

    goto :goto_1

    .line 243
    :cond_3
    iget-object p2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    invoke-static {p2}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->access$900(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/app/NVContext;

    move-result-object p2

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p4, p1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/util/NVToast;->show()V

    goto :goto_1

    :cond_4
    const/16 p3, 0x10cc

    if-ne p2, p3, :cond_5

    .line 246
    iget-object p2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    invoke-static {p2}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->access$900(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/app/NVContext;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/narvii/wallet/PurchaseCoinFragment;->show(Lcom/narvii/app/NVContext;Z)V

    goto :goto_1

    .line 249
    :cond_5
    iget-object p2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    invoke-static {p2}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->access$900(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/app/NVContext;

    move-result-object p2

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p4, p5}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/util/NVToast;->show()V

    .line 253
    :goto_1
    iget-object p2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    invoke-static {p2}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->access$300(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    invoke-static {p2}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->access$300(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result p2

    if-nez p2, :cond_6

    .line 254
    iget-object p2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    invoke-static {p2}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->access$300(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->resetPurchaseView()V

    .line 257
    :cond_6
    iget-object p2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    invoke-static {p2}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->access$400(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/wallet/MembershipService;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/narvii/wallet/MembershipService;->refresh(Z)V

    .line 260
    iget-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    invoke-static {p1}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->access$500(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/monetization/store/StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 261
    iget-object p1, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    invoke-static {p1}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->access$500(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/monetization/store/StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener;->onPurchaseFailed()V

    :cond_7
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 194
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 195
    invoke-virtual {p0}, Lcom/narvii/util/http/ApiJsonResponseListener;->json()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "refObject"

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    .line 196
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    invoke-static {v0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->access$100(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/model/IStoreItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/model/IStoreItem;->objectType()I

    move-result v0

    invoke-static {v0, p1}, Lcom/narvii/monetization/store/data/StoreItem;->parseRefObject(ILcom/fasterxml/jackson/databind/JsonNode;)Lcom/narvii/model/NVObject;

    move-result-object p1

    .line 197
    instance-of v0, p1, Lcom/narvii/model/IStoreItem;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    invoke-static {v0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->access$100(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/model/IStoreItem;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/narvii/model/IStoreItem;

    invoke-interface {v1}, Lcom/narvii/model/IStoreItem;->getOwnershipInfo()Lcom/narvii/model/OwnershipInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/narvii/model/IStoreItem;->setOwnershipInfo(Lcom/narvii/model/OwnershipInfo;)V

    .line 199
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    invoke-static {v0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->access$100(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/model/IStoreItem;

    move-result-object v0

    invoke-interface {v1}, Lcom/narvii/model/IStoreItem;->isActivated()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/narvii/model/IStoreItem;->setActivated(Z)V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    invoke-static {v0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->access$300(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    invoke-static {v0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->access$300(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    invoke-static {v0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->access$300(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;

    move-result-object v0

    sget-object v1, Lcom/narvii/logging/ActSemantic;->purchaseSuccess:Lcom/narvii/logging/ActSemantic;

    invoke-static {v0, v1}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    const-string v1, "PurchaseButton"

    invoke-virtual {v0, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 205
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    invoke-static {v0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->access$300(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/monetization/store/StoreItemPurchaseConfirmFragment;->close()V

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    invoke-static {v0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->access$400(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/wallet/MembershipService;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/narvii/wallet/MembershipService;->refreshWallet(Z)V

    .line 208
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    invoke-static {v0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->access$100(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/model/IStoreItem;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    invoke-static {v0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->access$100(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/model/IStoreItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/model/IStoreItem;->getAdditionalBenefits()Lcom/narvii/model/AdditionalBenefits;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    invoke-static {v0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->access$100(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/model/IStoreItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/model/IStoreItem;->getAdditionalBenefits()Lcom/narvii/model/AdditionalBenefits;

    move-result-object v0

    iget-boolean v0, v0, Lcom/narvii/model/AdditionalBenefits;->firstMonthFreeAminoPlusMembership:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    .line 209
    invoke-static {v0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->access$400(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/wallet/MembershipService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    move-result v0

    if-nez v0, :cond_2

    .line 210
    iget-object v0, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    invoke-static {v0}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->access$400(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/wallet/MembershipService;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/narvii/wallet/MembershipService;->refreshMembership(Z)V

    .line 213
    :cond_2
    iget-object p2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    invoke-static {p2}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->access$500(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/monetization/store/StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 214
    iget-object p2, p0, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$2;->this$0:Lcom/narvii/monetization/store/StoreItemPurchaseHelper;

    invoke-static {p2}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper;->access$500(Lcom/narvii/monetization/store/StoreItemPurchaseHelper;)Lcom/narvii/monetization/store/StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/narvii/monetization/store/StoreItemPurchaseHelper$PurchaseConfirmFragmentEventListener;->onPurchaseSuccessful(Lcom/narvii/model/NVObject;)V

    :cond_3
    return-void
.end method
