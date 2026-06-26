.class public final Lcom/narvii/topic/TopicSubcribeHelper$sendTopicSubscribeRequest$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "TopicSubcribeHelper.kt"


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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTopicSubcribeHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TopicSubcribeHelper.kt\ncom/narvii/topic/TopicSubcribeHelper$sendTopicSubscribeRequest$1\n*L\n1#1,90:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $callback:Lcom/narvii/util/Callback;

.field final synthetic $sendNotification:Z

.field final synthetic $subscriptionStatus:I

.field final synthetic $topic:Lcom/narvii/model/story/StoryTopic;

.field final synthetic this$0:Lcom/narvii/topic/TopicSubcribeHelper;


# direct methods
.method constructor <init>(Lcom/narvii/topic/TopicSubcribeHelper;Lcom/narvii/model/story/StoryTopic;IZLcom/narvii/util/Callback;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/story/StoryTopic;",
            "IZ",
            "Lcom/narvii/util/Callback;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/narvii/topic/TopicSubcribeHelper$sendTopicSubscribeRequest$1;->this$0:Lcom/narvii/topic/TopicSubcribeHelper;

    iput-object p2, p0, Lcom/narvii/topic/TopicSubcribeHelper$sendTopicSubscribeRequest$1;->$topic:Lcom/narvii/model/story/StoryTopic;

    iput p3, p0, Lcom/narvii/topic/TopicSubcribeHelper$sendTopicSubscribeRequest$1;->$subscriptionStatus:I

    iput-boolean p4, p0, Lcom/narvii/topic/TopicSubcribeHelper$sendTopicSubscribeRequest$1;->$sendNotification:Z

    iput-object p5, p0, Lcom/narvii/topic/TopicSubcribeHelper$sendTopicSubscribeRequest$1;->$callback:Lcom/narvii/util/Callback;

    invoke-direct {p0, p6}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

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

    .line 72
    new-instance p1, Lcom/narvii/util/RequestResult;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p4}, Lcom/narvii/util/RequestResult;-><init>(ILjava/lang/String;)V

    .line 73
    iget-object p2, p0, Lcom/narvii/topic/TopicSubcribeHelper$sendTopicSubscribeRequest$1;->$callback:Lcom/narvii/util/Callback;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/narvii/topic/TopicSubcribeHelper$sendTopicSubscribeRequest$1;->this$0:Lcom/narvii/topic/TopicSubcribeHelper;

    invoke-virtual {p1}, Lcom/narvii/topic/TopicSubcribeHelper;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 44
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 45
    iget-object p1, p0, Lcom/narvii/topic/TopicSubcribeHelper$sendTopicSubscribeRequest$1;->$topic:Lcom/narvii/model/story/StoryTopic;

    if-eqz p1, :cond_0

    .line 46
    iget p2, p1, Lcom/narvii/model/story/StoryTopic;->subscriptionStatus:I

    iget v0, p0, Lcom/narvii/topic/TopicSubcribeHelper$sendTopicSubscribeRequest$1;->$subscriptionStatus:I

    if-eq p2, v0, :cond_0

    .line 47
    iput v0, p1, Lcom/narvii/model/story/StoryTopic;->subscriptionStatus:I

    .line 50
    :cond_0
    iget-boolean p1, p0, Lcom/narvii/topic/TopicSubcribeHelper$sendTopicSubscribeRequest$1;->$sendNotification:Z

    if-eqz p1, :cond_2

    .line 51
    iget-object p1, p0, Lcom/narvii/topic/TopicSubcribeHelper$sendTopicSubscribeRequest$1;->this$0:Lcom/narvii/topic/TopicSubcribeHelper;

    invoke-virtual {p1}, Lcom/narvii/topic/TopicSubcribeHelper;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string p2, "notification"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 52
    new-instance p2, Lcom/narvii/topic/TopicNotificationStub;

    invoke-direct {p2}, Lcom/narvii/topic/TopicNotificationStub;-><init>()V

    const-string v0, "bookmark_state_change"

    .line 53
    iput-object v0, p2, Lcom/narvii/topic/TopicNotificationStub;->action:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/narvii/topic/TopicSubcribeHelper$sendTopicSubscribeRequest$1;->$topic:Lcom/narvii/model/story/StoryTopic;

    iput-object v0, p2, Lcom/narvii/topic/TopicNotificationStub;->topic:Lcom/narvii/model/story/StoryTopic;

    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {v0}, Lcom/narvii/model/story/StoryTopic;->id()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p2, Lcom/narvii/topic/TopicNotificationStub;->id:Ljava/lang/String;

    .line 57
    new-instance v0, Lcom/narvii/notification/Notification;

    const-string v1, "update"

    invoke-direct {v0, v1, p2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 58
    invoke-virtual {p1, v0}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 60
    :cond_2
    new-instance p1, Lcom/narvii/util/RequestResult;

    const/4 p2, 0x0

    iget-object v0, p0, Lcom/narvii/topic/TopicSubcribeHelper$sendTopicSubscribeRequest$1;->$topic:Lcom/narvii/model/story/StoryTopic;

    invoke-direct {p1, p2, v0}, Lcom/narvii/util/RequestResult;-><init>(ILcom/narvii/model/NVObject;)V

    .line 61
    iget-object p2, p0, Lcom/narvii/topic/TopicSubcribeHelper$sendTopicSubscribeRequest$1;->$callback:Lcom/narvii/util/Callback;

    if-eqz p2, :cond_3

    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 62
    :cond_3
    iget-object p1, p0, Lcom/narvii/topic/TopicSubcribeHelper$sendTopicSubscribeRequest$1;->$topic:Lcom/narvii/model/story/StoryTopic;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/narvii/model/story/StoryTopic;->isNotified()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 63
    iget-object p1, p0, Lcom/narvii/topic/TopicSubcribeHelper$sendTopicSubscribeRequest$1;->this$0:Lcom/narvii/topic/TopicSubcribeHelper;

    invoke-virtual {p1}, Lcom/narvii/topic/TopicSubcribeHelper;->vibrate()V

    .line 64
    iget-object p1, p0, Lcom/narvii/topic/TopicSubcribeHelper$sendTopicSubscribeRequest$1;->this$0:Lcom/narvii/topic/TopicSubcribeHelper;

    invoke-static {p1}, Lcom/narvii/topic/TopicSubcribeHelper;->access$getPushNotificationHelper$p(Lcom/narvii/topic/TopicSubcribeHelper;)Lcom/narvii/account/push/PushNotificationHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/topic/TopicSubcribeHelper$sendTopicSubscribeRequest$1;->$topic:Lcom/narvii/model/story/StoryTopic;

    iget-object p2, p2, Lcom/narvii/model/story/StoryTopic;->name:Ljava/lang/String;

    const-string v0, "topic.name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scenario_subscribe_topic"

    invoke-virtual {p1, v0, p2}, Lcom/narvii/account/push/PushNotificationHelper;->showRemindDialogIfNeeded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 66
    iget-object p1, p0, Lcom/narvii/topic/TopicSubcribeHelper$sendTopicSubscribeRequest$1;->this$0:Lcom/narvii/topic/TopicSubcribeHelper;

    invoke-virtual {p1}, Lcom/narvii/topic/TopicSubcribeHelper;->showSuccessToast()V

    :cond_4
    return-void
.end method
