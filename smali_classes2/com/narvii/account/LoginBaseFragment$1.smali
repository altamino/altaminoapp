.class Lcom/narvii/account/LoginBaseFragment$1;
.super Lcom/narvii/account/AccountResponseListener;
.source "LoginBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/account/LoginBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/LoginBaseFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/LoginBaseFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/narvii/account/LoginBaseFragment$1;->this$0:Lcom/narvii/account/LoginBaseFragment;

    invoke-direct {p0, p2}, Lcom/narvii/account/AccountResponseListener;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 4
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

    .line 144
    iget-object p3, p0, Lcom/narvii/account/LoginBaseFragment$1;->this$0:Lcom/narvii/account/LoginBaseFragment;

    const/4 p5, 0x0

    invoke-virtual {p3, p5, p2, p4, p1}, Lcom/narvii/account/AccountBaseFragment;->finishWithResult(ZILjava/lang/String;Lcom/narvii/util/http/ApiRequest;)V

    const/4 p3, 0x0

    const/16 p6, 0xc8

    if-ne p2, p6, :cond_0

    const-string p6, "WrongPassword"

    goto :goto_0

    :cond_0
    const/16 p6, 0xd8

    if-ne p2, p6, :cond_1

    const-string p6, "AccountNotExist"

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    const-string p6, "NetworkError"

    goto :goto_0

    :cond_2
    move-object p6, p3

    :goto_0
    const-string v0, "email"

    .line 155
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 156
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v3, p3

    move-object p3, p1

    move-object p1, v3

    goto :goto_1

    :cond_3
    const-string v1, "phoneNumber"

    .line 157
    invoke-virtual {p1, v1}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 158
    invoke-virtual {p1, v1}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_1

    :cond_4
    move-object p1, p3

    .line 160
    :goto_1
    iget-object v1, p0, Lcom/narvii/account/LoginBaseFragment$1;->this$0:Lcom/narvii/account/LoginBaseFragment;

    const-string v2, "logging"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/logging/LoggingService;

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, p5

    const/4 p5, 0x1

    aput-object p3, v2, p5

    const/4 p3, 0x2

    const-string p5, "phone"

    aput-object p5, v2, p3

    const/4 p3, 0x3

    aput-object p1, v2, p3

    const/4 p1, 0x4

    const-string p3, "code"

    aput-object p3, v2, p1

    const/4 p1, 0x5

    .line 164
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x6

    const-string p2, "reason"

    aput-object p2, v2, p1

    const/4 p1, 0x7

    aput-object p6, v2, p1

    const/16 p1, 0x8

    const-string p2, "message"

    aput-object p2, v2, p1

    const/16 p1, 0x9

    aput-object p4, v2, p1

    const-string p1, "AccountError"

    .line 161
    invoke-interface {v1, p1, v2}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "login success with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "email"

    invoke-virtual {p1, v1}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 135
    iget-object v0, p2, Lcom/narvii/model/api/AccountResponse;->sid:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 136
    invoke-super {p0, p1, p2}, Lcom/narvii/account/AccountResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V

    .line 137
    iget-object p1, p0, Lcom/narvii/account/LoginBaseFragment$1;->this$0:Lcom/narvii/account/LoginBaseFragment;

    const/4 p2, 0x1

    const/4 v0, 0x0

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

    .line 130
    check-cast p2, Lcom/narvii/model/api/AccountResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/account/LoginBaseFragment$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V

    return-void
.end method
