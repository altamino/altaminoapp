.class Lcom/narvii/community/CommunityLaunchHelper$3;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "CommunityLaunchHelper.java"


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

    .line 547
    iput-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper$3;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

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

    .line 577
    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper$3;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    const/4 p2, 0x0

    invoke-static {p1, p2, p4}, Lcom/narvii/community/CommunityLaunchHelper;->access$300(Lcom/narvii/community/CommunityLaunchHelper;ILjava/lang/String;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/FullCommunityResponse;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 550
    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper$3;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    iget-object v0, p2, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    iput-object v0, p1, Lcom/narvii/community/CommunityLaunchHelper;->updatedCommunity:Lcom/narvii/model/Community;

    .line 551
    iget-boolean p1, p1, Lcom/narvii/community/CommunityLaunchHelper;->visitorModeCompatible:Z

    const/4 v0, 0x1

    if-nez p1, :cond_2

    iget-boolean p1, p2, Lcom/narvii/community/FullCommunityResponse;->isCurrentUserJoined:Z

    if-eqz p1, :cond_0

    iget-object p1, p2, Lcom/narvii/community/FullCommunityResponse;->currentUserInfo:Lcom/narvii/community/CommunityUserInfo;

    if-nez p1, :cond_2

    .line 552
    :cond_0
    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper$3;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    invoke-virtual {p1}, Lcom/narvii/community/CommunityLaunchHelper;->updateCommunityWhenNotJoined()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p2, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    if-eqz p1, :cond_1

    .line 553
    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper$3;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    invoke-static {p1}, Lcom/narvii/community/CommunityLaunchHelper;->access$400(Lcom/narvii/community/CommunityLaunchHelper;)Lcom/narvii/community/CommunityService;

    move-result-object v1

    iget-object v2, p2, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    const/4 v3, 0x1

    iget-object p1, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-static {p1}, Lcom/narvii/util/DateTimeFormatter;->parseISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/narvii/community/CommunityService;->updateCommunity(Lcom/narvii/model/Community;ZJZZ)V

    .line 555
    :cond_1
    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper$3;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    invoke-static {p1}, Lcom/narvii/community/CommunityLaunchHelper;->access$100(Lcom/narvii/community/CommunityLaunchHelper;)Lcom/narvii/app/NVContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0c57

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/narvii/community/CommunityLaunchHelper;->access$300(Lcom/narvii/community/CommunityLaunchHelper;ILjava/lang/String;)V

    goto :goto_0

    .line 557
    :cond_2
    sget p1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v1, 0x65

    if-ne p1, v1, :cond_3

    .line 558
    new-instance p1, Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;

    iget-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper$3;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    invoke-static {v1}, Lcom/narvii/community/CommunityLaunchHelper;->access$100(Lcom/narvii/community/CommunityLaunchHelper;)Lcom/narvii/app/NVContext;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 559
    iget-boolean v1, p2, Lcom/narvii/community/FullCommunityResponse;->isCurrentUserJoined:Z

    invoke-virtual {p1, v1}, Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;->sendCommunityUserInfoChanged(Z)V

    .line 561
    :cond_3
    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper$3;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    invoke-static {p1}, Lcom/narvii/community/CommunityLaunchHelper;->access$400(Lcom/narvii/community/CommunityLaunchHelper;)Lcom/narvii/community/CommunityService;

    move-result-object v1

    iget-object v2, p2, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    const/4 v3, 0x1

    iget-object p1, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-static {p1}, Lcom/narvii/util/DateTimeFormatter;->parseISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/narvii/community/CommunityService;->updateCommunity(Lcom/narvii/model/Community;ZJZZ)V

    .line 562
    iget-object p1, p2, Lcom/narvii/community/FullCommunityResponse;->currentUserInfo:Lcom/narvii/community/CommunityUserInfo;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/narvii/community/CommunityUserInfo;->userProfile:Lcom/narvii/model/User;

    if-eqz p1, :cond_4

    .line 563
    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper$3;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    invoke-static {p1}, Lcom/narvii/community/CommunityLaunchHelper;->access$500(Lcom/narvii/community/CommunityLaunchHelper;)Lcom/narvii/account/AccountService;

    move-result-object p1

    iget-object v1, p2, Lcom/narvii/community/FullCommunityResponse;->currentUserInfo:Lcom/narvii/community/CommunityUserInfo;

    iget-object v1, v1, Lcom/narvii/community/CommunityUserInfo;->userProfile:Lcom/narvii/model/User;

    iget-object v2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v0}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;Z)V

    .line 565
    :cond_4
    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper$3;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    invoke-static {p1}, Lcom/narvii/community/CommunityLaunchHelper;->access$200(Lcom/narvii/community/CommunityLaunchHelper;)V

    .line 568
    :goto_0
    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper$3;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    invoke-static {p1}, Lcom/narvii/community/CommunityLaunchHelper;->access$100(Lcom/narvii/community/CommunityLaunchHelper;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string v1, "affiliations"

    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/AffiliationsService;

    .line 569
    iget-boolean p2, p2, Lcom/narvii/community/FullCommunityResponse;->isCurrentUserJoined:Z

    if-eqz p2, :cond_5

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/narvii/community/CommunityLaunchHelper$3;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    invoke-static {p2}, Lcom/narvii/community/CommunityLaunchHelper;->access$600(Lcom/narvii/community/CommunityLaunchHelper;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result p2

    if-nez p2, :cond_5

    .line 570
    iget-object p2, p0, Lcom/narvii/community/CommunityLaunchHelper$3;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    invoke-static {p2}, Lcom/narvii/community/CommunityLaunchHelper;->access$600(Lcom/narvii/community/CommunityLaunchHelper;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/community/AffiliationsService;->opAdd(I)V

    .line 571
    invoke-virtual {p1, v0}, Lcom/narvii/community/AffiliationsService;->refresh(Z)V

    :cond_5
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 547
    check-cast p2, Lcom/narvii/community/FullCommunityResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/community/CommunityLaunchHelper$3;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/FullCommunityResponse;)V

    return-void
.end method
