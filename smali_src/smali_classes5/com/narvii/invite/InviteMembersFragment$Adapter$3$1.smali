.class Lcom/narvii/invite/InviteMembersFragment$Adapter$3$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter$3$1;->this$2:Lcom/narvii/invite/InviteMembersFragment$Adapter$3;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter$3$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

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
    .line 3
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter$3$1;->this$2:Lcom/narvii/invite/InviteMembersFragment$Adapter$3;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/narvii/invite/InviteMembersFragment$Adapter$3;->this$1:Lcom/narvii/invite/InviteMembersFragment$Adapter;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 11
    move-result-object p1

    .line 12
    const/4 p2, 0x0

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter$3$1;->this$2:Lcom/narvii/invite/InviteMembersFragment$Adapter$3;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/narvii/invite/InviteMembersFragment$Adapter$3;->this$1:Lcom/narvii/invite/InviteMembersFragment$Adapter;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/narvii/invite/InviteMembersFragment$Adapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    if-nez p1, :cond_0

    .line 32
    return-void

    .line 33
    .line 34
    :cond_0
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter$3$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 38
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/invite/NewInvitationResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter$3$1;->this$2:Lcom/narvii/invite/InviteMembersFragment$Adapter$3;

    .line 3
    iget-object p1, p1, Lcom/narvii/invite/InviteMembersFragment$Adapter$3;->this$1:Lcom/narvii/invite/InviteMembersFragment$Adapter;

    iput-object p2, p1, Lcom/narvii/invite/InviteMembersFragment$Adapter;->response:Lcom/narvii/invite/NewInvitationResponse;

    .line 4
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter$3$1;->this$2:Lcom/narvii/invite/InviteMembersFragment$Adapter$3;

    .line 5
    iget-object p1, p1, Lcom/narvii/invite/InviteMembersFragment$Adapter$3;->this$1:Lcom/narvii/invite/InviteMembersFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/invite/InviteMembersFragment$Adapter;->this$0:Lcom/narvii/invite/InviteMembersFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/narvii/invite/InviteMembersFragment$Adapter$3$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 6
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

    .line 1
    check-cast p2, Lcom/narvii/invite/NewInvitationResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/invite/InviteMembersFragment$Adapter$3$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/invite/NewInvitationResponse;)V

    return-void
.end method
