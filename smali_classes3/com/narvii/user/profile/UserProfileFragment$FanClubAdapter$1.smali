.class Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "UserProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/influencer/FansInfoListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;Ljava/lang/Class;)V
    .locals 0

    .line 2737
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter$1;->this$1:Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;

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

    .line 2776
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter$1;->this$1:Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 2777
    iput-object p4, p1, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->userListError:Ljava/lang/String;

    .line 2778
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/influencer/FansInfoListResponse;)V
    .locals 3

    .line 2740
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter$1;->this$1:Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->request:Lcom/narvii/util/http/ApiRequest;

    .line 2741
    iput-object p2, p1, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->userListResponse:Lcom/narvii/influencer/FansInfoListResponse;

    .line 2742
    iget-object v1, p2, Lcom/narvii/influencer/FansInfoListResponse;->fanClubList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 2743
    new-instance v1, Lcom/narvii/util/FilterHelper;

    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter$1;->this$1:Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;

    iget-object p1, p1, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/narvii/util/FilterHelper;->keepBlockedUser(Z)Lcom/narvii/util/FilterHelper;

    move-result-object p1

    iget-object v1, p2, Lcom/narvii/influencer/FansInfoListResponse;->fanClubList:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p2, Lcom/narvii/influencer/FansInfoListResponse;->fanClubList:Ljava/util/List;

    .line 2745
    :cond_0
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter$1;->this$1:Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;

    iget-object p1, p1, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->userList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2746
    iget-object p1, p2, Lcom/narvii/influencer/FansInfoListResponse;->fanClubList:Ljava/util/List;

    if-eqz p1, :cond_5

    .line 2747
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/influencer/FansInfo;

    .line 2748
    iget-object v1, v1, Lcom/narvii/influencer/FansInfo;->fansUserProfile:Lcom/narvii/model/User;

    if-nez v1, :cond_1

    goto :goto_0

    .line 2751
    :cond_1
    iget-object v2, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter$1;->this$1:Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;

    iget-object v2, v2, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->userList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2755
    :cond_2
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter$1;->this$1:Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;

    iget-object p1, p1, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/user/profile/UserProfileFragment;->isMe()Z

    move-result p1

    if-nez p1, :cond_5

    .line 2757
    iget-object p1, p2, Lcom/narvii/influencer/FansInfoListResponse;->myFanClub:Lcom/narvii/influencer/FansInfo;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/narvii/influencer/FansInfo;->fansUserProfile:Lcom/narvii/model/User;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, v0

    :goto_1
    if-nez p1, :cond_4

    .line 2761
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter$1;->this$1:Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;

    iget-object p1, p1, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-static {p1}, Lcom/narvii/user/profile/UserProfileFragment;->access$200(Lcom/narvii/user/profile/UserProfileFragment;)Lcom/narvii/account/AccountService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p1

    :cond_4
    if-eqz p1, :cond_5

    .line 2764
    iget-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter$1;->this$1:Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;

    iget-object p2, p2, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->userList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/narvii/util/Utils;->removeId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 2765
    iget-object p2, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter$1;->this$1:Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;

    iget-object p2, p2, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;->userList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2769
    :cond_5
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter$1;->this$1:Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2737
    check-cast p2, Lcom/narvii/influencer/FansInfoListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/user/profile/UserProfileFragment$FanClubAdapter$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/influencer/FansInfoListResponse;)V

    return-void
.end method
