.class Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$5;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->validatePassword(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;Ljava/lang/Class;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$5;->this$0:Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

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
    iget-object p1, p0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$5;->this$0:Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p1

    .line 7
    const/4 p2, 0x0

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$5;->this$0:Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 24
    :cond_0
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$5;->this$0:Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;

    .line 3
    .line 4
    iget p2, p1, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->actionType:I

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    if-eq p2, v0, :cond_1

    .line 8
    const/4 v0, 0x2

    .line 9
    .line 10
    if-eq p2, v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {p1}, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->o(Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;)V

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_1
    iget-object p1, p1, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 23
    .line 24
    :cond_2
    iget-object p1, p0, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment$5;->this$0:Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/narvii/account/settings/ThirdPartyConfirmPasswordFragment;->performLogin()V

    .line 28
    :goto_0
    return-void
.end method
