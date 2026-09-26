.class Lcom/narvii/account/LogoutHelper$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/LogoutHelper$1;->this$0:Lcom/narvii/account/LogoutHelper;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/account/LogoutHelper$1;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/narvii/account/LogoutHelper$1;->val$account:Lcom/narvii/account/AccountService;

    .line 7
    .line 8
    iput-object p5, p0, Lcom/narvii/account/LogoutHelper$1;->val$callback:Lcom/narvii/util/Callback;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 12
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
    iget-object p1, p0, Lcom/narvii/account/LogoutHelper$1;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/account/LogoutHelper$1;->val$account:Lcom/narvii/account/AccountService;

    .line 8
    const/4 p2, 0x1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lcom/narvii/account/AccountService;->logout(Z)V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/account/LogoutHelper$1;->val$callback:Lcom/narvii/util/Callback;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 21
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

    iget-object p1, p0, Lcom/narvii/account/LogoutHelper$1;->this$0:Lcom/narvii/account/LogoutHelper;

    .line 2
    invoke-static {p1}, Lcom/narvii/account/LogoutHelper;->a(Lcom/narvii/account/LogoutHelper;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string v0, "auid"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AuidService;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/narvii/account/AuidResponse;->getAuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/account/AuidService;->saveAuid(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/narvii/account/LogoutHelper$1;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 4
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    iget-object p1, p0, Lcom/narvii/account/LogoutHelper$1;->val$account:Lcom/narvii/account/AccountService;

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p1, p2}, Lcom/narvii/account/AccountService;->logout(Z)V

    iget-object p1, p0, Lcom/narvii/account/LogoutHelper$1;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 6
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 7
    :cond_1
    invoke-static {}, Lcom/narvii/account/liveramp/LiveRampHelper;->clearLRUser()V

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
    check-cast p2, Lcom/narvii/account/AuidResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/account/LogoutHelper$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/account/AuidResponse;)V

    return-void
.end method
