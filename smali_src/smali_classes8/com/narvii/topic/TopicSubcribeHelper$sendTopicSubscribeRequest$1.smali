.class public final Lcom/narvii/topic/TopicSubcribeHelper$sendTopicSubscribeRequest$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/TopicSubcribeHelper;->sendTopicSubscribeRequest(ILcom/narvii/model/story/StoryTopic;ILcom/narvii/util/Callback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
.field final synthetic $callback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/util/RequestResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $sendNotification:Z

.field final synthetic $subscriptionStatus:I

.field final synthetic $topic:Lcom/narvii/model/story/StoryTopic;

.field final synthetic this$0:Lcom/narvii/topic/TopicSubcribeHelper;


# direct methods
.method constructor <init>(Lcom/narvii/model/story/StoryTopic;ZLcom/narvii/topic/TopicSubcribeHelper;Lcom/narvii/util/Callback;ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/story/StoryTopic;",
            "Z",
            "Lcom/narvii/topic/TopicSubcribeHelper;",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/util/RequestResult;",
            ">;I",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/topic/TopicSubcribeHelper$sendTopicSubscribeRequest$1;->$topic:Lcom/narvii/model/story/StoryTopic;

    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/narvii/topic/TopicSubcribeHelper$sendTopicSubscribeRequest$1;->$sendNotification:Z

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/topic/TopicSubcribeHelper$sendTopicSubscribeRequest$1;->this$0:Lcom/narvii/topic/TopicSubcribeHelper;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/topic/TopicSubcribeHelper$sendTopicSubscribeRequest$1;->$callback:Lcom/narvii/util/Callback;

    .line 9
    .line 10
    iput p5, p0, Lcom/narvii/topic/TopicSubcribeHelper$sendTopicSubscribeRequest$1;->$subscriptionStatus:I

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p6}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 14
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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
    new-instance p1, Lcom/narvii/util/RequestResult;

    .line 3
    const/4 p2, 0x1

    .line 4
    .line 5
    .line 6
    invoke-direct {p1, p2, p4}, Lcom/narvii/util/RequestResult;-><init>(ILjava/lang/String;)V

    .line 7
    .line 8
    iget-object p2, p0, Lcom/narvii/topic/TopicSubcribeHelper$sendTopicSubscribeRequest$1;->$callback:Lcom/narvii/util/Callback;

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/narvii/topic/TopicSubcribeHelper$sendTopicSubscribeRequest$1;->this$0:Lcom/narvii/topic/TopicSubcribeHelper;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/narvii/topic/TopicSubcribeHelper;->getCtx()Lcom/narvii/app/NVContext;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 23
    move-result-object p1

    .line 24
    const/4 p2, 0x0

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 32
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/topic/TopicSubcribeHelper$sendTopicSubscribeRequest$1;->$topic:Lcom/narvii/model/story/StoryTopic;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget p2, p0, Lcom/narvii/topic/TopicSubcribeHelper$sendTopicSubscribeRequest$1;->$subscriptionStatus:I

    .line 10
    .line 11
    iget v0, p1, Lcom/narvii/model/story/StoryTopic;->subscriptionStatus:I

    .line 12
    .line 13
    if-eq v0, p2, :cond_0

    .line 14
    .line 15
    iput p2, p1, Lcom/narvii/model/story/StoryTopic;->subscriptionStatus:I

    .line 16
    .line 17
    :cond_0
    iget-boolean p1, p0, Lcom/narvii/topic/TopicSubcribeHelper$sendTopicSubscribeRequest$1;->$sendNotification:Z

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/topic/TopicSubcribeHelper$sendTopicSubscribeRequest$1;->this$0:Lcom/narvii/topic/TopicSubcribeHelper;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/narvii/topic/TopicSubcribeHelper;->getCtx()Lcom/narvii/app/NVContext;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    const-string p2, "notification"

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 34
    .line 35
    new-instance p2, Lcom/narvii/topic/TopicNotificationStub;

    .line 36
    .line 37
    .line 38
    invoke-direct {p2}, Lcom/narvii/topic/TopicNotificationStub;-><init>()V

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/topic/TopicSubcribeHelper$sendTopicSubscribeRequest$1;->$topic:Lcom/narvii/model/story/StoryTopic;

    .line 41
    .line 42
    const-string v1, "bookmark_state_change"

    .line 43
    .line 44
    iput-object v1, p2, Lcom/narvii/topic/TopicNotificationStub;->action:Ljava/lang/String;

    .line 45
    .line 46
    iput-object v0, p2, Lcom/narvii/topic/TopicNotificationStub;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/narvii/model/story/StoryTopic;->id()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 v0, 0x0

    .line 55
    .line 56
    :goto_0
    iput-object v0, p2, Lcom/narvii/topic/TopicNotificationStub;->id:Ljava/lang/String;

    .line 57
    .line 58
    new-instance v0, Lcom/narvii/notification/Notification;

    .line 59
    .line 60
    .line 61
    const-string/jumbo v1, "update"

    .line 62
    .line 63
    .line 64
    invoke-direct {v0, v1, p2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 68
    .line 69
    :cond_2
    new-instance p1, Lcom/narvii/util/RequestResult;

    .line 70
    const/4 p2, 0x0

    .line 71
    .line 72
    iget-object v0, p0, Lcom/narvii/topic/TopicSubcribeHelper$sendTopicSubscribeRequest$1;->$topic:Lcom/narvii/model/story/StoryTopic;

    .line 73
    .line 74
    .line 75
    invoke-direct {p1, p2, v0}, Lcom/narvii/util/RequestResult;-><init>(ILcom/narvii/model/NVObject;)V

    .line 76
    .line 77
    iget-object p2, p0, Lcom/narvii/topic/TopicSubcribeHelper$sendTopicSubscribeRequest$1;->$callback:Lcom/narvii/util/Callback;

    .line 78
    .line 79
    if-eqz p2, :cond_3

    .line 80
    .line 81
    .line 82
    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 83
    .line 84
    :cond_3
    iget-object p1, p0, Lcom/narvii/topic/TopicSubcribeHelper$sendTopicSubscribeRequest$1;->$topic:Lcom/narvii/model/story/StoryTopic;

    .line 85
    .line 86
    if-eqz p1, :cond_4

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/narvii/model/story/StoryTopic;->isNotified()Z

    .line 90
    move-result p1

    .line 91
    .line 92
    if-eqz p1, :cond_4

    .line 93
    .line 94
    iget-object p1, p0, Lcom/narvii/topic/TopicSubcribeHelper$sendTopicSubscribeRequest$1;->this$0:Lcom/narvii/topic/TopicSubcribeHelper;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/narvii/topic/TopicSubcribeHelper;->vibrate()V

    .line 98
    .line 99
    iget-object p1, p0, Lcom/narvii/topic/TopicSubcribeHelper$sendTopicSubscribeRequest$1;->this$0:Lcom/narvii/topic/TopicSubcribeHelper;

    .line 100
    .line 101
    .line 102
    invoke-static {p1}, Lcom/narvii/topic/TopicSubcribeHelper;->access$getPushNotificationHelper(Lcom/narvii/topic/TopicSubcribeHelper;)Lcom/narvii/account/push/PushNotificationHelper;

    .line 103
    move-result-object p1

    .line 104
    .line 105
    iget-object p2, p0, Lcom/narvii/topic/TopicSubcribeHelper$sendTopicSubscribeRequest$1;->$topic:Lcom/narvii/model/story/StoryTopic;

    .line 106
    .line 107
    iget-object p2, p2, Lcom/narvii/model/story/StoryTopic;->name:Ljava/lang/String;

    .line 108
    .line 109
    const-string v0, "name"

    .line 110
    .line 111
    .line 112
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .line 114
    const-string v0, "scenario_subscribe_topic"

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v0, p2}, Lcom/narvii/account/push/PushNotificationHelper;->showRemindDialogIfNeeded(Ljava/lang/String;Ljava/lang/String;)Z

    .line 118
    move-result p1

    .line 119
    .line 120
    if-nez p1, :cond_4

    .line 121
    .line 122
    iget-object p1, p0, Lcom/narvii/topic/TopicSubcribeHelper$sendTopicSubscribeRequest$1;->this$0:Lcom/narvii/topic/TopicSubcribeHelper;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/narvii/topic/TopicSubcribeHelper;->showSuccessToast()V

    .line 126
    :cond_4
    return-void
.end method
