.class Lcom/narvii/drawer/DrawerHost$16;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "DrawerHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/drawer/DrawerHost;
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
.field final synthetic this$0:Lcom/narvii/drawer/DrawerHost;


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerHost;Ljava/lang/Class;)V
    .locals 0

    .line 1445
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$16;->this$0:Lcom/narvii/drawer/DrawerHost;

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

    .line 1496
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$16;->this$0:Lcom/narvii/drawer/DrawerHost;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/narvii/drawer/DrawerHost;->onRefreshFinish(I)V

    .line 1497
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$16;->this$0:Lcom/narvii/drawer/DrawerHost;

    const-wide/16 p2, 0x0

    iput-wide p2, p1, Lcom/narvii/drawer/DrawerHost;->refreshCommunityInfoTime:J

    const/4 p2, 0x0

    .line 1498
    iput-boolean p2, p1, Lcom/narvii/drawer/DrawerHost;->isRequestingCommunity:Z

    .line 1499
    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->access$800(Lcom/narvii/drawer/DrawerHost;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/FullCommunityResponse;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1449
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$16;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object v0, p2, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    invoke-static {p1, v0}, Lcom/narvii/drawer/DrawerHost;->access$702(Lcom/narvii/drawer/DrawerHost;Lcom/narvii/model/Community;)Lcom/narvii/model/Community;

    .line 1451
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$16;->this$0:Lcom/narvii/drawer/DrawerHost;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/narvii/drawer/DrawerHost;->isRequestingCommunity:Z

    .line 1452
    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->access$800(Lcom/narvii/drawer/DrawerHost;)V

    .line 1454
    sget p1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    .line 1455
    new-instance p1, Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$16;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object v1, v1, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p1, v1}, Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 1456
    iget-boolean v1, p2, Lcom/narvii/community/FullCommunityResponse;->isCurrentUserJoined:Z

    invoke-virtual {p1, v1}, Lcom/narvii/master/invitation/PrivateCommunityCheckHelper;->sendCommunityUserInfoChanged(Z)V

    .line 1458
    :cond_0
    sget p1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v1, 0x64

    const/4 v2, 0x1

    const-string v3, "affiliations"

    if-ne p1, v1, :cond_1

    .line 1461
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$16;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/AffiliationsService;

    .line 1462
    iget-boolean v1, p2, Lcom/narvii/community/FullCommunityResponse;->isCurrentUserJoined:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$16;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget v1, v1, Lcom/narvii/drawer/DrawerHost;->myCommunityId:I

    invoke-virtual {p1, v1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1463
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$16;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget v1, v1, Lcom/narvii/drawer/DrawerHost;->myCommunityId:I

    invoke-virtual {p1, v1}, Lcom/narvii/community/AffiliationsService;->opAdd(I)V

    .line 1464
    invoke-virtual {p1, v2}, Lcom/narvii/community/AffiliationsService;->refresh(Z)V

    .line 1467
    :cond_1
    sget-boolean p1, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$16;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object v1, p1, Lcom/narvii/drawer/DrawerHost;->community:Lcom/narvii/community/CommunityService;

    iget p1, p1, Lcom/narvii/drawer/DrawerHost;->myCommunityId:I

    invoke-virtual {v1, p1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object p1

    if-nez p1, :cond_4

    :cond_2
    iget-object p1, p2, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/narvii/model/Community;->themePackUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 1468
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$16;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    const-string v1, "themePack"

    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/theme/ThemePackService;

    .line 1469
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$16;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget v1, v1, Lcom/narvii/drawer/DrawerHost;->cid:I

    invoke-virtual {p1, v1}, Lcom/narvii/theme/ThemePackService;->getThemeInfo(I)Lcom/narvii/theme/ThemeInfo;

    move-result-object v1

    .line 1470
    iget-object v4, p0, Lcom/narvii/drawer/DrawerHost$16;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object v4, v4, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v4, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/community/AffiliationsService;

    .line 1471
    iget-object v4, p0, Lcom/narvii/drawer/DrawerHost$16;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget v4, v4, Lcom/narvii/drawer/DrawerHost;->cid:I

    invoke-virtual {v3, v4}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v1, :cond_3

    .line 1472
    iget v1, v1, Lcom/narvii/theme/ThemeInfo;->revision:I

    iget-object v3, p2, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    invoke-virtual {v3}, Lcom/narvii/model/Community;->themePackRevision()I

    move-result v3

    if-eq v1, v3, :cond_4

    .line 1473
    :cond_3
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$16;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget v1, v1, Lcom/narvii/drawer/DrawerHost;->cid:I

    invoke-virtual {p1, v1}, Lcom/narvii/theme/ThemePackService;->addToDownLoadList(I)V

    .line 1474
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$16;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget v1, v1, Lcom/narvii/drawer/DrawerHost;->cid:I

    iget-object v3, p2, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    invoke-virtual {v3}, Lcom/narvii/model/Community;->themePackRevision()I

    move-result v3

    iget-object v4, p2, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    invoke-virtual {v4}, Lcom/narvii/model/Community;->themePackUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v3, v4}, Lcom/narvii/theme/ThemePackService;->require(IILjava/lang/String;)V

    .line 1477
    :cond_4
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$16;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object v3, p1, Lcom/narvii/drawer/DrawerHost;->community:Lcom/narvii/community/CommunityService;

    iget-object v4, p2, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    const/4 v5, 0x1

    iget-object p1, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    .line 1478
    invoke-static {p1}, Lcom/narvii/util/DateTimeFormatter;->parseISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 1477
    invoke-virtual/range {v3 .. v9}, Lcom/narvii/community/CommunityService;->updateCommunity(Lcom/narvii/model/Community;ZJZZ)V

    .line 1479
    iget-object p1, p2, Lcom/narvii/community/FullCommunityResponse;->currentUserInfo:Lcom/narvii/community/CommunityUserInfo;

    if-eqz p1, :cond_5

    .line 1480
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$16;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object v1, v1, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    iget-object p1, p1, Lcom/narvii/community/CommunityUserInfo;->userProfile:Lcom/narvii/model/User;

    iget-object v3, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {v1, p1, v3, v2}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;Z)V

    .line 1482
    :cond_5
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$16;->this$0:Lcom/narvii/drawer/DrawerHost;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/narvii/drawer/DrawerHost;->onRefreshFinish(I)V

    .line 1484
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$16;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    const-string v1, "_drawerResponseListener"

    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/Callback;

    if-eqz p1, :cond_6

    .line 1486
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 1489
    :cond_6
    sget p1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    if-ne p1, v0, :cond_7

    .line 1490
    new-instance p1, Lcom/narvii/util/FacebookUtils;

    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$16;->this$0:Lcom/narvii/drawer/DrawerHost;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/FacebookUtils;-><init>(Landroid/content/Context;)V

    iget-object p2, p2, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    invoke-virtual {p1, p2}, Lcom/narvii/util/FacebookUtils;->onCommunityResp(Lcom/narvii/model/Community;)V

    :cond_7
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1445
    check-cast p2, Lcom/narvii/community/FullCommunityResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/drawer/DrawerHost$16;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/FullCommunityResponse;)V

    return-void
.end method
