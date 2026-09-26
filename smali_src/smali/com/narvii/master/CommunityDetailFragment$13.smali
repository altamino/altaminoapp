.class Lcom/narvii/master/CommunityDetailFragment$13;
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
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$13;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 3
    .line 4
    iput p3, p0, Lcom/narvii/master/CommunityDetailFragment$13;->val$ndcId:I

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
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$13;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 3
    const/4 p2, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Lcom/narvii/master/CommunityDetailFragment;->G(Lcom/narvii/master/CommunityDetailFragment;Z)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$13;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/narvii/master/CommunityDetailFragment;->mainAdapter:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$13;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

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

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/CommunityDetailFragment$13;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserResponse;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$13;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lcom/narvii/master/CommunityDetailFragment;->G(Lcom/narvii/master/CommunityDetailFragment;Z)V

    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$13;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    const/4 v0, 0x1

    .line 3
    invoke-static {p1, v0}, Lcom/narvii/master/CommunityDetailFragment;->F(Lcom/narvii/master/CommunityDetailFragment;Z)V

    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$13;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 4
    iget-object p1, p1, Lcom/narvii/master/CommunityDetailFragment;->mainAdapter:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$13;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 5
    iget-object p1, p1, Lcom/narvii/master/CommunityDetailFragment;->mainAdapter:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->getResponse()Lcom/narvii/model/api/ObjectResponse;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/FullCommunityResponse;

    if-eqz p1, :cond_0

    .line 6
    iget-object v0, p1, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    .line 7
    iget-object p1, p1, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    move-object v4, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object v4, v0

    :goto_0
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$13;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 8
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$13;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 9
    invoke-static {p1}, Lcom/narvii/master/CommunityDetailFragment;->C(Lcom/narvii/master/CommunityDetailFragment;)Lcom/narvii/community/CommunityLaunchHelper;

    move-result-object v1

    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$13;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    iget v2, p1, Lcom/narvii/master/CommunityDetailFragment;->cid:I

    iget-object v5, p2, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    iget-object v6, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p1, Lcom/narvii/master/CommunityDetailFragment;->intentAfterLaunch:Landroid/content/Intent;

    move-object v3, v0

    invoke-virtual/range {v1 .. v12}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;Ljava/lang/String;Lcom/narvii/model/User;Ljava/lang/String;Lcom/narvii/community/ReminderCheck;Ljava/lang/String;ZILandroid/graphics/drawable/Drawable;Landroid/content/Intent;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 10
    new-instance p1, Lcom/narvii/notification/Notification;

    const-string p2, "new"

    invoke-direct {p1, p2, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    iget-object p2, p0, Lcom/narvii/master/CommunityDetailFragment$13;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 11
    invoke-virtual {p2, p1}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 12
    :cond_2
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p1

    const-string p2, "affiliations"

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/AffiliationsService;

    iget p2, p0, Lcom/narvii/master/CommunityDetailFragment$13;->val$ndcId:I

    .line 13
    invoke-virtual {p1, p2}, Lcom/narvii/community/AffiliationsService;->opAdd(I)V

    return-void
.end method
