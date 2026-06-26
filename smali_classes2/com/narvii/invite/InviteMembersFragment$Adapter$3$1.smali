.class Lcom/narvii/invite/InviteMembersFragment$Adapter$3$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "InviteMembersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/invite/InviteMembersFragment$Adapter$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/invite/NewInvitationResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/narvii/invite/InviteMembersFragment$Adapter$3;

.field final synthetic val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/invite/InviteMembersFragment$Adapter$3;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter$3$1;->this$2:Lcom/narvii/invite/InviteMembersFragment$Adapter$3;

    iput-object p3, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter$3$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

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

    .line 354
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 355
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter$3$1;->this$2:Lcom/narvii/invite/InviteMembersFragment$Adapter$3;

    iget-object p1, p1, Lcom/narvii/invite/InviteMembersFragment$Adapter$3;->this$1:Lcom/narvii/invite/InviteMembersFragment$Adapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 356
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter$3$1;->this$2:Lcom/narvii/invite/InviteMembersFragment$Adapter$3;

    iget-object p1, p1, Lcom/narvii/invite/InviteMembersFragment$Adapter$3;->this$1:Lcom/narvii/invite/InviteMembersFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/invite/InviteMembersFragment$Adapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 359
    :cond_0
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter$3$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/invite/NewInvitationResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 364
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 365
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter$3$1;->this$2:Lcom/narvii/invite/InviteMembersFragment$Adapter$3;

    iget-object p1, p1, Lcom/narvii/invite/InviteMembersFragment$Adapter$3;->this$1:Lcom/narvii/invite/InviteMembersFragment$Adapter;

    iput-object p2, p1, Lcom/narvii/invite/InviteMembersFragment$Adapter;->response:Lcom/narvii/invite/NewInvitationResponse;

    .line 366
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 367
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter$3$1;->this$2:Lcom/narvii/invite/InviteMembersFragment$Adapter$3;

    iget-object p1, p1, Lcom/narvii/invite/InviteMembersFragment$Adapter$3;->this$1:Lcom/narvii/invite/InviteMembersFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/invite/InviteMembersFragment$Adapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 370
    :cond_0
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter$3$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 351
    check-cast p2, Lcom/narvii/invite/NewInvitationResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/invite/InviteMembersFragment$Adapter$3$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/invite/NewInvitationResponse;)V

    return-void
.end method
