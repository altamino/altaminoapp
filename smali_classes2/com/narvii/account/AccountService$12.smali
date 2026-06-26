.class Lcom/narvii/account/AccountService$12;
.super Lcom/narvii/account/AccountResponseListener;
.source "AccountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/AccountService;->crossAppsCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/AccountService;

.field final synthetic val$akc:Lcom/narvii/account/AccountKeychain;


# direct methods
.method constructor <init>(Lcom/narvii/account/AccountService;Lcom/narvii/app/NVContext;Lcom/narvii/account/AccountKeychain;)V
    .locals 0

    .line 1337
    iput-object p1, p0, Lcom/narvii/account/AccountService$12;->this$0:Lcom/narvii/account/AccountService;

    iput-object p3, p0, Lcom/narvii/account/AccountService$12;->val$akc:Lcom/narvii/account/AccountKeychain;

    invoke-direct {p0, p2}, Lcom/narvii/account/AccountResponseListener;-><init>(Lcom/narvii/app/NVContext;)V

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

    .line 1352
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 1353
    div-int/lit8 p1, p2, 0x64

    const/4 p3, 0x2

    if-ne p1, p3, :cond_0

    .line 1354
    iget-object p1, p0, Lcom/narvii/account/AccountService$12;->this$0:Lcom/narvii/account/AccountService;

    invoke-static {p1}, Lcom/narvii/account/AccountService;->access$000(Lcom/narvii/account/AccountService;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/account/AccountKeychain;->remove(Landroid/content/Context;)Z

    :cond_0
    if-nez p2, :cond_1

    .line 1357
    iget-object p1, p0, Lcom/narvii/account/AccountService$12;->this$0:Lcom/narvii/account/AccountService;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/narvii/account/AccountService;->access$100(Lcom/narvii/account/AccountService;I)V

    goto :goto_0

    .line 1359
    :cond_1
    iget-object p1, p0, Lcom/narvii/account/AccountService$12;->this$0:Lcom/narvii/account/AccountService;

    const/4 p2, -0x2

    invoke-static {p1, p2}, Lcom/narvii/account/AccountService;->access$100(Lcom/narvii/account/AccountService;I)V

    :goto_0
    const-string p1, "cross-apps login fail"

    .line 1361
    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1341
    invoke-super {p0, p1, p2}, Lcom/narvii/account/AccountResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V

    .line 1342
    iget-object p1, p0, Lcom/narvii/account/AccountService$12;->val$akc:Lcom/narvii/account/AccountKeychain;

    iget-object p2, p2, Lcom/narvii/model/api/AccountResponse;->account:Lcom/narvii/model/User;

    iget-object p2, p2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    iput-object p2, p1, Lcom/narvii/account/AccountKeychain;->uid:Ljava/lang/String;

    .line 1343
    iget-object p2, p0, Lcom/narvii/account/AccountService$12;->this$0:Lcom/narvii/account/AccountService;

    invoke-static {p2}, Lcom/narvii/account/AccountService;->access$000(Lcom/narvii/account/AccountService;)Lcom/narvii/app/NVContext;

    move-result-object p2

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/account/AccountKeychain;->writeTo(Landroid/content/Context;)V

    .line 1344
    iget-object p1, p0, Lcom/narvii/account/AccountService$12;->this$0:Lcom/narvii/account/AccountService;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/account/AccountService;->access$100(Lcom/narvii/account/AccountService;I)V

    .line 1345
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cross-apps login succeed with "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/narvii/account/AccountService$12;->val$akc:Lcom/narvii/account/AccountKeychain;

    iget-object p2, p2, Lcom/narvii/account/AccountKeychain;->email:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1337
    check-cast p2, Lcom/narvii/model/api/AccountResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/account/AccountService$12;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V

    return-void
.end method
