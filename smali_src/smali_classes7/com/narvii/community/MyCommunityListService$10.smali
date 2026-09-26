.class Lcom/narvii/community/MyCommunityListService$10;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/community/MyCommunityListService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/community/ReminderCheckMapResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/MyCommunityListService;


# direct methods
.method constructor <init>(Lcom/narvii/community/MyCommunityListService;Ljava/lang/Class;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/community/MyCommunityListService$10;->this$0:Lcom/narvii/community/MyCommunityListService;

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
    .line 3
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Ljava/util/List;

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result p2

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    check-cast p2, Ljava/lang/Integer;

    .line 23
    .line 24
    iget-object p3, p0, Lcom/narvii/community/MyCommunityListService$10;->this$0:Lcom/narvii/community/MyCommunityListService;

    .line 25
    .line 26
    iget-object p3, p3, Lcom/narvii/community/MyCommunityListService;->reminderRequests:Ljava/util/HashMap;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    iget-object p3, p0, Lcom/narvii/community/MyCommunityListService$10;->this$0:Lcom/narvii/community/MyCommunityListService;

    .line 32
    .line 33
    iget-object p3, p3, Lcom/narvii/community/MyCommunityListService;->invalidateNotificationRequests:Ljava/util/HashSet;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 37
    .line 38
    iget-object p3, p0, Lcom/narvii/community/MyCommunityListService$10;->this$0:Lcom/narvii/community/MyCommunityListService;

    .line 39
    .line 40
    iget-object p3, p3, Lcom/narvii/community/MyCommunityListService;->invalidateNoticeRequests:Ljava/util/HashSet;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 44
    .line 45
    iget-object p3, p0, Lcom/narvii/community/MyCommunityListService$10;->this$0:Lcom/narvii/community/MyCommunityListService;

    .line 46
    .line 47
    iget-object p3, p3, Lcom/narvii/community/MyCommunityListService;->reminderRequestTimes:Ljava/util/HashMap;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/ReminderCheckMapResponse;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3
    iget-object v2, p2, Lcom/narvii/community/ReminderCheckMapResponse;->reminderCheckResultInCommunities:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/narvii/community/MyCommunityListService$10;->this$0:Lcom/narvii/community/MyCommunityListService;

    .line 4
    iget-object v4, v4, Lcom/narvii/community/MyCommunityListService;->reminders:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/community/ReminderCheck;

    .line 5
    iget-object v5, p2, Lcom/narvii/community/ReminderCheckMapResponse;->reminderCheckResultInCommunities:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/community/ReminderCheck;

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/narvii/community/MyCommunityListService$10;->this$0:Lcom/narvii/community/MyCommunityListService;

    .line 6
    iget-object v6, v6, Lcom/narvii/community/MyCommunityListService;->invalidateNotificationRequests:Ljava/util/HashSet;

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 7
    iget v6, v4, Lcom/narvii/community/ReminderCheck;->notificationsCount:I

    iput v6, v5, Lcom/narvii/community/ReminderCheck;->notificationsCount:I

    :cond_0
    iget-object v6, p0, Lcom/narvii/community/MyCommunityListService$10;->this$0:Lcom/narvii/community/MyCommunityListService;

    .line 8
    iget-object v6, v6, Lcom/narvii/community/MyCommunityListService;->invalidateNoticeRequests:Ljava/util/HashSet;

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 9
    iget v4, v4, Lcom/narvii/community/ReminderCheck;->noticesCount:I

    iput v4, v5, Lcom/narvii/community/ReminderCheck;->noticesCount:I

    :cond_1
    iget-object v4, p0, Lcom/narvii/community/MyCommunityListService$10;->this$0:Lcom/narvii/community/MyCommunityListService;

    .line 10
    iget-object v4, v4, Lcom/narvii/community/MyCommunityListService;->reminders:Ljava/util/HashMap;

    iget-object v5, p2, Lcom/narvii/community/ReminderCheckMapResponse;->reminderCheckResultInCommunities:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/community/ReminderCheck;

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/narvii/community/MyCommunityListService$10;->this$0:Lcom/narvii/community/MyCommunityListService;

    .line 11
    iget-object v4, v4, Lcom/narvii/community/MyCommunityListService;->reminderTimestamps:Ljava/util/HashMap;

    iget-object v5, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/narvii/community/MyCommunityListService$10;->this$0:Lcom/narvii/community/MyCommunityListService;

    .line 12
    iget-object v4, v4, Lcom/narvii/community/MyCommunityListService;->reminderRequestTimes:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService$10;->this$0:Lcom/narvii/community/MyCommunityListService;

    .line 15
    iget-object v0, v0, Lcom/narvii/community/MyCommunityListService;->reminderRequests:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService$10;->this$0:Lcom/narvii/community/MyCommunityListService;

    .line 16
    iget-object v0, v0, Lcom/narvii/community/MyCommunityListService;->invalidateNotificationRequests:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService$10;->this$0:Lcom/narvii/community/MyCommunityListService;

    .line 17
    iget-object v0, v0, Lcom/narvii/community/MyCommunityListService;->invalidateNoticeRequests:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/narvii/community/MyCommunityListService$10;->this$0:Lcom/narvii/community/MyCommunityListService;

    .line 18
    invoke-virtual {p1}, Lcom/narvii/community/MyCommunityListService;->dispatchReminderChanged()V

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
    check-cast p2, Lcom/narvii/community/ReminderCheckMapResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/community/MyCommunityListService$10;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/ReminderCheckMapResponse;)V

    return-void
.end method
