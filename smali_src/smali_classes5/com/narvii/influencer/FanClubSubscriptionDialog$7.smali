.class Lcom/narvii/influencer/FanClubSubscriptionDialog$7;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/influencer/FanClubSubscriptionDialog;->sendSubscribeRequest(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/influencer/FanClubListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

.field final synthetic val$isAutoRenew:Z


# direct methods
.method constructor <init>(Lcom/narvii/influencer/FanClubSubscriptionDialog;Ljava/lang/Class;Z)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$7;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    .line 3
    .line 4
    iput-boolean p3, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$7;->val$isAutoRenew:Z

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 8
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
    .line 3
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    const/16 p1, 0x10cc

    .line 6
    .line 7
    if-ne p2, p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$7;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    .line 10
    const/4 p2, 0x1

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p2}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->l(Lcom/narvii/influencer/FanClubSubscriptionDialog;Z)V

    .line 14
    return-void

    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$7;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 20
    move-result-object p1

    .line 21
    const/4 p2, 0x0

    .line 22
    .line 23
    .line 24
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$7;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->a(Lcom/narvii/influencer/FanClubSubscriptionDialog;)Lcom/narvii/widget/PurchaseConfirmButton;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Lcom/narvii/widget/PurchaseConfirmButton;->updateSendingStatus(Z)V

    .line 38
    .line 39
    iget-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$7;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->e(Lcom/narvii/influencer/FanClubSubscriptionDialog;)Lcom/narvii/app/NVContext;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    const-string p3, "statistics"

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, p3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 52
    .line 53
    const-string p3, "Purchase Fan Club"

    .line 54
    .line 55
    .line 56
    invoke-interface {p1, p3}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    iget-object p3, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$7;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    .line 60
    .line 61
    .line 62
    invoke-static {p3}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->f(Lcom/narvii/influencer/FanClubSubscriptionDialog;)Ljava/lang/String;

    .line 63
    move-result-object p3

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    const-string p3, "Result"

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p3, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    const-string p2, "Purchase Fan Club Total"

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 79
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/influencer/FanClubListResponse;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$7;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    .line 3
    invoke-static {p1}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->e(Lcom/narvii/influencer/FanClubSubscriptionDialog;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string v0, "account"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$7;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    .line 4
    invoke-static {v0}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->c(Lcom/narvii/influencer/FanClubSubscriptionDialog;)I

    move-result v0

    iget-object v1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$7;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    invoke-static {v1}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->b(Lcom/narvii/influencer/FanClubSubscriptionDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/narvii/account/AccountService;->getFanClub(ILjava/lang/String;)Lcom/narvii/influencer/FanClub;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/narvii/influencer/FanClub;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$7;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    .line 6
    invoke-static {v2}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->c(Lcom/narvii/influencer/FanClubSubscriptionDialog;)I

    move-result v2

    iget-object v3, p2, Lcom/narvii/influencer/FanClubListResponse;->fanClubList:Ljava/util/List;

    invoke-virtual {p1, v2, v3}, Lcom/narvii/account/AccountService;->updateFanClubList(ILjava/util/List;)V

    .line 7
    iget-object p1, p2, Lcom/narvii/influencer/FanClubListResponse;->fanClubList:Ljava/util/List;

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/influencer/FanClub;

    .line 9
    iget-object v3, v2, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    iget-object v4, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$7;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    invoke-static {v4}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->b(Lcom/narvii/influencer/FanClubSubscriptionDialog;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_2
    move-object v2, p2

    :goto_1
    if-eqz v2, :cond_3

    iget-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$7;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    .line 10
    invoke-static {p1, v2, v0}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->k(Lcom/narvii/influencer/FanClubSubscriptionDialog;Lcom/narvii/influencer/FanClub;Z)V

    :cond_3
    iget-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$7;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    .line 11
    invoke-static {p1, p2}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->h(Lcom/narvii/influencer/FanClubSubscriptionDialog;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$7;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    .line 12
    sget-object p2, Lcom/narvii/logging/ActSemantic;->purchaseSuccess:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, p2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string p2, "PurchaseButton"

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    iget-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$7;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    .line 13
    invoke-static {p1}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->j(Lcom/narvii/influencer/FanClubSubscriptionDialog;)V

    iget-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$7;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    .line 14
    invoke-static {p1}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->e(Lcom/narvii/influencer/FanClubSubscriptionDialog;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string p2, "statistics"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    const-string p2, "Purchase Fan Club"

    .line 15
    invoke-interface {p1, p2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$7;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    invoke-static {p2}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->f(Lcom/narvii/influencer/FanClubSubscriptionDialog;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    const-string p2, "Result"

    invoke-virtual {p1, p2, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    const-string p2, "Auto Renew"

    iget-boolean v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$7;->val$isAutoRenew:Z

    .line 16
    invoke-virtual {p1, p2, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    const-string p2, "Follow"

    invoke-virtual {p1, p2, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    const-string p2, "Purchase Fan Club Total"

    .line 17
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

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
    check-cast p2, Lcom/narvii/influencer/FanClubListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/influencer/FanClubSubscriptionDialog$7;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/influencer/FanClubListResponse;)V

    return-void
.end method
