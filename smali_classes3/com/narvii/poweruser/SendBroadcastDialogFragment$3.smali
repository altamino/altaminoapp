.class Lcom/narvii/poweruser/SendBroadcastDialogFragment$3;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SendBroadcastDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/SendBroadcastDialogFragment;->sendPushRequest()V
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
.field final synthetic this$0:Lcom/narvii/poweruser/SendBroadcastDialogFragment;

.field final synthetic val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

.field final synthetic val$nvActivity:Lcom/narvii/app/NVActivity;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/SendBroadcastDialogFragment;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/app/NVActivity;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment$3;->this$0:Lcom/narvii/poweruser/SendBroadcastDialogFragment;

    iput-object p3, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment$3;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    iput-object p4, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment$3;->val$nvActivity:Lcom/narvii/app/NVActivity;

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

    .line 130
    iget-object p1, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment$3;->this$0:Lcom/narvii/poweruser/SendBroadcastDialogFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment$3;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz p1, :cond_1

    .line 134
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 136
    :cond_1
    new-instance p1, Lcom/narvii/poweruser/SendBroadcastHelper;

    iget-object p3, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment$3;->val$nvActivity:Lcom/narvii/app/NVActivity;

    invoke-direct {p1, p3}, Lcom/narvii/poweruser/SendBroadcastHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 p3, 0x0

    .line 137
    invoke-virtual {p1, p2, p4, p3}, Lcom/narvii/poweruser/SendBroadcastHelper;->processError(ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 142
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 143
    iget-object p1, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment$3;->this$0:Lcom/narvii/poweruser/SendBroadcastDialogFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 146
    :cond_0
    iget-object p1, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment$3;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz p1, :cond_1

    .line 147
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 149
    :cond_1
    iget-object p1, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment$3;->this$0:Lcom/narvii/poweruser/SendBroadcastDialogFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 150
    iget-object p1, p0, Lcom/narvii/poweruser/SendBroadcastDialogFragment$3;->this$0:Lcom/narvii/poweruser/SendBroadcastDialogFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0f107c

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void
.end method
