.class public Lcom/narvii/livelayer/detailview/OnlineChatThreadListResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/model/api/ListResponse;-><init>()V

    .line 4
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/OnlineChatThreadListResponse;->threadList:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/livelayer/detailview/OnlineChatThreadListResponse;->userInfoInThread:Ljava/util/Map;

    .line 7
    .line 8
    if-eqz v1, :cond_3

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eqz v1, :cond_3

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    check-cast v1, Lcom/narvii/livelayer/detailview/OnlineChatThread;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    iget-object v2, v1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 29
    .line 30
    if-nez v2, :cond_1

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_1
    iget-object v3, p0, Lcom/narvii/livelayer/detailview/OnlineChatThreadListResponse;->userInfoInThread:Ljava/util/Map;

    .line 34
    .line 35
    .line 36
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    check-cast v2, Lcom/narvii/chat/thread/OnlineUserInfoInfo;

    .line 40
    .line 41
    if-nez v2, :cond_2

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_2
    iput-object v2, v1, Lcom/narvii/livelayer/detailview/OnlineChatThread;->userInfo:Lcom/narvii/chat/thread/OnlineUserInfoInfo;

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_3
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/OnlineChatThreadListResponse;->threadList:Ljava/util/List;

    .line 48
    .line 49
    if-eqz v0, :cond_7

    .line 50
    .line 51
    iget-object v1, p0, Lcom/narvii/livelayer/detailview/OnlineChatThreadListResponse;->playlistInThreadList:Ljava/util/Map;

    .line 52
    .line 53
    if-eqz v1, :cond_7

    .line 54
    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    .line 60
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    move-result v1

    .line 62
    .line 63
    if-eqz v1, :cond_7

    .line 64
    .line 65
    .line 66
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    check-cast v1, Lcom/narvii/livelayer/detailview/OnlineChatThread;

    .line 70
    .line 71
    if-eqz v1, :cond_4

    .line 72
    .line 73
    iget-object v2, v1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 74
    .line 75
    if-nez v2, :cond_5

    .line 76
    goto :goto_1

    .line 77
    .line 78
    :cond_5
    iget-object v3, p0, Lcom/narvii/livelayer/detailview/OnlineChatThreadListResponse;->playlistInThreadList:Ljava/util/Map;

    .line 79
    .line 80
    .line 81
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    move-result-object v2

    .line 83
    .line 84
    check-cast v2, Lcom/narvii/model/PlayList;

    .line 85
    .line 86
    if-nez v2, :cond_6

    .line 87
    goto :goto_1

    .line 88
    .line 89
    :cond_6
    iput-object v2, v1, Lcom/narvii/livelayer/detailview/OnlineChatThread;->playlistInThreadInfo:Lcom/narvii/model/PlayList;

    .line 90
    goto :goto_1

    .line 91
    .line 92
    :cond_7
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/OnlineChatThreadListResponse;->threadList:Ljava/util/List;

    .line 93
    return-object v0
.end method
