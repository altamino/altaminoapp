.class Lcom/narvii/drawer/DrawerHost$16;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$16;->this$0:Lcom/narvii/drawer/DrawerHost;

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
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$16;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 3
    const/4 p2, 0x2

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p2}, Lcom/narvii/drawer/DrawerHost;->onRefreshFinish(I)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$16;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 9
    .line 10
    const-wide/16 p2, 0x0

    .line 11
    .line 12
    iput-wide p2, p1, Lcom/narvii/drawer/DrawerHost;->refreshCommunityInfoTime:J

    .line 13
    const/4 p2, 0x0

    .line 14
    .line 15
    iput-boolean p2, p1, Lcom/narvii/drawer/DrawerHost;->isRequestingCommunity:Z

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->n(Lcom/narvii/drawer/DrawerHost;)V

    .line 19
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/FullCommunityResponse;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$16;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 2
    iget-object v0, p2, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    invoke-static {p1, v0}, Lcom/narvii/drawer/DrawerHost;->j(Lcom/narvii/drawer/DrawerHost;Lcom/narvii/model/Community;)V

    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$16;->this$0:Lcom/narvii/drawer/DrawerHost;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p1, Lcom/narvii/drawer/DrawerHost;->isRequestingCommunity:Z

    .line 4
    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->n(Lcom/narvii/drawer/DrawerHost;)V

    .line 5
    sget p1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    const/16 v0, 0x64

    const/4 v1, 0x1

    const-string v2, "affiliations"

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$16;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 6
    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/AffiliationsService;

    .line 7
    iget-boolean v0, p2, Lcom/narvii/community/FullCommunityResponse;->isCurrentUserJoined:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$16;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget v0, v0, Lcom/narvii/drawer/DrawerHost;->myCommunityId:I

    invoke-virtual {p1, v0}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$16;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 8
    iget v0, v0, Lcom/narvii/drawer/DrawerHost;->myCommunityId:I

    invoke-virtual {p1, v0}, Lcom/narvii/community/AffiliationsService;->opAdd(I)V

    .line 9
    invoke-virtual {p1, v1}, Lcom/narvii/community/AffiliationsService;->refresh(Z)V

    .line 10
    :cond_0
    sget-boolean p1, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$16;->this$0:Lcom/narvii/drawer/DrawerHost;

    iget-object v0, p1, Lcom/narvii/drawer/DrawerHost;->community:Lcom/narvii/community/CommunityService;

    iget p1, p1, Lcom/narvii/drawer/DrawerHost;->myCommunityId:I

    invoke-virtual {v0, p1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object p1

    if-nez p1, :cond_3

    :cond_1
    iget-object p1, p2, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/narvii/model/Community;->themePackUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$16;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 11
    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    const-string/jumbo v0, "themePack"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/theme/ThemePackService;

    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$16;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 12
    iget v0, v0, Lcom/narvii/drawer/DrawerHost;->cid:I

    invoke-virtual {p1, v0}, Lcom/narvii/theme/ThemePackService;->getThemeInfo(I)Lcom/narvii/theme/ThemeInfo;

    move-result-object v0

    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost$16;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 13
    iget-object v3, v3, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v3, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/community/AffiliationsService;

    iget-object v3, p0, Lcom/narvii/drawer/DrawerHost$16;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 14
    iget v3, v3, Lcom/narvii/drawer/DrawerHost;->cid:I

    invoke-virtual {v2, v3}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    .line 15
    iget v0, v0, Lcom/narvii/theme/ThemeInfo;->revision:I

    iget-object v2, p2, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    invoke-virtual {v2}, Lcom/narvii/model/Community;->themePackRevision()I

    move-result v2

    if-eq v0, v2, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$16;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 16
    iget v0, v0, Lcom/narvii/drawer/DrawerHost;->cid:I

    invoke-virtual {p1, v0}, Lcom/narvii/theme/ThemePackService;->addToDownLoadList(I)V

    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$16;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 17
    iget v0, v0, Lcom/narvii/drawer/DrawerHost;->cid:I

    iget-object v2, p2, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    invoke-virtual {v2}, Lcom/narvii/model/Community;->themePackRevision()I

    move-result v2

    iget-object v3, p2, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    invoke-virtual {v3}, Lcom/narvii/model/Community;->themePackUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v3}, Lcom/narvii/theme/ThemePackService;->require(IILjava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$16;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 18
    iget-object v2, p1, Lcom/narvii/drawer/DrawerHost;->community:Lcom/narvii/community/CommunityService;

    iget-object v3, p2, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    const/4 v4, 0x1

    iget-object p1, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    .line 19
    invoke-static {p1}, Lcom/narvii/util/DateTimeFormatter;->parseISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const/4 v7, 0x1

    const/4 v8, 0x1

    .line 20
    invoke-virtual/range {v2 .. v8}, Lcom/narvii/community/CommunityService;->updateCommunity(Lcom/narvii/model/Community;ZJZZ)V

    .line 21
    iget-object p1, p2, Lcom/narvii/community/FullCommunityResponse;->currentUserInfo:Lcom/narvii/community/CommunityUserInfo;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$16;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 22
    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    iget-object p1, p1, Lcom/narvii/community/CommunityUserInfo;->userProfile:Lcom/narvii/model/User;

    iget-object v2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v1}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;Z)V

    :cond_4
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$16;->this$0:Lcom/narvii/drawer/DrawerHost;

    const/4 v0, 0x2

    .line 23
    invoke-virtual {p1, v0}, Lcom/narvii/drawer/DrawerHost;->onRefreshFinish(I)V

    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$16;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 24
    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    const-string v0, "_drawerResponseListener"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/Callback;

    if-eqz p1, :cond_5

    .line 25
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

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

    .line 1
    check-cast p2, Lcom/narvii/community/FullCommunityResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/drawer/DrawerHost$16;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/FullCommunityResponse;)V

    return-void
.end method
