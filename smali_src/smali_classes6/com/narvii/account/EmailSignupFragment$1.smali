.class Lcom/narvii/account/EmailSignupFragment$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/EmailSignupFragment;->checkLegality(Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/narvii/account/EmailSignupFragment$1;->this$0:Lcom/narvii/account/EmailSignupFragment;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/account/EmailSignupFragment$1;->val$em:Ljava/lang/String;

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
    iget-object p3, p0, Lcom/narvii/account/EmailSignupFragment$1;->this$0:Lcom/narvii/account/EmailSignupFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p3}, Lcom/narvii/account/AccountBaseFragment;->dismissProgress()V

    .line 6
    .line 7
    iget-object p3, p0, Lcom/narvii/account/EmailSignupFragment$1;->this$0:Lcom/narvii/account/EmailSignupFragment;

    .line 8
    const/4 p5, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p3, p5, p2, p4, p1}, Lcom/narvii/account/AccountBaseFragment;->finishWithResult(ZILjava/lang/String;Lcom/narvii/util/http/ApiRequest;)V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/account/EmailSignupFragment$1;->this$0:Lcom/narvii/account/EmailSignupFragment;

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/narvii/account/EmailSignupFragment;->v(Lcom/narvii/account/EmailSignupFragment;)Lcom/narvii/widget/AutoCompleteEmailView;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/account/EmailSignupFragment$1;->this$0:Lcom/narvii/account/EmailSignupFragment;

    .line 23
    const/4 p3, 0x0

    .line 24
    .line 25
    .line 26
    invoke-static {p1, p3}, Lcom/narvii/account/EmailSignupFragment;->w(Lcom/narvii/account/EmailSignupFragment;Lcom/narvii/util/http/ApiRequest;)V

    .line 27
    .line 28
    const/16 p1, 0xd7

    .line 29
    .line 30
    if-ne p2, p1, :cond_0

    .line 31
    .line 32
    const-string p3, "EmailExisted"

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_0
    if-nez p2, :cond_1

    .line 36
    .line 37
    const-string p3, "NetworkError"

    .line 38
    .line 39
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/account/EmailSignupFragment$1;->this$0:Lcom/narvii/account/EmailSignupFragment;

    .line 40
    .line 41
    const-string p6, "logging"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p6}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    check-cast p1, Lcom/narvii/util/logging/LoggingService;

    .line 48
    .line 49
    const/16 p6, 0x8

    .line 50
    .line 51
    new-array p6, p6, [Ljava/lang/Object;

    .line 52
    .line 53
    const-string v0, "email"

    .line 54
    .line 55
    aput-object v0, p6, p5

    .line 56
    const/4 p5, 0x1

    .line 57
    .line 58
    iget-object v0, p0, Lcom/narvii/account/EmailSignupFragment$1;->val$em:Ljava/lang/String;

    .line 59
    .line 60
    aput-object v0, p6, p5

    .line 61
    const/4 p5, 0x2

    .line 62
    .line 63
    const-string v0, "code"

    .line 64
    .line 65
    aput-object v0, p6, p5

    .line 66
    const/4 p5, 0x3

    .line 67
    .line 68
    .line 69
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    move-result-object p2

    .line 71
    .line 72
    aput-object p2, p6, p5

    .line 73
    const/4 p2, 0x4

    .line 74
    .line 75
    const-string p5, "reason"

    .line 76
    .line 77
    aput-object p5, p6, p2

    .line 78
    const/4 p2, 0x5

    .line 79
    .line 80
    aput-object p3, p6, p2

    .line 81
    const/4 p2, 0x6

    .line 82
    .line 83
    const-string p3, "message"

    .line 84
    .line 85
    aput-object p3, p6, p2

    .line 86
    const/4 p2, 0x7

    .line 87
    .line 88
    aput-object p4, p6, p2

    .line 89
    .line 90
    const-string p2, "AccountError"

    .line 91
    .line 92
    .line 93
    invoke-interface {p1, p2, p6}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/account/EmailSignupFragment$1;->this$0:Lcom/narvii/account/EmailSignupFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/account/AccountBaseFragment;->dismissProgress()V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/account/EmailSignupFragment$1;->this$0:Lcom/narvii/account/EmailSignupFragment;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/narvii/account/EmailSignupFragment;->y(Lcom/narvii/account/EmailSignupFragment;)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/account/EmailSignupFragment$1;->this$0:Lcom/narvii/account/EmailSignupFragment;

    .line 13
    const/4 p2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p2}, Lcom/narvii/account/EmailSignupFragment;->w(Lcom/narvii/account/EmailSignupFragment;Lcom/narvii/util/http/ApiRequest;)V

    .line 17
    return-void
.end method
