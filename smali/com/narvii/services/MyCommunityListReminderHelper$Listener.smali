.class Lcom/narvii/services/MyCommunityListReminderHelper$Listener;
.super Lcom/narvii/account/AccountService$ProfileListener;
.source "MyCommunityListReminderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/services/MyCommunityListReminderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Listener"
.end annotation


# instance fields
.field account:Lcom/narvii/account/AccountService;

.field communityId:I

.field myCommunityList:Lcom/narvii/community/MyCommunityListService;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/narvii/account/AccountService$ProfileListener;-><init>()V

    const-string v0, "config"

    .line 66
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 67
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    iput v0, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->communityId:I

    const-string v0, "account"

    .line 68
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->account:Lcom/narvii/account/AccountService;

    const-string v0, "myCommunityList"

    .line 69
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/community/MyCommunityListService;

    iput-object p1, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->myCommunityList:Lcom/narvii/community/MyCommunityListService;

    return-void
.end method


# virtual methods
.method public onCheckInChanged(ZI)V
    .locals 0

    .line 127
    invoke-virtual {p0}, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->update()V

    return-void
.end method

.method public onCheckInHistoryChanged(Lcom/narvii/model/CheckInHistory;)V
    .locals 0

    .line 132
    invoke-virtual {p0}, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->update()V

    return-void
.end method

.method public onNoticeCountChanged(I)V
    .locals 0

    .line 137
    invoke-virtual {p0}, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->update()V

    return-void
.end method

.method public onNotificationCountChanged(I)V
    .locals 0

    .line 122
    invoke-virtual {p0}, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->update()V

    return-void
.end method

.method public onProfileChanged(ILcom/narvii/model/User;)V
    .locals 0

    .line 117
    invoke-virtual {p0}, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->updateProfile()V

    return-void
.end method

.method start()V
    .locals 6

    .line 73
    iget-object v0, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->myCommunityList:Lcom/narvii/community/MyCommunityListService;

    iget v1, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->communityId:I

    invoke-virtual {v0, v1}, Lcom/narvii/community/MyCommunityListService;->getReminder(I)Lcom/narvii/community/ReminderCheck;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->myCommunityList:Lcom/narvii/community/MyCommunityListService;

    iget v2, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->communityId:I

    invoke-virtual {v1, v2}, Lcom/narvii/community/MyCommunityListService;->getReminderTimestamp(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 76
    iget-object v2, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->account:Lcom/narvii/account/AccountService;

    iget v3, v0, Lcom/narvii/community/ReminderCheck;->notificationsCount:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/narvii/account/AccountService;->updateNotificationCount(ILjava/lang/String;Z)V

    .line 77
    iget-object v2, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->account:Lcom/narvii/account/AccountService;

    iget v3, v0, Lcom/narvii/community/ReminderCheck;->noticesCount:I

    invoke-virtual {v2, v3, v1, v4}, Lcom/narvii/account/AccountService;->updateNoticeCount(ILjava/lang/String;Z)V

    .line 78
    iget-object v2, v0, Lcom/narvii/community/ReminderCheck;->hasCheckInToday:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    iget-object v3, v0, Lcom/narvii/community/ReminderCheck;->consecutiveCheckInDays:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 79
    iget-object v3, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v5, v0, Lcom/narvii/community/ReminderCheck;->consecutiveCheckInDays:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v2, v5, v1, v4}, Lcom/narvii/account/AccountService;->updateCheckInInfo(ZILjava/lang/String;Z)V

    .line 81
    :cond_0
    iget-object v0, v0, Lcom/narvii/community/ReminderCheck;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    if-eqz v0, :cond_1

    .line 82
    iget-object v2, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v2, v0, v1, v4}, Lcom/narvii/account/AccountService;->updateCheckInHistoryInfo(Lcom/narvii/model/CheckInHistory;Ljava/lang/String;Z)V

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0, p0}, Lcom/narvii/account/AccountService;->addProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    return-void
.end method

.method stop()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0, p0}, Lcom/narvii/account/AccountService;->removeProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    .line 90
    invoke-virtual {p0}, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->update()V

    .line 91
    invoke-virtual {p0}, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->updateProfile()V

    return-void
.end method

.method update()V
    .locals 4

    .line 95
    iget-object v0, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Lcom/narvii/community/ReminderCheck;

    invoke-direct {v0}, Lcom/narvii/community/ReminderCheck;-><init>()V

    .line 97
    iget-object v1, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getNotificationCount()I

    move-result v1

    iput v1, v0, Lcom/narvii/community/ReminderCheck;->notificationsCount:I

    .line 98
    iget-object v1, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getNoticeCount()I

    move-result v1

    iput v1, v0, Lcom/narvii/community/ReminderCheck;->noticesCount:I

    .line 99
    iget-object v1, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasCheckInToday()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/community/ReminderCheck;->hasCheckInToday:Ljava/lang/Boolean;

    .line 100
    iget-object v1, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getConsecutiveCheckInDays()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/community/ReminderCheck;->consecutiveCheckInDays:Ljava/lang/Integer;

    .line 101
    iget-object v1, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getCheckInHistory()Lcom/narvii/model/CheckInHistory;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/community/ReminderCheck;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    .line 102
    iget-object v1, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->myCommunityList:Lcom/narvii/community/MyCommunityListService;

    iget v2, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->communityId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/narvii/community/MyCommunityListService;->setReminder(ILcom/narvii/community/ReminderCheck;Z)Z

    :cond_0
    return-void
.end method

.method updateProfile()V
    .locals 6

    .line 107
    iget-object v0, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v1, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfileTimestamp()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 110
    :cond_0
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-static {v3}, Lcom/narvii/util/DateTimeFormatter;->formatISO8601(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 111
    :goto_0
    iget-object v2, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->myCommunityList:Lcom/narvii/community/MyCommunityListService;

    iget v3, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->communityId:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/narvii/community/MyCommunityListService;->updateUserProfile(ILcom/narvii/model/User;Ljava/lang/String;Z)Z

    :cond_1
    return-void
.end method
