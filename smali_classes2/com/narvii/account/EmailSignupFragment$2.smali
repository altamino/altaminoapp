.class Lcom/narvii/account/EmailSignupFragment$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "EmailSignupFragment.java"


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

    .line 150
    iput-object p1, p0, Lcom/narvii/account/EmailSignupFragment$2;->this$0:Lcom/narvii/account/EmailSignupFragment;

    iput-object p3, p0, Lcom/narvii/account/EmailSignupFragment$2;->val$em:Ljava/lang/String;

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

    .line 161
    iget-object p3, p0, Lcom/narvii/account/EmailSignupFragment$2;->this$0:Lcom/narvii/account/EmailSignupFragment;

    invoke-virtual {p3}, Lcom/narvii/account/AccountBaseFragment;->dismissProgress()V

    .line 162
    iget-object p3, p0, Lcom/narvii/account/EmailSignupFragment$2;->this$0:Lcom/narvii/account/EmailSignupFragment;

    const/4 p5, 0x0

    invoke-virtual {p3, p5, p2, p4, p1}, Lcom/narvii/account/AccountBaseFragment;->finishWithResult(ZILjava/lang/String;Lcom/narvii/util/http/ApiRequest;)V

    .line 163
    iget-object p1, p0, Lcom/narvii/account/EmailSignupFragment$2;->this$0:Lcom/narvii/account/EmailSignupFragment;

    invoke-static {p1}, Lcom/narvii/account/EmailSignupFragment;->access$000(Lcom/narvii/account/EmailSignupFragment;)Lcom/narvii/widget/AutoCompleteEmailView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 164
    iget-object p1, p0, Lcom/narvii/account/EmailSignupFragment$2;->this$0:Lcom/narvii/account/EmailSignupFragment;

    const/4 p3, 0x0

    invoke-static {p1, p3}, Lcom/narvii/account/EmailSignupFragment;->access$202(Lcom/narvii/account/EmailSignupFragment;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;

    const/16 p1, 0xd7

    if-ne p2, p1, :cond_0

    const-string p3, "EmailExisted"

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    const-string p3, "NetworkError"

    .line 172
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/account/EmailSignupFragment$2;->this$0:Lcom/narvii/account/EmailSignupFragment;

    const-string p6, "logging"

    invoke-virtual {p1, p6}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/logging/LoggingService;

    const/16 p6, 0x8

    new-array p6, p6, [Ljava/lang/Object;

    const-string v0, "email"

    aput-object v0, p6, p5

    const/4 p5, 0x1

    .line 173
    iget-object v0, p0, Lcom/narvii/account/EmailSignupFragment$2;->val$em:Ljava/lang/String;

    aput-object v0, p6, p5

    const/4 p5, 0x2

    const-string v0, "code"

    aput-object v0, p6, p5

    const/4 p5, 0x3

    .line 175
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p6, p5

    const/4 p2, 0x4

    const-string p5, "reason"

    aput-object p5, p6, p2

    const/4 p2, 0x5

    aput-object p3, p6, p2

    const/4 p2, 0x6

    const-string p3, "message"

    aput-object p3, p6, p2

    const/4 p2, 0x7

    aput-object p4, p6, p2

    const-string p2, "AccountError"

    .line 173
    invoke-interface {p1, p2, p6}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 153
    iget-object p1, p0, Lcom/narvii/account/EmailSignupFragment$2;->this$0:Lcom/narvii/account/EmailSignupFragment;

    invoke-virtual {p1}, Lcom/narvii/account/AccountBaseFragment;->dismissProgress()V

    .line 154
    iget-object p1, p0, Lcom/narvii/account/EmailSignupFragment$2;->this$0:Lcom/narvii/account/EmailSignupFragment;

    invoke-static {p1}, Lcom/narvii/account/EmailSignupFragment;->access$100(Lcom/narvii/account/EmailSignupFragment;)V

    .line 155
    iget-object p1, p0, Lcom/narvii/account/EmailSignupFragment$2;->this$0:Lcom/narvii/account/EmailSignupFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/account/EmailSignupFragment;->access$202(Lcom/narvii/account/EmailSignupFragment;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;

    return-void
.end method
