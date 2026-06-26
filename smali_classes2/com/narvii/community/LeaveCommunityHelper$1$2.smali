.class Lcom/narvii/community/LeaveCommunityHelper$1$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "LeaveCommunityHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/community/LeaveCommunityHelper$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/UserResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/community/LeaveCommunityHelper$1;

.field final synthetic val$progressDlg:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/community/LeaveCommunityHelper$1;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/narvii/community/LeaveCommunityHelper$1$2;->this$1:Lcom/narvii/community/LeaveCommunityHelper$1;

    iput-object p3, p0, Lcom/narvii/community/LeaveCommunityHelper$1$2;->val$progressDlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/community/LeaveCommunityHelper$1$2;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/narvii/community/LeaveCommunityHelper$1$2;->sendLeaveCommunityRequest()V

    return-void
.end method

.method private sendLeaveCommunityRequest()V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/narvii/community/LeaveCommunityHelper$1$2;->this$1:Lcom/narvii/community/LeaveCommunityHelper$1;

    iget-object v1, v0, Lcom/narvii/community/LeaveCommunityHelper$1;->this$0:Lcom/narvii/community/LeaveCommunityHelper;

    iget-object v0, v0, Lcom/narvii/community/LeaveCommunityHelper$1;->val$community:Lcom/narvii/model/Community;

    invoke-virtual {v1, v0}, Lcom/narvii/community/LeaveCommunityHelper;->onSendLeaveCommunityRequest(Lcom/narvii/model/Community;)V

    .line 104
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/community/leave"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/community/LeaveCommunityHelper$1$2;->this$1:Lcom/narvii/community/LeaveCommunityHelper$1;

    iget-object v1, v1, Lcom/narvii/community/LeaveCommunityHelper$1;->val$community:Lcom/narvii/model/Community;

    iget v1, v1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/narvii/community/LeaveCommunityHelper$1$2;->this$1:Lcom/narvii/community/LeaveCommunityHelper$1;

    iget-object v1, v1, Lcom/narvii/community/LeaveCommunityHelper$1;->this$0:Lcom/narvii/community/LeaveCommunityHelper;

    iget-object v1, v1, Lcom/narvii/community/LeaveCommunityHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v2, "api"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 106
    iget-object v2, p0, Lcom/narvii/community/LeaveCommunityHelper$1$2;->val$progressDlg:Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v2, v2, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

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

    .line 111
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 112
    iget-object p1, p0, Lcom/narvii/community/LeaveCommunityHelper$1$2;->this$1:Lcom/narvii/community/LeaveCommunityHelper$1;

    iget-object p1, p1, Lcom/narvii/community/LeaveCommunityHelper$1;->this$0:Lcom/narvii/community/LeaveCommunityHelper;

    iget-object p1, p1, Lcom/narvii/community/LeaveCommunityHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 113
    iget-object p1, p0, Lcom/narvii/community/LeaveCommunityHelper$1$2;->val$progressDlg:Lcom/narvii/util/dialog/ProgressDialog;

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

    .line 71
    check-cast p2, Lcom/narvii/model/api/UserResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/community/LeaveCommunityHelper$1$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 74
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 75
    iget-object p1, p2, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/model/User;->isInfluencer()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 76
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object p2, p0, Lcom/narvii/community/LeaveCommunityHelper$1$2;->this$1:Lcom/narvii/community/LeaveCommunityHelper$1;

    iget-object p2, p2, Lcom/narvii/community/LeaveCommunityHelper$1;->this$0:Lcom/narvii/community/LeaveCommunityHelper;

    iget-object p2, p2, Lcom/narvii/community/LeaveCommunityHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 77
    sget p2, Lcom/narvii/lib/R$string;->are_you_sure:I

    invoke-virtual {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(I)V

    .line 78
    sget p2, Lcom/narvii/lib/R$string;->influencer_leave_community_warning:I

    invoke-virtual {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 79
    sget p2, Lcom/narvii/lib/R$string;->cancel:I

    new-instance v0, Lcom/narvii/community/LeaveCommunityHelper$1$2$1;

    invoke-direct {v0, p0}, Lcom/narvii/community/LeaveCommunityHelper$1$2$1;-><init>(Lcom/narvii/community/LeaveCommunityHelper$1$2;)V

    invoke-virtual {p1, p2, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 85
    sget p2, Lcom/narvii/lib/R$string;->yes:I

    new-instance v0, Lcom/narvii/community/LeaveCommunityHelper$1$2$2;

    invoke-direct {v0, p0}, Lcom/narvii/community/LeaveCommunityHelper$1$2$2;-><init>(Lcom/narvii/community/LeaveCommunityHelper$1$2;)V

    const/high16 v1, -0x10000

    invoke-virtual {p1, p2, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 91
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/narvii/community/LeaveCommunityHelper$1$2;->sendLeaveCommunityRequest()V

    :goto_0
    return-void
.end method
