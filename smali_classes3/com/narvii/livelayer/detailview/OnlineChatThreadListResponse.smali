.class public Lcom/narvii/livelayer/detailview/OnlineChatThreadListResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "OnlineChatThreadListResponse.java"

# interfaces
.implements Lcom/narvii/livelayer/detailview/OnlineDataResponse;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ListResponse<",
        "Lcom/narvii/livelayer/detailview/OnlineChatThread;",
        ">;",
        "Lcom/narvii/livelayer/detailview/OnlineDataResponse<",
        "Lcom/narvii/livelayer/detailview/OnlineChatThread;",
        ">;"
    }
.end annotation


# instance fields
.field public playlistInThreadList:Ljava/util/Map;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/PlayList;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/narvii/model/PlayList;",
            ">;"
        }
    .end annotation
.end field

.field public recommendedThreadList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/livelayer/detailview/OnlineChatThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/livelayer/detailview/OnlineChatThread;",
            ">;"
        }
    .end annotation
.end field

.field public threadList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/livelayer/detailview/OnlineChatThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/livelayer/detailview/OnlineChatThread;",
            ">;"
        }
    .end annotation
.end field

.field public userInfoInThread:Ljava/util/Map;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/chat/thread/OnlineUserInfoInfo;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/narvii/chat/thread/OnlineUserInfoInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/narvii/model/api/ListResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getRecommendedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/livelayer/detailview/OnlineChatThread;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/OnlineChatThreadListResponse;->recommendedThreadList:Ljava/util/List;

    return-object v0
.end method

.method public list()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/livelayer/detailview/OnlineChatThread;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/OnlineChatThreadListResponse;->threadList:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/narvii/livelayer/detailview/OnlineChatThreadListResponse;->userInfoInThread:Ljava/util/Map;

    if-eqz v1, :cond_3

    .line 33
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/livelayer/detailview/OnlineChatThread;

    if-eqz v1, :cond_0

    .line 34
    iget-object v2, v1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_0

    .line 36
    :cond_1
    iget-object v3, p0, Lcom/narvii/livelayer/detailview/OnlineChatThreadListResponse;->userInfoInThread:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/chat/thread/OnlineUserInfoInfo;

    if-nez v2, :cond_2

    goto :goto_0

    .line 39
    :cond_2
    iput-object v2, v1, Lcom/narvii/livelayer/detailview/OnlineChatThread;->userInfo:Lcom/narvii/chat/thread/OnlineUserInfoInfo;

    goto :goto_0

    .line 43
    :cond_3
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/OnlineChatThreadListResponse;->threadList:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/narvii/livelayer/detailview/OnlineChatThreadListResponse;->playlistInThreadList:Ljava/util/Map;

    if-eqz v1, :cond_7

    .line 44
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/livelayer/detailview/OnlineChatThread;

    if-eqz v1, :cond_4

    .line 45
    iget-object v2, v1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    if-nez v2, :cond_5

    goto :goto_1

    .line 46
    :cond_5
    iget-object v3, p0, Lcom/narvii/livelayer/detailview/OnlineChatThreadListResponse;->playlistInThreadList:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/PlayList;

    if-nez v2, :cond_6

    goto :goto_1

    .line 48
    :cond_6
    iput-object v2, v1, Lcom/narvii/livelayer/detailview/OnlineChatThread;->playlistInThreadInfo:Lcom/narvii/model/PlayList;

    goto :goto_1

    .line 52
    :cond_7
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/OnlineChatThreadListResponse;->threadList:Ljava/util/List;

    return-object v0
.end method
