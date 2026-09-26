.class Lcom/narvii/community/MyCommunityListService$2;
.super Lcom/narvii/account/AccountService$ProfileListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/community/MyCommunityListService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/MyCommunityListService;


# direct methods
.method constructor <init>(Lcom/narvii/community/MyCommunityListService;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/community/MyCommunityListService$2;->this$0:Lcom/narvii/community/MyCommunityListService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/account/AccountService$ProfileListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onNoticeCountChanged(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/account/AccountService$ProfileListener;->onNoticeCountChanged(I)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService$2;->this$0:Lcom/narvii/community/MyCommunityListService;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/narvii/community/MyCommunityListService;->globalReminderCheck:Lcom/narvii/community/ReminderCheck;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Lcom/narvii/community/ReminderCheck;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1}, Lcom/narvii/community/ReminderCheck;-><init>()V

    .line 15
    .line 16
    iput-object v1, v0, Lcom/narvii/community/MyCommunityListService;->globalReminderCheck:Lcom/narvii/community/ReminderCheck;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService$2;->this$0:Lcom/narvii/community/MyCommunityListService;

    .line 19
    .line 20
    iget-object v1, v0, Lcom/narvii/community/MyCommunityListService;->globalReminderCheck:Lcom/narvii/community/ReminderCheck;

    .line 21
    .line 22
    iput p1, v1, Lcom/narvii/community/ReminderCheck;->noticesCount:I

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/narvii/community/MyCommunityListService;->d(Lcom/narvii/community/MyCommunityListService;)V

    .line 26
    return-void
.end method

.method public onNotificationCountChanged(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/account/AccountService$ProfileListener;->onNotificationCountChanged(I)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService$2;->this$0:Lcom/narvii/community/MyCommunityListService;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/narvii/community/MyCommunityListService;->globalReminderCheck:Lcom/narvii/community/ReminderCheck;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Lcom/narvii/community/ReminderCheck;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1}, Lcom/narvii/community/ReminderCheck;-><init>()V

    .line 15
    .line 16
    iput-object v1, v0, Lcom/narvii/community/MyCommunityListService;->globalReminderCheck:Lcom/narvii/community/ReminderCheck;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService$2;->this$0:Lcom/narvii/community/MyCommunityListService;

    .line 19
    .line 20
    iget-object v1, v0, Lcom/narvii/community/MyCommunityListService;->globalReminderCheck:Lcom/narvii/community/ReminderCheck;

    .line 21
    .line 22
    iput p1, v1, Lcom/narvii/community/ReminderCheck;->notificationsCount:I

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/narvii/community/MyCommunityListService;->d(Lcom/narvii/community/MyCommunityListService;)V

    .line 26
    return-void
.end method

.method public onProfileChanged(ILcom/narvii/model/User;)V
    .locals 0

    return-void
.end method
