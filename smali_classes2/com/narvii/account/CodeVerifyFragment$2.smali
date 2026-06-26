.class Lcom/narvii/account/CodeVerifyFragment$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "CodeVerifyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/CodeVerifyFragment;->onResendCodeClicked()V
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
.field final synthetic this$0:Lcom/narvii/account/CodeVerifyFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/CodeVerifyFragment;Ljava/lang/Class;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/narvii/account/CodeVerifyFragment$2;->this$0:Lcom/narvii/account/CodeVerifyFragment;

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

    .line 228
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 229
    iget-object p1, p0, Lcom/narvii/account/CodeVerifyFragment$2;->this$0:Lcom/narvii/account/CodeVerifyFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 232
    :cond_0
    iget-object p1, p0, Lcom/narvii/account/CodeVerifyFragment$2;->this$0:Lcom/narvii/account/CodeVerifyFragment;

    invoke-virtual {p1}, Lcom/narvii/account/AccountBaseFragment;->dismissProgress()V

    .line 233
    iget-object p1, p0, Lcom/narvii/account/CodeVerifyFragment$2;->this$0:Lcom/narvii/account/CodeVerifyFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 234
    iget-object p1, p0, Lcom/narvii/account/CodeVerifyFragment$2;->this$0:Lcom/narvii/account/CodeVerifyFragment;

    iget-object p2, p1, Lcom/narvii/account/CodeVerifyBaseFragment;->btnResend:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const p3, 0x7f0601db

    invoke-static {p1, p3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 235
    iget-object p1, p0, Lcom/narvii/account/CodeVerifyFragment$2;->this$0:Lcom/narvii/account/CodeVerifyFragment;

    iget-object p1, p1, Lcom/narvii/account/CodeVerifyBaseFragment;->btnResend:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 208
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 209
    iget-object p1, p0, Lcom/narvii/account/CodeVerifyFragment$2;->this$0:Lcom/narvii/account/CodeVerifyFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 212
    :cond_0
    iget-object p1, p0, Lcom/narvii/account/CodeVerifyFragment$2;->this$0:Lcom/narvii/account/CodeVerifyFragment;

    invoke-virtual {p1}, Lcom/narvii/account/AccountBaseFragment;->dismissProgress()V

    .line 213
    iget-object p1, p0, Lcom/narvii/account/CodeVerifyFragment$2;->this$0:Lcom/narvii/account/CodeVerifyFragment;

    invoke-static {p1}, Lcom/narvii/account/CodeVerifyFragment;->access$100(Lcom/narvii/account/CodeVerifyFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 214
    iget-object p1, p0, Lcom/narvii/account/CodeVerifyFragment$2;->this$0:Lcom/narvii/account/CodeVerifyFragment;

    iget-object p2, p1, Lcom/narvii/account/CodeVerifyBaseFragment;->verifyCodeHelper:Lcom/narvii/account/VerifyCodeSharedPrefsHelper;

    invoke-static {p1}, Lcom/narvii/account/CodeVerifyFragment;->access$200(Lcom/narvii/account/CodeVerifyFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/narvii/account/VerifyCodeSharedPrefsHelper;->updatePhoneVerifyTime(Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :cond_1
    iget-object p1, p0, Lcom/narvii/account/CodeVerifyFragment$2;->this$0:Lcom/narvii/account/CodeVerifyFragment;

    iget-object p2, p1, Lcom/narvii/account/CodeVerifyBaseFragment;->verifyCodeHelper:Lcom/narvii/account/VerifyCodeSharedPrefsHelper;

    invoke-static {p1}, Lcom/narvii/account/CodeVerifyFragment;->access$300(Lcom/narvii/account/CodeVerifyFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/narvii/account/VerifyCodeSharedPrefsHelper;->updateEmailVerifyTime(Ljava/lang/String;)V

    .line 218
    :goto_0
    iget-object p1, p0, Lcom/narvii/account/CodeVerifyFragment$2;->this$0:Lcom/narvii/account/CodeVerifyFragment;

    invoke-virtual {p1}, Lcom/narvii/account/CodeVerifyBaseFragment;->resetTimerCount()V

    .line 220
    iget-object p1, p0, Lcom/narvii/account/CodeVerifyFragment$2;->this$0:Lcom/narvii/account/CodeVerifyFragment;

    iget-object p1, p1, Lcom/narvii/account/CodeVerifyBaseFragment;->codeEditView:Lcom/narvii/widget/CodeEditView;

    invoke-virtual {p1}, Lcom/narvii/widget/CodeEditView;->clearCode()V

    .line 221
    iget-object p1, p0, Lcom/narvii/account/CodeVerifyFragment$2;->this$0:Lcom/narvii/account/CodeVerifyFragment;

    iget-object p1, p1, Lcom/narvii/account/CodeVerifyBaseFragment;->codeEditView:Lcom/narvii/widget/CodeEditView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/narvii/widget/CodeEditView;->isError(Z)V

    .line 223
    iget-object p1, p0, Lcom/narvii/account/CodeVerifyFragment$2;->this$0:Lcom/narvii/account/CodeVerifyFragment;

    iget-object p1, p1, Lcom/narvii/account/CodeVerifyBaseFragment;->codeVerificationError:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
