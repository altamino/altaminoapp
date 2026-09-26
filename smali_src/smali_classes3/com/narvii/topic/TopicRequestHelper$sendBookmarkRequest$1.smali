.class public final Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

.field final synthetic $isBookMark:Z

.field final synthetic $sendBookMarkChangeNotification:Z

.field final synthetic $topic:Lcom/narvii/model/story/StoryTopic;

.field final synthetic this$0:Lcom/narvii/topic/TopicRequestHelper;


# direct methods
.method constructor <init>(Lcom/narvii/model/story/StoryTopic;ZLcom/narvii/topic/TopicRequestHelper;Lcom/narvii/util/Callback;ZLjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/story/StoryTopic;",
            "Z",
            "Lcom/narvii/topic/TopicRequestHelper;",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/util/RequestResult;",
            ">;Z",
            "Ljava/lang/Class<",
            "Lcom/narvii/topic/TopicBookmarkResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;->$topic:Lcom/narvii/model/story/StoryTopic;

    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;->$sendBookMarkChangeNotification:Z

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;->this$0:Lcom/narvii/topic/TopicRequestHelper;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;->$callback:Lcom/narvii/util/Callback;

    .line 9
    .line 10
    iput-boolean p5, p0, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;->$isBookMark:Z

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p6}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 14
    return-void
.end method

.method public static synthetic a(Lcom/narvii/topic/TopicRequestHelper;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;->onFail$lambda$3(Lcom/narvii/topic/TopicRequestHelper;Landroid/view/View;)V

    return-void
.end method

.method private static final onFail$lambda$3(Lcom/narvii/topic/TopicRequestHelper;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    const-string/jumbo p1, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/topic/TopicRequestHelper;->getCtx()Lcom/narvii/app/NVContext;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    .line 13
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    const-class p1, Lcom/narvii/topic/picker/AggregationTopicFragment;

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-static {p0, p1}, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 24
    return-void
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

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
    const/4 p3, 0x1

    .line 4
    .line 5
    .line 6
    invoke-direct {p1, p3, p4}, Lcom/narvii/util/RequestResult;-><init>(ILjava/lang/String;)V

    .line 7
    .line 8
    iget-object p3, p0, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;->$callback:Lcom/narvii/util/Callback;

    .line 9
    .line 10
    if-eqz p3, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {p3, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 14
    .line 15
    :cond_0
    const/16 p1, 0x13f7

    .line 16
    .line 17
    if-ne p2, p1, :cond_1

    .line 18
    .line 19
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 20
    .line 21
    iget-object p2, p0, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;->this$0:Lcom/narvii/topic/TopicRequestHelper;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/narvii/topic/TopicRequestHelper;->getCtx()Lcom/narvii/app/NVContext;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    .line 28
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 29
    move-result-object p2

    .line 30
    .line 31
    .line 32
    invoke-direct {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p4}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/narvii/widget/ACMAlertDialog;->setVerticalButtons()V

    .line 39
    .line 40
    iget-object p2, p0, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;->this$0:Lcom/narvii/topic/TopicRequestHelper;

    .line 41
    .line 42
    new-instance p3, Lcom/narvii/topic/e;

    .line 43
    .line 44
    .line 45
    invoke-direct {p3, p2}, Lcom/narvii/topic/e;-><init>(Lcom/narvii/topic/TopicRequestHelper;)V

    .line 46
    .line 47
    .line 48
    const p2, 0x7f1201c1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2, p3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    const p2, 0x7f1201e2

    .line 55
    const/4 p3, 0x0

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2, p3}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :cond_1
    iget-object p1, p0, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;->this$0:Lcom/narvii/topic/TopicRequestHelper;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/narvii/topic/TopicRequestHelper;->getCtx()Lcom/narvii/app/NVContext;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 72
    move-result-object p1

    .line 73
    const/4 p2, 0x0

    .line 74
    .line 75
    .line 76
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 81
    :goto_0
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/topic/TopicBookmarkResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/topic/TopicBookmarkResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/topic/TopicBookmarkResponse;)V
    .locals 5
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/topic/TopicBookmarkResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object p1, p0, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;->$topic:Lcom/narvii/model/story/StoryTopic;

    const-string v0, "notification"

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-boolean v2, p0, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;->$isBookMark:Z

    iget-object v3, p0, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;->this$0:Lcom/narvii/topic/TopicRequestHelper;

    .line 3
    iget-boolean v4, p1, Lcom/narvii/model/story/StoryTopic;->isBookmarked:Z

    if-eq v4, v2, :cond_2

    .line 4
    iput-boolean v2, p1, Lcom/narvii/model/story/StoryTopic;->isBookmarked:Z

    if-eqz p2, :cond_0

    .line 5
    iget p2, p2, Lcom/narvii/topic/TopicBookmarkResponse;->subscriptionStatus:I

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    iput p2, p1, Lcom/narvii/model/story/StoryTopic;->subscriptionStatus:I

    .line 6
    invoke-virtual {v3}, Lcom/narvii/topic/TopicRequestHelper;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/notification/NotificationCenter;

    .line 7
    new-instance v3, Lcom/narvii/topic/TopicBookmarkStub;

    invoke-direct {v3}, Lcom/narvii/topic/TopicBookmarkStub;-><init>()V

    const-string v4, "bookmark_topic"

    iput-object v4, v3, Lcom/narvii/topic/TopicBookmarkStub;->action:Ljava/lang/String;

    iput-object p1, v3, Lcom/narvii/topic/TopicBookmarkStub;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 8
    invoke-virtual {p1}, Lcom/narvii/model/story/StoryTopic;->id()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/narvii/topic/TopicBookmarkStub;->id:Ljava/lang/String;

    .line 9
    new-instance p1, Lcom/narvii/notification/Notification;

    if-eqz v2, :cond_1

    const-string v2, "new"

    goto :goto_1

    :cond_1
    const-string v2, "delete"

    :goto_1
    invoke-direct {p1, v2, v3}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 10
    invoke-virtual {p2, p1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    :cond_2
    iget-boolean p1, p0, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;->$sendBookMarkChangeNotification:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;->this$0:Lcom/narvii/topic/TopicRequestHelper;

    .line 11
    invoke-virtual {p1}, Lcom/narvii/topic/TopicRequestHelper;->getCtx()Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 12
    new-instance p2, Lcom/narvii/topic/TopicNotificationStub;

    invoke-direct {p2}, Lcom/narvii/topic/TopicNotificationStub;-><init>()V

    iget-object v0, p0, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;->$topic:Lcom/narvii/model/story/StoryTopic;

    iget-boolean v2, p0, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;->$isBookMark:Z

    const-string v3, "bookmark_state_change"

    iput-object v3, p2, Lcom/narvii/topic/TopicNotificationStub;->action:Ljava/lang/String;

    iput-object v0, p2, Lcom/narvii/topic/TopicNotificationStub;->topic:Lcom/narvii/model/story/StoryTopic;

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {v0}, Lcom/narvii/model/story/StoryTopic;->id()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    iput-object v0, p2, Lcom/narvii/topic/TopicNotificationStub;->id:Ljava/lang/String;

    .line 14
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p2, Lcom/narvii/topic/TopicNotificationStub;->attachObj:Ljava/lang/Object;

    .line 15
    new-instance v0, Lcom/narvii/notification/Notification;

    const-string/jumbo v2, "update"

    invoke-direct {v0, v2, p2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 16
    invoke-virtual {p1, v0}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 17
    :cond_4
    new-instance p1, Lcom/narvii/util/RequestResult;

    iget-object p2, p0, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;->$topic:Lcom/narvii/model/story/StoryTopic;

    invoke-direct {p1, v1, p2}, Lcom/narvii/util/RequestResult;-><init>(ILcom/narvii/model/NVObject;)V

    iget-object p2, p0, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;->$callback:Lcom/narvii/util/Callback;

    if-eqz p2, :cond_5

    .line 18
    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method
