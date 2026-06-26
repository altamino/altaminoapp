.class Lcom/narvii/invite/ValidLinkFragment$Adapter$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "ValidLinkFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/invite/ValidLinkFragment$Adapter;->revoke(Lcom/narvii/invite/Invitation;)V
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
.field final synthetic this$1:Lcom/narvii/invite/ValidLinkFragment$Adapter;

.field final synthetic val$invitation:Lcom/narvii/invite/Invitation;

.field final synthetic val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/invite/ValidLinkFragment$Adapter;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/invite/Invitation;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/narvii/invite/ValidLinkFragment$Adapter$1;->this$1:Lcom/narvii/invite/ValidLinkFragment$Adapter;

    iput-object p3, p0, Lcom/narvii/invite/ValidLinkFragment$Adapter$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    iput-object p4, p0, Lcom/narvii/invite/ValidLinkFragment$Adapter$1;->val$invitation:Lcom/narvii/invite/Invitation;

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

    .line 139
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 140
    iget-object p1, p0, Lcom/narvii/invite/ValidLinkFragment$Adapter$1;->this$1:Lcom/narvii/invite/ValidLinkFragment$Adapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 141
    iget-object p1, p0, Lcom/narvii/invite/ValidLinkFragment$Adapter$1;->this$1:Lcom/narvii/invite/ValidLinkFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/invite/ValidLinkFragment$Adapter;->this$0:Lcom/narvii/invite/ValidLinkFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/narvii/invite/ValidLinkFragment$Adapter$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

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

    .line 149
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 150
    iget-object p1, p0, Lcom/narvii/invite/ValidLinkFragment$Adapter$1;->this$1:Lcom/narvii/invite/ValidLinkFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/invite/ValidLinkFragment$Adapter;->this$0:Lcom/narvii/invite/ValidLinkFragment;

    iget-object p1, p1, Lcom/narvii/invite/ValidLinkFragment;->revokedIds:Ljava/util/HashSet;

    iget-object p2, p0, Lcom/narvii/invite/ValidLinkFragment$Adapter$1;->val$invitation:Lcom/narvii/invite/Invitation;

    invoke-virtual {p2}, Lcom/narvii/invite/Invitation;->id()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object p1, p0, Lcom/narvii/invite/ValidLinkFragment$Adapter$1;->this$1:Lcom/narvii/invite/ValidLinkFragment$Adapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 152
    iget-object p1, p0, Lcom/narvii/invite/ValidLinkFragment$Adapter$1;->this$1:Lcom/narvii/invite/ValidLinkFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/invite/ValidLinkFragment$Adapter;->this$0:Lcom/narvii/invite/ValidLinkFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 155
    :cond_0
    iget-object p1, p0, Lcom/narvii/invite/ValidLinkFragment$Adapter$1;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

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

    .line 136
    check-cast p2, Lcom/narvii/invite/NewInvitationResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/invite/ValidLinkFragment$Adapter$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/invite/NewInvitationResponse;)V

    return-void
.end method
