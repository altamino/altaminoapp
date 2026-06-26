.class Lcom/narvii/notice/ImportNoticeListAdapter$3;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "ImportNoticeListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/notice/ImportNoticeListAdapter;->requestCommunityInfo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/community/FullCommunityResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/notice/ImportNoticeListAdapter;

.field final synthetic val$cid:I

.field final synthetic val$community:Lcom/narvii/community/CommunityService;


# direct methods
.method constructor <init>(Lcom/narvii/notice/ImportNoticeListAdapter;Ljava/lang/Class;Lcom/narvii/community/CommunityService;I)V
    .locals 0

    .line 566
    iput-object p1, p0, Lcom/narvii/notice/ImportNoticeListAdapter$3;->this$0:Lcom/narvii/notice/ImportNoticeListAdapter;

    iput-object p3, p0, Lcom/narvii/notice/ImportNoticeListAdapter$3;->val$community:Lcom/narvii/community/CommunityService;

    iput p4, p0, Lcom/narvii/notice/ImportNoticeListAdapter$3;->val$cid:I

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

    .line 569
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/FullCommunityResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 574
    iget-object p1, p0, Lcom/narvii/notice/ImportNoticeListAdapter$3;->val$community:Lcom/narvii/community/CommunityService;

    iget-object v0, p2, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    iget-object v1, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v1}, Lcom/narvii/community/CommunityService;->updateCommunity(Lcom/narvii/model/Community;ZLjava/lang/String;)V

    .line 575
    iget-object p1, p2, Lcom/narvii/community/FullCommunityResponse;->currentUserInfo:Lcom/narvii/community/CommunityUserInfo;

    if-eqz p1, :cond_0

    .line 576
    iget-object v0, p0, Lcom/narvii/notice/ImportNoticeListAdapter$3;->this$0:Lcom/narvii/notice/ImportNoticeListAdapter;

    iget-object v0, v0, Lcom/narvii/notice/ImportNoticeListAdapter;->account:Lcom/narvii/account/AccountService;

    iget-object p1, p1, Lcom/narvii/community/CommunityUserInfo;->userProfile:Lcom/narvii/model/User;

    iget-object p2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    iget v1, p0, Lcom/narvii/notice/ImportNoticeListAdapter$3;->val$cid:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;IZ)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 566
    check-cast p2, Lcom/narvii/community/FullCommunityResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/notice/ImportNoticeListAdapter$3;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/FullCommunityResponse;)V

    return-void
.end method
