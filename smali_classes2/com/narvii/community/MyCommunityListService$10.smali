.class Lcom/narvii/community/MyCommunityListService$10;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "MyCommunityListService.java"


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

    .line 764
    iput-object p1, p0, Lcom/narvii/community/MyCommunityListService$10;->this$0:Lcom/narvii/community/MyCommunityListService;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

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

    .line 794
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 795
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 796
    iget-object p3, p0, Lcom/narvii/community/MyCommunityListService$10;->this$0:Lcom/narvii/community/MyCommunityListService;

    iget-object p3, p3, Lcom/narvii/community/MyCommunityListService;->reminderRequests:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    iget-object p3, p0, Lcom/narvii/community/MyCommunityListService$10;->this$0:Lcom/narvii/community/MyCommunityListService;

    iget-object p3, p3, Lcom/narvii/community/MyCommunityListService;->invalidateNotificationRequests:Ljava/util/HashSet;

    invoke-virtual {p3, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 798
    iget-object p3, p0, Lcom/narvii/community/MyCommunityListService$10;->this$0:Lcom/narvii/community/MyCommunityListService;

    iget-object p3, p3, Lcom/narvii/community/MyCommunityListService;->invalidateNoticeRequests:Ljava/util/HashSet;

    invoke-virtual {p3, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 799
    iget-object p3, p0, Lcom/narvii/community/MyCommunityListService$10;->this$0:Lcom/narvii/community/MyCommunityListService;

    iget-object p3, p3, Lcom/narvii/community/MyCommunityListService;->reminderRequestTimes:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

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

    .line 767
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 768
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

    .line 769
    iget-object v4, p0, Lcom/narvii/community/MyCommunityListService$10;->this$0:Lcom/narvii/community/MyCommunityListService;

    iget-object v4, v4, Lcom/narvii/community/MyCommunityListService;->reminders:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/community/ReminderCheck;

    .line 770
    iget-object v5, p2, Lcom/narvii/community/ReminderCheckMapResponse;->reminderCheckResultInCommunities:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/community/ReminderCheck;

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    .line 772
    iget-object v6, p0, Lcom/narvii/community/MyCommunityListService$10;->this$0:Lcom/narvii/community/MyCommunityListService;

    iget-object v6, v6, Lcom/narvii/community/MyCommunityListService;->invalidateNotificationRequests:Ljava/util/HashSet;

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 773
    iget v6, v4, Lcom/narvii/community/ReminderCheck;->notificationsCount:I

    iput v6, v5, Lcom/narvii/community/ReminderCheck;->notificationsCount:I

    .line 775
    :cond_0
    iget-object v6, p0, Lcom/narvii/community/MyCommunityListService$10;->this$0:Lcom/narvii/community/MyCommunityListService;

    iget-object v6, v6, Lcom/narvii/community/MyCommunityListService;->invalidateNoticeRequests:Ljava/util/HashSet;

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 776
    iget v4, v4, Lcom/narvii/community/ReminderCheck;->noticesCount:I

    iput v4, v5, Lcom/narvii/community/ReminderCheck;->noticesCount:I

    .line 779
    :cond_1
    iget-object v4, p0, Lcom/narvii/community/MyCommunityListService$10;->this$0:Lcom/narvii/community/MyCommunityListService;

    iget-object v4, v4, Lcom/narvii/community/MyCommunityListService;->reminders:Ljava/util/HashMap;

    iget-object v5, p2, Lcom/narvii/community/ReminderCheckMapResponse;->reminderCheckResultInCommunities:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    iget-object v4, p0, Lcom/narvii/community/MyCommunityListService$10;->this$0:Lcom/narvii/community/MyCommunityListService;

    iget-object v4, v4, Lcom/narvii/community/MyCommunityListService;->reminderTimestamps:Ljava/util/HashMap;

    iget-object v5, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    iget-object v4, p0, Lcom/narvii/community/MyCommunityListService$10;->this$0:Lcom/narvii/community/MyCommunityListService;

    iget-object v4, v4, Lcom/narvii/community/MyCommunityListService;->reminderRequestTimes:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 783
    :cond_2
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 784
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 785
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService$10;->this$0:Lcom/narvii/community/MyCommunityListService;

    iget-object v0, v0, Lcom/narvii/community/MyCommunityListService;->reminderRequests:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService$10;->this$0:Lcom/narvii/community/MyCommunityListService;

    iget-object v0, v0, Lcom/narvii/community/MyCommunityListService;->invalidateNotificationRequests:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 787
    iget-object v0, p0, Lcom/narvii/community/MyCommunityListService$10;->this$0:Lcom/narvii/community/MyCommunityListService;

    iget-object v0, v0, Lcom/narvii/community/MyCommunityListService;->invalidateNoticeRequests:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 789
    :cond_3
    iget-object p1, p0, Lcom/narvii/community/MyCommunityListService$10;->this$0:Lcom/narvii/community/MyCommunityListService;

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

    .line 764
    check-cast p2, Lcom/narvii/community/ReminderCheckMapResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/community/MyCommunityListService$10;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/ReminderCheckMapResponse;)V

    return-void
.end method
