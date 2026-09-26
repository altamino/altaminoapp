.class Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;->sendRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/community/MyCommunityListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;


# direct methods
.method constructor <init>(Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;Ljava/lang/Class;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler$1;->this$1:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
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
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler$1;->this$1:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;

    .line 6
    const/4 p2, 0x0

    .line 7
    .line 8
    iput-boolean p2, p1, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;->isRequesting:Z

    .line 9
    const/4 p2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-static {p1, p2}, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;->f(Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;Lcom/narvii/util/http/ApiRequest;)V

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler$1;->this$1:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p2, p2, p2}, Lcom/narvii/master/CommunitySearchListFragment;->y(Lcom/narvii/master/CommunitySearchListFragment;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/MyCommunityListResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler$1;->this$1:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p1, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;->isRequesting:Z

    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;->f(Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;Lcom/narvii/util/http/ApiRequest;)V

    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler$1;->this$1:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;

    .line 5
    iget-object p1, p1, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    iget-object v0, p2, Lcom/narvii/master/CommunityListResponse;->communityList:Ljava/util/List;

    iget-object v1, p2, Lcom/narvii/community/MyCommunityListResponse;->userInfoInCommunities:Ljava/util/Map;

    iget-object p2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-static {p1, v0, v1, p2}, Lcom/narvii/master/CommunitySearchListFragment;->y(Lcom/narvii/master/CommunitySearchListFragment;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

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
    check-cast p2, Lcom/narvii/community/MyCommunityListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/MyCommunityListResponse;)V

    return-void
.end method
