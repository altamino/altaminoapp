.class Lcom/narvii/poll/PollService$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poll/PollService$1;->this$0:Lcom/narvii/poll/PollService;

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
    invoke-virtual {p0, p1}, Lcom/narvii/poll/PollService$1;->removeRunning(Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/poll/PollService$Task;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p2, p0, Lcom/narvii/poll/PollService$1;->this$0:Lcom/narvii/poll/PollService;

    .line 9
    .line 10
    iget-object p2, p2, Lcom/narvii/poll/PollService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 11
    .line 12
    new-instance p3, Lcom/narvii/poll/PollService$1$2;

    .line 13
    .line 14
    .line 15
    invoke-direct {p3, p0, p1, p4}, Lcom/narvii/poll/PollService$1$2;-><init>(Lcom/narvii/poll/PollService$1;Lcom/narvii/poll/PollService$Task;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p3}, Lcom/narvii/util/EventDispatcher;->safeDispatch(Lcom/narvii/util/Callback;)V

    .line 19
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/poll/PollService$1;->removeRunning(Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/poll/PollService$Task;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    iget-object p2, p1, Lcom/narvii/poll/PollService$Task;->blog:Lcom/narvii/model/Blog;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    check-cast p2, Lcom/narvii/model/Blog;

    .line 15
    .line 16
    iget-object v0, p2, Lcom/narvii/model/Blog;->polloptList:Ljava/util/List;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    check-cast v1, Lcom/narvii/model/PollOption;

    .line 35
    .line 36
    iget-object v2, p1, Lcom/narvii/poll/PollService$Task;->optId:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v3, v1, Lcom/narvii/model/PollOption;->polloptId:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v2

    .line 43
    const/4 v3, 0x1

    .line 44
    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    iget v2, v1, Lcom/narvii/model/PollOption;->votedValue:I

    .line 48
    .line 49
    if-gtz v2, :cond_0

    .line 50
    .line 51
    iget v2, v1, Lcom/narvii/model/PollOption;->votesCount:I

    .line 52
    add-int/2addr v2, v3

    .line 53
    .line 54
    iput v2, v1, Lcom/narvii/model/PollOption;->votesCount:I

    .line 55
    .line 56
    iget v2, v1, Lcom/narvii/model/PollOption;->votesSum:I

    .line 57
    add-int/2addr v2, v3

    .line 58
    .line 59
    iput v2, v1, Lcom/narvii/model/PollOption;->votesSum:I

    .line 60
    .line 61
    iput v3, v1, Lcom/narvii/model/PollOption;->votedValue:I

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :cond_1
    iget v2, v1, Lcom/narvii/model/PollOption;->votedValue:I

    .line 65
    .line 66
    if-lez v2, :cond_0

    .line 67
    .line 68
    iget v4, v1, Lcom/narvii/model/PollOption;->votesCount:I

    .line 69
    sub-int/2addr v4, v3

    .line 70
    .line 71
    iput v4, v1, Lcom/narvii/model/PollOption;->votesCount:I

    .line 72
    .line 73
    iget v3, v1, Lcom/narvii/model/PollOption;->votesSum:I

    .line 74
    sub-int/2addr v3, v2

    .line 75
    .line 76
    iput v3, v1, Lcom/narvii/model/PollOption;->votesSum:I

    .line 77
    const/4 v2, 0x0

    .line 78
    .line 79
    iput v2, v1, Lcom/narvii/model/PollOption;->votedValue:I

    .line 80
    goto :goto_0

    .line 81
    .line 82
    :cond_2
    iget-object v0, p0, Lcom/narvii/poll/PollService$1;->this$0:Lcom/narvii/poll/PollService;

    .line 83
    .line 84
    iget-object v0, v0, Lcom/narvii/poll/PollService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 85
    .line 86
    new-instance v1, Lcom/narvii/poll/PollService$1$1;

    .line 87
    .line 88
    .line 89
    invoke-direct {v1, p0, p2, p1}, Lcom/narvii/poll/PollService$1$1;-><init>(Lcom/narvii/poll/PollService$1;Lcom/narvii/model/Blog;Lcom/narvii/poll/PollService$Task;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->safeDispatch(Lcom/narvii/util/Callback;)V

    .line 93
    .line 94
    new-instance p1, Lcom/narvii/notification/Notification;

    .line 95
    .line 96
    const-string v0, "update"

    .line 97
    .line 98
    .line 99
    invoke-direct {p1, v0, p2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 100
    .line 101
    iget-object p2, p0, Lcom/narvii/poll/PollService$1;->this$0:Lcom/narvii/poll/PollService;

    .line 102
    .line 103
    iget-object p2, p2, Lcom/narvii/poll/PollService;->notificationCenter:Lcom/narvii/notification/NotificationCenter;

    .line 104
    .line 105
    .line 106
    invoke-static {p2, p1}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/notification/NotificationCenter;Lcom/narvii/notification/Notification;)V

    .line 107
    :cond_3
    return-void
.end method

.method removeRunning(Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/poll/PollService$Task;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poll/PollService$1;->this$0:Lcom/narvii/poll/PollService;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/poll/PollService;->runnings:Ljava/util/HashMap;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    check-cast v1, Ljava/util/Map$Entry;

    .line 25
    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    check-cast v1, Lcom/narvii/poll/PollService$Task;

    .line 31
    .line 32
    iget-object v2, v1, Lcom/narvii/poll/PollService$Task;->request:Lcom/narvii/util/http/ApiRequest;

    .line 33
    .line 34
    if-ne v2, p1, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 38
    return-object v1

    .line 39
    :cond_1
    const/4 p1, 0x0

    .line 40
    return-object p1
.end method
