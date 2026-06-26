.class Lcom/narvii/monetization/store/TippingConfirmDialog$5;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "TippingConfirmDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/store/TippingConfirmDialog;->doSubmit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

.field final synthetic val$price:I


# direct methods
.method constructor <init>(Lcom/narvii/monetization/store/TippingConfirmDialog;Ljava/lang/Class;I)V
    .locals 0

    .line 547
    iput-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    iput p3, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->val$price:I

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onFinish$0$TippingConfirmDialog$5(Ljava/lang/Boolean;)V
    .locals 0

    .line 570
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    invoke-virtual {p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->dismiss()V

    return-void
.end method

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

    .line 575
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    invoke-static {p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->access$1400(Lcom/narvii/monetization/store/TippingConfirmDialog;)Lcom/narvii/widget/PurchaseConfirmButton;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/narvii/widget/PurchaseConfirmButton;->updateSendingStatus(Z)V

    const/16 p1, 0x10cc

    if-ne p2, p1, :cond_0

    .line 577
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/narvii/monetization/store/TippingConfirmDialog;->access$1500(Lcom/narvii/monetization/store/TippingConfirmDialog;Z)V

    goto :goto_0

    :cond_0
    const/16 p1, 0xe6

    if-ne p2, p1, :cond_1

    .line 579
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    invoke-static {p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->access$1600(Lcom/narvii/monetization/store/TippingConfirmDialog;)V

    goto :goto_0

    .line 581
    :cond_1
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p4, p3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :goto_0
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 550
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    invoke-static {p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->access$600(Lcom/narvii/monetization/store/TippingConfirmDialog;)Lcom/narvii/wallet/MembershipService;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/narvii/wallet/MembershipService;->refreshWallet(Z)V

    .line 551
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    invoke-static {p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->access$700(Lcom/narvii/monetization/store/TippingConfirmDialog;)Lcom/narvii/model/Tippable;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/model/NVObject;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    invoke-static {p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->access$700(Lcom/narvii/monetization/store/TippingConfirmDialog;)Lcom/narvii/model/Tippable;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/model/ChatThread;

    if-nez p1, :cond_0

    .line 552
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    invoke-static {p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->access$700(Lcom/narvii/monetization/store/TippingConfirmDialog;)Lcom/narvii/model/Tippable;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/model/Tippable;->getTippingInfo()Lcom/narvii/model/TippingInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 554
    iget v0, p1, Lcom/narvii/model/TippingInfo;->tippedCoins:I

    iget v1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->val$price:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/narvii/model/TippingInfo;->tippedCoins:I

    .line 556
    new-instance p1, Lcom/narvii/notification/Notification;

    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    invoke-static {v0}, Lcom/narvii/monetization/store/TippingConfirmDialog;->access$700(Lcom/narvii/monetization/store/TippingConfirmDialog;)Lcom/narvii/model/Tippable;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/NVObject;

    const-string v1, "update"

    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 557
    iget-object v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    invoke-static {v0}, Lcom/narvii/monetization/store/TippingConfirmDialog;->access$800(Lcom/narvii/monetization/store/TippingConfirmDialog;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;)V

    .line 560
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    invoke-static {p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->access$900(Lcom/narvii/monetization/store/TippingConfirmDialog;)Lcom/narvii/monetization/store/TippingConfirmDialog$TipSuccessListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 561
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    invoke-static {p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->access$900(Lcom/narvii/monetization/store/TippingConfirmDialog;)Lcom/narvii/monetization/store/TippingConfirmDialog$TipSuccessListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/monetization/store/TippingConfirmDialog$TipSuccessListener;->onTipSuccess()V

    .line 563
    .line 567
    :cond_1
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    invoke-static {p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->access$1000(Lcom/narvii/monetization/store/TippingConfirmDialog;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 568
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    invoke-static {p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->access$1100(Lcom/narvii/monetization/store/TippingConfirmDialog;)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 569
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    invoke-static {p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->access$1300(Lcom/narvii/monetization/store/TippingConfirmDialog;)Lcom/narvii/monetization/store/view/TippingFeedbackView;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    invoke-static {p2}, Lcom/narvii/monetization/store/TippingConfirmDialog;->access$1200(Lcom/narvii/monetization/store/TippingConfirmDialog;)Lcom/narvii/model/User;

    move-result-object p2

    iget v0, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->val$price:I

    invoke-virtual {p1, p2, v0}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->show(Lcom/narvii/model/User;I)V

    .line 570
    iget-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$5;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    invoke-static {p1}, Lcom/narvii/monetization/store/TippingConfirmDialog;->access$1300(Lcom/narvii/monetization/store/TippingConfirmDialog;)Lcom/narvii/monetization/store/view/TippingFeedbackView;

    move-result-object p1

    new-instance p2, Lcom/narvii/monetization/store/-$$Lambda$TippingConfirmDialog$5$zOd9a-bBcYMCHLizn4x_iP3-iMI;

    invoke-direct {p2, p0}, Lcom/narvii/monetization/store/-$$Lambda$TippingConfirmDialog$5$zOd9a-bBcYMCHLizn4x_iP3-iMI;-><init>(Lcom/narvii/monetization/store/TippingConfirmDialog$5;)V

    invoke-static {p2}, Lcom/narvii/util/Utils;->functionUnit(Lcom/narvii/util/Callback;)Lkotlin/jvm/functions/Function1;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/monetization/store/view/TippingFeedbackView;->setOnDismiss(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
