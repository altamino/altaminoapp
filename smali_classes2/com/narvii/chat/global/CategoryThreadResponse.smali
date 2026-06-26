.class public Lcom/narvii/chat/global/CategoryThreadResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "CategoryThreadResponse.java"


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

    .line 20
    invoke-direct {p0}, Lcom/narvii/model/api/ListResponse;-><init>()V

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

    .line 37
    iget-object v0, p0, Lcom/narvii/chat/global/CategoryThreadResponse;->threadListWrapper:Lcom/narvii/chat/global/GlobalThreadListWrapper$ThreadListWrapper;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/narvii/chat/global/GlobalThreadListWrapper$ThreadListWrapper;->userInfoInThread:Ljava/util/Map;

    :goto_0
    return-object v0
.end method

.method public getPaging()Lcom/narvii/model/api/Pagination;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/narvii/chat/global/CategoryThreadResponse;->threadListWrapper:Lcom/narvii/chat/global/GlobalThreadListWrapper$ThreadListWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/narvii/chat/global/GlobalThreadListWrapper$ThreadListWrapper;->paging:Lcom/narvii/model/api/Pagination;

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

    .line 41
    iget-object v0, p0, Lcom/narvii/chat/global/CategoryThreadResponse;->threadListWrapper:Lcom/narvii/chat/global/GlobalThreadListWrapper$ThreadListWrapper;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/narvii/chat/global/GlobalThreadListWrapper$ThreadListWrapper;->playlistInThreadList:Ljava/util/Map;

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

    .line 28
    iget-object v0, p0, Lcom/narvii/chat/global/CategoryThreadResponse;->threadListWrapper:Lcom/narvii/chat/global/GlobalThreadListWrapper$ThreadListWrapper;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/narvii/chat/global/GlobalThreadListWrapper$ThreadListWrapper;->threadList:Ljava/util/List;

    :goto_0
    return-object v0
.end method
