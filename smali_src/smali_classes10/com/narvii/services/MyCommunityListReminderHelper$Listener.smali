.class Lcom/narvii/services/MyCommunityListReminderHelper$Listener;
.super Lcom/narvii/account/AccountService$ProfileListener;
.source "SourceFile"


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

.field private weakNvContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/narvii/app/NVContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/AccountService$ProfileListener;-><init>()V

    .line 4
    .line 5
    const-string v0, "config"

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 15
    move-result v0

    .line 16
    .line 17
    iput v0, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->communityId:I

    .line 18
    .line 19
    const-string v0, "account"

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->account:Lcom/narvii/account/AccountService;

    .line 28
    .line 29
    const-string v0, "myCommunityList"

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    check-cast v0, Lcom/narvii/community/MyCommunityListService;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->myCommunityList:Lcom/narvii/community/MyCommunityListService;

    .line 38
    .line 39
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 43
    .line 44
    iput-object v0, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->weakNvContext:Ljava/lang/ref/WeakReference;

    .line 45
    return-void
.end method


# virtual methods
.method public onCheckInChanged(ZI)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->update()V

    .line 4
    return-void
.end method

.method public onCheckInHistoryChanged(Lcom/narvii/model/CheckInHistory;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->update()V

    .line 4
    return-void
.end method

.method public onNoticeCountChanged(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->update()V

    .line 4
    return-void
.end method

.method public onNotificationCountChanged(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->update()V

    .line 4
    return-void
.end method

.method public onProfileChanged(ILcom/narvii/model/User;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->updateProfile()V

    .line 4
    return-void
.end method

.method start()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->myCommunityList:Lcom/narvii/community/MyCommunityListService;

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->communityId:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/community/MyCommunityListService;->getReminder(I)Lcom/narvii/community/ReminderCheck;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->myCommunityList:Lcom/narvii/community/MyCommunityListService;

    .line 11
    .line 12
    iget v2, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->communityId:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lcom/narvii/community/MyCommunityListService;->getReminderTimestamp(I)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v2, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->account:Lcom/narvii/account/AccountService;

    .line 21
    .line 22
    iget v3, v0, Lcom/narvii/community/ReminderCheck;->notificationsCount:I

    .line 23
    const/4 v4, 0x0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3, v1, v4}, Lcom/narvii/account/AccountService;->updateNotificationCount(ILjava/lang/String;Z)V

    .line 27
    .line 28
    iget-object v2, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->account:Lcom/narvii/account/AccountService;

    .line 29
    .line 30
    iget v3, v0, Lcom/narvii/community/ReminderCheck;->noticesCount:I

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3, v1, v4}, Lcom/narvii/account/AccountService;->updateNoticeCount(ILjava/lang/String;Z)V

    .line 34
    .line 35
    iget-object v2, v0, Lcom/narvii/community/ReminderCheck;->hasCheckInToday:Ljava/lang/Boolean;

    .line 36
    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    iget-object v3, v0, Lcom/narvii/community/ReminderCheck;->consecutiveCheckInDays:Ljava/lang/Integer;

    .line 40
    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    iget-object v3, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->account:Lcom/narvii/account/AccountService;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 47
    move-result v2

    .line 48
    .line 49
    iget-object v5, v0, Lcom/narvii/community/ReminderCheck;->consecutiveCheckInDays:Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 53
    move-result v5

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v2, v5, v1, v4}, Lcom/narvii/account/AccountService;->updateCheckInInfo(ZILjava/lang/String;Z)V

    .line 57
    .line 58
    :cond_0
    iget-object v0, v0, Lcom/narvii/community/ReminderCheck;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    .line 59
    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    iget-object v2, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->account:Lcom/narvii/account/AccountService;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v0, v1, v4}, Lcom/narvii/account/AccountService;->updateCheckInHistoryInfo(Lcom/narvii/model/CheckInHistory;Ljava/lang/String;Z)V

    .line 66
    .line 67
    :cond_1
    iget-object v0, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->account:Lcom/narvii/account/AccountService;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p0}, Lcom/narvii/account/AccountService;->addProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    .line 71
    return-void
.end method

.method stop()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->account:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/narvii/account/AccountService;->removeProfileListener(Lcom/narvii/account/AccountService$ProfileListener;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->update()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->updateProfile()V

    .line 12
    return-void
.end method

.method update()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->account:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/narvii/community/ReminderCheck;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Lcom/narvii/community/ReminderCheck;-><init>()V

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->account:Lcom/narvii/account/AccountService;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getNotificationCount()I

    .line 19
    move-result v1

    .line 20
    .line 21
    iput v1, v0, Lcom/narvii/community/ReminderCheck;->notificationsCount:I

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->account:Lcom/narvii/account/AccountService;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getNoticeCount()I

    .line 27
    move-result v1

    .line 28
    .line 29
    iput v1, v0, Lcom/narvii/community/ReminderCheck;->noticesCount:I

    .line 30
    .line 31
    iget-object v1, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->account:Lcom/narvii/account/AccountService;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasCheckInToday()Z

    .line 35
    move-result v1

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    iput-object v1, v0, Lcom/narvii/community/ReminderCheck;->hasCheckInToday:Ljava/lang/Boolean;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->account:Lcom/narvii/account/AccountService;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getConsecutiveCheckInDays()I

    .line 47
    move-result v1

    .line 48
    .line 49
    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    iput-object v1, v0, Lcom/narvii/community/ReminderCheck;->consecutiveCheckInDays:Ljava/lang/Integer;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->account:Lcom/narvii/account/AccountService;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getCheckInHistory()Lcom/narvii/model/CheckInHistory;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    iput-object v1, v0, Lcom/narvii/community/ReminderCheck;->checkInHistory:Lcom/narvii/model/CheckInHistory;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->myCommunityList:Lcom/narvii/community/MyCommunityListService;

    .line 64
    .line 65
    iget v2, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->communityId:I

    .line 66
    const/4 v3, 0x0

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2, v0, v3}, Lcom/narvii/community/MyCommunityListService;->setReminder(ILcom/narvii/community/ReminderCheck;Z)Z

    .line 70
    :cond_0
    return-void
.end method

.method updateProfile()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->account:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->account:Lcom/narvii/account/AccountService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfileTimestamp()J

    .line 14
    move-result-wide v1

    .line 15
    .line 16
    const-wide/16 v3, 0x0

    .line 17
    .line 18
    cmp-long v3, v1, v3

    .line 19
    .line 20
    if-nez v3, :cond_0

    .line 21
    const/4 v1, 0x0

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    new-instance v3, Ljava/util/Date;

    .line 25
    .line 26
    .line 27
    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 28
    .line 29
    .line 30
    invoke-static {v3}, Lcom/narvii/util/DateTimeFormatter;->formatISO8601(Ljava/util/Date;)Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    :goto_0
    iget-object v2, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->myCommunityList:Lcom/narvii/community/MyCommunityListService;

    .line 34
    .line 35
    iget v3, p0, Lcom/narvii/services/MyCommunityListReminderHelper$Listener;->communityId:I

    .line 36
    const/4 v4, 0x1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/narvii/community/MyCommunityListService;->updateUserProfile(ILcom/narvii/model/User;Ljava/lang/String;Z)Z

    .line 40
    :cond_1
    return-void
.end method
