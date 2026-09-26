.class Lcom/narvii/livelayer/LiveLayerService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/livelayer/LiveLayerService;->requestOnlineMembers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/api/UserListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/LiveLayerService;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/LiveLayerService;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerService$2;->this$0:Lcom/narvii/livelayer/LiveLayerService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/UserListResponse;)V
    .locals 3

    .line 2
    iget-object v0, p1, Lcom/narvii/model/api/UserListResponse;->userList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/narvii/model/api/UserListResponse;->userList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerService$2;->this$0:Lcom/narvii/livelayer/LiveLayerService;

    .line 4
    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerService;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p1, Lcom/narvii/model/api/UserListResponse;->userList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iget p1, p1, Lcom/narvii/model/api/UserListResponse;->userProfileCount:I

    invoke-virtual {v0, v1, p1}, Lcom/narvii/livelayer/LiveLayerDataSource;->dispatchData(Ljava/util/LinkedList;I)V

    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerService$2;->this$0:Lcom/narvii/livelayer/LiveLayerService;

    .line 5
    iget-object v0, p1, Lcom/narvii/livelayer/LiveLayerService;->topic:Ljava/lang/String;

    iget-object v1, p1, Lcom/narvii/livelayer/LiveLayerService;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerDataSource;->liveLayerEventListener:Lcom/narvii/livelayer/ws/LiveLayerEventListener;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/livelayer/LiveLayerService;->subscribe(Ljava/lang/String;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/api/UserListResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/livelayer/LiveLayerService$2;->call(Lcom/narvii/model/api/UserListResponse;)V

    return-void
.end method
