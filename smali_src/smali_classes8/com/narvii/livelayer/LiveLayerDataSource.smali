.class public Lcom/narvii/livelayer/LiveLayerDataSource;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final QUEUE_MAX_SIZE:I = 0x14

.field public static final USER_LIST_MAX_SIZE:I = 0x14


# instance fields
.field public checkRunnable:Ljava/lang/Runnable;

.field public correctMembersCountRunnable:Ljava/lang/Runnable;

.field currentMembersCount:I

.field filterHelper:Lcom/narvii/util/FilterHelper;

.field public liveLayerEventListener:Lcom/narvii/livelayer/ws/LiveLayerEventListener;

.field liveLayerView:Lcom/narvii/livelayer/ILiveLayerView;

.field shared:Z

.field stagingMembersCount:I

.field private userList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private userQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/livelayer/LiveLayerDataSource;-><init>(Lcom/narvii/app/NVContext;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->userList:Ljava/util/LinkedList;

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->userQueue:Ljava/util/LinkedList;

    .line 5
    new-instance v0, Lcom/narvii/livelayer/LiveLayerDataSource$1;

    invoke-direct {v0, p0}, Lcom/narvii/livelayer/LiveLayerDataSource$1;-><init>(Lcom/narvii/livelayer/LiveLayerDataSource;)V

    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->correctMembersCountRunnable:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lcom/narvii/livelayer/LiveLayerDataSource$2;

    invoke-direct {v0, p0}, Lcom/narvii/livelayer/LiveLayerDataSource$2;-><init>(Lcom/narvii/livelayer/LiveLayerDataSource;)V

    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->checkRunnable:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lcom/narvii/livelayer/LiveLayerDataSource$3;

    invoke-direct {v0, p0}, Lcom/narvii/livelayer/LiveLayerDataSource$3;-><init>(Lcom/narvii/livelayer/LiveLayerDataSource;)V

    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->liveLayerEventListener:Lcom/narvii/livelayer/ws/LiveLayerEventListener;

    iput-boolean p2, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->shared:Z

    .line 8
    new-instance p2, Lcom/narvii/util/FilterHelper;

    invoke-direct {p2, p1}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->filterHelper:Lcom/narvii/util/FilterHelper;

    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/livelayer/LiveLayerDataSource;Lcom/narvii/model/User;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/livelayer/LiveLayerDataSource;->addUserIntoList(Lcom/narvii/model/User;)V

    return-void
.end method

.method private addUserIntoList(Lcom/narvii/model/User;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->userList:Ljava/util/LinkedList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->userList:Ljava/util/LinkedList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 11
    move-result p1

    .line 12
    .line 13
    const/16 v0, 0x14

    .line 14
    .line 15
    if-le p1, v0, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->userList:Ljava/util/LinkedList;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 21
    :cond_0
    return-void
.end method

.method private addUsersIntoQueue(Lcom/narvii/model/User;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->userQueue:Ljava/util/LinkedList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->userQueue:Ljava/util/LinkedList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 11
    move-result p1

    .line 12
    .line 13
    const/16 v0, 0x14

    .line 14
    .line 15
    if-le p1, v0, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->userQueue:Ljava/util/LinkedList;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 21
    :cond_0
    return-void
.end method

.method static bridge synthetic b(Lcom/narvii/livelayer/LiveLayerDataSource;Lcom/narvii/model/User;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/livelayer/LiveLayerDataSource;->addUsersIntoQueue(Lcom/narvii/model/User;)V

    return-void
.end method

.method static bridge synthetic c(Lcom/narvii/livelayer/LiveLayerDataSource;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/livelayer/LiveLayerDataSource;->filterJoinedUserList(Ljava/util/List;)V

    return-void
.end method

.method private filterJoinedUserList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    check-cast v0, Lcom/narvii/model/User;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/livelayer/LiveLayerDataSource;->getUserList()Ljava/util/LinkedList;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    .line 34
    move-result v1

    .line 35
    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/narvii/livelayer/LiveLayerDataSource;->getUserQueue()Ljava/util/LinkedList;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    .line 48
    move-result v1

    .line 49
    .line 50
    :cond_1
    if-eqz v1, :cond_0

    .line 51
    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    return-void
.end method


# virtual methods
.method public checkUserJoined()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->userQueue:Ljava/util/LinkedList;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

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
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->liveLayerView:Lcom/narvii/livelayer/ILiveLayerView;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Lcom/narvii/livelayer/ILiveLayerView;->disallowNewUserCome()Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->userQueue:Ljava/util/LinkedList;

    .line 23
    const/4 v1, 0x0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    check-cast v0, Lcom/narvii/model/User;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->liveLayerView:Lcom/narvii/livelayer/ILiveLayerView;

    .line 32
    .line 33
    .line 34
    invoke-interface {v1, v0}, Lcom/narvii/livelayer/ILiveLayerView;->onUserJoined(Lcom/narvii/model/User;)V

    .line 35
    :cond_2
    :goto_0
    return-void
.end method

.method public dispatchData(Ljava/util/LinkedList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/narvii/model/User;",
            ">;I)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/livelayer/LiveLayerDataSource;->getUserQueue()Ljava/util/LinkedList;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/livelayer/LiveLayerDataSource;->setUserList(Ljava/util/LinkedList;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p2}, Lcom/narvii/livelayer/LiveLayerDataSource;->setCurrentMembersCount(I)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->liveLayerView:Lcom/narvii/livelayer/ILiveLayerView;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, p1, p2}, Lcom/narvii/livelayer/ILiveLayerView;->setUserList(Ljava/util/List;I)V

    .line 21
    :cond_0
    return-void
.end method

.method public getCurrentMembersCount()I
    .locals 1

    iget v0, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->currentMembersCount:I

    return v0
.end method

.method public getLiveLayerView()Lcom/narvii/livelayer/ILiveLayerView;
    .locals 1

    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->liveLayerView:Lcom/narvii/livelayer/ILiveLayerView;

    return-object v0
.end method

.method public getStagingMembersCount()I
    .locals 1

    iget v0, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->stagingMembersCount:I

    return v0
.end method

.method public getUserList()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->userList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getUserQueue()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->userQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method public moveFromQueueIntoList(Lcom/narvii/model/User;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->userQueue:Ljava/util/LinkedList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/narvii/livelayer/LiveLayerDataSource;->addUserIntoList(Lcom/narvii/model/User;)V

    .line 9
    return-void
.end method

.method public setCurrentMembersCount(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->currentMembersCount:I

    return-void
.end method

.method public setLiveLayerView(Lcom/narvii/livelayer/ILiveLayerView;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->liveLayerView:Lcom/narvii/livelayer/ILiveLayerView;

    return-void
.end method

.method public setShared(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->shared:Z

    return-void
.end method

.method public setUserList(Ljava/util/LinkedList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->userList:Ljava/util/LinkedList;

    return-void
.end method
