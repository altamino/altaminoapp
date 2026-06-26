.class public final Lcom/narvii/topic/TopicRequestHelper;
.super Ljava/lang/Object;
.source "TopicRequestHelper.kt"


# instance fields
.field private final ctx:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/topic/TopicRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    return-void
.end method

.method public static synthetic sendBookmarkRequest$default(Lcom/narvii/topic/TopicRequestHelper;ILcom/narvii/model/story/StoryTopic;ZLcom/narvii/util/Callback;ZILjava/lang/Object;)V
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

    .line 23
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/topic/TopicRequestHelper;->sendBookmarkRequest(ILcom/narvii/model/story/StoryTopic;ZLcom/narvii/util/Callback;Z)V

    return-void
.end method


# virtual methods
.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/narvii/topic/TopicRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final sendBookmarkRequest(ILcom/narvii/model/story/StoryTopic;ZLcom/narvii/util/Callback;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/model/story/StoryTopic;",
            "Z",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/util/RequestResult;",
            ">;Z)V"
        }
    .end annotation

    .line 24
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/narvii/topic/TopicRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    const-string v2, "api"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    const-string v2, "persona/bookmarked-topics/"

    if-eqz p3, :cond_0

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/bookmark?v=2"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 29
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/unbookmark"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 31
    :goto_0
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 32
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    new-instance v0, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;

    const-class v8, Lcom/narvii/topic/TopicBookmarkResponse;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    move v6, p5

    move-object v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;-><init>(Lcom/narvii/topic/TopicRequestHelper;Lcom/narvii/model/story/StoryTopic;ZZLcom/narvii/util/Callback;Ljava/lang/Class;)V

    invoke-virtual {v1, p1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method
