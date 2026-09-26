.class Lcom/narvii/community/LeaveCommunityHelper$1$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/community/LeaveCommunityHelper$1$2;->this$1:Lcom/narvii/community/LeaveCommunityHelper$1;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/community/LeaveCommunityHelper$1$2;->val$progressDlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 8
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/community/LeaveCommunityHelper$1$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/community/LeaveCommunityHelper$1$2;->sendLeaveCommunityRequest()V

    return-void
.end method

.method private sendLeaveCommunityRequest()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/LeaveCommunityHelper$1$2;->this$1:Lcom/narvii/community/LeaveCommunityHelper$1;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/community/LeaveCommunityHelper$1;->this$0:Lcom/narvii/community/LeaveCommunityHelper;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/community/LeaveCommunityHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 7
    .line 8
    const-string v1, "statistics"

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    .line 15
    .line 16
    const-string v1, "Leaves Community"

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    const-string v1, "Leave Community Total"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/community/LeaveCommunityHelper$1$2;->this$1:Lcom/narvii/community/LeaveCommunityHelper$1;

    .line 28
    .line 29
    iget-object v1, v0, Lcom/narvii/community/LeaveCommunityHelper$1;->this$0:Lcom/narvii/community/LeaveCommunityHelper;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/narvii/community/LeaveCommunityHelper$1;->val$community:Lcom/narvii/model/Community;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0}, Lcom/narvii/community/LeaveCommunityHelper;->onSendLeaveCommunityRequest(Lcom/narvii/model/Community;)V

    .line 35
    .line 36
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 37
    .line 38
    .line 39
    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    const-string v1, "/community/leave"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    iget-object v1, p0, Lcom/narvii/community/LeaveCommunityHelper$1$2;->this$1:Lcom/narvii/community/LeaveCommunityHelper$1;

    .line 52
    .line 53
    iget-object v1, v1, Lcom/narvii/community/LeaveCommunityHelper$1;->val$community:Lcom/narvii/model/Community;

    .line 54
    .line 55
    iget v1, v1, Lcom/narvii/model/Community;->id:I

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    iget-object v1, p0, Lcom/narvii/community/LeaveCommunityHelper$1$2;->this$1:Lcom/narvii/community/LeaveCommunityHelper$1;

    .line 66
    .line 67
    iget-object v1, v1, Lcom/narvii/community/LeaveCommunityHelper$1;->this$0:Lcom/narvii/community/LeaveCommunityHelper;

    .line 68
    .line 69
    iget-object v1, v1, Lcom/narvii/community/LeaveCommunityHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 70
    .line 71
    const-string v2, "api"

    .line 72
    .line 73
    .line 74
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    move-result-object v1

    .line 76
    .line 77
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 78
    .line 79
    iget-object v2, p0, Lcom/narvii/community/LeaveCommunityHelper$1$2;->val$progressDlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 80
    .line 81
    iget-object v2, v2, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 85
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
    iget-object p1, p0, Lcom/narvii/community/LeaveCommunityHelper$1$2;->this$1:Lcom/narvii/community/LeaveCommunityHelper$1;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/narvii/community/LeaveCommunityHelper$1;->this$0:Lcom/narvii/community/LeaveCommunityHelper;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/narvii/community/LeaveCommunityHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 13
    move-result-object p1

    .line 14
    const/4 p2, 0x0

    .line 15
    .line 16
    .line 17
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/community/LeaveCommunityHelper$1$2;->val$progressDlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 27
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

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 3
    iget-object p1, p2, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/model/User;->isInfluencer()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object p2, p0, Lcom/narvii/community/LeaveCommunityHelper$1$2;->this$1:Lcom/narvii/community/LeaveCommunityHelper$1;

    iget-object p2, p2, Lcom/narvii/community/LeaveCommunityHelper$1;->this$0:Lcom/narvii/community/LeaveCommunityHelper;

    iget-object p2, p2, Lcom/narvii/community/LeaveCommunityHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    sget p2, Lcom/narvii/lib/R$string;->are_you_sure:I

    .line 5
    invoke-virtual {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->setTitle(I)V

    sget p2, Lcom/narvii/lib/R$string;->influencer_leave_community_warning:I

    .line 6
    invoke-virtual {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    sget p2, Lcom/narvii/lib/R$string;->cancel:I

    .line 7
    new-instance v0, Lcom/narvii/community/LeaveCommunityHelper$1$2$1;

    invoke-direct {v0, p0}, Lcom/narvii/community/LeaveCommunityHelper$1$2$1;-><init>(Lcom/narvii/community/LeaveCommunityHelper$1$2;)V

    invoke-virtual {p1, p2, v0}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    sget p2, Lcom/narvii/lib/R$string;->yes:I

    .line 8
    new-instance v0, Lcom/narvii/community/LeaveCommunityHelper$1$2$2;

    invoke-direct {v0, p0}, Lcom/narvii/community/LeaveCommunityHelper$1$2$2;-><init>(Lcom/narvii/community/LeaveCommunityHelper$1$2;)V

    const/high16 v1, -0x10000

    invoke-virtual {p1, p2, v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;I)Landroid/view/View;

    .line 9
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/narvii/community/LeaveCommunityHelper$1$2;->sendLeaveCommunityRequest()V

    :goto_0
    return-void
.end method
