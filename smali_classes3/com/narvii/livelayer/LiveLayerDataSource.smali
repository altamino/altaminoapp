.class public Lcom/narvii/livelayer/LiveLayerDataSource;
.super Ljava/lang/Object;
.source "LiveLayerDataSource.java"


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

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/narvii/livelayer/LiveLayerDataSource;-><init>(Lcom/narvii/app/NVContext;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;Z)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->userList:Ljava/util/LinkedList;

    .line 21
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->userQueue:Ljava/util/LinkedList;

    .line 88
    new-instance v0, Lcom/narvii/livelayer/LiveLayerDataSource$1;

    invoke-direct {v0, p0}, Lcom/narvii/livelayer/LiveLayerDataSource$1;-><init>(Lcom/narvii/livelayer/LiveLayerDataSource;)V

    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->correctMembersCountRunnable:Ljava/lang/Runnable;

    .line 119
    new-instance v0, Lcom/narvii/livelayer/LiveLayerDataSource$2;

    invoke-direct {v0, p0}, Lcom/narvii/livelayer/LiveLayerDataSource$2;-><init>(Lcom/narvii/livelayer/LiveLayerDataSource;)V

    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->checkRunnable:Ljava/lang/Runnable;

    .line 146
    new-instance v0, Lcom/narvii/livelayer/LiveLayerDataSource$3;

    invoke-direct {v0, p0}, Lcom/narvii/livelayer/LiveLayerDataSource$3;-><init>(Lcom/narvii/livelayer/LiveLayerDataSource;)V

    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->liveLayerEventListener:Lcom/narvii/livelayer/ws/LiveLayerEventListener;

    .line 39
    iput-boolean p2, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->shared:Z

    .line 40
    new-instance p2, Lcom/narvii/util/FilterHelper;

    invoke-direct {p2, p1}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->filterHelper:Lcom/narvii/util/FilterHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/livelayer/LiveLayerDataSource;Ljava/util/List;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/narvii/livelayer/LiveLayerDataSource;->filterJoinedUserList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/livelayer/LiveLayerDataSource;Lcom/narvii/model/User;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/narvii/livelayer/LiveLayerDataSource;->addUserIntoList(Lcom/narvii/model/User;)V

    return-void
.end method

.method static synthetic access$200(Lcom/narvii/livelayer/LiveLayerDataSource;Lcom/narvii/model/User;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/narvii/livelayer/LiveLayerDataSource;->addUsersIntoQueue(Lcom/narvii/model/User;)V

    return-void
.end method

.method private addUserIntoList(Lcom/narvii/model/User;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->userList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 136
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->userList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/16 v0, 0x14

    if-le p1, v0, :cond_0

    .line 137
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->userList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private addUsersIntoQueue(Lcom/narvii/model/User;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->userQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 129
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->userQueue:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/16 v0, 0x14

    if-le p1, v0, :cond_0

    .line 130
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->userQueue:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_0
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

    .line 102
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 103
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 104
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    .line 106
    invoke-virtual {p0}, Lcom/narvii/livelayer/LiveLayerDataSource;->getUserList()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/narvii/livelayer/LiveLayerDataSource;->getUserQueue()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v1

    :cond_1
    if-eqz v1, :cond_0

    .line 113
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public checkUserJoined()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->userQueue:Ljava/util/LinkedList;

    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->liveLayerView:Lcom/narvii/livelayer/ILiveLayerView;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/narvii/livelayer/ILiveLayerView;->disallowNewUserCome()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->userQueue:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    .line 197
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->liveLayerView:Lcom/narvii/livelayer/ILiveLayerView;

    invoke-interface {v1, v0}, Lcom/narvii/livelayer/ILiveLayerView;->onUserJoined(Lcom/narvii/model/User;)V

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

    .line 76
    invoke-virtual {p0}, Lcom/narvii/livelayer/LiveLayerDataSource;->getUserQueue()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 77
    invoke-virtual {p0, p1}, Lcom/narvii/livelayer/LiveLayerDataSource;->setUserList(Ljava/util/LinkedList;)V

    .line 78
    invoke-virtual {p0, p2}, Lcom/narvii/livelayer/LiveLayerDataSource;->setCurrentMembersCount(I)V

    .line 79
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->liveLayerView:Lcom/narvii/livelayer/ILiveLayerView;

    if-eqz v0, :cond_0

    .line 80
    invoke-interface {v0, p1, p2}, Lcom/narvii/livelayer/ILiveLayerView;->setUserList(Ljava/util/List;I)V

    :cond_0
    return-void
.end method

.method public getCurrentMembersCount()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->currentMembersCount:I

    return v0
.end method

.method public getLiveLayerView()Lcom/narvii/livelayer/ILiveLayerView;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->liveLayerView:Lcom/narvii/livelayer/ILiveLayerView;

    return-object v0
.end method

.method public getStagingMembersCount()I
    .locals 1

    .line 85
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

    .line 56
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

    .line 64
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->userQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method public moveFromQueueIntoList(Lcom/narvii/model/User;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->userQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 143
    invoke-direct {p0, p1}, Lcom/narvii/livelayer/LiveLayerDataSource;->addUserIntoList(Lcom/narvii/model/User;)V

    return-void
.end method

.method public setCurrentMembersCount(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->currentMembersCount:I

    return-void
.end method

.method public setLiveLayerView(Lcom/narvii/livelayer/ILiveLayerView;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->liveLayerView:Lcom/narvii/livelayer/ILiveLayerView;

    return-void
.end method

.method public setShared(Z)V
    .locals 0

    .line 52
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

    .line 60
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerDataSource;->userList:Ljava/util/LinkedList;

    return-void
.end method
