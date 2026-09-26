.class Lcom/narvii/account/restore/AccountRestoreBaseFragment$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment$2;->this$0:Lcom/narvii/account/restore/AccountRestoreBaseFragment;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment$2;->val$pdlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 8
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
    iget-object p1, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment$2;->val$pdlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 6
    .line 7
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    .line 8
    .line 9
    iget-object p2, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment$2;->this$0:Lcom/narvii/account/restore/AccountRestoreBaseFragment;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p4}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 20
    const/4 p2, 0x0

    .line 21
    const/4 p3, 0x0

    .line 22
    .line 23
    .line 24
    const p4, 0x104000a

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p4, p2, p3}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 31
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment$2;->val$pdlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 6
    .line 7
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    .line 8
    .line 9
    iget-object p2, p0, Lcom/narvii/account/restore/AccountRestoreBaseFragment$2;->this$0:Lcom/narvii/account/restore/AccountRestoreBaseFragment;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    const p2, 0x7f120058

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    .line 23
    const/4 p2, 0x0

    .line 24
    const/4 v0, 0x0

    .line 25
    .line 26
    .line 27
    const v1, 0x104000a

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1, p2, v0}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 31
    .line 32
    new-instance p2, Lcom/narvii/account/restore/AccountRestoreBaseFragment$2$1;

    .line 33
    .line 34
    .line 35
    invoke-direct {p2, p0}, Lcom/narvii/account/restore/AccountRestoreBaseFragment$2$1;-><init>(Lcom/narvii/account/restore/AccountRestoreBaseFragment$2;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 42
    return-void
.end method
