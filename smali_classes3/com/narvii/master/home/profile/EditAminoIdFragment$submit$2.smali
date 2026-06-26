.class public final Lcom/narvii/master/home/profile/EditAminoIdFragment$submit$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "EditAminoIdFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/profile/EditAminoIdFragment;->submit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/EditAminoIdResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/profile/EditAminoIdFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/profile/EditAminoIdFragment;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 181
    iput-object p1, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment$submit$2;->this$0:Lcom/narvii/master/home/profile/EditAminoIdFragment;

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

    .line 192
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 193
    iget-object p1, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment$submit$2;->this$0:Lcom/narvii/master/home/profile/EditAminoIdFragment;

    invoke-static {p1}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->access$getProgressDialog$p(Lcom/narvii/master/home/profile/EditAminoIdFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 194
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment$submit$2;->this$0:Lcom/narvii/master/home/profile/EditAminoIdFragment;

    invoke-static {p1}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->access$getErrorDialog$p(Lcom/narvii/master/home/profile/EditAminoIdFragment;)Lcom/narvii/widget/ACMAlertDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    .line 195
    :cond_1
    iget-object p1, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment$submit$2;->this$0:Lcom/narvii/master/home/profile/EditAminoIdFragment;

    new-instance p2, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    invoke-static {p1, p2}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->access$setErrorDialog$p(Lcom/narvii/master/home/profile/EditAminoIdFragment;Lcom/narvii/widget/ACMAlertDialog;)V

    .line 196
    iget-object p1, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment$submit$2;->this$0:Lcom/narvii/master/home/profile/EditAminoIdFragment;

    invoke-static {p1}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->access$getErrorDialog$p(Lcom/narvii/master/home/profile/EditAminoIdFragment;)Lcom/narvii/widget/ACMAlertDialog;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, p4}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 197
    :cond_2
    iget-object p1, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment$submit$2;->this$0:Lcom/narvii/master/home/profile/EditAminoIdFragment;

    invoke-static {p1}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->access$getErrorDialog$p(Lcom/narvii/master/home/profile/EditAminoIdFragment;)Lcom/narvii/widget/ACMAlertDialog;

    move-result-object p1

    if-eqz p1, :cond_3

    const p2, 0x7f0f073e

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 198
    :cond_3
    iget-object p1, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment$submit$2;->this$0:Lcom/narvii/master/home/profile/EditAminoIdFragment;

    invoke-static {p1}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->access$getErrorDialog$p(Lcom/narvii/master/home/profile/EditAminoIdFragment;)Lcom/narvii/widget/ACMAlertDialog;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    :cond_4
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 181
    check-cast p2, Lcom/narvii/model/api/EditAminoIdResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/home/profile/EditAminoIdFragment$submit$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/EditAminoIdResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/EditAminoIdResponse;)V
    .locals 2

    .line 184
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 185
    iget-object p1, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment$submit$2;->this$0:Lcom/narvii/master/home/profile/EditAminoIdFragment;

    invoke-static {p1}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->access$getProgressDialog$p(Lcom/narvii/master/home/profile/EditAminoIdFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 186
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment$submit$2;->this$0:Lcom/narvii/master/home/profile/EditAminoIdFragment;

    invoke-static {p1}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->access$getAccount$p(Lcom/narvii/master/home/profile/EditAminoIdFragment;)Lcom/narvii/account/AccountService;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object v1, p2, Lcom/narvii/model/api/EditAminoIdResponse;->aminoId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    if-eqz p2, :cond_2

    iget-object v0, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    :cond_2
    if-eqz p2, :cond_3

    iget-boolean p2, p2, Lcom/narvii/model/api/EditAminoIdResponse;->aminoIdEditable:Z

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, v1, v0, p2}, Lcom/narvii/account/AccountService;->updateAminoId(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 188
    iget-object p1, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment$submit$2;->this$0:Lcom/narvii/master/home/profile/EditAminoIdFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method
