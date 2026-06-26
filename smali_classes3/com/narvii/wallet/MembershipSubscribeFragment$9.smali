.class Lcom/narvii/wallet/MembershipSubscribeFragment$9;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "MembershipSubscribeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/MembershipSubscribeFragment;->onIabPurchaseFinished(Lcom/narvii/wallet/util/IabResult;Lcom/narvii/wallet/util/Purchase;)V
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

.field final synthetic val$api:Lcom/narvii/util/http/ApiService;

.field final synthetic val$pdlg:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/MembershipSubscribeFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/util/http/ApiService;)V
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$9;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    iput-object p3, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$9;->val$pdlg:Lcom/narvii/util/dialog/ProgressDialog;

    iput-object p4, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$9;->val$api:Lcom/narvii/util/http/ApiService;

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

    .line 628
    iget-object p2, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$9;->val$pdlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p2}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 629
    new-instance p2, Lcom/narvii/util/dialog/AlertDialog;

    iget-object p3, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$9;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    invoke-virtual {p3}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 630
    invoke-virtual {p2, p4}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 631
    new-instance p3, Lcom/narvii/wallet/MembershipSubscribeFragment$9$1;

    invoke-direct {p3, p0}, Lcom/narvii/wallet/MembershipSubscribeFragment$9$1;-><init>(Lcom/narvii/wallet/MembershipSubscribeFragment$9;)V

    const/4 p4, 0x0

    const p5, 0x7f0f0274

    invoke-virtual {p2, p5, p4, p3}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 638
    new-instance p3, Lcom/narvii/wallet/MembershipSubscribeFragment$9$2;

    invoke-direct {p3, p0, p1, p0}, Lcom/narvii/wallet/MembershipSubscribeFragment$9$2;-><init>(Lcom/narvii/wallet/MembershipSubscribeFragment$9;Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    const p1, 0x7f0f0ef5

    invoke-virtual {p2, p1, p4, p3}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 645
    invoke-virtual {p2}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 605
    check-cast p2, Lcom/narvii/wallet/MembershipResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/wallet/MembershipSubscribeFragment$9;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/MembershipResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/MembershipResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 608
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$9;->val$pdlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 609
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.narvii.action.PURCHASED_SUB_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$9;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 611
    invoke-virtual {v0, p1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 612
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$9;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->done()V

    .line 613
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$9;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->cofetti()V

    .line 614
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$9;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    invoke-virtual {p1, p2}, Lcom/narvii/wallet/MembershipSubscribeFragment;->updateMembership(Lcom/narvii/wallet/MembershipResponse;)V

    return-void
.end method
