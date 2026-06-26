.class Lcom/narvii/wallet/MembershipSubscribeFragment$11;
.super Lcom/narvii/util/http/ApiJsonResponseListener;
.source "MembershipSubscribeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/MembershipSubscribeFragment;->purchaseSubscribe(Lcom/narvii/wallet/Product;)V
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
.field final synthetic this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

.field final synthetic val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

.field final synthetic val$p:Lcom/narvii/wallet/Product;

.field final synthetic val$sd:Lcom/narvii/wallet/util/SkuDetails;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/MembershipSubscribeFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/wallet/util/SkuDetails;Lcom/narvii/wallet/Product;)V
    .locals 0

    .line 954
    iput-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$11;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    iput-object p3, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$11;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    iput-object p4, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$11;->val$sd:Lcom/narvii/wallet/util/SkuDetails;

    iput-object p5, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$11;->val$p:Lcom/narvii/wallet/Product;

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

    .line 992
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$11;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 993
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    iget-object p3, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$11;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    invoke-virtual {p3}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 994
    invoke-virtual {p1, p4}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 p3, 0x0

    const p5, 0x7f0f0274

    const/4 p6, 0x0

    .line 995
    invoke-virtual {p1, p5, p3, p6}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 996
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 998
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$11;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    const-string p5, "logging"

    invoke-virtual {p1, p5}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/logging/LoggingService;

    const/16 p5, 0xc

    new-array p5, p5, [Ljava/lang/Object;

    const-string p6, "type"

    aput-object p6, p5, p3

    const/4 p3, 0x1

    const-string p6, "IAP"

    aput-object p6, p5, p3

    const/4 p3, 0x2

    const-string p6, "months"

    aput-object p6, p5, p3

    .line 999
    iget-object p3, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$11;->val$p:Lcom/narvii/wallet/Product;

    iget p3, p3, Lcom/narvii/wallet/Product;->numberOfMonths:I

    .line 1001
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p6, 0x3

    aput-object p3, p5, p6

    const/4 p3, 0x4

    const-string p6, "sku"

    aput-object p6, p5, p3

    iget-object p3, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$11;->val$sd:Lcom/narvii/wallet/util/SkuDetails;

    .line 1002
    invoke-virtual {p3}, Lcom/narvii/wallet/util/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object p3

    const/4 p6, 0x5

    aput-object p3, p5, p6

    const/4 p3, 0x6

    const-string p6, "reason"

    aput-object p6, p5, p3

    const/4 p3, 0x7

    const-string p6, "PRE_PURCHASE_ERROR"

    aput-object p6, p5, p3

    const/16 p3, 0x8

    const-string p6, "code"

    aput-object p6, p5, p3

    .line 1004
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 p3, 0x9

    aput-object p2, p5, p3

    const/16 p2, 0xa

    const-string p3, "message"

    aput-object p3, p5, p2

    const/16 p2, 0xb

    aput-object p4, p5, p2

    const-string p2, "MembershipPurchaseError"

    .line 999
    invoke-interface {p1, p2, p5}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 957
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$11;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 958
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$11;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->isActive()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 959
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 960
    iget-object p2, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$11;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    const-string v0, "account"

    invoke-virtual {p2, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/account/AccountService;

    .line 961
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object p2

    .line 962
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$11;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    iget-object v0, v0, Lcom/narvii/wallet/MembershipSubscribeFragment;->inventory:Lcom/narvii/wallet/util/Inventory;

    invoke-virtual {v0}, Lcom/narvii/wallet/util/Inventory;->getAllPurchases()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/wallet/util/Purchase;

    .line 963
    invoke-virtual {v1}, Lcom/narvii/wallet/util/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/narvii/util/JacksonUtils;->createObjectNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "uid"

    aput-object v5, v2, v3

    .line 964
    invoke-static {v4, v2}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 965
    invoke-static {p2, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 966
    invoke-virtual {v1}, Lcom/narvii/wallet/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 969
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/util/http/ApiJsonResponseListener;->json()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p2

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "payload"

    aput-object v1, v0, v3

    invoke-static {p2, v0}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p2

    check-cast p2, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start purchase "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$11;->val$sd:Lcom/narvii/wallet/util/SkuDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with oldSkus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-static {p1, v1}, Lcom/narvii/util/StringUtils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "narvii_iab"

    invoke-static {v0, p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    :try_start_0
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$11;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    iget-object v4, p1, Lcom/narvii/wallet/MembershipSubscribeFragment;->iabHelper:Lcom/narvii/wallet/util/IabHelper;

    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$11;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$11;->val$sd:Lcom/narvii/wallet/util/SkuDetails;

    invoke-virtual {p1}, Lcom/narvii/wallet/util/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v6

    const v7, 0xe823

    iget-object v8, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$11;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Lcom/narvii/wallet/util/IabHelper;->launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/narvii/wallet/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 973
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$11;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    iget-object p2, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$11;->val$p:Lcom/narvii/wallet/Product;

    iput-object p2, p1, Lcom/narvii/wallet/MembershipSubscribeFragment;->purchasingProduct:Lcom/narvii/wallet/Product;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    .line 975
    iget-object p2, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$11;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    const-string v1, "logging"

    invoke-virtual {p2, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/util/logging/LoggingService;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "type"

    aput-object v4, v1, v3

    const-string v4, "IAP"

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const-string v4, "months"

    aput-object v4, v1, v2

    const/4 v2, 0x3

    .line 976
    iget-object v4, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$11;->val$p:Lcom/narvii/wallet/Product;

    iget v4, v4, Lcom/narvii/wallet/Product;->numberOfMonths:I

    .line 978
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-string v4, "sku"

    aput-object v4, v1, v2

    const/4 v2, 0x5

    iget-object v4, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$11;->val$sd:Lcom/narvii/wallet/util/SkuDetails;

    .line 979
    invoke-virtual {v4}, Lcom/narvii/wallet/util/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x6

    const-string v4, "reason"

    aput-object v4, v1, v2

    const/4 v2, 0x7

    const-string v4, "IAB_EXCEPTION"

    aput-object v4, v1, v2

    const/16 v2, 0x8

    const-string v4, "code"

    aput-object v4, v1, v2

    const/16 v2, 0x9

    const/16 v4, 0x28

    .line 981
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/16 v2, 0xa

    const-string v4, "message"

    aput-object v4, v1, v2

    const/16 v2, 0xb

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 982
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v2, "MembershipPurchaseError"

    .line 976
    invoke-interface {p2, v2, v1}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 984
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail to purchase "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$11;->val$sd:Lcom/narvii/wallet/util/SkuDetails;

    invoke-virtual {v1}, Lcom/narvii/wallet/util/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 985
    iget-object p2, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$11;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {p2, p1, v3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :cond_3
    :goto_2
    return-void
.end method
