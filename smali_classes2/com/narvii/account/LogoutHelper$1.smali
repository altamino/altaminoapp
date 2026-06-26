.class Lcom/narvii/account/LogoutHelper$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "LogoutHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/LogoutHelper;->logout(Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/account/AuidResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/LogoutHelper;

.field final synthetic val$account:Lcom/narvii/account/AccountService;

.field final synthetic val$callback:Lcom/narvii/util/Callback;

.field final synthetic val$dlg:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/account/LogoutHelper;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/account/AccountService;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/narvii/account/LogoutHelper$1;->this$0:Lcom/narvii/account/LogoutHelper;

    iput-object p3, p0, Lcom/narvii/account/LogoutHelper$1;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    iput-object p4, p0, Lcom/narvii/account/LogoutHelper$1;->val$account:Lcom/narvii/account/AccountService;

    iput-object p5, p0, Lcom/narvii/account/LogoutHelper$1;->val$callback:Lcom/narvii/util/Callback;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

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

    .line 71
    iget-object p1, p0, Lcom/narvii/account/LogoutHelper$1;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 72
    iget-object p1, p0, Lcom/narvii/account/LogoutHelper$1;->val$account:Lcom/narvii/account/AccountService;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/narvii/account/AccountService;->logout(Z)V

    .line 73
    iget-object p1, p0, Lcom/narvii/account/LogoutHelper$1;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 74
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/account/AuidResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    iget-object p1, p0, Lcom/narvii/account/LogoutHelper$1;->this$0:Lcom/narvii/account/LogoutHelper;

    invoke-static {p1}, Lcom/narvii/account/LogoutHelper;->access$000(Lcom/narvii/account/LogoutHelper;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string v0, "auid"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AuidService;

    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p2}, Lcom/narvii/account/AuidResponse;->getAuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/account/AuidService;->saveAuid(Ljava/lang/String;)V

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/narvii/account/LogoutHelper$1;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 61
    iget-object p1, p0, Lcom/narvii/account/LogoutHelper$1;->val$account:Lcom/narvii/account/AccountService;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/narvii/account/AccountService;->logout(Z)V

    .line 62
    iget-object p1, p0, Lcom/narvii/account/LogoutHelper$1;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_1

    .line 63
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    check-cast p2, Lcom/narvii/account/AuidResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/account/LogoutHelper$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/account/AuidResponse;)V

    return-void
.end method
