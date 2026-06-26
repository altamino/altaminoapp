.class public final Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "TopicRequestHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/topic/TopicRequestHelper;->sendBookmarkRequest(ILcom/narvii/model/story/StoryTopic;ZLcom/narvii/util/Callback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/topic/TopicBookmarkResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTopicRequestHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TopicRequestHelper.kt\ncom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1\n*L\n1#1,84:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $callback:Lcom/narvii/util/Callback;

.field final synthetic $isBookMark:Z

.field final synthetic $sendBookMarkChangeNotification:Z

.field final synthetic $topic:Lcom/narvii/model/story/StoryTopic;

.field final synthetic this$0:Lcom/narvii/topic/TopicRequestHelper;


# direct methods
.method constructor <init>(Lcom/narvii/topic/TopicRequestHelper;Lcom/narvii/model/story/StoryTopic;ZZLcom/narvii/util/Callback;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/story/StoryTopic;",
            "ZZ",
            "Lcom/narvii/util/Callback;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;->this$0:Lcom/narvii/topic/TopicRequestHelper;

    iput-object p2, p0, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;->$topic:Lcom/narvii/model/story/StoryTopic;

    iput-boolean p3, p0, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;->$isBookMark:Z

    iput-boolean p4, p0, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;->$sendBookMarkChangeNotification:Z

    iput-object p5, p0, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;->$callback:Lcom/narvii/util/Callback;

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

    .line 67
    new-instance p1, Lcom/narvii/util/RequestResult;

    const/4 p3, 0x1

    invoke-direct {p1, p3, p4}, Lcom/narvii/util/RequestResult;-><init>(ILjava/lang/String;)V

    .line 68
    iget-object p3, p0, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;->$callback:Lcom/narvii/util/Callback;

    if-eqz p3, :cond_0

    invoke-interface {p3, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    const/16 p1, 0x13f7

    if-ne p2, p1, :cond_1

    .line 70
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object p2, p0, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;->this$0:Lcom/narvii/topic/TopicRequestHelper;

    invoke-virtual {p2}, Lcom/narvii/topic/TopicRequestHelper;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object p2

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 71
    invoke-virtual {p1, p4}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {p1}, Lcom/narvii/widget/ACMAlertDialog;->setVerticalButtons()V

    const p2, 0x7f0f0176

    .line 73
    new-instance p3, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1$onFail$1;

    invoke-direct {p3, p0}, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1$onFail$1;-><init>(Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;)V

    invoke-virtual {p1, p2, p3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const p2, 0x7f0f0193

    const/4 p3, 0x0

    .line 76
    invoke-virtual {p1, p2, p3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 77
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    .line 79
    :cond_1
    iget-object p1, p0, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;->this$0:Lcom/narvii/topic/TopicRequestHelper;

    invoke-virtual {p1}, Lcom/narvii/topic/TopicRequestHelper;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :goto_0
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 32
    check-cast p2, Lcom/narvii/topic/TopicBookmarkResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/topic/TopicBookmarkResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/topic/TopicBookmarkResponse;)V
    .locals 4

    .line 34
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 35
    iget-object p1, p0, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;->$topic:Lcom/narvii/model/story/StoryTopic;

    const-string v0, "notification"

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 36
    iget-boolean v2, p1, Lcom/narvii/model/story/StoryTopic;->isBookmarked:Z

    iget-boolean v3, p0, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;->$isBookMark:Z

    if-eq v2, v3, :cond_2

    .line 37
    iput-boolean v3, p1, Lcom/narvii/model/story/StoryTopic;->isBookmarked:Z

    if-eqz p2, :cond_0

    .line 38
    iget p2, p2, Lcom/narvii/topic/TopicBookmarkResponse;->subscriptionStatus:I

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput p2, p1, Lcom/narvii/model/story/StoryTopic;->subscriptionStatus:I

    .line 41
    iget-object p2, p0, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;->this$0:Lcom/narvii/topic/TopicRequestHelper;

    invoke-virtual {p2}, Lcom/narvii/topic/TopicRequestHelper;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/notification/NotificationCenter;

    .line 42
    new-instance v2, Lcom/narvii/topic/TopicBookmarkStub;

    invoke-direct {v2}, Lcom/narvii/topic/TopicBookmarkStub;-><init>()V

    const-string v3, "bookmark_topic"

    .line 43
    iput-object v3, v2, Lcom/narvii/topic/TopicBookmarkStub;->action:Ljava/lang/String;

    .line 44
    iput-object p1, v2, Lcom/narvii/topic/TopicBookmarkStub;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 45
    invoke-virtual {p1}, Lcom/narvii/model/story/StoryTopic;->id()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/narvii/topic/TopicBookmarkStub;->id:Ljava/lang/String;

    .line 47
    new-instance p1, Lcom/narvii/notification/Notification;

    iget-boolean v3, p0, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;->$isBookMark:Z

    if-eqz v3, :cond_1

    const-string v3, "new"

    goto :goto_1

    :cond_1
    const-string v3, "delete"

    :goto_1
    invoke-direct {p1, v3, v2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 48
    invoke-virtual {p2, p1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 51
    :cond_2
    iget-boolean p1, p0, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;->$sendBookMarkChangeNotification:Z

    if-eqz p1, :cond_4

    .line 52
    iget-object p1, p0, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;->this$0:Lcom/narvii/topic/TopicRequestHelper;

    invoke-virtual {p1}, Lcom/narvii/topic/TopicRequestHelper;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 53
    new-instance p2, Lcom/narvii/topic/TopicNotificationStub;

    invoke-direct {p2}, Lcom/narvii/topic/TopicNotificationStub;-><init>()V

    const-string v0, "bookmark_state_change"

    .line 54
    iput-object v0, p2, Lcom/narvii/topic/TopicNotificationStub;->action:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;->$topic:Lcom/narvii/model/story/StoryTopic;

    iput-object v0, p2, Lcom/narvii/topic/TopicNotificationStub;->topic:Lcom/narvii/model/story/StoryTopic;

    if-eqz v0, :cond_3

    .line 56
    invoke-virtual {v0}, Lcom/narvii/model/story/StoryTopic;->id()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    iput-object v0, p2, Lcom/narvii/topic/TopicNotificationStub;->id:Ljava/lang/String;

    .line 57
    iget-boolean v0, p0, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;->$isBookMark:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p2, Lcom/narvii/topic/TopicNotificationStub;->attachObj:Ljava/lang/Object;

    .line 59
    new-instance v0, Lcom/narvii/notification/Notification;

    const-string v2, "update"

    invoke-direct {v0, v2, p2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 60
    invoke-virtual {p1, v0}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 62
    :cond_4
    new-instance p1, Lcom/narvii/util/RequestResult;

    iget-object p2, p0, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;->$topic:Lcom/narvii/model/story/StoryTopic;

    invoke-direct {p1, v1, p2}, Lcom/narvii/util/RequestResult;-><init>(ILcom/narvii/model/NVObject;)V

    .line 63
    iget-object p2, p0, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;->$callback:Lcom/narvii/util/Callback;

    if-eqz p2, :cond_5

    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method
