.class Lcom/narvii/user/list/FollowingListFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/list/FollowingListFragment;->delete(Lcom/narvii/model/User;Z)V
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
.field final synthetic this$0:Lcom/narvii/user/list/FollowingListFragment;

.field final synthetic val$user:Lcom/narvii/model/User;


# direct methods
.method constructor <init>(Lcom/narvii/user/list/FollowingListFragment;Lcom/narvii/model/User;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/list/FollowingListFragment$1;->this$0:Lcom/narvii/user/list/FollowingListFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/user/list/FollowingListFragment$1;->val$user:Lcom/narvii/model/User;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 4

    iget-object v0, p0, Lcom/narvii/user/list/FollowingListFragment$1;->val$user:Lcom/narvii/model/User;

    .line 2
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/narvii/model/User;->removeFollowingStatus(I)V

    .line 4
    new-instance v2, Lcom/narvii/notification/Notification;

    const-string/jumbo v3, "update"

    invoke-direct {v2, v3, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    iget-object v0, p0, Lcom/narvii/user/list/FollowingListFragment$1;->this$0:Lcom/narvii/user/list/FollowingListFragment;

    .line 5
    invoke-virtual {v0, v2}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    iget-object v0, p0, Lcom/narvii/user/list/FollowingListFragment$1;->this$0:Lcom/narvii/user/list/FollowingListFragment;

    const-string v2, "account"

    .line 6
    invoke-virtual {v0, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 7
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v2

    .line 8
    iget v3, v2, Lcom/narvii/model/User;->joinedCount:I

    sub-int/2addr v3, v1

    iput v3, v2, Lcom/narvii/model/User;->joinedCount:I

    .line 9
    iget-object p1, p1, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {v0, v2, p1, v1}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/user/list/FollowingListFragment$1;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
