.class Lcom/narvii/wallet/MembershipSubscribeFragment$3;
.super Lcom/narvii/util/http/ApiJsonResponseListener;
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
        "Lcom/narvii/util/http/ApiJsonResponseListener<",
        "Lcom/narvii/model/api/ApiResponse;",
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
    iput-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$3;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiJsonResponseListener;-><init>(Ljava/lang/Class;)V

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
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$3;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p4}, Lcom/narvii/wallet/MembershipSubscribeFragment;->H(Lcom/narvii/wallet/MembershipSubscribeFragment;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$3;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->Q(Lcom/narvii/wallet/MembershipSubscribeFragment;)Ljava/lang/Boolean;

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$3;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->e0(Lcom/narvii/wallet/MembershipSubscribeFragment;)V

    .line 16
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$3;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/util/http/ApiJsonResponseListener;->json()Lcom/fasterxml/jackson/databind/JsonNode;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    const-string v0, "paymentContext"

    .line 9
    .line 10
    .line 11
    filled-new-array {v0}, [Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    check-cast p2, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 19
    .line 20
    .line 21
    invoke-static {p1, p2}, Lcom/narvii/wallet/MembershipSubscribeFragment;->G(Lcom/narvii/wallet/MembershipSubscribeFragment;Lcom/fasterxml/jackson/databind/node/ObjectNode;)V

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$3;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->S(Lcom/narvii/wallet/MembershipSubscribeFragment;)V

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$3;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->Q(Lcom/narvii/wallet/MembershipSubscribeFragment;)Ljava/lang/Boolean;

    .line 32
    .line 33
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$3;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->e0(Lcom/narvii/wallet/MembershipSubscribeFragment;)V

    .line 37
    return-void
.end method
