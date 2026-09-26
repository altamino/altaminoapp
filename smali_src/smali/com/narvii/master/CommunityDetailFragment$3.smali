.class Lcom/narvii/master/CommunityDetailFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/CommunityDetailFragment;->requestCommunityOnlineData()V
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
.field final synthetic this$0:Lcom/narvii/master/CommunityDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/CommunityDetailFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$3;->this$0:Lcom/narvii/master/CommunityDetailFragment;

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

    iget-object v0, p0, Lcom/narvii/master/CommunityDetailFragment$3;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 2
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/narvii/master/CommunityDetailFragment$3$1;

    invoke-direct {v0, p0}, Lcom/narvii/master/CommunityDetailFragment$3$1;-><init>(Lcom/narvii/master/CommunityDetailFragment$3;)V

    iget-object v1, p0, Lcom/narvii/master/CommunityDetailFragment$3;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 4
    iget-object v1, v1, Lcom/narvii/master/CommunityDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object v2, p1, Lcom/narvii/model/api/UserListResponse;->userList:Ljava/util/List;

    iget p1, p1, Lcom/narvii/model/api/UserListResponse;->userProfileCount:I

    invoke-virtual {v1, v2, p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setUserList(Ljava/util/List;I)V

    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$3;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 5
    iget-object p1, p1, Lcom/narvii/master/CommunityDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    invoke-virtual {p1, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setOnBarClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$3;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 6
    iget-object v0, p1, Lcom/narvii/master/CommunityDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object p1, p1, Lcom/narvii/master/CommunityDetailFragment;->topic:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->subscribeTopic(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$3;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    const-string v0, "liveLayerWS"

    .line 7
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/livelayer/ws/LiveLayerWsService;

    iput-object v0, p1, Lcom/narvii/master/CommunityDetailFragment;->liveLayerWsService:Lcom/narvii/livelayer/ws/LiveLayerWsService;

    iget-object p1, p0, Lcom/narvii/master/CommunityDetailFragment$3;->this$0:Lcom/narvii/master/CommunityDetailFragment;

    .line 8
    iget-object v0, p1, Lcom/narvii/master/CommunityDetailFragment;->liveLayerWsService:Lcom/narvii/livelayer/ws/LiveLayerWsService;

    invoke-virtual {v0, p1}, Lcom/narvii/livelayer/ws/LiveLayerWsService;->registerWsListener(Lcom/narvii/util/ws/WsService$WsListener;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/api/UserListResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/master/CommunityDetailFragment$3;->call(Lcom/narvii/model/api/UserListResponse;)V

    return-void
.end method
