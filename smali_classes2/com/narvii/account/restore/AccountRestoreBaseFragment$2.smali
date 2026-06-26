.class Lcom/narvii/account/restore/AccountRestoreBaseFragment$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "AccountRestoreBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/restore/AccountRestoreBaseFragment;->restoreAccount()V
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
.field final synthetic this$0:Lcom/narvii/account/restore/AccountRestoreBaseFragment;

.field final synthetic val$pdlg:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/account/restore/AccountRestoreBaseFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment$2;->this$0:Lcom/narvii/account/restore/AccountRestoreBaseFragment;

    iput-object p3, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment$2;->val$pdlg:Lcom/narvii/util/dialog/ProgressDialog;

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

    .line 245
    iget-object p1, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment$2;->val$pdlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 246
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    iget-object p2, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment$2;->this$0:Lcom/narvii/account/restore/AccountRestoreBaseFragment;

    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 247
    invoke-virtual {p1, p4}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const p2, 0x104000a

    const/4 p3, 0x0

    const/4 p4, 0x0

    .line 248
    invoke-virtual {p1, p2, p3, p4}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 249
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 224
    iget-object p1, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment$2;->val$pdlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 225
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    iget-object p2, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment$2;->this$0:Lcom/narvii/account/restore/AccountRestoreBaseFragment;

    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0f0055

    .line 226
    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    const p2, 0x104000a

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 227
    invoke-virtual {p1, p2, v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 228
    new-instance p2, Lcom/narvii/account/restore/AccountRestoreBaseFragment$2$1;

    invoke-direct {p2, p0}, Lcom/narvii/account/restore/AccountRestoreBaseFragment$2$1;-><init>(Lcom/narvii/account/restore/AccountRestoreBaseFragment$2;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 240
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method
