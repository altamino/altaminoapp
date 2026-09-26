.class public Lcom/narvii/chat/global/CategoryThreadResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ListResponse<",
        "Lcom/narvii/model/ChatThread;",
        ">;"
    }
.end annotation


# instance fields
.field public communityInfoMapping:Ljava/util/Map;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/Community;
        keyAs = Ljava/lang/String;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field public threadCategory:Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;

.field public threadListWrapper:Lcom/narvii/chat/global/GlobalThreadListWrapper$ThreadListWrapper;


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
.method public getOnlineUserInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/narvii/chat/thread/OnlineUserInfoInfo;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/CategoryThreadResponse;->threadListWrapper:Lcom/narvii/chat/global/GlobalThreadListWrapper$ThreadListWrapper;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/util/HashMap;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    iget-object v0, v0, Lcom/narvii/chat/global/GlobalThreadListWrapper$ThreadListWrapper;->userInfoInThread:Ljava/util/Map;

    .line 13
    :goto_0
    return-object v0
.end method

.method public getPaging()Lcom/narvii/model/api/Pagination;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/CategoryThreadResponse;->threadListWrapper:Lcom/narvii/chat/global/GlobalThreadListWrapper$ThreadListWrapper;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    iget-object v0, v0, Lcom/narvii/chat/global/GlobalThreadListWrapper$ThreadListWrapper;->paging:Lcom/narvii/model/api/Pagination;

    .line 9
    :goto_0
    return-object v0
.end method

.method public getPlayList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/narvii/model/PlayList;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/CategoryThreadResponse;->threadListWrapper:Lcom/narvii/chat/global/GlobalThreadListWrapper$ThreadListWrapper;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/util/HashMap;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    iget-object v0, v0, Lcom/narvii/chat/global/GlobalThreadListWrapper$ThreadListWrapper;->playlistInThreadList:Ljava/util/Map;

    .line 13
    :goto_0
    return-object v0
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/ChatThread;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/CategoryThreadResponse;->threadListWrapper:Lcom/narvii/chat/global/GlobalThreadListWrapper$ThreadListWrapper;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    iget-object v0, v0, Lcom/narvii/chat/global/GlobalThreadListWrapper$ThreadListWrapper;->threadList:Ljava/util/List;

    .line 13
    :goto_0
    return-object v0
.end method
