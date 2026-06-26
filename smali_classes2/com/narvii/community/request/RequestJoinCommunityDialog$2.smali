.class Lcom/narvii/community/request/RequestJoinCommunityDialog$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "RequestJoinCommunityDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/community/request/RequestJoinCommunityDialog;->submitRequestToJoin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/master/invitation/CommunityMemRequestResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/request/RequestJoinCommunityDialog;

.field final synthetic val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/community/request/RequestJoinCommunityDialog;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog$2;->this$0:Lcom/narvii/community/request/RequestJoinCommunityDialog;

    iput-object p3, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog$2;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

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

    .line 210
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 211
    iget-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog$2;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    const/16 p1, 0x7d1

    if-ne p2, p1, :cond_0

    .line 213
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    iget-object p2, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog$2;->this$0:Lcom/narvii/community/request/RequestJoinCommunityDialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 214
    iget-object p2, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog$2;->this$0:Lcom/narvii/community/request/RequestJoinCommunityDialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f0f02d6

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 215
    iget-object p2, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog$2;->this$0:Lcom/narvii/community/request/RequestJoinCommunityDialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f0f02d3

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 p2, 0x4

    const/4 p3, 0x0

    const-string p4, "Ok"

    .line 216
    invoke-virtual {p1, p4, p2, p3}, Lcom/narvii/util/dialog/AlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 217
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    .line 219
    :cond_0
    iget-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog$2;->this$0:Lcom/narvii/community/request/RequestJoinCommunityDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :goto_0
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/invitation/CommunityMemRequestResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 193
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 194
    iget-object p1, p2, Lcom/narvii/master/invitation/CommunityMemRequestResponse;->communityMembershipRequest:Lcom/narvii/model/CommunityMemRequest;

    iget p1, p1, Lcom/narvii/model/CommunityMemRequest;->status:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 195
    iget-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog$2;->this$0:Lcom/narvii/community/request/RequestJoinCommunityDialog;

    const p2, 0x7f0f02ca

    invoke-static {p1, p2}, Lcom/narvii/community/request/RequestJoinCommunityDialog;->access$000(Lcom/narvii/community/request/RequestJoinCommunityDialog;I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    .line 197
    iget-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog$2;->this$0:Lcom/narvii/community/request/RequestJoinCommunityDialog;

    const p2, 0x7f0f02cb

    invoke-static {p1, p2}, Lcom/narvii/community/request/RequestJoinCommunityDialog;->access$000(Lcom/narvii/community/request/RequestJoinCommunityDialog;I)V

    goto :goto_0

    .line 199
    :cond_1
    iget-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog$2;->this$0:Lcom/narvii/community/request/RequestJoinCommunityDialog;

    const p2, 0x7f0f02cc

    invoke-static {p1, p2}, Lcom/narvii/community/request/RequestJoinCommunityDialog;->access$000(Lcom/narvii/community/request/RequestJoinCommunityDialog;I)V

    .line 201
    :goto_0
    iget-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog$2;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 202
    iget-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog$2;->this$0:Lcom/narvii/community/request/RequestJoinCommunityDialog;

    iget-object p1, p1, Lcom/narvii/community/request/RequestJoinCommunityDialog;->callBack:Lcom/narvii/community/request/RequestJoinCommunityDialog$CallBack;

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 203
    invoke-interface {p1, p2, v0, v0}, Lcom/narvii/community/request/RequestJoinCommunityDialog$CallBack;->onComplete(ZLjava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_2
    iget-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog$2;->this$0:Lcom/narvii/community/request/RequestJoinCommunityDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 190
    check-cast p2, Lcom/narvii/master/invitation/CommunityMemRequestResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/community/request/RequestJoinCommunityDialog$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/invitation/CommunityMemRequestResponse;)V

    return-void
.end method
