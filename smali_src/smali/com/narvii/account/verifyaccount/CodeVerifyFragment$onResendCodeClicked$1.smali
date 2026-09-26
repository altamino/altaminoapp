.class public final Lcom/narvii/account/verifyaccount/CodeVerifyFragment$onResendCodeClicked$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->onResendCodeClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
.field final synthetic this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/account/verifyaccount/CodeVerifyFragment;",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$onResendCodeClicked$1;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "+",
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
    const-string v0, "req"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "message"

    .line 8
    .line 9
    .line 10
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string/jumbo v0, "t"

    .line 13
    .line 14
    .line 15
    invoke-static {p6, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$onResendCodeClicked$1;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 24
    move-result p1

    .line 25
    .line 26
    if-nez p1, :cond_0

    .line 27
    return-void

    .line 28
    .line 29
    :cond_0
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$onResendCodeClicked$1;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->access$dismissProgress(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)V

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$onResendCodeClicked$1;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 38
    move-result-object p1

    .line 39
    const/4 p2, 0x1

    .line 40
    .line 41
    .line 42
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 47
    .line 48
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$onResendCodeClicked$1;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 49
    .line 50
    .line 51
    invoke-static {p1}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->access$getBtnResend$p$s-2137646762(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)Landroid/widget/TextView;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    iget-object p2, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$onResendCodeClicked$1;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 58
    move-result-object p2

    .line 59
    .line 60
    .line 61
    const p3, 0x7f060449

    .line 62
    .line 63
    .line 64
    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 65
    move-result p2

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    .line 70
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$onResendCodeClicked$1;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 71
    .line 72
    .line 73
    invoke-static {p1}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->access$getBtnResend$p$s-2137646762(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)Landroid/widget/TextView;

    .line 74
    move-result-object p1

    .line 75
    const/4 p2, 0x0

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 79
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 1
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "req"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$onResendCodeClicked$1;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 14
    move-result p1

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    return-void

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$onResendCodeClicked$1;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->access$dismissProgress(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)V

    .line 23
    .line 24
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$onResendCodeClicked$1;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->access$getIdentityToVerifyType(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)Lcom/narvii/account/verifyaccount/IdentityType;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    instance-of p1, p1, Lcom/narvii/account/verifyaccount/PhoneIdentity;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$onResendCodeClicked$1;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->access$getPhone(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    iget-object p2, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$onResendCodeClicked$1;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 43
    .line 44
    .line 45
    invoke-static {p2}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->access$getVerifyCodeHelper$p$s-2137646762(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;

    .line 46
    move-result-object p2

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, p1}, Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;->updatePhoneVerifyTime(Ljava/lang/String;)V

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_1
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$onResendCodeClicked$1;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 53
    .line 54
    .line 55
    invoke-static {p1}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->access$getEmail(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    iget-object p2, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$onResendCodeClicked$1;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 61
    .line 62
    .line 63
    invoke-static {p2}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->access$getVerifyCodeHelper$p$s-2137646762(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;

    .line 64
    move-result-object p2

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, p1}, Lcom/narvii/account/verifyaccount/VerifyCodeSharedPrefsHelper;->updateEmailVerifyTime(Ljava/lang/String;)V

    .line 68
    .line 69
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$onResendCodeClicked$1;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/narvii/account/CodeVerifyBaseFragment;->resetTimerCount()V

    .line 73
    .line 74
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$onResendCodeClicked$1;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 75
    .line 76
    .line 77
    invoke-static {p1}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->access$getCodeEditView$p$s-2137646762(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)Lcom/narvii/widget/CodeEditView;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/narvii/widget/CodeEditView;->clearCode()V

    .line 82
    .line 83
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$onResendCodeClicked$1;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 84
    .line 85
    .line 86
    invoke-static {p1}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->access$getCodeEditView$p$s-2137646762(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)Lcom/narvii/widget/CodeEditView;

    .line 87
    move-result-object p1

    .line 88
    const/4 p2, 0x0

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p2}, Lcom/narvii/widget/CodeEditView;->isError(Z)V

    .line 92
    .line 93
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/CodeVerifyFragment$onResendCodeClicked$1;->this$0:Lcom/narvii/account/verifyaccount/CodeVerifyFragment;

    .line 94
    .line 95
    .line 96
    invoke-static {p1}, Lcom/narvii/account/verifyaccount/CodeVerifyFragment;->access$getCodeVerificationError$p$s-2137646762(Lcom/narvii/account/verifyaccount/CodeVerifyFragment;)Landroid/widget/TextView;

    .line 97
    move-result-object p1

    .line 98
    .line 99
    const/16 p2, 0x8

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 103
    return-void
.end method
