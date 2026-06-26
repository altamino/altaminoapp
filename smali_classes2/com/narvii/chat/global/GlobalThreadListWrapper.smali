.class public Lcom/narvii/chat/global/GlobalThreadListWrapper;
.super Lcom/narvii/model/NVObject;
.source "GlobalThreadListWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;,
        Lcom/narvii/chat/global/GlobalThreadListWrapper$ThreadListWrapper;
    }
.end annotation


# instance fields
.field public threadCategory:Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;

.field public threadListWrapper:Lcom/narvii/chat/global/GlobalThreadListWrapper$ThreadListWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/chat/global/GlobalThreadListWrapper$ThreadListWrapper;Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/narvii/chat/global/GlobalThreadListWrapper;->threadListWrapper:Lcom/narvii/chat/global/GlobalThreadListWrapper$ThreadListWrapper;

    .line 29
    iput-object p2, p0, Lcom/narvii/chat/global/GlobalThreadListWrapper;->threadCategory:Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;

    return-void
.end method


# virtual methods
.method public getCategoryId()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalThreadListWrapper;->threadCategory:Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;->categoryId:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getCategoryTitle()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalThreadListWrapper;->threadCategory:Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;->name:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getPagingInfo()Lcom/narvii/model/api/Pagination;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalThreadListWrapper;->threadListWrapper:Lcom/narvii/chat/global/GlobalThreadListWrapper$ThreadListWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/narvii/chat/global/GlobalThreadListWrapper$ThreadListWrapper;->paging:Lcom/narvii/model/api/Pagination;

    :goto_0
    return-object v0
.end method

.method public getPlaylistInThread()Ljava/util/Map;
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
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalThreadListWrapper;->threadListWrapper:Lcom/narvii/chat/global/GlobalThreadListWrapper$ThreadListWrapper;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/narvii/chat/global/GlobalThreadListWrapper$ThreadListWrapper;->playlistInThreadList:Ljava/util/Map;

    :goto_0
    return-object v0
.end method

.method public getThreadList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/ChatThread;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalThreadListWrapper;->threadListWrapper:Lcom/narvii/chat/global/GlobalThreadListWrapper$ThreadListWrapper;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/narvii/chat/global/GlobalThreadListWrapper$ThreadListWrapper;->threadList:Ljava/util/List;

    :goto_0
    return-object v0
.end method

.method public getUserInfoInThread()Ljava/util/Map;
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
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalThreadListWrapper;->threadListWrapper:Lcom/narvii/chat/global/GlobalThreadListWrapper$ThreadListWrapper;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/narvii/chat/global/GlobalThreadListWrapper$ThreadListWrapper;->userInfoInThread:Ljava/util/Map;

    :goto_0
    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/narvii/chat/global/GlobalThreadListWrapper;->getCategoryId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public objectType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public status()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/narvii/chat/global/GlobalThreadListWrapper;->getCategoryId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
