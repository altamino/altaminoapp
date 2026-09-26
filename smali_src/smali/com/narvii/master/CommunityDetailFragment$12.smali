.class Lcom/narvii/master/CommunityDetailFragment$12;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/CommunityDetailFragment;->onLoginResult(ZLandroid/content/Intent;)V
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
.field final synthetic this$0:Lcom/narvii/master/CommunityDetailFragment;

.field final synthetic val$ndcId:I


# direct methods
.method constructor <init>(Lcom/narvii/master/CommunityDetailFragment;Ljava/lang/Class;I)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$12;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 3
    .line 4
    iput p3, p0, Lcom/narvii/master/CommunityDetailFragment$12;->val$ndcId:I

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
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$12;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 6
    const/4 p2, 0x0

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2}, Lcom/narvii/master/CommunityDetailFragment;->G(Lcom/narvii/master/CommunityDetailFragment;Z)V

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$12;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/narvii/master/CommunityDetailFragment;->mainAdapter:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$12;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 30
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

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/CommunityDetailFragment$12;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$12;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$12;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$12;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$12;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Lcom/narvii/master/CommunityDetailFragment;->G(Lcom/narvii/master/CommunityDetailFragment;Z)V

    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$12;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, Lcom/narvii/master/CommunityDetailFragment;->F(Lcom/narvii/master/CommunityDetailFragment;Z)V

    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$12;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 5
    iget-object p1, p1, Lcom/narvii/master/CommunityDetailFragment;->mainAdapter:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$12;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    const/4 v1, -0x1

    .line 6
    invoke-virtual {p1, v1}, Lcom/narvii/app/NVFragment;->setResult(I)V

    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$12;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 7
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$12;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 8
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v1, 0x7f010037

    const v2, 0x7f010038

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$12;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 9
    iget-object p1, p1, Lcom/narvii/master/CommunityDetailFragment;->mainAdapter:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->getResponse()Lcom/narvii/model/api/ObjectResponse;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/FullCommunityResponse;

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p1, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 11
    new-instance v1, Lcom/narvii/notification/Notification;

    const-string v2, "new"

    invoke-direct {v1, v2, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$12;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 12
    invoke-virtual {p1, v1}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 13
    :cond_2
    iget-object p1, p2, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    if-eqz p1, :cond_3

    iget v1, p0, Lcom/narvii/master/CommunityDetailFragment$12;->val$ndcId:I

    .line 14
    iput v1, p1, Lcom/narvii/model/User;->ndcId:I

    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$12;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    const-string v1, "account"

    .line 15
    invoke-virtual {p1, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 16
    iget-object v1, p2, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    iget-object p2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    iget v2, p0, Lcom/narvii/master/CommunityDetailFragment$12;->val$ndcId:I

    invoke-virtual {p1, v1, p2, v2, v0}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;IZ)V

    .line 17
    :cond_3
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p1

    const-string p2, "affiliations"

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/AffiliationsService;

    iget p2, p0, Lcom/narvii/master/CommunityDetailFragment$12;->val$ndcId:I

    .line 18
    invoke-virtual {p1, p2}, Lcom/narvii/community/AffiliationsService;->opAdd(I)V

    :cond_4
    :goto_1
    return-void
.end method
