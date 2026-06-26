.class public final Lcom/narvii/topic/TopicSubcribeHelper;
.super Ljava/lang/Object;
.source "TopicSubcribeHelper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTopicSubcribeHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TopicSubcribeHelper.kt\ncom/narvii/topic/TopicSubcribeHelper\n*L\n1#1,90:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final ctx:Lcom/narvii/app/NVContext;

.field private final pushNotificationHelper$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/topic/TopicSubcribeHelper;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "pushNotificationHelper"

    const-string v4, "getPushNotificationHelper()Lcom/narvii/account/push/PushNotificationHelper;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/topic/TopicSubcribeHelper;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/topic/TopicSubcribeHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 24
    new-instance p1, Lcom/narvii/topic/TopicSubcribeHelper$pushNotificationHelper$2;

    invoke-direct {p1, p0}, Lcom/narvii/topic/TopicSubcribeHelper$pushNotificationHelper$2;-><init>(Lcom/narvii/topic/TopicSubcribeHelper;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/TopicSubcribeHelper;->pushNotificationHelper$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getPushNotificationHelper$p(Lcom/narvii/topic/TopicSubcribeHelper;)Lcom/narvii/account/push/PushNotificationHelper;
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/narvii/topic/TopicSubcribeHelper;->getPushNotificationHelper()Lcom/narvii/account/push/PushNotificationHelper;

    move-result-object p0

    return-object p0
.end method

.method private final getPushNotificationHelper()Lcom/narvii/account/push/PushNotificationHelper;
    .locals 3

    iget-object v0, p0, Lcom/narvii/topic/TopicSubcribeHelper;->pushNotificationHelper$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/topic/TopicSubcribeHelper;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/push/PushNotificationHelper;

    return-object v0
.end method

.method public static synthetic sendTopicSubscribeRequest$default(Lcom/narvii/topic/TopicSubcribeHelper;ILcom/narvii/model/story/StoryTopic;ILcom/narvii/util/Callback;ZILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    const/4 p7, 0x1

    if-eqz p2, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    move-object v5, v0

    goto :goto_2

    :cond_2
    move-object v5, p4

    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    move v6, p5

    :goto_3
    move-object v1, p0

    move v2, p1

    .line 30
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/topic/TopicSubcribeHelper;->sendTopicSubscribeRequest(ILcom/narvii/model/story/StoryTopic;ILcom/narvii/util/Callback;Z)V

    return-void
.end method


# virtual methods
.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/narvii/topic/TopicSubcribeHelper;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final sendTopicSubscribeRequest(ILcom/narvii/model/story/StoryTopic;ILcom/narvii/util/Callback;Z)V
    .locals 9
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

    .line 33
    iget-object v0, p0, Lcom/narvii/topic/TopicSubcribeHelper;->ctx:Lcom/narvii/app/NVContext;

    const-string v1, "api"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 34
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const/4 v2, 0x1

    if-ne p3, v2, :cond_0

    .line 36
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 40
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "topic/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/subscription"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 42
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    new-instance v8, Lcom/narvii/topic/TopicSubcribeHelper$sendTopicSubscribeRequest$1;

    const-class v7, Lcom/narvii/model/api/ApiResponse;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move v5, p5

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/narvii/topic/TopicSubcribeHelper$sendTopicSubscribeRequest$1;-><init>(Lcom/narvii/topic/TopicSubcribeHelper;Lcom/narvii/model/story/StoryTopic;IZLcom/narvii/util/Callback;Ljava/lang/Class;)V

    invoke-virtual {v0, p1, v8}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public final showSuccessToast()V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/narvii/topic/TopicSubcribeHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/topic/TopicSubcribeHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f03f1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final vibrate()V
    .locals 3

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/narvii/topic/TopicSubcribeHelper;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v1, 0x12c

    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 81
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.os.Vibrator"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method
