.class Lcom/narvii/wallet/MembershipSubscribeFragment$4;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/MembershipSubscribeFragment;->observePurchaseUpdate()V
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

.field final synthetic val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/MembershipSubscribeFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/util/http/ApiService;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$4;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$4;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$4;->val$api:Lcom/narvii/util/http/ApiService;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 10
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 6
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
    iget-object p2, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$4;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    .line 3
    .line 4
    new-instance p3, Lcom/narvii/wallet/MembershipSubscribeFragment$OnFailPurchaseEvent;

    .line 5
    .line 6
    iget-object v3, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$4;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 7
    .line 8
    iget-object v5, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$4;->val$api:Lcom/narvii/util/http/ApiService;

    .line 9
    move-object v0, p3

    .line 10
    move-object v1, p1

    .line 11
    move-object v2, p4

    .line 12
    move-object v4, p0

    .line 13
    .line 14
    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/narvii/wallet/MembershipSubscribeFragment$OnFailPurchaseEvent;-><init>(Lcom/narvii/util/http/ApiRequest;Ljava/lang/String;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/util/http/ApiResponseListener;Lcom/narvii/util/http/ApiService;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p2, p3}, Lcom/narvii/wallet/MembershipSubscribeFragment;->V(Lcom/narvii/wallet/MembershipSubscribeFragment;Lcom/narvii/wallet/MembershipSubscribeFragment$OnFailPurchaseEvent;)V

    .line 19
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

    invoke-virtual {p0, p1, p2}, Lcom/narvii/wallet/MembershipSubscribeFragment$4;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/MembershipResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/MembershipResponse;)V
    .locals 1

    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$4;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    iget-object v0, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$4;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 2
    invoke-static {p1, p2, v0}, Lcom/narvii/wallet/MembershipSubscribeFragment;->W(Lcom/narvii/wallet/MembershipSubscribeFragment;Lcom/narvii/wallet/MembershipResponse;Lcom/narvii/util/dialog/ProgressDialog;)V

    return-void
.end method
