.class public Lcom/narvii/master/MasterLeaveCommunityHelper;
.super Lcom/narvii/community/LeaveCommunityHelper;
.source "MasterLeaveCommunityHelper.java"


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/narvii/community/LeaveCommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected onLeaveCommunitySuccess(Lcom/narvii/model/Community;)V
    .locals 2

    .line 23
    invoke-super {p0, p1}, Lcom/narvii/community/LeaveCommunityHelper;->onLeaveCommunitySuccess(Lcom/narvii/model/Community;)V

    .line 24
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    const-string v1, "affiliations"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/AffiliationsService;

    .line 25
    iget v1, p1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v0, v1}, Lcom/narvii/community/AffiliationsService;->opRemove(I)V

    .line 27
    iget-object v0, p0, Lcom/narvii/community/LeaveCommunityHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "globalChat"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/util/GlobalChatService;

    .line 28
    iget v1, p1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/GlobalChatService;->removeCommunity(I)V

    .line 30
    iget-object v0, p0, Lcom/narvii/community/LeaveCommunityHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "rtc"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    .line 31
    iget v1, p1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v0, v1}, Lcom/narvii/chat/rtc/RtcService;->exitLiveChannelOfCommunity(I)V

    .line 32
    iget p1, p1, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v0, p1}, Lcom/narvii/chat/rtc/RtcService;->hideThreadDetailWindow(I)V

    return-void
.end method

.method protected onSendLeaveCommunityRequest(Lcom/narvii/model/Community;)V
    .locals 4

    .line 36
    iget-object v0, p0, Lcom/narvii/community/LeaveCommunityHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "logging"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/logging/LoggingService;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "ndcId"

    aput-object v3, v1, v2

    .line 37
    iget p1, p1, Lcom/narvii/model/Community;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "LeaveAmino"

    invoke-interface {v0, p1, v1}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
