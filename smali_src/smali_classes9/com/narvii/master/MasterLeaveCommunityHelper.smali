.class public Lcom/narvii/master/MasterLeaveCommunityHelper;
.super Lcom/narvii/community/LeaveCommunityHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/community/LeaveCommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    return-void
.end method


# virtual methods
.method protected onLeaveCommunitySuccess(Lcom/narvii/model/Community;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/community/LeaveCommunityHelper;->onLeaveCommunitySuccess(Lcom/narvii/model/Community;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    const-string v1, "affiliations"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Lcom/narvii/community/AffiliationsService;

    .line 16
    .line 17
    iget v1, p1, Lcom/narvii/model/Community;->id:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/narvii/community/AffiliationsService;->opRemove(I)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/community/LeaveCommunityHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 23
    .line 24
    const-string v1, "globalChat"

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    check-cast v0, Lcom/narvii/chat/util/GlobalChatService;

    .line 31
    .line 32
    iget v1, p1, Lcom/narvii/model/Community;->id:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/narvii/chat/util/GlobalChatService;->removeCommunity(I)V

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/community/LeaveCommunityHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 38
    .line 39
    const-string v1, "rtc"

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    .line 46
    .line 47
    iget v1, p1, Lcom/narvii/model/Community;->id:I

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/narvii/chat/rtc/RtcService;->exitLiveChannelOfCommunity(I)V

    .line 51
    .line 52
    iget p1, p1, Lcom/narvii/model/Community;->id:I

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1}, Lcom/narvii/chat/rtc/RtcService;->hideThreadDetailWindow(I)V

    .line 56
    return-void
.end method

.method protected onSendLeaveCommunityRequest(Lcom/narvii/model/Community;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/LeaveCommunityHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "logging"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/util/logging/LoggingService;

    .line 11
    const/4 v1, 0x2

    .line 12
    .line 13
    new-array v1, v1, [Ljava/lang/Object;

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    const-string v3, "ndcId"

    .line 17
    .line 18
    aput-object v3, v1, v2

    .line 19
    .line 20
    iget p1, p1, Lcom/narvii/model/Community;->id:I

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object p1

    .line 25
    const/4 v2, 0x1

    .line 26
    .line 27
    aput-object p1, v1, v2

    .line 28
    .line 29
    const-string p1, "LeaveAmino"

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, p1, v1}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    return-void
.end method
