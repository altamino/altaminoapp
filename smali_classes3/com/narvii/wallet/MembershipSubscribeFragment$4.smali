.class Lcom/narvii/wallet/MembershipSubscribeFragment$4;
.super Lcom/narvii/util/http/ApiJsonResponseListener;
.source "MembershipSubscribeFragment.java"


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

    .line 215
    iput-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$4;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiJsonResponseListener;-><init>(Ljava/lang/Class;)V

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

    .line 228
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$4;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    iput-object p4, p1, Lcom/narvii/wallet/MembershipSubscribeFragment;->paymentError:Ljava/lang/String;

    .line 229
    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPayment()Ljava/lang/Boolean;

    .line 230
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$4;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->update()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 218
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$4;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    invoke-virtual {p0}, Lcom/narvii/util/http/ApiJsonResponseListener;->json()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "paymentContext"

    aput-object v2, v0, v1

    invoke-static {p2, v0}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p2

    check-cast p2, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iput-object p2, p1, Lcom/narvii/wallet/MembershipSubscribeFragment;->paymentContext:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 219
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$4;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    iget-object p2, p1, Lcom/narvii/wallet/MembershipSubscribeFragment;->paymentContext:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez p2, :cond_0

    .line 220
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/wallet/MembershipSubscribeFragment;->paymentContext:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 222
    :cond_0
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$4;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->checkMembershipAndPayment()Ljava/lang/Boolean;

    .line 223
    iget-object p1, p0, Lcom/narvii/wallet/MembershipSubscribeFragment$4;->this$0:Lcom/narvii/wallet/MembershipSubscribeFragment;

    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->update()V

    return-void
.end method
