.class public Lcom/narvii/chat/global/GlobalThreadListWrapper;
.super Lcom/narvii/model/NVObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/global/GlobalThreadListWrapper$ThreadListWrapper;,
        Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;
    }
.end annotation


# instance fields
.field public threadCategory:Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;

.field public threadListWrapper:Lcom/narvii/chat/global/GlobalThreadListWrapper$ThreadListWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/chat/global/GlobalThreadListWrapper$ThreadListWrapper;Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalThreadListWrapper;->threadListWrapper:Lcom/narvii/chat/global/GlobalThreadListWrapper$ThreadListWrapper;

    iput-object p2, p0, Lcom/narvii/chat/global/GlobalThreadListWrapper;->threadCategory:Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;

    return-void
.end method


# virtual methods
.method public getCategoryId()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalThreadListWrapper;->threadCategory:Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;

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
    iget-object v0, v0, Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;->categoryId:Ljava/lang/String;

    .line 9
    :goto_0
    return-object v0
.end method

.method public getCategoryTitle()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalThreadListWrapper;->threadCategory:Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;

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
    iget-object v0, v0, Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;->name:Ljava/lang/String;

    .line 9
    :goto_0
    return-object v0
.end method

.method public getPagingInfo()Lcom/narvii/model/api/Pagination;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalThreadListWrapper;->threadListWrapper:Lcom/narvii/chat/global/GlobalThreadListWrapper$ThreadListWrapper;

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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalThreadListWrapper;->threadListWrapper:Lcom/narvii/chat/global/GlobalThreadListWrapper$ThreadListWrapper;

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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalThreadListWrapper;->threadListWrapper:Lcom/narvii/chat/global/GlobalThreadListWrapper$ThreadListWrapper;

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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalThreadListWrapper;->threadListWrapper:Lcom/narvii/chat/global/GlobalThreadListWrapper$ThreadListWrapper;

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

.method public id()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/global/GlobalThreadListWrapper;->getCategoryId()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
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

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/global/GlobalThreadListWrapper;->getCategoryId()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
