.class Lcom/narvii/util/http/ApiService$3;
.super Lcom/narvii/account/AccountResponseListener;
.source "SourceFile"


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

.field final synthetic val$keychain:Lcom/narvii/account/AccountKeychain;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/util/http/ApiService;Lcom/narvii/app/NVContext;Lcom/narvii/account/AccountKeychain;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/http/ApiService$3;->this$0:Lcom/narvii/util/http/ApiService;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/util/http/ApiService$3;->val$keychain:Lcom/narvii/account/AccountKeychain;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/narvii/util/http/ApiService$3;->val$userId:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2}, Lcom/narvii/account/AccountResponseListener;-><init>(Lcom/narvii/app/NVContext;)V

    .line 10
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
    iget-object p1, p0, Lcom/narvii/util/http/ApiService$3;->val$userId:Ljava/lang/String;

    .line 3
    .line 4
    iget-object p3, p0, Lcom/narvii/util/http/ApiService$3;->this$0:Lcom/narvii/util/http/ApiService;

    .line 5
    .line 6
    iget-object p3, p3, Lcom/narvii/util/http/ApiService;->account:Lcom/narvii/account/AccountService;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 10
    move-result-object p3

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    move-result p1

    .line 15
    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    div-int/lit8 p2, p2, 0x64

    .line 19
    const/4 p1, 0x2

    .line 20
    .line 21
    const-string p3, "api"

    .line 22
    const/4 p4, 0x0

    .line 23
    .line 24
    if-ne p2, p1, :cond_1

    .line 25
    .line 26
    const-string p1, "105 re-login failed, logout..."

    .line 27
    .line 28
    .line 29
    invoke-static {p3, p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    sget-boolean p1, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Lcom/narvii/util/http/ApiService$3;->this$0:Lcom/narvii/util/http/ApiService;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/narvii/util/http/ApiService;->context:Lcom/narvii/app/NVContext;

    .line 38
    .line 39
    .line 40
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    const-string p2, "105 re-login fail, logout..."

    .line 44
    .line 45
    .line 46
    invoke-static {p1, p2, p4}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 51
    .line 52
    :cond_0
    iget-object p1, p0, Lcom/narvii/util/http/ApiService$3;->this$0:Lcom/narvii/util/http/ApiService;

    .line 53
    .line 54
    iget-object p1, p1, Lcom/narvii/util/http/ApiService;->account:Lcom/narvii/account/AccountService;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p4}, Lcom/narvii/account/AccountService;->logout(Z)V

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_1
    const-string p1, "105 re-login network failed"

    .line 61
    .line 62
    .line 63
    invoke-static {p3, p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    sget-boolean p1, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 66
    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    iget-object p1, p0, Lcom/narvii/util/http/ApiService$3;->this$0:Lcom/narvii/util/http/ApiService;

    .line 70
    .line 71
    iget-object p1, p1, Lcom/narvii/util/http/ApiService;->context:Lcom/narvii/app/NVContext;

    .line 72
    .line 73
    .line 74
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    const-string p2, "105 re-login network fail"

    .line 78
    .line 79
    .line 80
    invoke-static {p1, p2, p4}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 85
    .line 86
    :cond_2
    :goto_0
    new-instance p1, Lcom/narvii/model/api/ApiResponse;

    .line 87
    .line 88
    .line 89
    invoke-direct {p1}, Lcom/narvii/model/api/ApiResponse;-><init>()V

    .line 90
    .line 91
    :goto_1
    iget-object p2, p0, Lcom/narvii/util/http/ApiService$3;->this$0:Lcom/narvii/util/http/ApiService;

    .line 92
    .line 93
    iget-object p2, p2, Lcom/narvii/util/http/ApiService;->resending105:Ljava/util/LinkedList;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 97
    move-result-object p2

    .line 98
    .line 99
    check-cast p2, Lcom/narvii/util/http/ApiService$WrappedRequest;

    .line 100
    .line 101
    if-eqz p2, :cond_3

    .line 102
    .line 103
    iget-object p3, p2, Lcom/narvii/util/http/ApiService$WrappedRequest;->resend105Response:Lcom/narvii/model/api/ApiResponse;

    .line 104
    .line 105
    iput-object p1, p2, Lcom/narvii/util/http/ApiService$WrappedRequest;->resend105Response:Lcom/narvii/model/api/ApiResponse;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, p3}, Lcom/narvii/util/http/ApiService$WrappedRequest;->deliverResponse(Lcom/narvii/model/api/ApiResponse;)V

    .line 109
    goto :goto_1

    .line 110
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

    .line 2
    iget-object v0, p2, Lcom/narvii/model/api/AccountResponse;->sid:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    iget-object v0, p0, Lcom/narvii/util/http/ApiService$3;->this$0:Lcom/narvii/util/http/ApiService;

    .line 3
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

    .line 4
    invoke-static {v2, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/narvii/util/http/ApiService$3;->val$keychain:Lcom/narvii/account/AccountKeychain;

    .line 5
    iget-object v0, v0, Lcom/narvii/account/AccountKeychain;->email:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/account/liveramp/LiveRampHelper;->setLRUserEmail(Ljava/lang/String;)V

    .line 6
    invoke-super {p0, p1, p2}, Lcom/narvii/account/AccountResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V

    goto :goto_0

    :cond_0
    const-string p1, "105 re-login succeed, but not same account, just ignore"

    .line 7
    invoke-static {v2, p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    neg-long p1, p1

    :goto_1
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$3;->this$0:Lcom/narvii/util/http/ApiService;

    .line 9
    iget-object v0, v0, Lcom/narvii/util/http/ApiService;->resending105:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService$WrappedRequest;

    if-eqz v0, :cond_1

    .line 10
    iput-wide p1, v0, Lcom/narvii/util/http/ApiService$WrappedRequest;->elapse:J

    const-wide/16 v2, 0x0

    .line 11
    iput-wide v2, v0, Lcom/narvii/util/http/ApiService$WrappedRequest;->parseElapse:J

    .line 12
    iput v1, v0, Lcom/narvii/util/http/ApiService$WrappedRequest;->statusCode:I

    const/4 v2, 0x0

    .line 13
    iput-object v2, v0, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    iget-object v2, p0, Lcom/narvii/util/http/ApiService$3;->this$0:Lcom/narvii/util/http/ApiService;

    .line 14
    iget-object v2, v2, Lcom/narvii/util/http/ApiService;->queue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_1

    .line 15
    :cond_1
    sget-boolean p1, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/util/http/ApiService$3;->this$0:Lcom/narvii/util/http/ApiService;

    .line 16
    iget-object p1, p1, Lcom/narvii/util/http/ApiService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "105 re-login succeed, renew sid.."

    invoke-static {p1, p2, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    .line 17
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

    .line 1
    check-cast p2, Lcom/narvii/model/api/AccountResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/http/ApiService$3;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V

    return-void
.end method
