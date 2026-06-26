.class Lcom/narvii/account/EmailSignupFragment$4;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "EmailSignupFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/EmailSignupFragment;->requestEmailCode(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/EmailSignupFragment;

.field final synthetic val$em:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/account/EmailSignupFragment;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/narvii/account/EmailSignupFragment$4;->this$0:Lcom/narvii/account/EmailSignupFragment;

    iput-object p3, p0, Lcom/narvii/account/EmailSignupFragment$4;->val$em:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 1
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

    .line 299
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 300
    iget-object p1, p0, Lcom/narvii/account/EmailSignupFragment$4;->this$0:Lcom/narvii/account/EmailSignupFragment;

    invoke-virtual {p1}, Lcom/narvii/account/AccountBaseFragment;->dismissProgress()V

    .line 301
    iget-object p1, p0, Lcom/narvii/account/EmailSignupFragment$4;->this$0:Lcom/narvii/account/EmailSignupFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p3, 0x1

    invoke-static {p1, p4, p3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 303
    iget-object p1, p0, Lcom/narvii/account/EmailSignupFragment$4;->this$0:Lcom/narvii/account/EmailSignupFragment;

    const-string p5, "logging"

    invoke-virtual {p1, p5}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/logging/LoggingService;

    const/16 p5, 0x8

    new-array p5, p5, [Ljava/lang/Object;

    const/4 p6, 0x0

    const-string v0, "email"

    aput-object v0, p5, p6

    .line 304
    iget-object p6, p0, Lcom/narvii/account/EmailSignupFragment$4;->val$em:Ljava/lang/String;

    aput-object p6, p5, p3

    const/4 p3, 0x2

    const-string p6, "reason"

    aput-object p6, p5, p3

    if-nez p2, :cond_0

    const-string p3, "NetworkError"

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const/4 p6, 0x3

    aput-object p3, p5, p6

    const/4 p3, 0x4

    const-string p6, "code"

    aput-object p6, p5, p3

    const/4 p3, 0x5

    .line 307
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p5, p3

    const/4 p2, 0x6

    const-string p3, "message"

    aput-object p3, p5, p2

    const/4 p2, 0x7

    aput-object p4, p5, p2

    const-string p2, "AccountError"

    .line 304
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

    .line 291
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 292
    iget-object p1, p0, Lcom/narvii/account/EmailSignupFragment$4;->this$0:Lcom/narvii/account/EmailSignupFragment;

    iget-object p1, p1, Lcom/narvii/account/EmailSignupFragment;->verifyCodeHelper:Lcom/narvii/account/VerifyCodeSharedPrefsHelper;

    iget-object p2, p0, Lcom/narvii/account/EmailSignupFragment$4;->val$em:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/narvii/account/VerifyCodeSharedPrefsHelper;->updateEmailVerifyTime(Ljava/lang/String;)V

    .line 293
    iget-object p1, p0, Lcom/narvii/account/EmailSignupFragment$4;->this$0:Lcom/narvii/account/EmailSignupFragment;

    invoke-virtual {p1}, Lcom/narvii/account/AccountBaseFragment;->dismissProgress()V

    .line 294
    iget-object p1, p0, Lcom/narvii/account/EmailSignupFragment$4;->this$0:Lcom/narvii/account/EmailSignupFragment;

    invoke-static {p1}, Lcom/narvii/account/EmailSignupFragment;->access$300(Lcom/narvii/account/EmailSignupFragment;)V

    return-void
.end method
