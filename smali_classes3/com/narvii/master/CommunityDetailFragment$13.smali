.class Lcom/narvii/master/CommunityDetailFragment$13;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "CommunityDetailFragment.java"


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

    .line 1746
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$13;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    iput p3, p0, Lcom/narvii/master/CommunityDetailFragment$13;->val$ndcId:I

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

    .line 1786
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 1787
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$13;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/master/CommunityDetailFragment;->access$2102(Lcom/narvii/master/CommunityDetailFragment;Z)Z

    .line 1788
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$13;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    iget-object p1, p1, Lcom/narvii/master/CommunityDetailFragment;->mainAdapter:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 1789
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$13;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1746
    check-cast p2, Lcom/narvii/model/api/UserResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/CommunityDetailFragment$13;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1749
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$13;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$13;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$13;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_0

    .line 1752
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$13;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/master/CommunityDetailFragment;->access$2102(Lcom/narvii/master/CommunityDetailFragment;Z)Z

    .line 1753
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$13;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/narvii/master/CommunityDetailFragment;->access$502(Lcom/narvii/master/CommunityDetailFragment;Z)Z

    .line 1754
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$13;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    iget-object p1, p1, Lcom/narvii/master/CommunityDetailFragment;->mainAdapter:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    invoke-virtual {p1}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 1756
    sget p1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v1, 0x65

    if-ne p1, v1, :cond_1

    .line 1757
    new-instance p1, Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;

    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment$13;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-direct {p1, v1}, Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 1758
    invoke-virtual {p1, v0}, Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;->sendCommunityUserInfoChanged(Z)V

    .line 1760
    :cond_1
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$13;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Lcom/narvii/app/NVFragment;->setResult(I)V

    .line 1761
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$13;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    .line 1762
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$13;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const v1, 0x7f010029

    const v2, 0x7f01002a

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    const/4 p1, 0x0

    .line 1765
    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment$13;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    iget-object v1, v1, Lcom/narvii/master/CommunityDetailFragment;->mainAdapter:Lcom/narvii/master/CommunityDetailFragment$MainAdapter;

    invoke-virtual {v1}, Lcom/narvii/detail/DetailAdapter;->getResponse()Lcom/narvii/model/api/ObjectResponse;

    move-result-object v1

    check-cast v1, Lcom/narvii/community/FullCommunityResponse;

    if-eqz v1, :cond_2

    .line 1767
    iget-object p1, v1, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    :cond_2
    if-eqz p1, :cond_3

    .line 1770
    new-instance v1, Lcom/narvii/notification/Notification;

    const-string v2, "new"

    invoke-direct {v1, v2, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 1771
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$13;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    invoke-virtual {p1, v1}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 1774
    :cond_3
    iget-object p1, p2, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    if-eqz p1, :cond_4

    .line 1775
    iget v1, p0, Lcom/narvii/master/CommunityDetailFragment$13;->val$ndcId:I

    iput v1, p1, Lcom/narvii/model/User;->ndcId:I

    .line 1776
    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$13;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    const-string v1, "account"

    invoke-virtual {p1, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 1777
    iget-object v1, p2, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    iget-object p2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    iget v2, p0, Lcom/narvii/master/CommunityDetailFragment$13;->val$ndcId:I

    invoke-virtual {p1, v1, p2, v2, v0}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;IZ)V

    .line 1780
    :cond_4
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p1

    const-string p2, "affiliations"

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/AffiliationsService;

    .line 1781
    iget p2, p0, Lcom/narvii/master/CommunityDetailFragment$13;->val$ndcId:I

    invoke-virtual {p1, p2}, Lcom/narvii/community/AffiliationsService;->opAdd(I)V

    :cond_5
    :goto_0
    return-void
.end method
