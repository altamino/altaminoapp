.class public Lcom/narvii/prompt/ProbationPromptHelper;
.super Lcom/narvii/prompt/PromptHelper;
.source "SourceFile"


# instance fields
.field probationShown:Z


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/prompt/PromptHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V

    .line 4
    return-void
.end method


# virtual methods
.method protected doTryShow()V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/prompt/ProbationPromptHelper;->probationShown:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->getCommunity()Lcom/narvii/model/Community;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->getCommunity()Lcom/narvii/model/Community;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget v0, v0, Lcom/narvii/model/Community;->probationStatus:I

    .line 17
    const/4 v1, 0x1

    .line 18
    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->getUser()Lcom/narvii/model/User;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->getUser()Lcom/narvii/model/User;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/narvii/model/User;->isLeader()Z

    .line 33
    move-result v0

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    const-string v2, "/community/probation-log"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 45
    move-result-object v0

    .line 46
    const/4 v2, 0x0

    .line 47
    .line 48
    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    const-string v3, "start"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    const-string v2, "size"

    .line 59
    .line 60
    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    iget-object v1, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 73
    .line 74
    const-string v2, "api"

    .line 75
    .line 76
    .line 77
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 81
    .line 82
    new-instance v2, Lcom/narvii/prompt/ProbationPromptHelper$1;

    .line 83
    .line 84
    const-class v3, Lcom/narvii/community/ProbationLogResponse;

    .line 85
    .line 86
    .line 87
    invoke-direct {v2, p0, v3}, Lcom/narvii/prompt/ProbationPromptHelper$1;-><init>(Lcom/narvii/prompt/ProbationPromptHelper;Ljava/lang/Class;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 91
    return-void

    .line 92
    .line 93
    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    .line 95
    return-void
.end method
