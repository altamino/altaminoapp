.class Lcom/narvii/util/http/ApiService$3;
.super Lcom/narvii/account/AccountResponseListener;
.source "ApiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/http/ApiService;->createReloginRequest(Lcom/narvii/account/AccountKeychain;)Lcom/narvii/util/http/ApiService$WrappedRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/http/ApiService;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/util/http/ApiService;Lcom/narvii/app/NVContext;Ljava/lang/String;)V
    .locals 0

    .line 1112
    iput-object p1, p0, Lcom/narvii/util/http/ApiService$3;->this$0:Lcom/narvii/util/http/ApiService;

    iput-object p3, p0, Lcom/narvii/util/http/ApiService$3;->val$userId:Ljava/lang/String;

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

    .line 1147
    iget-object p1, p0, Lcom/narvii/util/http/ApiService$3;->val$userId:Ljava/lang/String;

    iget-object p3, p0, Lcom/narvii/util/http/ApiService$3;->this$0:Lcom/narvii/util/http/ApiService;

    iget-object p3, p3, Lcom/narvii/util/http/ApiService;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {p3}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1148
    div-int/lit8 p2, p2, 0x64

    const/4 p1, 0x2

    const-string p3, "api"

    const/4 p4, 0x0

    if-ne p2, p1, :cond_1

    const-string p1, "105 re-login failed, logout..."

    .line 1150
    invoke-static {p3, p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    sget-boolean p1, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 1152
    iget-object p1, p0, Lcom/narvii/util/http/ApiService$3;->this$0:Lcom/narvii/util/http/ApiService;

    iget-object p1, p1, Lcom/narvii/util/http/ApiService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "105 re-login fail, logout..."

    invoke-static {p1, p2, p4}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    .line 1154
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 1156
    :cond_0
    iget-object p1, p0, Lcom/narvii/util/http/ApiService$3;->this$0:Lcom/narvii/util/http/ApiService;

    iget-object p1, p1, Lcom/narvii/util/http/ApiService;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {p1, p4}, Lcom/narvii/account/AccountService;->logout(Z)V

    goto :goto_0

    :cond_1
    const-string p1, "105 re-login network failed"

    .line 1159
    invoke-static {p3, p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    sget-boolean p1, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz p1, :cond_2

    .line 1161
    iget-object p1, p0, Lcom/narvii/util/http/ApiService$3;->this$0:Lcom/narvii/util/http/ApiService;

    iget-object p1, p1, Lcom/narvii/util/http/ApiService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "105 re-login network fail"

    invoke-static {p1, p2, p4}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    .line 1163
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 1168
    :cond_2
    :goto_0
    new-instance p1, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {p1}, Lcom/narvii/model/api/ApiResponse;-><init>()V

    .line 1170
    :goto_1
    iget-object p2, p0, Lcom/narvii/util/http/ApiService$3;->this$0:Lcom/narvii/util/http/ApiService;

    iget-object p2, p2, Lcom/narvii/util/http/ApiService;->resending105:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/util/http/ApiService$WrappedRequest;

    if-eqz p2, :cond_3

    .line 1171
    iget-object p3, p2, Lcom/narvii/util/http/ApiService$WrappedRequest;->resend:Lcom/narvii/model/api/ApiResponse;

    .line 1172
    iput-object p1, p2, Lcom/narvii/util/http/ApiService$WrappedRequest;->resend:Lcom/narvii/model/api/ApiResponse;

    .line 1173
    invoke-virtual {p2, p3}, Lcom/narvii/util/http/ApiService$WrappedRequest;->deliverResponse(Lcom/narvii/model/api/ApiResponse;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1117
    iget-object v0, p2, Lcom/narvii/model/api/AccountResponse;->sid:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 1118
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$3;->this$0:Lcom/narvii/util/http/ApiService;

    iget-object v0, v0, Lcom/narvii/util/http/ApiService;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p2, Lcom/narvii/model/api/AccountResponse;->account:Lcom/narvii/model/User;

    iget-object v2, v2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "api"

    if-eqz v0, :cond_0

    const-string v0, "105 re-login succeed, updating.."

    .line 1119
    invoke-static {v2, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    invoke-super {p0, p1, p2}, Lcom/narvii/account/AccountResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V

    goto :goto_0

    :cond_0
    const-string p1, "105 re-login succeed, but not same account, just ignore"

    .line 1122
    invoke-static {v2, p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    neg-long p1, p1

    .line 1128
    :goto_1
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$3;->this$0:Lcom/narvii/util/http/ApiService;

    iget-object v0, v0, Lcom/narvii/util/http/ApiService;->resending105:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService$WrappedRequest;

    if-eqz v0, :cond_1

    .line 1129
    iput-wide p1, v0, Lcom/narvii/util/http/ApiService$WrappedRequest;->elapse:J

    const-wide/16 v2, 0x0

    .line 1130
    iput-wide v2, v0, Lcom/narvii/util/http/ApiService$WrappedRequest;->parseElapse:J

    .line 1131
    iput v1, v0, Lcom/narvii/util/http/ApiService$WrappedRequest;->statusCode:I

    const/4 v2, 0x0

    .line 1132
    iput-object v2, v0, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    .line 1133
    iget-object v2, p0, Lcom/narvii/util/http/ApiService$3;->this$0:Lcom/narvii/util/http/ApiService;

    iget-object v2, v2, Lcom/narvii/util/http/ApiService;->queue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_1

    .line 1136
    :cond_1
    sget-boolean p1, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz p1, :cond_2

    .line 1137
    iget-object p1, p0, Lcom/narvii/util/http/ApiService$3;->this$0:Lcom/narvii/util/http/ApiService;

    iget-object p1, p1, Lcom/narvii/util/http/ApiService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "105 re-login succeed, renew sid.."

    invoke-static {p1, p2, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    .line 1139
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :cond_2
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1112
    check-cast p2, Lcom/narvii/model/api/AccountResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/http/ApiService$3;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V

    return-void
.end method
