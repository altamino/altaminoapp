.class Lcom/narvii/community/request/RequestJoinCommunityDialog$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog$2;->this$0:Lcom/narvii/community/request/RequestJoinCommunityDialog;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog$2;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

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
    iget-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog$2;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 9
    .line 10
    const/16 p1, 0x7d1

    .line 11
    .line 12
    if-ne p2, p1, :cond_0

    .line 13
    .line 14
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    .line 15
    .line 16
    iget-object p2, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog$2;->this$0:Lcom/narvii/community/request/RequestJoinCommunityDialog;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    .line 23
    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    iget-object p2, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog$2;->this$0:Lcom/narvii/community/request/RequestJoinCommunityDialog;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 29
    move-result-object p2

    .line 30
    .line 31
    .line 32
    const p3, 0x7f120321

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 36
    move-result-object p2

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    iget-object p2, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog$2;->this$0:Lcom/narvii/community/request/RequestJoinCommunityDialog;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 45
    move-result-object p2

    .line 46
    .line 47
    .line 48
    const p3, 0x7f12031e

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 52
    move-result-object p2

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 56
    const/4 p2, 0x4

    .line 57
    const/4 p3, 0x0

    .line 58
    .line 59
    const-string p4, "Ok"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p4, p2, p3}, Lcom/narvii/util/dialog/AlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :cond_0
    iget-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog$2;->this$0:Lcom/narvii/community/request/RequestJoinCommunityDialog;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 72
    move-result-object p1

    .line 73
    const/4 p2, 0x1

    .line 74
    .line 75
    .line 76
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 81
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

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 3
    iget-object p1, p2, Lcom/narvii/master/invitation/CommunityMemRequestResponse;->communityMembershipRequest:Lcom/narvii/model/CommunityMemRequest;

    iget p1, p1, Lcom/narvii/model/CommunityMemRequest;->status:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog$2;->this$0:Lcom/narvii/community/request/RequestJoinCommunityDialog;

    const p2, 0x7f120315

    .line 4
    invoke-static {p1, p2}, Lcom/narvii/community/request/RequestJoinCommunityDialog;->a(Lcom/narvii/community/request/RequestJoinCommunityDialog;I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog$2;->this$0:Lcom/narvii/community/request/RequestJoinCommunityDialog;

    const p2, 0x7f120316

    .line 5
    invoke-static {p1, p2}, Lcom/narvii/community/request/RequestJoinCommunityDialog;->a(Lcom/narvii/community/request/RequestJoinCommunityDialog;I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog$2;->this$0:Lcom/narvii/community/request/RequestJoinCommunityDialog;

    const p2, 0x7f120317

    .line 6
    invoke-static {p1, p2}, Lcom/narvii/community/request/RequestJoinCommunityDialog;->a(Lcom/narvii/community/request/RequestJoinCommunityDialog;I)V

    :goto_0
    iget-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog$2;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 7
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    iget-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog$2;->this$0:Lcom/narvii/community/request/RequestJoinCommunityDialog;

    .line 8
    iget-object p1, p1, Lcom/narvii/community/request/RequestJoinCommunityDialog;->callBack:Lcom/narvii/community/request/RequestJoinCommunityDialog$CallBack;

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 9
    invoke-interface {p1, p2, v0, v0}, Lcom/narvii/community/request/RequestJoinCommunityDialog$CallBack;->onComplete(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/narvii/community/request/RequestJoinCommunityDialog$2;->this$0:Lcom/narvii/community/request/RequestJoinCommunityDialog;

    .line 10
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

    .line 1
    check-cast p2, Lcom/narvii/master/invitation/CommunityMemRequestResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/community/request/RequestJoinCommunityDialog$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/invitation/CommunityMemRequestResponse;)V

    return-void
.end method
