.class Lcom/narvii/influencer/FanClubDetailFragment$3;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/influencer/FanClubDetailFragment;->changeAutoRenewRequest(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/influencer/FanClubResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/influencer/FanClubDetailFragment;

.field final synthetic val$ndcId:I

.field final synthetic val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/influencer/FanClubDetailFragment;Ljava/lang/Class;ILcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment$3;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    .line 3
    .line 4
    iput p3, p0, Lcom/narvii/influencer/FanClubDetailFragment$3;->val$ndcId:I

    .line 5
    .line 6
    iput-object p4, p0, Lcom/narvii/influencer/FanClubDetailFragment$3;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 10
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
    iget-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment$3;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p1

    .line 10
    const/4 p2, 0x0

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment$3;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/narvii/influencer/FanClubDetailFragment;->u(Lcom/narvii/influencer/FanClubDetailFragment;)Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment$3;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/narvii/influencer/FanClubDetailFragment;->u(Lcom/narvii/influencer/FanClubDetailFragment;)Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    .line 35
    .line 36
    :cond_0
    iget-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment$3;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 40
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/influencer/FanClubResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 3
    iget-object p1, p2, Lcom/narvii/influencer/FanClubResponse;->fanClub:Lcom/narvii/influencer/FanClub;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/narvii/influencer/FanClubDetailFragment$3;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    .line 4
    iput-object p1, p2, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    iget v0, p0, Lcom/narvii/influencer/FanClubDetailFragment$3;->val$ndcId:I

    .line 5
    iput v0, p1, Lcom/narvii/influencer/FanClub;->ndcId:I

    .line 6
    invoke-static {p2}, Lcom/narvii/influencer/FanClubDetailFragment;->u(Lcom/narvii/influencer/FanClubDetailFragment;)Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment$3;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    .line 7
    invoke-static {p1}, Lcom/narvii/influencer/FanClubDetailFragment;->u(Lcom/narvii/influencer/FanClubDetailFragment;)Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    :cond_0
    iget-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment$3;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    .line 8
    iget-object p1, p1, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/influencer/FanClub;

    iget-object p2, p0, Lcom/narvii/influencer/FanClubDetailFragment$3;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    const-string v0, "account"

    .line 9
    invoke-virtual {p2, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/account/AccountService;

    iget v0, p0, Lcom/narvii/influencer/FanClubDetailFragment$3;->val$ndcId:I

    .line 10
    invoke-virtual {p2, v0, p1}, Lcom/narvii/account/AccountService;->updateFanClub(ILcom/narvii/influencer/FanClub;)V

    .line 11
    new-instance p2, Lcom/narvii/notification/Notification;

    const-string/jumbo v0, "update"

    invoke-direct {p2, v0, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    iget-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment$3;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    .line 12
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    iget-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment$3;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    .line 13
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    :cond_1
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
    check-cast p2, Lcom/narvii/influencer/FanClubResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/influencer/FanClubDetailFragment$3;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/influencer/FanClubResponse;)V

    return-void
.end method
