.class public final Lcom/narvii/topic/TopicRequestHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final ctx:Lcom/narvii/app/NVContext;
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
    iput-object p1, p0, Lcom/narvii/topic/TopicRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 11
    return-void
.end method

.method public static synthetic sendBookmarkRequest$default(Lcom/narvii/topic/TopicRequestHelper;ILcom/narvii/model/story/StoryTopic;ZLcom/narvii/util/Callback;ZILjava/lang/Object;)V
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
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/topic/TopicRequestHelper;->sendBookmarkRequest(ILcom/narvii/model/story/StoryTopic;ZLcom/narvii/util/Callback;Z)V

    .line 36
    return-void
.end method


# virtual methods
.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/TopicRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final sendBookmarkRequest(ILcom/narvii/model/story/StoryTopic;ZLcom/narvii/util/Callback;Z)V
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
            "Z",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/util/RequestResult;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/topic/TopicRequestHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 7
    .line 8
    const-string v2, "api"

    .line 9
    .line 10
    .line 11
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 15
    .line 16
    const-string v2, "persona/bookmarked-topics/"

    .line 17
    .line 18
    if-eqz p3, :cond_0

    .line 19
    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string p1, "/bookmark?v=2"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string p1, "/unbookmark"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    .line 62
    :goto_0
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    const-class v8, Lcom/narvii/topic/TopicBookmarkResponse;

    .line 73
    .line 74
    new-instance v0, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;

    .line 75
    move-object v2, v0

    .line 76
    move-object v3, p2

    .line 77
    move v4, p5

    .line 78
    move-object v5, p0

    .line 79
    move-object v6, p4

    .line 80
    move v7, p3

    .line 81
    .line 82
    .line 83
    invoke-direct/range {v2 .. v8}, Lcom/narvii/topic/TopicRequestHelper$sendBookmarkRequest$1;-><init>(Lcom/narvii/model/story/StoryTopic;ZLcom/narvii/topic/TopicRequestHelper;Lcom/narvii/util/Callback;ZLjava/lang/Class;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, p1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 87
    return-void
.end method
