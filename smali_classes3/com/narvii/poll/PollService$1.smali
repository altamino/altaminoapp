.class Lcom/narvii/poll/PollService$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "PollService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/poll/PollService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poll/PollService;


# direct methods
.method constructor <init>(Lcom/narvii/poll/PollService;Ljava/lang/Class;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/narvii/poll/PollService$1;->this$0:Lcom/narvii/poll/PollService;

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

    .line 140
    invoke-virtual {p0, p1}, Lcom/narvii/poll/PollService$1;->removeRunning(Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/poll/PollService$Task;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 142
    iget-object p2, p0, Lcom/narvii/poll/PollService$1;->this$0:Lcom/narvii/poll/PollService;

    iget-object p2, p2, Lcom/narvii/poll/PollService;->listeners:Lcom/narvii/util/EventDispatcher;

    new-instance p3, Lcom/narvii/poll/PollService$1$2;

    invoke-direct {p3, p0, p1, p4}, Lcom/narvii/poll/PollService$1$2;-><init>(Lcom/narvii/poll/PollService$1;Lcom/narvii/poll/PollService$Task;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/narvii/util/EventDispatcher;->safeDispatch(Lcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 107
    invoke-virtual {p0, p1}, Lcom/narvii/poll/PollService$1;->removeRunning(Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/poll/PollService$Task;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 109
    iget-object p2, p1, Lcom/narvii/poll/PollService$Task;->blog:Lcom/narvii/model/Blog;

    invoke-virtual {p2}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Blog;

    .line 110
    iget-object v0, p2, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 111
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/PollOption;

    .line 112
    iget-object v2, p1, Lcom/narvii/poll/PollService$Task;->optId:Ljava/lang/String;

    iget-object v3, v1, Lcom/narvii/model/PollOption;->polloptId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 113
    iget v2, v1, Lcom/narvii/model/PollOption;->votedValue:I

    if-gtz v2, :cond_0

    .line 114
    iget v2, v1, Lcom/narvii/model/PollOption;->votesCount:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/narvii/model/PollOption;->votesCount:I

    .line 115
    iget v2, v1, Lcom/narvii/model/PollOption;->votesSum:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/narvii/model/PollOption;->votesSum:I

    .line 116
    iput v3, v1, Lcom/narvii/model/PollOption;->votedValue:I

    goto :goto_0

    .line 119
    :cond_1
    iget v2, v1, Lcom/narvii/model/PollOption;->votedValue:I

    if-lez v2, :cond_0

    .line 120
    iget v4, v1, Lcom/narvii/model/PollOption;->votesCount:I

    sub-int/2addr v4, v3

    iput v4, v1, Lcom/narvii/model/PollOption;->votesCount:I

    .line 121
    iget v3, v1, Lcom/narvii/model/PollOption;->votesSum:I

    sub-int/2addr v3, v2

    iput v3, v1, Lcom/narvii/model/PollOption;->votesSum:I

    const/4 v2, 0x0

    .line 122
    iput v2, v1, Lcom/narvii/model/PollOption;->votedValue:I

    goto :goto_0

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/narvii/poll/PollService$1;->this$0:Lcom/narvii/poll/PollService;

    iget-object v0, v0, Lcom/narvii/poll/PollService;->listeners:Lcom/narvii/util/EventDispatcher;

    new-instance v1, Lcom/narvii/poll/PollService$1$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/narvii/poll/PollService$1$1;-><init>(Lcom/narvii/poll/PollService$1;Lcom/narvii/model/Blog;Lcom/narvii/poll/PollService$Task;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->safeDispatch(Lcom/narvii/util/Callback;)V

    .line 133
    new-instance p1, Lcom/narvii/notification/Notification;

    const-string v0, "update"

    invoke-direct {p1, v0, p2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 134
    iget-object p2, p0, Lcom/narvii/poll/PollService$1;->this$0:Lcom/narvii/poll/PollService;

    iget-object p2, p2, Lcom/narvii/poll/PollService;->notificationCenter:Lcom/narvii/notification/NotificationCenter;

    invoke-static {p2, p1}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/notification/NotificationCenter;Lcom/narvii/notification/Notification;)V

    :cond_3
    return-void
.end method

.method removeRunning(Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/poll/PollService$Task;
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/narvii/poll/PollService$1;->this$0:Lcom/narvii/poll/PollService;

    iget-object v0, v0, Lcom/narvii/poll/PollService;->runnings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 95
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/poll/PollService$Task;

    .line 97
    iget-object v2, v1, Lcom/narvii/poll/PollService$Task;->request:Lcom/narvii/util/http/ApiRequest;

    if-ne v2, p1, :cond_0

    .line 98
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
