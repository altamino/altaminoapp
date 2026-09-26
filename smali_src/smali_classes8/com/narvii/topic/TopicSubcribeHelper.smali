.class public final Lcom/narvii/topic/TopicSubcribeHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final ctx:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pushNotificationHelper$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/topic/TopicSubcribeHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 11
    .line 12
    new-instance p1, Lcom/narvii/topic/TopicSubcribeHelper$pushNotificationHelper$2;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/narvii/topic/TopicSubcribeHelper$pushNotificationHelper$2;-><init>(Lcom/narvii/topic/TopicSubcribeHelper;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    iput-object p1, p0, Lcom/narvii/topic/TopicSubcribeHelper;->pushNotificationHelper$delegate:Lw7/m;

    .line 22
    return-void
.end method

.method public static final synthetic access$getPushNotificationHelper(Lcom/narvii/topic/TopicSubcribeHelper;)Lcom/narvii/account/push/PushNotificationHelper;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/topic/TopicSubcribeHelper;->getPushNotificationHelper()Lcom/narvii/account/push/PushNotificationHelper;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final getPushNotificationHelper()Lcom/narvii/account/push/PushNotificationHelper;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/TopicSubcribeHelper;->pushNotificationHelper$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/account/push/PushNotificationHelper;

    .line 9
    return-object v0
.end method

.method public static synthetic sendTopicSubscribeRequest$default(Lcom/narvii/topic/TopicSubcribeHelper;ILcom/narvii/model/story/StoryTopic;ILcom/narvii/util/Callback;ZILjava/lang/Object;)V
    .locals 7

    .line 1
    .line 2
    and-int/lit8 p7, p6, 0x2

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-eqz p7, :cond_0

    .line 6
    move-object v3, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v3, p2

    .line 9
    .line 10
    :goto_0
    and-int/lit8 p2, p6, 0x4

    .line 11
    const/4 p7, 0x1

    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    move v4, p7

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    move v4, p3

    .line 17
    .line 18
    :goto_1
    and-int/lit8 p2, p6, 0x8

    .line 19
    .line 20
    if-eqz p2, :cond_2

    .line 21
    move-object v5, v0

    .line 22
    goto :goto_2

    .line 23
    :cond_2
    move-object v5, p4

    .line 24
    .line 25
    :goto_2
    and-int/lit8 p2, p6, 0x10

    .line 26
    .line 27
    if-eqz p2, :cond_3

    .line 28
    move v6, p7

    .line 29
    goto :goto_3

    .line 30
    :cond_3
    move v6, p5

    .line 31
    :goto_3
    move-object v1, p0

    .line 32
    move v2, p1

    .line 33
    .line 34
    .line 35
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/topic/TopicSubcribeHelper;->sendTopicSubscribeRequest(ILcom/narvii/model/story/StoryTopic;ILcom/narvii/util/Callback;Z)V

    .line 36
    return-void
.end method


# virtual methods
.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/TopicSubcribeHelper;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final sendTopicSubscribeRequest(ILcom/narvii/model/story/StoryTopic;ILcom/narvii/util/Callback;Z)V
    .locals 9
    .param p2    # Lcom/narvii/model/story/StoryTopic;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/util/Callback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/model/story/StoryTopic;",
            "I",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/util/RequestResult;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/TopicSubcribeHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "api"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    if-ne p3, v2, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 25
    .line 26
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string/jumbo v3, "topic/"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string p1, "/subscription"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    const-class v7, Lcom/narvii/model/api/ApiResponse;

    .line 57
    .line 58
    new-instance v8, Lcom/narvii/topic/TopicSubcribeHelper$sendTopicSubscribeRequest$1;

    .line 59
    move-object v1, v8

    .line 60
    move-object v2, p2

    .line 61
    move v3, p5

    .line 62
    move-object v4, p0

    .line 63
    move-object v5, p4

    .line 64
    move v6, p3

    .line 65
    .line 66
    .line 67
    invoke-direct/range {v1 .. v7}, Lcom/narvii/topic/TopicSubcribeHelper$sendTopicSubscribeRequest$1;-><init>(Lcom/narvii/model/story/StoryTopic;ZLcom/narvii/topic/TopicSubcribeHelper;Lcom/narvii/util/Callback;ILjava/lang/Class;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p1, v8}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 71
    return-void
.end method

.method public final showSuccessToast()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/TopicSubcribeHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/topic/TopicSubcribeHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 9
    .line 10
    .line 11
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    const v2, 0x7f12045d

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public final vibrate()V
    .locals 3

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/narvii/topic/TopicSubcribeHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    const-string/jumbo v1, "vibrator"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    const-string v1, "null cannot be cast to non-null type android.os.Vibrator"

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    check-cast v0, Landroid/os/Vibrator;

    .line 21
    .line 22
    const-wide/16 v1, 0x12c

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :catch_0
    return-void
.end method
