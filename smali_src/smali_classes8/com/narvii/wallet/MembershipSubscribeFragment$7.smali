.class Lcom/narvii/wallet/MembershipSubscribeFragment$7;
.super Lcom/narvii/util/http/ApiJsonResponseListener;
.source "SourceFile"


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

.field final synthetic val$pd:Lcom/android/billingclient/api/l;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/MembershipSubscribeFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/wallet/Product;Lcom/android/billingclient/api/l;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$7;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$7;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$7;->val$p:Lcom/narvii/wallet/Product;

    .line 7
    .line 8
    iput-object p5, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$7;->val$pd:Lcom/android/billingclient/api/l;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiJsonResponseListener;-><init>(Ljava/lang/Class;)V

    .line 12
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
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$7;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    .line 3
    .line 4
    iget-object p3, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$7;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p3}, Lcom/narvii/wallet/MembershipSubscribeFragment;->X(Lcom/narvii/wallet/MembershipSubscribeFragment;Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$7;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    .line 10
    .line 11
    .line 12
    invoke-static {p1, p4}, Lcom/narvii/wallet/MembershipSubscribeFragment;->c0(Lcom/narvii/wallet/MembershipSubscribeFragment;Ljava/lang/String;)V

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$7;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    .line 15
    .line 16
    const-string p3, "logging"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p3}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    check-cast p1, Lcom/narvii/util/logging/LoggingService;

    .line 23
    .line 24
    const/16 p3, 0xc

    .line 25
    .line 26
    new-array p3, p3, [Ljava/lang/Object;

    .line 27
    const/4 p5, 0x0

    .line 28
    .line 29
    .line 30
    const-string/jumbo p6, "type"

    .line 31
    .line 32
    aput-object p6, p3, p5

    .line 33
    const/4 p5, 0x1

    .line 34
    .line 35
    const-string p6, "IAP"

    .line 36
    .line 37
    aput-object p6, p3, p5

    .line 38
    const/4 p5, 0x2

    .line 39
    .line 40
    const-string p6, "months"

    .line 41
    .line 42
    aput-object p6, p3, p5

    .line 43
    .line 44
    iget-object p5, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$7;->val$p:Lcom/narvii/wallet/Product;

    .line 45
    .line 46
    iget p5, p5, Lcom/narvii/wallet/Product;->numberOfMonths:I

    .line 47
    .line 48
    .line 49
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object p5

    .line 51
    const/4 p6, 0x3

    .line 52
    .line 53
    aput-object p5, p3, p6

    .line 54
    const/4 p5, 0x4

    .line 55
    .line 56
    const-string p6, "sku"

    .line 57
    .line 58
    aput-object p6, p3, p5

    .line 59
    .line 60
    iget-object p5, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$7;->val$pd:Lcom/android/billingclient/api/l;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p5}, Lcom/android/billingclient/api/l;->b()Ljava/lang/String;

    .line 64
    move-result-object p5

    .line 65
    const/4 p6, 0x5

    .line 66
    .line 67
    aput-object p5, p3, p6

    .line 68
    const/4 p5, 0x6

    .line 69
    .line 70
    const-string p6, "reason"

    .line 71
    .line 72
    aput-object p6, p3, p5

    .line 73
    const/4 p5, 0x7

    .line 74
    .line 75
    const-string p6, "PRE_PURCHASE_ERROR"

    .line 76
    .line 77
    aput-object p6, p3, p5

    .line 78
    .line 79
    const/16 p5, 0x8

    .line 80
    .line 81
    const-string p6, "code"

    .line 82
    .line 83
    aput-object p6, p3, p5

    .line 84
    .line 85
    const/16 p5, 0x9

    .line 86
    .line 87
    .line 88
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    move-result-object p2

    .line 90
    .line 91
    aput-object p2, p3, p5

    .line 92
    .line 93
    const/16 p2, 0xa

    .line 94
    .line 95
    const-string p5, "message"

    .line 96
    .line 97
    aput-object p5, p3, p2

    .line 98
    .line 99
    const/16 p2, 0xb

    .line 100
    .line 101
    aput-object p4, p3, p2

    .line 102
    .line 103
    const-string p2, "MembershipPurchaseError"

    .line 104
    .line 105
    .line 106
    invoke-interface {p1, p2, p3}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$7;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    .line 3
    .line 4
    iget-object p2, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$7;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2}, Lcom/narvii/wallet/MembershipSubscribeFragment;->X(Lcom/narvii/wallet/MembershipSubscribeFragment;Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$7;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->isActive()Z

    .line 13
    move-result p1

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$7;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    .line 18
    .line 19
    iget-object p2, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$7;->val$p:Lcom/narvii/wallet/Product;

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p2}, Lcom/narvii/wallet/MembershipSubscribeFragment;->I(Lcom/narvii/wallet/MembershipSubscribeFragment;Lcom/narvii/wallet/Product;)V

    .line 23
    .line 24
    sget-object p1, Lcom/narvii/wallet/MembershipBillingManager;->INSTANCE:Lcom/narvii/wallet/MembershipBillingManager;

    .line 25
    .line 26
    iget-object p2, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$7;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    .line 27
    .line 28
    .line 29
    invoke-static {p2}, Lcom/narvii/wallet/MembershipSubscribeFragment;->A(Lcom/narvii/wallet/MembershipSubscribeFragment;)Lcom/narvii/wallet/Product;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    iget-object p2, p2, Lcom/narvii/wallet/Product;->skuList:[Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lcom/narvii/wallet/MembershipBillingManager;->getProductDetails([Ljava/lang/String;)Lcom/android/billingclient/api/l;

    .line 36
    move-result-object p2

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$7;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/android/billingclient/api/l;->b()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->J(Lcom/narvii/wallet/MembershipSubscribeFragment;Ljava/lang/String;)V

    .line 46
    .line 47
    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$7;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0, p2}, Lcom/narvii/wallet/MembershipBillingManager;->purchaseSub(Landroid/app/Activity;Lcom/android/billingclient/api/l;)V

    .line 55
    :cond_0
    return-void
.end method
