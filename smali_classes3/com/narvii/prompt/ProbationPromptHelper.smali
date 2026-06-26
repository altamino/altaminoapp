.class public Lcom/narvii/prompt/ProbationPromptHelper;
.super Lcom/narvii/prompt/PromptHelper;
.source "ProbationPromptHelper.java"


# instance fields
.field probationShown:Z


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/narvii/prompt/PromptHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V

    return-void
.end method


# virtual methods
.method protected doTryShow()V
    .locals 4

    .line 30
    iget-boolean v0, p0, Lcom/narvii/prompt/ProbationPromptHelper;->probationShown:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->getCommunity()Lcom/narvii/model/Community;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->getCommunity()Lcom/narvii/model/Community;

    move-result-object v0

    iget v0, v0, Lcom/narvii/model/Community;->probationStatus:I

    if-ne v0, v2, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->getUser()Lcom/narvii/model/User;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->getUser()Lcom/narvii/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/User;->isLeader()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 35
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v3, "/community/probation-log"

    invoke-virtual {v0, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "start"

    invoke-virtual {v0, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 37
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "size"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/narvii/prompt/PromptHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v2, "api"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 39
    new-instance v2, Lcom/narvii/prompt/ProbationPromptHelper$1;

    const-class v3, Lcom/narvii/community/ProbationLogResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/prompt/ProbationPromptHelper$1;-><init>(Lcom/narvii/prompt/ProbationPromptHelper;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    return-void
.end method
