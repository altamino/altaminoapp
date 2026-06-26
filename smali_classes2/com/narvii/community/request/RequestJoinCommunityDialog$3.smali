.class Lcom/narvii/community/request/RequestJoinCommunityDialog$3;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "RequestJoinCommunityDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/community/request/RequestJoinCommunityDialog;->submitRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/master/invitation/CommunityInviteResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/request/RequestJoinCommunityDialog;

.field final synthetic val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/community/request/RequestJoinCommunityDialog;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog$3;->this$0:Lcom/narvii/community/request/RequestJoinCommunityDialog;

    iput-object p3, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog$3;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

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

    .line 260
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 261
    iget-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog$3;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 262
    iget-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog$3;->this$0:Lcom/narvii/community/request/RequestJoinCommunityDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/invitation/CommunityInviteResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 250
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 251
    iget-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog$3;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 252
    iget-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog$3;->this$0:Lcom/narvii/community/request/RequestJoinCommunityDialog;

    iget-object p1, p1, Lcom/narvii/community/request/RequestJoinCommunityDialog;->callBack:Lcom/narvii/community/request/RequestJoinCommunityDialog$CallBack;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 253
    iget-object p2, p2, Lcom/narvii/master/invitation/CommunityInviteResponse;->invitationId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v0, p2, v1}, Lcom/narvii/community/request/RequestJoinCommunityDialog$CallBack;->onComplete(ZLjava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_0
    iget-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog$3;->this$0:Lcom/narvii/community/request/RequestJoinCommunityDialog;

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

    .line 247
    check-cast p2, Lcom/narvii/master/invitation/CommunityInviteResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/community/request/RequestJoinCommunityDialog$3;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/invitation/CommunityInviteResponse;)V

    return-void
.end method
