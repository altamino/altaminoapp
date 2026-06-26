.class Lcom/narvii/community/CommunityLaunchHelper$4;
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

    .line 581
    iput-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper$4;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/FullCommunityResponse;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 584
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper$4;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    iget-object v1, p2, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    iput-object v1, v0, Lcom/narvii/community/CommunityLaunchHelper;->updatedCommunity:Lcom/narvii/model/Community;

    .line 585
    sget v1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    .line 586
    new-instance v1, Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;

    invoke-static {v0}, Lcom/narvii/community/CommunityLaunchHelper;->access$100(Lcom/narvii/community/CommunityLaunchHelper;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 587
    iget-boolean v0, p2, Lcom/narvii/community/FullCommunityResponse;->isCurrentUserJoined:Z

    invoke-virtual {v1, v0}, Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;->sendCommunityUserInfoChanged(Z)V

    .line 589
    :cond_0
    iget-boolean v0, p2, Lcom/narvii/community/FullCommunityResponse;->isCurrentUserJoined:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/narvii/community/FullCommunityResponse;->currentUserInfo:Lcom/narvii/community/CommunityUserInfo;

    if-eqz v0, :cond_1

    .line 590
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper$4;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    invoke-static {v0}, Lcom/narvii/community/CommunityLaunchHelper;->access$400(Lcom/narvii/community/CommunityLaunchHelper;)Lcom/narvii/community/CommunityService;

    move-result-object v2

    iget-object v3, p2, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    const/4 v4, 0x1

    iget-object v0, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/DateTimeFormatter;->parseISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/narvii/community/CommunityService;->updateCommunity(Lcom/narvii/model/Community;ZJZZ)V

    .line 591
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 592
    iget-object v0, p2, Lcom/narvii/community/FullCommunityResponse;->currentUserInfo:Lcom/narvii/community/CommunityUserInfo;

    iget-object v0, v0, Lcom/narvii/community/CommunityUserInfo;->userProfile:Lcom/narvii/model/User;

    iget-object v2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v1}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;Z)V

    .line 595
    :cond_1
    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper$4;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    invoke-static {p1}, Lcom/narvii/community/CommunityLaunchHelper;->access$100(Lcom/narvii/community/CommunityLaunchHelper;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string v0, "affiliations"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/AffiliationsService;

    .line 596
    iget-boolean p2, p2, Lcom/narvii/community/FullCommunityResponse;->isCurrentUserJoined:Z

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/narvii/community/CommunityLaunchHelper$4;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    invoke-static {p2}, Lcom/narvii/community/CommunityLaunchHelper;->access$600(Lcom/narvii/community/CommunityLaunchHelper;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result p2

    if-nez p2, :cond_2

    .line 597
    iget-object p2, p0, Lcom/narvii/community/CommunityLaunchHelper$4;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    invoke-static {p2}, Lcom/narvii/community/CommunityLaunchHelper;->access$600(Lcom/narvii/community/CommunityLaunchHelper;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/community/AffiliationsService;->opAdd(I)V

    .line 598
    invoke-virtual {p1, v1}, Lcom/narvii/community/AffiliationsService;->refresh(Z)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 581
    check-cast p2, Lcom/narvii/community/FullCommunityResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/community/CommunityLaunchHelper$4;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/FullCommunityResponse;)V

    return-void
.end method
