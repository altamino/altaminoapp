.class Lcom/narvii/community/MyCommunityListService$2;
.super Lcom/narvii/account/AccountService$ProfileListener;
.source "MyCommunityListService.java"


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

    .line 99
    iput-object p1, p0, Lcom/narvii/community/MyCommunityListService$2;->this$0:Lcom/narvii/community/MyCommunityListService;

    invoke-direct {p0}, Lcom/narvii/account/AccountService$ProfileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoticeCountChanged(I)V
    .locals 2

    .line 117
    invoke-super {p0, p1}, Lcom/narvii/account/AccountService$ProfileListener;->onNoticeCountChanged(I)V

    .line 118
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService$2;->this$0:Lcom/narvii/community/MyCommunityListService;

    iget-object v1, v0, Lcom/narvii/community/MyCommunityListService;->globalReminderCheck:Lcom/narvii/community/ReminderCheck;

    if-nez v1, :cond_0

    .line 119
    new-instance v1, Lcom/narvii/community/ReminderCheck;

    invoke-direct {v1}, Lcom/narvii/community/ReminderCheck;-><init>()V

    iput-object v1, v0, Lcom/narvii/community/MyCommunityListService;->globalReminderCheck:Lcom/narvii/community/ReminderCheck;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService$2;->this$0:Lcom/narvii/community/MyCommunityListService;

    iget-object v1, v0, Lcom/narvii/community/MyCommunityListService;->globalReminderCheck:Lcom/narvii/community/ReminderCheck;

    iput p1, v1, Lcom/narvii/community/ReminderCheck;->noticesCount:I

    .line 122
    invoke-static {v0}, Lcom/narvii/community/MyCommunityListService;->access$100(Lcom/narvii/community/MyCommunityListService;)V

    return-void
.end method

.method public onNotificationCountChanged(I)V
    .locals 2

    .line 107
    invoke-super {p0, p1}, Lcom/narvii/account/AccountService$ProfileListener;->onNotificationCountChanged(I)V

    .line 108
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService$2;->this$0:Lcom/narvii/community/MyCommunityListService;

    iget-object v1, v0, Lcom/narvii/community/MyCommunityListService;->globalReminderCheck:Lcom/narvii/community/ReminderCheck;

    if-nez v1, :cond_0

    .line 109
    new-instance v1, Lcom/narvii/community/ReminderCheck;

    invoke-direct {v1}, Lcom/narvii/community/ReminderCheck;-><init>()V

    iput-object v1, v0, Lcom/narvii/community/MyCommunityListService;->globalReminderCheck:Lcom/narvii/community/ReminderCheck;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService$2;->this$0:Lcom/narvii/community/MyCommunityListService;

    iget-object v1, v0, Lcom/narvii/community/MyCommunityListService;->globalReminderCheck:Lcom/narvii/community/ReminderCheck;

    iput p1, v1, Lcom/narvii/community/ReminderCheck;->notificationsCount:I

    .line 112
    invoke-static {v0}, Lcom/narvii/community/MyCommunityListService;->access$100(Lcom/narvii/community/MyCommunityListService;)V

    return-void
.end method

.method public onProfileChanged(ILcom/narvii/model/User;)V
    .locals 0

    return-void
.end method
