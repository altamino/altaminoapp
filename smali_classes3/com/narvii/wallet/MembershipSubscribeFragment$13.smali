.class Lcom/narvii/wallet/MembershipSubscribeFragment$13;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "MembershipSubscribeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/MembershipSubscribeFragment;->redeemSubscribe(Lcom/narvii/wallet/Product;Lcom/narvii/wallet/Coupon;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/wallet/MembershipResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

.field final synthetic val$couponValue:I

.field final synthetic val$p:Lcom/narvii/wallet/Product;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/MembershipSubscribeFragment;Ljava/lang/Class;Lcom/narvii/wallet/Product;I)V
    .locals 0

    .line 1066
    iput-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$13;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    iput-object p3, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$13;->val$p:Lcom/narvii/wallet/Product;

    iput p4, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$13;->val$couponValue:I

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 3
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

    const/4 p1, 0x1

    const/4 p3, 0x0

    const/4 p5, 0x0

    const/16 p6, 0x10cc

    if-ne p2, p6, :cond_0

    .line 1094
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$13;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    invoke-static {v0, p1}, Lcom/narvii/wallet/PurchaseCoinFragment;->show(Lcom/narvii/app/NVContext;Z)V

    goto :goto_0

    .line 1096
    :cond_0
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    iget-object v1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$13;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 1097
    invoke-virtual {v0, p4}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const v1, 0x7f0f0274

    .line 1098
    invoke-virtual {v0, v1, p5, p3}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 1099
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 1102
    :goto_0
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$13;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    invoke-virtual {v0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->update()V

    .line 1104
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$13;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    const-string v1, "logging"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/logging/LoggingService;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "type"

    aput-object v2, v1, p5

    const-string p5, "IAP"

    aput-object p5, v1, p1

    const/4 p1, 0x2

    const-string p5, "months"

    aput-object p5, v1, p1

    const/4 p1, 0x3

    .line 1105
    iget-object p5, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$13;->val$p:Lcom/narvii/wallet/Product;

    iget p5, p5, Lcom/narvii/wallet/Product;->numberOfMonths:I

    .line 1107
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, v1, p1

    const/4 p1, 0x4

    const-string p5, "reason"

    aput-object p5, v1, p1

    const/4 p1, 0x5

    if-ne p2, p6, :cond_1

    const-string p3, "NO_ENOUGH_COINS"

    :cond_1
    aput-object p3, v1, p1

    const/4 p1, 0x6

    const-string p3, "code"

    aput-object p3, v1, p1

    const/4 p1, 0x7

    .line 1109
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const/16 p1, 0x8

    const-string p2, "message"

    aput-object p2, v1, p1

    const/16 p1, 0x9

    aput-object p4, v1, p1

    const-string p1, "MembershipPurchaseError"

    .line 1105
    invoke-interface {v0, p1, v1}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1066
    check-cast p2, Lcom/narvii/wallet/MembershipResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/wallet/MembershipSubscribeFragment$13;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/MembershipResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/MembershipResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1069
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$13;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->done()V

    .line 1070
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$13;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->cofetti()V

    .line 1071
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$13;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    invoke-virtual {p1, p2}, Lcom/narvii/wallet/MembershipSubscribeFragment;->updateMembership(Lcom/narvii/wallet/MembershipResponse;)V

    .line 1072
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$13;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    const-string p2, "membership"

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/wallet/MembershipService;

    const/4 p2, 0x1

    .line 1073
    invoke-virtual {p1, p2}, Lcom/narvii/wallet/MembershipService;->refreshWallet(Z)V

    .line 1075
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$13;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    const-string v0, "logging"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/logging/LoggingService;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "type"

    aput-object v2, v0, v1

    const-string v1, "Coin"

    aput-object v1, v0, p2

    const/4 v1, 0x2

    const-string v2, "months"

    aput-object v2, v0, v1

    .line 1076
    iget-object v1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$13;->val$p:Lcom/narvii/wallet/Product;

    iget v1, v1, Lcom/narvii/wallet/Product;->numberOfMonths:I

    .line 1078
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "MembershipPurchaseSucceed"

    .line 1076
    invoke-interface {p1, v1, v0}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1080
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$13;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->purchaseSuccess:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "PurchaseButton"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    return-void
.end method
