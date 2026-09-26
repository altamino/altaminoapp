.class Lcom/narvii/account/GoogleLoginFragment$2;
.super Lcom/narvii/account/AccountResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/GoogleLoginFragment;->requestLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/GoogleLoginFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/GoogleLoginFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/GoogleLoginFragment$2;->this$0:Lcom/narvii/account/GoogleLoginFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/account/AccountResponseListener;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
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
    iget-object p3, p0, Lcom/narvii/account/GoogleLoginFragment$2;->this$0:Lcom/narvii/account/GoogleLoginFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p3, p6}, Lcom/narvii/account/AccountBaseFragment;->setHttpCode(Ljava/lang/Throwable;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/account/GoogleLoginFragment$2;->this$0:Lcom/narvii/account/GoogleLoginFragment;

    .line 8
    .line 9
    new-instance p3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    const-string p5, "30 "

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    iget-object p5, p0, Lcom/narvii/account/GoogleLoginFragment$2;->this$0:Lcom/narvii/account/GoogleLoginFragment;

    .line 20
    .line 21
    iget-object p5, p5, Lcom/narvii/account/GoogleLoginFragment;->token:Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x0

    .line 30
    move v3, p2

    .line 31
    move-object v4, p4

    .line 32
    move-object v5, p1

    .line 33
    .line 34
    .line 35
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->finishThirdPartLoginWithResult(Ljava/lang/String;ZILjava/lang/String;Lcom/narvii/util/http/ApiRequest;)V

    .line 36
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p2, Lcom/narvii/model/api/AccountResponse;->sid:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/account/AccountResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "login success with google "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/narvii/util/http/ApiJsonResponseListener;->json()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p2

    const-string v0, "account"

    const-string v2, "email"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/narvii/account/GoogleLoginFragment$2;->this$0:Lcom/narvii/account/GoogleLoginFragment;

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, p2, v1, v0}, Lcom/narvii/account/AccountBaseFragment;->finishWithResult(ZILjava/lang/String;)V

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
    check-cast p2, Lcom/narvii/model/api/AccountResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/account/GoogleLoginFragment$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V

    return-void
.end method
