.class Lcom/narvii/account/settings/ConfirmPasswordFragment$5;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "ConfirmPasswordFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/settings/ConfirmPasswordFragment;->validatePassword(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/narvii/account/settings/ConfirmPasswordFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/settings/ConfirmPasswordFragment;Ljava/lang/Class;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment$5;->this$0:Lcom/narvii/account/settings/ConfirmPasswordFragment;

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

    .line 225
    iget-object p1, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment$5;->this$0:Lcom/narvii/account/settings/ConfirmPasswordFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 226
    iget-object p1, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment$5;->this$0:Lcom/narvii/account/settings/ConfirmPasswordFragment;

    iget-object p1, p1, Lcom/narvii/account/settings/ConfirmPasswordFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz p1, :cond_0

    .line 227
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

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

    .line 209
    iget-object p1, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment$5;->this$0:Lcom/narvii/account/settings/ConfirmPasswordFragment;

    iget p2, p1, Lcom/narvii/account/settings/ConfirmPasswordFragment;->actionType:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    invoke-static {p1}, Lcom/narvii/account/settings/ConfirmPasswordFragment;->access$200(Lcom/narvii/account/settings/ConfirmPasswordFragment;)V

    goto :goto_0

    .line 214
    :cond_1
    iget-object p1, p1, Lcom/narvii/account/settings/ConfirmPasswordFragment;->progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz p1, :cond_2

    .line 215
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 217
    :cond_2
    iget-object p1, p0, Lcom/narvii/account/settings/ConfirmPasswordFragment$5;->this$0:Lcom/narvii/account/settings/ConfirmPasswordFragment;

    invoke-virtual {p1}, Lcom/narvii/account/settings/ConfirmPasswordFragment;->performLogin()V

    :goto_0
    return-void
.end method
