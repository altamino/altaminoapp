.class Lcom/narvii/wallet/MembershipSubscribeFragment$8;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$8;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$8;->val$p:Lcom/narvii/wallet/Product;

    .line 5
    .line 6
    iput p4, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$8;->val$couponValue:I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 10
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

    .line 1
    .line 2
    const/16 p1, 0x10cc

    .line 3
    .line 4
    if-ne p2, p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$8;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    .line 7
    const/4 p3, 0x1

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p3}, Lcom/narvii/wallet/PurchaseCoinFragment;->show(Lcom/narvii/app/NVContext;Z)V

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$8;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p4}, Lcom/narvii/wallet/MembershipSubscribeFragment;->c0(Lcom/narvii/wallet/MembershipSubscribeFragment;Ljava/lang/String;)V

    .line 17
    .line 18
    :goto_0
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$8;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->e0(Lcom/narvii/wallet/MembershipSubscribeFragment;)V

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$8;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    .line 24
    .line 25
    iget-object p3, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$8;->val$p:Lcom/narvii/wallet/Product;

    .line 26
    .line 27
    .line 28
    invoke-static {p1, p2, p4, p3}, Lcom/narvii/wallet/MembershipSubscribeFragment;->a0(Lcom/narvii/wallet/MembershipSubscribeFragment;ILjava/lang/String;Lcom/narvii/wallet/Product;)V

    .line 29
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/narvii/wallet/MembershipResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/wallet/MembershipSubscribeFragment$8;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/MembershipResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/MembershipResponse;)V
    .locals 3

    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$8;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    .line 2
    invoke-static {p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->T(Lcom/narvii/wallet/MembershipSubscribeFragment;)V

    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$8;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    .line 3
    invoke-static {p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->R(Lcom/narvii/wallet/MembershipSubscribeFragment;)V

    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$8;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    .line 4
    invoke-static {p1, p2}, Lcom/narvii/wallet/MembershipSubscribeFragment;->d0(Lcom/narvii/wallet/MembershipSubscribeFragment;Lcom/narvii/wallet/MembershipResponse;)V

    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$8;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    .line 5
    invoke-static {p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->U(Lcom/narvii/wallet/MembershipSubscribeFragment;)Lcom/narvii/wallet/MembershipService;

    move-result-object p1

    const/4 p2, 0x1

    .line 6
    invoke-virtual {p1, p2}, Lcom/narvii/wallet/MembershipService;->refreshWallet(Z)V

    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$8;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    const-string v0, "logging"

    .line 7
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/logging/LoggingService;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    const-string v1, "Coin"

    aput-object v1, v0, p2

    const/4 v1, 0x2

    const-string v2, "months"

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$8;->val$p:Lcom/narvii/wallet/Product;

    .line 8
    iget v1, v1, Lcom/narvii/wallet/Product;->numberOfMonths:I

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "MembershipPurchaseSucceed"

    .line 10
    invoke-interface {p1, v1, v0}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$8;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    .line 11
    sget-object v0, Lcom/narvii/logging/ActSemantic;->purchaseSuccess:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "PurchaseButton"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$8;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    const-string v0, "statistics"

    .line 12
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    const-string v0, "Purchase Membership"

    .line 13
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$8;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    invoke-static {v0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->E(Lcom/narvii/wallet/MembershipSubscribeFragment;)Z

    move-result v0

    const-string v1, "Membership Active"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$8;->val$p:Lcom/narvii/wallet/Product;

    iget v1, v1, Lcom/narvii/wallet/Product;->numberOfMonths:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Months"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Length"

    .line 14
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    const-string v0, "Type"

    const-string v1, "Coins"

    .line 15
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    const-string v0, "Auto Renew"

    .line 16
    invoke-virtual {p1, v0, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    const-string p2, "Coupon"

    iget v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$8;->val$couponValue:I

    .line 17
    invoke-virtual {p1, p2, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;I)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    const-string p2, "Purchase Membership Total"

    .line 18
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    return-void
.end method
