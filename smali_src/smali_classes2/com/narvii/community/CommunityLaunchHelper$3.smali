.class Lcom/narvii/community/CommunityLaunchHelper$3;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/community/CommunityLaunchHelper;
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
.field final synthetic this$0:Lcom/narvii/community/CommunityLaunchHelper;


# direct methods
.method constructor <init>(Lcom/narvii/community/CommunityLaunchHelper;Ljava/lang/Class;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper$3;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

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
    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper$3;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    .line 3
    const/4 p2, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2, p4}, Lcom/narvii/community/CommunityLaunchHelper;->h(Lcom/narvii/community/CommunityLaunchHelper;ILjava/lang/String;)V

    .line 7
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/FullCommunityResponse;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper$3;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    .line 2
    iget-object v0, p2, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    iput-object v0, p1, Lcom/narvii/community/CommunityLaunchHelper;->updatedCommunity:Lcom/narvii/model/Community;

    .line 3
    iget-boolean v0, p1, Lcom/narvii/community/CommunityLaunchHelper;->visitorModeCompatible:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-boolean v0, p2, Lcom/narvii/community/FullCommunityResponse;->isCurrentUserJoined:Z

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/narvii/community/FullCommunityResponse;->currentUserInfo:Lcom/narvii/community/CommunityUserInfo;

    if-nez v0, :cond_2

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/community/CommunityLaunchHelper;->updateCommunityWhenNotJoined()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p2, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper$3;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    .line 5
    invoke-static {p1}, Lcom/narvii/community/CommunityLaunchHelper;->c(Lcom/narvii/community/CommunityLaunchHelper;)Lcom/narvii/community/CommunityService;

    move-result-object v2

    iget-object v3, p2, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    const/4 v4, 0x1

    iget-object p1, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-static {p1}, Lcom/narvii/util/DateTimeFormatter;->parseISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/narvii/community/CommunityService;->updateCommunity(Lcom/narvii/model/Community;ZJZZ)V

    :cond_1
    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper$3;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    .line 6
    invoke-static {p1}, Lcom/narvii/community/CommunityLaunchHelper;->d(Lcom/narvii/community/CommunityLaunchHelper;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f120d84

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/narvii/community/CommunityLaunchHelper;->h(Lcom/narvii/community/CommunityLaunchHelper;ILjava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {p1}, Lcom/narvii/community/CommunityLaunchHelper;->c(Lcom/narvii/community/CommunityLaunchHelper;)Lcom/narvii/community/CommunityService;

    move-result-object v2

    iget-object v3, p2, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    const/4 v4, 0x1

    iget-object p1, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-static {p1}, Lcom/narvii/util/DateTimeFormatter;->parseISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/narvii/community/CommunityService;->updateCommunity(Lcom/narvii/model/Community;ZJZZ)V

    .line 8
    iget-object p1, p2, Lcom/narvii/community/FullCommunityResponse;->currentUserInfo:Lcom/narvii/community/CommunityUserInfo;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/narvii/community/CommunityUserInfo;->userProfile:Lcom/narvii/model/User;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper$3;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    .line 9
    invoke-static {p1}, Lcom/narvii/community/CommunityLaunchHelper;->a(Lcom/narvii/community/CommunityLaunchHelper;)Lcom/narvii/account/AccountService;

    move-result-object p1

    iget-object v0, p2, Lcom/narvii/community/FullCommunityResponse;->currentUserInfo:Lcom/narvii/community/CommunityUserInfo;

    iget-object v0, v0, Lcom/narvii/community/CommunityUserInfo;->userProfile:Lcom/narvii/model/User;

    iget-object v2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v1}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;Z)V

    :cond_3
    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper$3;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    .line 10
    invoke-static {p1}, Lcom/narvii/community/CommunityLaunchHelper;->j(Lcom/narvii/community/CommunityLaunchHelper;)V

    :goto_0
    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper$3;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    .line 11
    invoke-static {p1}, Lcom/narvii/community/CommunityLaunchHelper;->d(Lcom/narvii/community/CommunityLaunchHelper;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string v0, "affiliations"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/AffiliationsService;

    .line 12
    iget-boolean p2, p2, Lcom/narvii/community/FullCommunityResponse;->isCurrentUserJoined:Z

    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/narvii/community/CommunityLaunchHelper$3;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    invoke-static {p2}, Lcom/narvii/community/CommunityLaunchHelper;->b(Lcom/narvii/community/CommunityLaunchHelper;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/narvii/community/CommunityLaunchHelper$3;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    .line 13
    invoke-static {p2}, Lcom/narvii/community/CommunityLaunchHelper;->b(Lcom/narvii/community/CommunityLaunchHelper;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/community/AffiliationsService;->opAdd(I)V

    .line 14
    invoke-virtual {p1, v1}, Lcom/narvii/community/AffiliationsService;->refresh(Z)V

    :cond_4
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
    check-cast p2, Lcom/narvii/community/FullCommunityResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/community/CommunityLaunchHelper$3;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/FullCommunityResponse;)V

    return-void
.end method
