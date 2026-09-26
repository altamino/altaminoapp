.class Lcom/narvii/util/http/ApiService$4;
.super Lcom/narvii/account/AccountResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/http/ApiService;->createResendPublicKeyRequest(Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/http/ApiService;


# direct methods
.method constructor <init>(Lcom/narvii/util/http/ApiService;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/http/ApiService$4;->this$0:Lcom/narvii/util/http/ApiService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/account/AccountResponseListener;-><init>(Lcom/narvii/app/NVContext;)V

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
    iget-object p1, p0, Lcom/narvii/util/http/ApiService$4;->this$0:Lcom/narvii/util/http/ApiService;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/util/http/ApiService;->j(Lcom/narvii/util/http/ApiService;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/narvii/util/http/ApiService;->m()[Ljava/lang/Integer;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    iget p2, p5, Lcom/narvii/model/api/ApiResponse;->statusCode:I

    .line 16
    .line 17
    .line 18
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 23
    move-result p1

    .line 24
    .line 25
    iget p2, p5, Lcom/narvii/model/api/ApiResponse;->statusCode:I

    .line 26
    .line 27
    const/16 p3, 0x2afc

    .line 28
    .line 29
    if-eq p2, p3, :cond_0

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    :cond_0
    iget-object p2, p0, Lcom/narvii/util/http/ApiService$4;->this$0:Lcom/narvii/util/http/ApiService;

    .line 34
    .line 35
    iget-object p2, p2, Lcom/narvii/util/http/ApiService;->context:Lcom/narvii/app/NVContext;

    .line 36
    .line 37
    .line 38
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 39
    move-result-object p2

    .line 40
    const/4 p3, 0x1

    .line 41
    .line 42
    .line 43
    invoke-static {p2, p4, p3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 44
    move-result-object p2

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/narvii/util/NVToast;->show()V

    .line 48
    .line 49
    :cond_1
    if-eqz p1, :cond_2

    .line 50
    .line 51
    iget-object p1, p0, Lcom/narvii/util/http/ApiService$4;->this$0:Lcom/narvii/util/http/ApiService;

    .line 52
    .line 53
    iget-object p1, p1, Lcom/narvii/util/http/ApiService;->account:Lcom/narvii/account/AccountService;

    .line 54
    const/4 p2, 0x0

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Lcom/narvii/account/AccountService;->logout(Z)V

    .line 58
    .line 59
    :cond_2
    iget-object p1, p0, Lcom/narvii/util/http/ApiService$4;->this$0:Lcom/narvii/util/http/ApiService;

    .line 60
    .line 61
    .line 62
    invoke-static {p1}, Lcom/narvii/util/http/ApiService;->g(Lcom/narvii/util/http/ApiService;)V

    .line 63
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
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    neg-long p1, p1

    :goto_0
    iget-object v0, p0, Lcom/narvii/util/http/ApiService$4;->this$0:Lcom/narvii/util/http/ApiService;

    .line 3
    iget-object v0, v0, Lcom/narvii/util/http/ApiService;->resendingPublicKey:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService$WrappedRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    iput-wide p1, v0, Lcom/narvii/util/http/ApiService$WrappedRequest;->elapse:J

    const-wide/16 v2, 0x0

    .line 5
    iput-wide v2, v0, Lcom/narvii/util/http/ApiService$WrappedRequest;->parseElapse:J

    .line 6
    iput v1, v0, Lcom/narvii/util/http/ApiService$WrappedRequest;->statusCode:I

    const/4 v1, 0x0

    .line 7
    iput-object v1, v0, Lcom/narvii/util/http/ApiService$WrappedRequest;->error:Ljava/lang/Throwable;

    iget-object v1, p0, Lcom/narvii/util/http/ApiService$4;->this$0:Lcom/narvii/util/http/ApiService;

    .line 8
    iget-object v1, v1, Lcom/narvii/util/http/ApiService;->queue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0

    .line 9
    :cond_0
    sget-boolean p1, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/util/http/ApiService$4;->this$0:Lcom/narvii/util/http/ApiService;

    .line 10
    iget-object p1, p1, Lcom/narvii/util/http/ApiService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "resend public key succeed"

    invoke-static {p1, p2, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

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

    .line 1
    check-cast p2, Lcom/narvii/model/api/AccountResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/http/ApiService$4;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V

    return-void
.end method
