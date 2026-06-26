.class Lcom/narvii/account/SignUpAddProfileFragment$10;
.super Lcom/narvii/account/AccountResponseListener;
.source "SignUpAddProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/account/SignUpAddProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/SignUpAddProfileFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/SignUpAddProfileFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 536
    iput-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$10;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    invoke-direct {p0, p2}, Lcom/narvii/account/AccountResponseListener;-><init>(Lcom/narvii/app/NVContext;)V

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

    .line 549
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$10;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/account/AccountBaseFragment;->dismissProgress()V

    .line 550
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$10;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    const/4 p3, 0x0

    iput-object p3, p1, Lcom/narvii/account/SignUpAddProfileFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 551
    invoke-static {p1}, Lcom/narvii/account/SignUpAddProfileFragment;->access$000(Lcom/narvii/account/SignUpAddProfileFragment;)V

    .line 552
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$10;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    const/4 p5, 0x0

    invoke-virtual {p1, p5, p2, p4}, Lcom/narvii/account/SignUpAddProfileFragment;->finishWithResult(ZILjava/lang/String;)V

    .line 553
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$10;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const p6, 0x7f090048

    invoke-virtual {p1, p6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/view/View;->setVisibility(I)V

    .line 555
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$10;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    const-string p6, "logging"

    invoke-virtual {p1, p6}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/logging/LoggingService;

    const/16 p6, 0x8

    new-array p6, p6, [Ljava/lang/Object;

    const-string v0, "email"

    aput-object v0, p6, p5

    .line 556
    iget-object p5, p0, Lcom/narvii/account/SignUpAddProfileFragment$10;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    iget-object p5, p5, Lcom/narvii/account/SignUpAddProfileFragment;->email:Ljava/lang/String;

    const/4 v0, 0x1

    aput-object p5, p6, v0

    const/4 p5, 0x2

    const-string v0, "reason"

    aput-object v0, p6, p5

    if-nez p2, :cond_0

    const-string p3, "NetworkError"

    :cond_0
    const/4 p5, 0x3

    aput-object p3, p6, p5

    const/4 p3, 0x4

    const-string p5, "code"

    aput-object p5, p6, p3

    const/4 p3, 0x5

    .line 559
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p6, p3

    const/4 p2, 0x6

    const-string p3, "message"

    aput-object p3, p6, p2

    const/4 p2, 0x7

    aput-object p4, p6, p2

    const-string p2, "AccountError"

    .line 556
    invoke-interface {p1, p2, p6}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 539
    invoke-super {p0, p1, p2}, Lcom/narvii/account/AccountResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V

    .line 540
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$10;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    iget-boolean p2, p2, Lcom/narvii/model/api/AccountResponse;->newAccount:Z

    iput-boolean p2, p1, Lcom/narvii/account/SignUpAddProfileFragment;->newAccount:Z

    const/4 p2, 0x0

    .line 541
    iput-object p2, p1, Lcom/narvii/account/SignUpAddProfileFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 542
    invoke-static {p1}, Lcom/narvii/account/SignUpAddProfileFragment;->access$100(Lcom/narvii/account/SignUpAddProfileFragment;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 536
    check-cast p2, Lcom/narvii/model/api/AccountResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/account/SignUpAddProfileFragment$10;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V

    return-void
.end method
