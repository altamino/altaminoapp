.class public Lcom/narvii/poll/PollService;
.super Ljava/lang/Object;
.source "PollService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/poll/PollService$Task;,
        Lcom/narvii/poll/PollService$VoteListener;
    }
.end annotation


# instance fields
.field api:Lcom/narvii/util/http/ApiService;

.field context:Lcom/narvii/app/NVContext;

.field public final listeners:Lcom/narvii/util/EventDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/EventDispatcher<",
            "Lcom/narvii/poll/PollService$VoteListener;",
            ">;"
        }
    .end annotation
.end field

.field notificationCenter:Lcom/narvii/notification/NotificationCenter;

.field final runnings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/poll/PollService$Task;",
            ">;"
        }
    .end annotation
.end field

.field final voteListener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/poll/PollService;->runnings:Ljava/util/HashMap;

    .line 37
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/narvii/poll/PollService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 92
    new-instance v0, Lcom/narvii/poll/PollService$1;

    const-class v1, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v0, p0, v1}, Lcom/narvii/poll/PollService$1;-><init>(Lcom/narvii/poll/PollService;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/narvii/poll/PollService;->voteListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 40
    iput-object p1, p0, Lcom/narvii/poll/PollService;->context:Lcom/narvii/app/NVContext;

    const-string v0, "api"

    .line 41
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    iput-object v0, p0, Lcom/narvii/poll/PollService;->api:Lcom/narvii/util/http/ApiService;

    const-string v0, "notification"

    .line 42
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    iput-object p1, p0, Lcom/narvii/poll/PollService;->notificationCenter:Lcom/narvii/notification/NotificationCenter;

    return-void
.end method


# virtual methods
.method public getVotingOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/narvii/poll/PollService;->runnings:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/poll/PollService$Task;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 63
    :cond_0
    iget-object p1, p1, Lcom/narvii/poll/PollService$Task;->optId:Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public isVoting(Ljava/lang/String;)Z
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lcom/narvii/poll/PollService;->getVotingOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public vote(Lcom/narvii/model/Blog;Ljava/lang/String;Lcom/narvii/util/logging/LoggingSource;Lcom/narvii/util/logging/LoggingOrigin;)V
    .locals 4

    .line 67
    iget-object v0, p1, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/narvii/poll/PollService;->isVoting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 71
    :cond_0
    new-instance v0, Lcom/narvii/poll/PollService$Task;

    invoke-direct {v0}, Lcom/narvii/poll/PollService$Task;-><init>()V

    .line 72
    iput-object p1, v0, Lcom/narvii/poll/PollService$Task;->blog:Lcom/narvii/model/Blog;

    .line 73
    iput-object p2, v0, Lcom/narvii/poll/PollService$Task;->optId:Ljava/lang/String;

    .line 75
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/blog/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/poll/option/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/narvii/poll/PollService;->context:Lcom/narvii/app/NVContext;

    invoke-static {p2}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "/g-vote"

    goto :goto_0

    :cond_1
    const-string p2, "/vote"

    :goto_0
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "value"

    invoke-virtual {p2, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    sget-object v1, Lcom/narvii/util/http/ApiService;->ASYNC_CALL_TAG:Ljava/lang/Object;

    .line 76
    invoke-virtual {p2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    .line 77
    iget v1, p1, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {p2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    if-eqz p3, :cond_2

    .line 79
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    const-string v1, "eventSource"

    invoke-virtual {p2, v1, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    :cond_2
    if-eqz p4, :cond_3

    .line 82
    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    const-string p4, "eventOrigin"

    invoke-virtual {p2, p4, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 85
    :cond_3
    iget-object p3, p0, Lcom/narvii/poll/PollService;->context:Lcom/narvii/app/NVContext;

    invoke-static {p3, p1}, Lcom/narvii/util/LiveLayerUtils;->reportPolling(Lcom/narvii/app/NVContext;Lcom/narvii/model/Blog;)V

    .line 87
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p2

    iput-object p2, v0, Lcom/narvii/poll/PollService$Task;->request:Lcom/narvii/util/http/ApiRequest;

    .line 88
    iget-object p2, p0, Lcom/narvii/poll/PollService;->api:Lcom/narvii/util/http/ApiService;

    iget-object p3, v0, Lcom/narvii/poll/PollService$Task;->request:Lcom/narvii/util/http/ApiRequest;

    iget-object p4, p0, Lcom/narvii/poll/PollService;->voteListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {p2, p3, p4}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 89
    iget-object p2, p0, Lcom/narvii/poll/PollService;->runnings:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
