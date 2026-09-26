.class Lcom/narvii/community/MyCommunityListService$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/pushservice/PushService$PushListener;


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
    iput-object p1, p0, Lcom/narvii/community/MyCommunityListService$11;->this$0:Lcom/narvii/community/MyCommunityListService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onInterceptNotification(Lcom/narvii/pushservice/PushPayload;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onPushPayload(Lcom/narvii/pushservice/PushPayload;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService$11;->this$0:Lcom/narvii/community/MyCommunityListService;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/community/MyCommunityListService;->adapter:Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;

    .line 5
    .line 6
    if-eqz v1, :cond_3

    .line 7
    .line 8
    iget-object v1, p1, Lcom/narvii/pushservice/PushPayload;->aps:Lcom/narvii/pushservice/PushAPS;

    .line 9
    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    iget v2, p1, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    .line 13
    .line 14
    if-eqz v2, :cond_3

    .line 15
    .line 16
    iget v1, v1, Lcom/narvii/pushservice/PushAPS;->badge:I

    .line 17
    .line 18
    if-lez v1, :cond_3

    .line 19
    .line 20
    iget-object v0, v0, Lcom/narvii/community/MyCommunityListService;->reminders:Ljava/util/HashMap;

    .line 21
    .line 22
    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    check-cast v0, Lcom/narvii/community/ReminderCheck;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iget v1, v0, Lcom/narvii/community/ReminderCheck;->notificationsCount:I

    .line 35
    .line 36
    iget-object v2, p0, Lcom/narvii/community/MyCommunityListService$11;->this$0:Lcom/narvii/community/MyCommunityListService;

    .line 37
    .line 38
    iget-object v2, v2, Lcom/narvii/community/MyCommunityListService;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 39
    .line 40
    iget v3, p1, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v3}, Lcom/narvii/chat/core/ChatService;->getUnreadChatCountInCurCommunity(I)I

    .line 44
    move-result v2

    .line 45
    add-int/2addr v1, v2

    .line 46
    .line 47
    iget v0, v0, Lcom/narvii/community/ReminderCheck;->noticesCount:I

    .line 48
    add-int/2addr v1, v0

    .line 49
    .line 50
    if-nez v1, :cond_3

    .line 51
    .line 52
    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->isChat()Z

    .line 54
    move-result v0

    .line 55
    .line 56
    if-eqz v0, :cond_1

    .line 57
    goto :goto_0

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->isMarketing()Z

    .line 61
    move-result v0

    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    goto :goto_0

    .line 65
    .line 66
    :cond_2
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService$11;->this$0:Lcom/narvii/community/MyCommunityListService;

    .line 67
    .line 68
    iget p1, p1, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p1}, Lcom/narvii/community/MyCommunityListService;->resetRequestTime(I)V

    .line 72
    .line 73
    iget-object p1, p0, Lcom/narvii/community/MyCommunityListService$11;->this$0:Lcom/narvii/community/MyCommunityListService;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->dispatchReminderChanged()V

    .line 77
    :cond_3
    :goto_0
    return-void
.end method
