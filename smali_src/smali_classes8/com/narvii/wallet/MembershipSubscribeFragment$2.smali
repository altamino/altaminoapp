.class Lcom/narvii/wallet/MembershipSubscribeFragment$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/wallet/MembershipSubscribeFragment;->onStart()V
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


# direct methods
.method constructor <init>(Lcom/narvii/wallet/MembershipSubscribeFragment;Ljava/lang/Class;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$2;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

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
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$2;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p4}, Lcom/narvii/wallet/MembershipSubscribeFragment;->b0(Lcom/narvii/wallet/MembershipSubscribeFragment;Ljava/lang/String;)V

    .line 6
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

    invoke-virtual {p0, p1, p2}, Lcom/narvii/wallet/MembershipSubscribeFragment$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/MembershipResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/wallet/MembershipResponse;)V
    .locals 0

    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$2;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    .line 2
    iget-object p2, p2, Lcom/narvii/wallet/MembershipResponse;->membership:Lcom/narvii/wallet/MembershipStatus;

    if-nez p2, :cond_0

    new-instance p2, Lcom/narvii/wallet/MembershipStatus;

    invoke-direct {p2}, Lcom/narvii/wallet/MembershipStatus;-><init>()V

    :cond_0
    invoke-static {p1, p2}, Lcom/narvii/wallet/MembershipSubscribeFragment;->F(Lcom/narvii/wallet/MembershipSubscribeFragment;Lcom/narvii/wallet/MembershipStatus;)V

    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$2;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    .line 3
    invoke-static {p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->Q(Lcom/narvii/wallet/MembershipSubscribeFragment;)Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$2;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    .line 4
    invoke-static {p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->e0(Lcom/narvii/wallet/MembershipSubscribeFragment;)V

    return-void
.end method
