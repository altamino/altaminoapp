.class public Lcom/narvii/livelayer/detailview/OnlineBrowsingPage;
.super Lcom/narvii/model/NVObject;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/chat/thread/OnlineUserInfoInfo$OnlineUserInfoInfoKeeper;


# instance fields
.field public mediaList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/Media;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation
.end field

.field public topic:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public userProfileCount:I

.field public userProfileList:Ljava/util/LinkedList;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/User;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/narvii/model/User;",
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
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public firstMedia()Lcom/narvii/model/Media;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/OnlineBrowsingPage;->mediaList:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/livelayer/detailview/OnlineBrowsingPage;->mediaList:Ljava/util/List;

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Lcom/narvii/model/Media;

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 23
    :goto_1
    return-object v0
.end method

.method public getOnlineUserInfoInfo()Lcom/narvii/chat/thread/OnlineUserInfoInfo;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/thread/OnlineUserInfoInfo;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/chat/thread/OnlineUserInfoInfo;-><init>()V

    .line 6
    .line 7
    iget v1, p0, Lcom/narvii/livelayer/detailview/OnlineBrowsingPage;->userProfileCount:I

    .line 8
    .line 9
    iput v1, v0, Lcom/narvii/chat/thread/OnlineUserInfoInfo;->userProfileCount:I

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/livelayer/detailview/OnlineBrowsingPage;->userProfileList:Ljava/util/LinkedList;

    .line 12
    .line 13
    iput-object v1, v0, Lcom/narvii/chat/thread/OnlineUserInfoInfo;->userProfileList:Ljava/util/List;

    .line 14
    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

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

    const/4 v0, 0x0

    return-object v0
.end method
