.class Lcom/narvii/user/list/BlockedListFragment$1;
.super Ljava/lang/Object;
.source "BlockedListFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/list/BlockedListFragment;->unblock(Lcom/narvii/model/User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/list/BlockedListFragment;

.field final synthetic val$user:Lcom/narvii/model/User;


# direct methods
.method constructor <init>(Lcom/narvii/user/list/BlockedListFragment;Lcom/narvii/model/User;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/narvii/user/list/BlockedListFragment$1;->this$0:Lcom/narvii/user/list/BlockedListFragment;

    iput-object p2, p0, Lcom/narvii/user/list/BlockedListFragment$1;->val$user:Lcom/narvii/model/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 114
    check-cast p1, Lcom/narvii/userblock/BlockListResponse;

    .line 115
    iget-object v0, p0, Lcom/narvii/user/list/BlockedListFragment$1;->this$0:Lcom/narvii/user/list/BlockedListFragment;

    const-string v1, "block"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/userblock/UserBlockService;

    .line 116
    iget-object v1, p1, Lcom/narvii/userblock/BlockListResponse;->blockedUidList:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/narvii/userblock/BlockListResponse;->blockerUidList:Ljava/util/ArrayList;

    invoke-interface {v0, v1, p1}, Lcom/narvii/userblock/UserBlockService;->updateBlockList(Ljava/util/List;Ljava/util/List;)V

    .line 117
    new-instance p1, Lcom/narvii/notification/Notification;

    iget-object v0, p0, Lcom/narvii/user/list/BlockedListFragment$1;->val$user:Lcom/narvii/model/User;

    const-string v1, "delete"

    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 119
    iget-object v0, p0, Lcom/narvii/user/list/BlockedListFragment$1;->this$0:Lcom/narvii/user/list/BlockedListFragment;

    iget-object v0, v0, Lcom/narvii/user/list/BlockedListFragment;->adapter:Lcom/narvii/user/list/BlockedListFragment$Adapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 111
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/user/list/BlockedListFragment$1;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
