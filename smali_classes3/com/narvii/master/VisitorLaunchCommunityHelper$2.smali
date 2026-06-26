.class Lcom/narvii/master/VisitorLaunchCommunityHelper$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "VisitorLaunchCommunityHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/VisitorLaunchCommunityHelper;->requestCommunityFullInfo(I)V
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
.field final synthetic this$0:Lcom/narvii/master/VisitorLaunchCommunityHelper;

.field final synthetic val$cid:I


# direct methods
.method constructor <init>(Lcom/narvii/master/VisitorLaunchCommunityHelper;Ljava/lang/Class;I)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper$2;->this$0:Lcom/narvii/master/VisitorLaunchCommunityHelper;

    iput p3, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper$2;->val$cid:I

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

    .line 135
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/FullCommunityResponse;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 107
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 108
    iget-object p1, p2, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    if-nez p1, :cond_0

    return-void

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper$2;->this$0:Lcom/narvii/master/VisitorLaunchCommunityHelper;

    iget-object p1, p1, Lcom/narvii/master/VisitorLaunchCommunityHelper;->context:Lcom/narvii/app/NVContext;

    const-string v0, "visitorMode"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/VisitorModeService;

    if-eqz p1, :cond_1

    .line 114
    iget-object v0, p2, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    invoke-virtual {p1, v0}, Lcom/narvii/community/VisitorModeService;->preloadThemePack(Lcom/narvii/model/Community;)V

    .line 117
    :cond_1
    iget-object p1, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper$2;->this$0:Lcom/narvii/master/VisitorLaunchCommunityHelper;

    iget-object p1, p1, Lcom/narvii/master/VisitorLaunchCommunityHelper;->context:Lcom/narvii/app/NVContext;

    const-string v0, "affiliations"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/AffiliationsService;

    .line 118
    iget-boolean v0, p2, Lcom/narvii/community/FullCommunityResponse;->isCurrentUserJoined:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper$2;->val$cid:I

    invoke-virtual {p1, v0}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 119
    iget v0, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper$2;->val$cid:I

    invoke-virtual {p1, v0}, Lcom/narvii/community/AffiliationsService;->opAdd(I)V

    .line 120
    invoke-virtual {p1, v1}, Lcom/narvii/community/AffiliationsService;->refresh(Z)V

    .line 123
    :cond_2
    iget-object p1, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper$2;->this$0:Lcom/narvii/master/VisitorLaunchCommunityHelper;

    invoke-static {p1}, Lcom/narvii/master/VisitorLaunchCommunityHelper;->access$000(Lcom/narvii/master/VisitorLaunchCommunityHelper;)Lcom/narvii/community/CommunityService;

    move-result-object v2

    iget-object v3, p2, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    const/4 v4, 0x1

    iget-object p1, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    .line 124
    invoke-static {p1}, Lcom/narvii/util/DateTimeFormatter;->parseISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const/4 v7, 0x1

    const/4 v8, 0x1

    .line 123
    invoke-virtual/range {v2 .. v8}, Lcom/narvii/community/CommunityService;->updateCommunity(Lcom/narvii/model/Community;ZJZZ)V

    .line 125
    iget-boolean p1, p2, Lcom/narvii/community/FullCommunityResponse;->isCurrentUserJoined:Z

    if-eqz p1, :cond_3

    iget-object p1, p2, Lcom/narvii/community/FullCommunityResponse;->currentUserInfo:Lcom/narvii/community/CommunityUserInfo;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/narvii/community/CommunityUserInfo;->userProfile:Lcom/narvii/model/User;

    if-eqz p1, :cond_3

    .line 126
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p1

    iget v0, p0, Lcom/narvii/master/VisitorLaunchCommunityHelper$2;->val$cid:I

    const-string v2, "account"

    invoke-virtual {p1, v0, v2}, Lcom/narvii/app/NVApplication;->getService(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    if-eqz p1, :cond_3

    .line 128
    iget-object v0, p2, Lcom/narvii/community/FullCommunityResponse;->currentUserInfo:Lcom/narvii/community/CommunityUserInfo;

    iget-object v0, v0, Lcom/narvii/community/CommunityUserInfo;->userProfile:Lcom/narvii/model/User;

    iget-object p2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {p1, v0, p2, v1}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 104
    check-cast p2, Lcom/narvii/community/FullCommunityResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/VisitorLaunchCommunityHelper$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/FullCommunityResponse;)V

    return-void
.end method
