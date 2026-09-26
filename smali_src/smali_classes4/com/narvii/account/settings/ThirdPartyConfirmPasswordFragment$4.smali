.class Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$4;
.super Lcom/narvii/account/AccountResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$4;->this$0:Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/account/AccountResponseListener;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
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

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$4;->this$0:Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$4;->this$0:Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 15
    move-result-object p1

    .line 16
    const/4 p2, 0x0

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 24
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/account/AccountResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V

    iget-object p1, p0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$4;->this$0:Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;

    .line 3
    iget-object p1, p1, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    :cond_0
    iget-object p1, p0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$4;->this$0:Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;

    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$4;->this$0:Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;

    .line 6
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

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

    .line 1
    check-cast p2, Lcom/narvii/model/api/AccountResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$4;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/AccountResponse;)V

    return-void
.end method
