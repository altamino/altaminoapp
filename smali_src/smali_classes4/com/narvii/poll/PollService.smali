.class public Lcom/narvii/poll/PollService;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/poll/PollService;->runnings:Ljava/util/HashMap;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/util/EventDispatcher;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Lcom/narvii/util/EventDispatcher;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/poll/PollService;->listeners:Lcom/narvii/util/EventDispatcher;

    .line 18
    .line 19
    new-instance v0, Lcom/narvii/poll/PollService$1;

    .line 20
    .line 21
    const-class v1, Lcom/narvii/model/api/ApiResponse;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, v1}, Lcom/narvii/poll/PollService$1;-><init>(Lcom/narvii/poll/PollService;Ljava/lang/Class;)V

    .line 25
    .line 26
    iput-object v0, p0, Lcom/narvii/poll/PollService;->voteListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/narvii/poll/PollService;->context:Lcom/narvii/app/NVContext;

    .line 29
    .line 30
    const-string v0, "api"

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/narvii/poll/PollService;->api:Lcom/narvii/util/http/ApiService;

    .line 39
    .line 40
    const-string v0, "notification"

    .line 41
    .line 42
    .line 43
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/narvii/poll/PollService;->notificationCenter:Lcom/narvii/notification/NotificationCenter;

    .line 49
    return-void
.end method


# virtual methods
.method public getVotingOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poll/PollService;->runnings:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/poll/PollService$Task;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    iget-object p1, p1, Lcom/narvii/poll/PollService$Task;->optId:Ljava/lang/String;

    .line 15
    :goto_0
    return-object p1
.end method

.method public isVoting(Ljava/lang/String;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/poll/PollService;->getVotingOption(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method public vote(Lcom/narvii/model/Blog;Ljava/lang/String;Lcom/narvii/util/logging/LoggingSource;Lcom/narvii/util/logging/LoggingOrigin;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/poll/PollService;->isVoting(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    new-instance v0, Lcom/narvii/poll/PollService$Task;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0}, Lcom/narvii/poll/PollService$Task;-><init>()V

    .line 15
    .line 16
    iput-object p1, v0, Lcom/narvii/poll/PollService$Task;->blog:Lcom/narvii/model/Blog;

    .line 17
    .line 18
    iput-object p2, v0, Lcom/narvii/poll/PollService$Task;->optId:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    const-string v3, "/blog/"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    iget-object v3, p1, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v3, "/poll/option/"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    iget-object p2, p0, Lcom/narvii/poll/PollService;->context:Lcom/narvii/app/NVContext;

    .line 52
    .line 53
    .line 54
    invoke-static {p2}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    .line 55
    move-result p2

    .line 56
    .line 57
    if-eqz p2, :cond_1

    .line 58
    .line 59
    const-string p2, "/g-vote"

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :cond_1
    const-string p2, "/vote"

    .line 63
    .line 64
    .line 65
    :goto_0
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p2

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 73
    move-result-object p2

    .line 74
    const/4 v1, 0x1

    .line 75
    .line 76
    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    const-string v2, "value"

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 84
    move-result-object p2

    .line 85
    .line 86
    sget-object v1, Lcom/narvii/util/http/ApiService;->ASYNC_CALL_TAG:Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 90
    move-result-object p2

    .line 91
    .line 92
    iget v1, p1, Lcom/narvii/model/Feed;->ndcId:I

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 96
    .line 97
    if-eqz p3, :cond_2

    .line 98
    .line 99
    const-string v1, "eventSource"

    .line 100
    .line 101
    .line 102
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 103
    move-result-object p3

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, v1, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 107
    .line 108
    :cond_2
    if-eqz p4, :cond_3

    .line 109
    .line 110
    const-string p3, "eventOrigin"

    .line 111
    .line 112
    .line 113
    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 114
    move-result-object p4

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2, p3, p4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 118
    .line 119
    :cond_3
    iget-object p3, p0, Lcom/narvii/poll/PollService;->context:Lcom/narvii/app/NVContext;

    .line 120
    .line 121
    .line 122
    invoke-static {p3, p1}, Lcom/narvii/util/LiveLayerUtils;->reportPolling(Lcom/narvii/app/NVContext;Lcom/narvii/model/Blog;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 126
    move-result-object p2

    .line 127
    .line 128
    iput-object p2, v0, Lcom/narvii/poll/PollService$Task;->request:Lcom/narvii/util/http/ApiRequest;

    .line 129
    .line 130
    iget-object p3, p0, Lcom/narvii/poll/PollService;->api:Lcom/narvii/util/http/ApiService;

    .line 131
    .line 132
    iget-object p4, p0, Lcom/narvii/poll/PollService;->voteListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p3, p2, p4}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 136
    .line 137
    iget-object p2, p0, Lcom/narvii/poll/PollService;->runnings:Ljava/util/HashMap;

    .line 138
    .line 139
    iget-object p1, p1, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    return-void
.end method
