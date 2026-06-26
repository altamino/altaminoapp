.class Lcom/narvii/influencer/FanClubSubscriptionDialog$7;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "FanClubSubscriptionDialog.java"


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

    .line 348
    iput-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$7;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    iput-boolean p3, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$7;->val$isAutoRenew:Z

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

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

    .line 392
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    const/16 p1, 0x10cc

    if-ne p2, p1, :cond_0

    .line 394
    iget-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$7;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->access$1000(Lcom/narvii/influencer/FanClubSubscriptionDialog;Z)V

    return-void

    .line 397
    :cond_0
    iget-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$7;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 398
    iget-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$7;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    invoke-static {p1}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->access$1100(Lcom/narvii/influencer/FanClubSubscriptionDialog;)Lcom/narvii/widget/PurchaseConfirmButton;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/narvii/widget/PurchaseConfirmButton;->updateSendingStatus(Z)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/influencer/FanClubListResponse;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 352
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 353
    iget-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$7;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    invoke-static {p1}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->access$200(Lcom/narvii/influencer/FanClubSubscriptionDialog;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string v0, "account"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 354
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$7;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    invoke-static {v0}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->access$300(Lcom/narvii/influencer/FanClubSubscriptionDialog;)I

    move-result v0

    iget-object v1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$7;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    invoke-static {v1}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->access$400(Lcom/narvii/influencer/FanClubSubscriptionDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/narvii/account/AccountService;->getFanClub(ILjava/lang/String;)Lcom/narvii/influencer/FanClub;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {v0}, Lcom/narvii/influencer/FanClub;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 357
    :goto_0
    iget-object v2, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$7;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    invoke-static {v2}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->access$300(Lcom/narvii/influencer/FanClubSubscriptionDialog;)I

    move-result v2

    iget-object v3, p2, Lcom/narvii/influencer/FanClubListResponse;->fanClubList:Ljava/util/List;

    invoke-virtual {p1, v2, v3}, Lcom/narvii/account/AccountService;->updateFanClubList(ILjava/util/List;)V

    .line 359
    iget-object p1, p2, Lcom/narvii/influencer/FanClubListResponse;->fanClubList:Ljava/util/List;

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    .line 361
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/influencer/FanClub;

    .line 362
    iget-object v3, v2, Lcom/narvii/influencer/FanClub;->targetUid:Ljava/lang/String;

    iget-object v4, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$7;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    invoke-static {v4}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->access$400(Lcom/narvii/influencer/FanClubSubscriptionDialog;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_2
    move-object v2, p2

    :goto_1
    if-eqz v2, :cond_3

    .line 368
    iget-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$7;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    invoke-static {p1, v2, v0}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->access$500(Lcom/narvii/influencer/FanClubSubscriptionDialog;Lcom/narvii/influencer/FanClub;Z)V

    .line 371
    :cond_3
    iget-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$7;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    invoke-static {p1, p2}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->access$602(Lcom/narvii/influencer/FanClubSubscriptionDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 373
    iget-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$7;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    sget-object p2, Lcom/narvii/logging/ActSemantic;->purchaseSuccess:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, p2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string p2, "PurchaseButton"

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 378
    iget-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$7;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    invoke-static {p1}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->access$700(Lcom/narvii/influencer/FanClubSubscriptionDialog;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 348
    check-cast p2, Lcom/narvii/influencer/FanClubListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/influencer/FanClubSubscriptionDialog$7;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/influencer/FanClubListResponse;)V

    return-void
.end method
