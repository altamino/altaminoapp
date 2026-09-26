.class Lcom/narvii/account/EmailSignupFragment$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/EmailSignupFragment$2;->this$0:Lcom/narvii/account/EmailSignupFragment;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/account/EmailSignupFragment$2;->val$em:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 8
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

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/account/EmailSignupFragment$2;->this$0:Lcom/narvii/account/EmailSignupFragment;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/account/AccountBaseFragment;->dismissProgress()V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/account/EmailSignupFragment$2;->this$0:Lcom/narvii/account/EmailSignupFragment;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 14
    move-result-object p1

    .line 15
    const/4 p3, 0x1

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p4, p3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/account/EmailSignupFragment$2;->this$0:Lcom/narvii/account/EmailSignupFragment;

    .line 25
    .line 26
    const-string p5, "logging"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p5}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    check-cast p1, Lcom/narvii/util/logging/LoggingService;

    .line 33
    .line 34
    const/16 p5, 0x8

    .line 35
    .line 36
    new-array p5, p5, [Ljava/lang/Object;

    .line 37
    const/4 p6, 0x0

    .line 38
    .line 39
    const-string v0, "email"

    .line 40
    .line 41
    aput-object v0, p5, p6

    .line 42
    .line 43
    iget-object p6, p0, Lcom/narvii/account/EmailSignupFragment$2;->val$em:Ljava/lang/String;

    .line 44
    .line 45
    aput-object p6, p5, p3

    .line 46
    const/4 p3, 0x2

    .line 47
    .line 48
    const-string p6, "reason"

    .line 49
    .line 50
    aput-object p6, p5, p3

    .line 51
    .line 52
    if-nez p2, :cond_0

    .line 53
    .line 54
    const-string p3, "NetworkError"

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/4 p3, 0x0

    .line 57
    :goto_0
    const/4 p6, 0x3

    .line 58
    .line 59
    aput-object p3, p5, p6

    .line 60
    const/4 p3, 0x4

    .line 61
    .line 62
    const-string p6, "code"

    .line 63
    .line 64
    aput-object p6, p5, p3

    .line 65
    const/4 p3, 0x5

    .line 66
    .line 67
    .line 68
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object p2

    .line 70
    .line 71
    aput-object p2, p5, p3

    .line 72
    const/4 p2, 0x6

    .line 73
    .line 74
    const-string p3, "message"

    .line 75
    .line 76
    aput-object p3, p5, p2

    .line 77
    const/4 p2, 0x7

    .line 78
    .line 79
    aput-object p4, p5, p2

    .line 80
    .line 81
    const-string p2, "AccountError"

    .line 82
    .line 83
    .line 84
    invoke-interface {p1, p2, p5}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/account/EmailSignupFragment$2;->this$0:Lcom/narvii/account/EmailSignupFragment;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/narvii/account/EmailSignupFragment;->verifyCodeHelper:Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;

    .line 8
    .line 9
    iget-object p2, p0, Lcom/narvii/account/EmailSignupFragment$2;->val$em:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;->updateEmailVerifyTime(Ljava/lang/String;)V

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/account/EmailSignupFragment$2;->this$0:Lcom/narvii/account/EmailSignupFragment;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/account/AccountBaseFragment;->dismissProgress()V

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/account/EmailSignupFragment$2;->this$0:Lcom/narvii/account/EmailSignupFragment;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/narvii/account/EmailSignupFragment;->x(Lcom/narvii/account/EmailSignupFragment;)V

    .line 23
    return-void
.end method
