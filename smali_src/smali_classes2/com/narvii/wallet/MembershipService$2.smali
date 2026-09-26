.class Lcom/narvii/wallet/MembershipService$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/wallet/MembershipService;
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
.field final synthetic this$0:Lcom/narvii/wallet/MembershipService;


# direct methods
.method constructor <init>(Lcom/narvii/wallet/MembershipService;Ljava/lang/Class;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/wallet/MembershipService$2;->this$0:Lcom/narvii/wallet/MembershipService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
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
    iget-object p2, p0, Lcom/narvii/wallet/MembershipService$2;->this$0:Lcom/narvii/wallet/MembershipService;

    .line 3
    .line 4
    iget-object p3, p2, Lcom/narvii/wallet/MembershipService;->membershipRequest:Lcom/narvii/util/http/ApiRequest;

    .line 5
    .line 6
    if-ne p1, p3, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    .line 9
    iput-object p1, p2, Lcom/narvii/wallet/MembershipService;->membershipRequest:Lcom/narvii/util/http/ApiRequest;

    .line 10
    :cond_0
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

    invoke-virtual {p0, p1, p2}, Lcom/narvii/wallet/MembershipService$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/MembershipResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/MembershipResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/wallet/MembershipService$2;->this$0:Lcom/narvii/wallet/MembershipService;

    .line 2
    iget-object v1, v0, Lcom/narvii/wallet/MembershipService;->membershipRequest:Lcom/narvii/util/http/ApiRequest;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Lcom/narvii/wallet/MembershipService;->membershipRequest:Lcom/narvii/util/http/ApiRequest;

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/wallet/MembershipService$2;->this$0:Lcom/narvii/wallet/MembershipService;

    iget-object v0, v0, Lcom/narvii/wallet/MembershipService;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/wallet/MembershipService$2;->this$0:Lcom/narvii/wallet/MembershipService;

    .line 5
    invoke-virtual {p1, p2}, Lcom/narvii/wallet/MembershipService;->update(Lcom/narvii/wallet/MembershipResponse;)V

    :cond_1
    return-void
.end method
