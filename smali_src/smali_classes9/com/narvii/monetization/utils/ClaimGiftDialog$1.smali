.class Lcom/narvii/monetization/utils/ClaimGiftDialog$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/utils/ClaimGiftDialog;->sendClaimCoinRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/wallet/WalletResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/utils/ClaimGiftDialog;

.field final synthetic val$dlg:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/utils/ClaimGiftDialog;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/utils/ClaimGiftDialog$1;->this$0:Lcom/narvii/monetization/utils/ClaimGiftDialog;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/monetization/utils/ClaimGiftDialog$1;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

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
    iget-object p1, p0, Lcom/narvii/monetization/utils/ClaimGiftDialog$1;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/monetization/utils/ClaimGiftDialog$1;->this$0:Lcom/narvii/monetization/utils/ClaimGiftDialog;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 14
    move-result-object p1

    .line 15
    const/4 p2, 0x1

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/monetization/utils/ClaimGiftDialog$1;->this$0:Lcom/narvii/monetization/utils/ClaimGiftDialog;

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/narvii/monetization/utils/ClaimGiftDialog;->b(Lcom/narvii/monetization/utils/ClaimGiftDialog;)V

    .line 28
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
    check-cast p2, Lcom/narvii/wallet/WalletResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/monetization/utils/ClaimGiftDialog$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/WalletResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/WalletResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object p1, p0, Lcom/narvii/monetization/utils/ClaimGiftDialog$1;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    iget-object p1, p0, Lcom/narvii/monetization/utils/ClaimGiftDialog$1;->this$0:Lcom/narvii/monetization/utils/ClaimGiftDialog;

    .line 4
    iget-object p1, p1, Lcom/narvii/monetization/utils/ClaimGiftDialog;->context:Lcom/narvii/app/NVContext;

    const-string p2, "membership"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/wallet/MembershipService;

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p1, p2}, Lcom/narvii/wallet/MembershipService;->updateAvailableCoupon(Lcom/narvii/wallet/CouponDetail;)V

    iget-object p1, p0, Lcom/narvii/monetization/utils/ClaimGiftDialog$1;->this$0:Lcom/narvii/monetization/utils/ClaimGiftDialog;

    .line 6
    invoke-static {p1}, Lcom/narvii/monetization/utils/ClaimGiftDialog;->a(Lcom/narvii/monetization/utils/ClaimGiftDialog;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/monetization/utils/ClaimGiftDialog$1;->this$0:Lcom/narvii/monetization/utils/ClaimGiftDialog;

    .line 7
    invoke-static {p1}, Lcom/narvii/monetization/utils/ClaimGiftDialog;->c(Lcom/narvii/monetization/utils/ClaimGiftDialog;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/utils/ClaimGiftDialog$1;->this$0:Lcom/narvii/monetization/utils/ClaimGiftDialog;

    .line 8
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    :goto_0
    return-void
.end method
