.class Lcom/narvii/community/MyCommunityListService$11;
.super Ljava/lang/Object;
.source "MyCommunityListService.java"

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

    .line 804
    iput-object p1, p0, Lcom/narvii/community/MyCommunityListService$11;->this$0:Lcom/narvii/community/MyCommunityListService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 807
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService$11;->this$0:Lcom/narvii/community/MyCommunityListService;

    iget-object v1, v0, Lcom/narvii/community/MyCommunityListService;->adapter:Lcom/narvii/community/MyCommunityListService$MyCommunityListAdapter;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/narvii/pushservice/PushPayload;->aps:Lcom/narvii/pushservice/PushAPS;

    if-eqz v1, :cond_3

    iget v2, p1, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    if-eqz v2, :cond_3

    iget v1, v1, Lcom/narvii/pushservice/PushAPS;->badge:I

    if-lez v1, :cond_3

    .line 809
    iget-object v0, v0, Lcom/narvii/community/MyCommunityListService;->reminders:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/ReminderCheck;

    if-eqz v0, :cond_0

    .line 810
    iget v1, v0, Lcom/narvii/community/ReminderCheck;->notificationsCount:I

    iget-object v2, p0, Lcom/narvii/community/MyCommunityListService$11;->this$0:Lcom/narvii/community/MyCommunityListService;

    iget-object v2, v2, Lcom/narvii/community/MyCommunityListService;->chatService:Lcom/narvii/chat/core/ChatService;

    iget v3, p1, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    invoke-virtual {v2, v3}, Lcom/narvii/chat/core/ChatService;->getUnreadChatCountInCurCommunity(I)I

    move-result v2

    add-int/2addr v1, v2

    iget v0, v0, Lcom/narvii/community/ReminderCheck;->noticesCount:I

    add-int/2addr v1, v0

    if-nez v1, :cond_3

    .line 811
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->isChat()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 813
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/pushservice/PushPayload;->isMarketing()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 816
    :cond_2
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService$11;->this$0:Lcom/narvii/community/MyCommunityListService;

    iget p1, p1, Lcom/narvii/pushservice/PushPayload;->ndcId:I

    invoke-virtual {v0, p1}, Lcom/narvii/community/MyCommunityListService;->resetRequestTime(I)V

    .line 817
    iget-object p1, p0, Lcom/narvii/community/MyCommunityListService$11;->this$0:Lcom/narvii/community/MyCommunityListService;

    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->dispatchReminderChanged()V

    :cond_3
    :goto_0
    return-void
.end method
