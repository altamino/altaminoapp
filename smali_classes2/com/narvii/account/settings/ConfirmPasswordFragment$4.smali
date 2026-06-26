.class Lcom/narvii/account/settings/ConfirmPasswordFragment$4;
.super Lcom/narvii/account/AccountResponseListener;
.source "ConfirmPasswordFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/account/settings/ConfirmPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/settings/ConfirmPasswordFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/settings/ConfirmPasswordFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment$4;->this$0:Lcom/narvii/account/settings/ConfirmPasswordFragment;

    invoke-direct {p0, p2}, Lcom/narvii/account/AccountResponseListener;-><init>(Lcom/narvii/app/NVContext;)V

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

    .line 176
    iget-object p1, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment$4;->this$0:Lcom/narvii/account/settings/ConfirmPasswordFragment;

    iget-object p1, p1, Lcom/narvii/account/settings/ConfirmPasswordFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz p1, :cond_0

    .line 177
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 179
    :cond_0
    iget-object p1, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment$4;->this$0:Lcom/narvii/account/settings/ConfirmPasswordFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 163
    invoke-super {p0, p1, p2}, Lcom/narvii/account/AccountResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V

    .line 164
    iget-object p1, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment$4;->this$0:Lcom/narvii/account/settings/ConfirmPasswordFragment;

    iget-object p1, p1, Lcom/narvii/account/settings/ConfirmPasswordFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz p1, :cond_0

    .line 165
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 167
    :cond_0
    iget-object p1, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment$4;->this$0:Lcom/narvii/account/settings/ConfirmPasswordFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 168
    iget-object p1, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment$4;->this$0:Lcom/narvii/account/settings/ConfirmPasswordFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

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

    .line 159
    check-cast p2, Lcom/narvii/model/api/AccountResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/account/settings/ConfirmPasswordFragment$4;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V

    return-void
.end method
