.class Lcom/narvii/account/SignUpSetPasswordFragment$3;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SignUpSetPasswordFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/SignUpSetPasswordFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/SignUpSetPasswordFragment;Ljava/lang/Class;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/narvii/account/SignUpSetPasswordFragment$3;->this$0:Lcom/narvii/account/SignUpSetPasswordFragment;

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

    .line 119
    iget-object p1, p0, Lcom/narvii/account/SignUpSetPasswordFragment$3;->this$0:Lcom/narvii/account/SignUpSetPasswordFragment;

    invoke-virtual {p1}, Lcom/narvii/account/AccountBaseFragment;->dismissProgress()V

    .line 120
    iget-object p1, p0, Lcom/narvii/account/SignUpSetPasswordFragment$3;->this$0:Lcom/narvii/account/SignUpSetPasswordFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p1, p4, p3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 122
    iget-object p1, p0, Lcom/narvii/account/SignUpSetPasswordFragment$3;->this$0:Lcom/narvii/account/SignUpSetPasswordFragment;

    const-string p5, "logging"

    invoke-virtual {p1, p5}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/logging/LoggingService;

    const/4 p5, 0x6

    new-array p5, p5, [Ljava/lang/Object;

    const-string p6, "code"

    aput-object p6, p5, p3

    .line 124
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p6, 0x1

    aput-object p3, p5, p6

    const/4 p3, 0x2

    const-string p6, "reason"

    aput-object p6, p5, p3

    if-nez p2, :cond_0

    const-string p2, "NetworkError"

    goto :goto_0

    :cond_0
    const-string p2, "InvalidPassword"

    :goto_0
    const/4 p3, 0x3

    aput-object p2, p5, p3

    const/4 p2, 0x4

    const-string p3, "message"

    aput-object p3, p5, p2

    const/4 p2, 0x5

    aput-object p4, p5, p2

    const-string p2, "AccountError"

    .line 123
    invoke-interface {p1, p2, p5}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 112
    iget-object p1, p0, Lcom/narvii/account/SignUpSetPasswordFragment$3;->this$0:Lcom/narvii/account/SignUpSetPasswordFragment;

    invoke-virtual {p1}, Lcom/narvii/account/AccountBaseFragment;->dismissProgress()V

    .line 113
    iget-object p1, p0, Lcom/narvii/account/SignUpSetPasswordFragment$3;->this$0:Lcom/narvii/account/SignUpSetPasswordFragment;

    invoke-static {p1}, Lcom/narvii/account/SignUpSetPasswordFragment;->access$100(Lcom/narvii/account/SignUpSetPasswordFragment;)V

    return-void
.end method
