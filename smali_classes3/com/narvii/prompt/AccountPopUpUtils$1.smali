.class final Lcom/narvii/prompt/AccountPopUpUtils$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "AccountPopUpUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prompt/AccountPopUpUtils;->reportPopUpShown(Lcom/narvii/app/NVContext;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/AccountResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$accountService:Lcom/narvii/account/AccountService;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/narvii/account/AccountService;)V
    .locals 0

    .line 20
    iput-object p2, p0, Lcom/narvii/prompt/AccountPopUpUtils$1;->val$accountService:Lcom/narvii/account/AccountService;

    invoke-direct {p0, p1}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 24
    iget-object v0, p2, Lcom/narvii/model/api/AccountResponse;->account:Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    const-string v0, "userId"

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest;->tag(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/prompt/AccountPopUpUtils$1;->val$accountService:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 25
    iget-object p1, p0, Lcom/narvii/prompt/AccountPopUpUtils$1;->val$accountService:Lcom/narvii/account/AccountService;

    iget-object p2, p2, Lcom/narvii/model/api/AccountResponse;->account:Lcom/narvii/model/User;

    invoke-virtual {p1, p2}, Lcom/narvii/account/AccountService;->updateAccountSilently(Lcom/narvii/model/User;)V

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

    .line 20
    check-cast p2, Lcom/narvii/model/api/AccountResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/prompt/AccountPopUpUtils$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V

    return-void
.end method
