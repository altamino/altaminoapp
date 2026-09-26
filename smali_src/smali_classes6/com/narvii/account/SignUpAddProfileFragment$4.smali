.class Lcom/narvii/account/SignUpAddProfileFragment$4;
.super Lcom/narvii/account/AccountResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$4;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/account/AccountResponseListener;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
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
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$4;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/account/AccountBaseFragment;->dismissProgress()V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$4;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    .line 8
    const/4 p3, 0x0

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p3}, Lcom/narvii/account/SignUpAddProfileFragment;->E(Lcom/narvii/account/SignUpAddProfileFragment;Lcom/narvii/util/http/ApiRequest;)V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$4;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/narvii/account/SignUpAddProfileFragment;->G(Lcom/narvii/account/SignUpAddProfileFragment;)V

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$4;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    .line 19
    const/4 p5, 0x0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p5, p2, p4}, Lcom/narvii/account/SignUpAddProfileFragment;->finishWithResult(ZILjava/lang/String;)V

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$4;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    const p6, 0x7f0a0079

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p5}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$4;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    .line 41
    .line 42
    const-string p6, "logging"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p6}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    check-cast p1, Lcom/narvii/util/logging/LoggingService;

    .line 49
    .line 50
    const/16 p6, 0x8

    .line 51
    .line 52
    new-array p6, p6, [Ljava/lang/Object;

    .line 53
    .line 54
    const-string v0, "email"

    .line 55
    .line 56
    aput-object v0, p6, p5

    .line 57
    .line 58
    iget-object p5, p0, Lcom/narvii/account/SignUpAddProfileFragment$4;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    .line 59
    .line 60
    .line 61
    invoke-static {p5}, Lcom/narvii/account/SignUpAddProfileFragment;->z(Lcom/narvii/account/SignUpAddProfileFragment;)Ljava/lang/String;

    .line 62
    move-result-object p5

    .line 63
    const/4 v0, 0x1

    .line 64
    .line 65
    aput-object p5, p6, v0

    .line 66
    const/4 p5, 0x2

    .line 67
    .line 68
    const-string v0, "reason"

    .line 69
    .line 70
    aput-object v0, p6, p5

    .line 71
    .line 72
    if-nez p2, :cond_0

    .line 73
    .line 74
    const-string p3, "NetworkError"

    .line 75
    :cond_0
    const/4 p5, 0x3

    .line 76
    .line 77
    aput-object p3, p6, p5

    .line 78
    const/4 p3, 0x4

    .line 79
    .line 80
    const-string p5, "code"

    .line 81
    .line 82
    aput-object p5, p6, p3

    .line 83
    const/4 p3, 0x5

    .line 84
    .line 85
    .line 86
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    move-result-object p2

    .line 88
    .line 89
    aput-object p2, p6, p3

    .line 90
    const/4 p2, 0x6

    .line 91
    .line 92
    const-string p3, "message"

    .line 93
    .line 94
    aput-object p3, p6, p2

    .line 95
    const/4 p2, 0x7

    .line 96
    .line 97
    aput-object p4, p6, p2

    .line 98
    .line 99
    const-string p2, "AccountError"

    .line 100
    .line 101
    .line 102
    invoke-interface {p1, p2, p6}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/account/AccountResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V

    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$4;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    .line 3
    invoke-static {p1}, Lcom/narvii/account/SignUpAddProfileFragment;->A(Lcom/narvii/account/SignUpAddProfileFragment;)Lcom/narvii/services/EventLogProfileService;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/narvii/services/EventLogProfileService;->needsCompleteSignupBirthday:Z

    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$4;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    .line 4
    iget-boolean p2, p2, Lcom/narvii/model/api/AccountResponse;->newAccount:Z

    invoke-static {p1, p2}, Lcom/narvii/account/SignUpAddProfileFragment;->D(Lcom/narvii/account/SignUpAddProfileFragment;Z)V

    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$4;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    const/4 p2, 0x0

    .line 5
    invoke-static {p1, p2}, Lcom/narvii/account/SignUpAddProfileFragment;->E(Lcom/narvii/account/SignUpAddProfileFragment;Lcom/narvii/util/http/ApiRequest;)V

    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$4;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    .line 6
    invoke-static {p1}, Lcom/narvii/account/SignUpAddProfileFragment;->z(Lcom/narvii/account/SignUpAddProfileFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$4;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    .line 7
    invoke-static {p1}, Lcom/narvii/account/SignUpAddProfileFragment;->z(Lcom/narvii/account/SignUpAddProfileFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/account/liveramp/LiveRampHelper;->setLRUserEmail(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/narvii/account/SignUpAddProfileFragment$4;->this$0:Lcom/narvii/account/SignUpAddProfileFragment;

    .line 8
    invoke-static {p1}, Lcom/narvii/account/SignUpAddProfileFragment;->F(Lcom/narvii/account/SignUpAddProfileFragment;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/narvii/account/SignUpAddProfileFragment$4;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V

    return-void
.end method
