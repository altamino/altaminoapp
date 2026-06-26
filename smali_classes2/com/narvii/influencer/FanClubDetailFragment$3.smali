.class Lcom/narvii/influencer/FanClubDetailFragment$3;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "FanClubDetailFragment.java"


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

    .line 277
    iput-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment$3;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    iput p3, p0, Lcom/narvii/influencer/FanClubDetailFragment$3;->val$ndcId:I

    iput-object p4, p0, Lcom/narvii/influencer/FanClubDetailFragment$3;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

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

    .line 300
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 301
    iget-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment$3;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 302
    iget-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment$3;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    invoke-static {p1}, Lcom/narvii/influencer/FanClubDetailFragment;->access$200(Lcom/narvii/influencer/FanClubDetailFragment;)Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 303
    iget-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment$3;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    invoke-static {p1}, Lcom/narvii/influencer/FanClubDetailFragment;->access$200(Lcom/narvii/influencer/FanClubDetailFragment;)Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    .line 305
    :cond_0
    iget-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment$3;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/influencer/FanClubResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 280
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 281
    iget-object p1, p2, Lcom/narvii/influencer/FanClubResponse;->fanClub:Lcom/narvii/influencer/FanClub;

    if-eqz p1, :cond_1

    .line 282
    iget-object p2, p0, Lcom/narvii/influencer/FanClubDetailFragment$3;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    iput-object p1, p2, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    .line 283
    iget-object p1, p2, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    iget v0, p0, Lcom/narvii/influencer/FanClubDetailFragment$3;->val$ndcId:I

    iput v0, p1, Lcom/narvii/influencer/FanClub;->ndcId:I

    .line 284
    invoke-static {p2}, Lcom/narvii/influencer/FanClubDetailFragment;->access$200(Lcom/narvii/influencer/FanClubDetailFragment;)Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 285
    iget-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment$3;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    invoke-static {p1}, Lcom/narvii/influencer/FanClubDetailFragment;->access$200(Lcom/narvii/influencer/FanClubDetailFragment;)Lcom/narvii/influencer/FanClubDetailFragment$RenewAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    .line 288
    :cond_0
    iget-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment$3;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    iget-object p1, p1, Lcom/narvii/influencer/FanClubDetailFragment;->fanClub:Lcom/narvii/influencer/FanClub;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/influencer/FanClub;

    .line 289
    iget-object p2, p0, Lcom/narvii/influencer/FanClubDetailFragment$3;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    const-string v0, "account"

    invoke-virtual {p2, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/account/AccountService;

    .line 290
    iget v0, p0, Lcom/narvii/influencer/FanClubDetailFragment$3;->val$ndcId:I

    invoke-virtual {p2, v0, p1}, Lcom/narvii/account/AccountService;->updateFanClub(ILcom/narvii/influencer/FanClub;)V

    .line 292
    new-instance p2, Lcom/narvii/notification/Notification;

    const-string/jumbo v0, "update"

    invoke-direct {p2, v0, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 293
    iget-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment$3;->this$0:Lcom/narvii/influencer/FanClubDetailFragment;

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 294
    iget-object p1, p0, Lcom/narvii/influencer/FanClubDetailFragment$3;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

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

    .line 277
    check-cast p2, Lcom/narvii/influencer/FanClubResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/influencer/FanClubDetailFragment$3;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/influencer/FanClubResponse;)V

    return-void
.end method
