.class Lcom/narvii/user/list/FollowersListFragment$1;
.super Ljava/lang/Object;
.source "FollowersListFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/list/FollowersListFragment;->delete(Lcom/narvii/model/User;Z)V
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
.field final synthetic this$0:Lcom/narvii/user/list/FollowersListFragment;

.field final synthetic val$user:Lcom/narvii/model/User;


# direct methods
.method constructor <init>(Lcom/narvii/user/list/FollowersListFragment;Lcom/narvii/model/User;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/narvii/user/list/FollowersListFragment$1;->this$0:Lcom/narvii/user/list/FollowersListFragment;

    iput-object p2, p0, Lcom/narvii/user/list/FollowersListFragment$1;->val$user:Lcom/narvii/model/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 4

    .line 197
    iget-object v0, p0, Lcom/narvii/user/list/FollowersListFragment$1;->val$user:Lcom/narvii/model/User;

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    const/4 v1, 0x2

    .line 198
    invoke-virtual {v0, v1}, Lcom/narvii/model/User;->removeFollowingStatus(I)V

    .line 199
    new-instance v1, Lcom/narvii/notification/Notification;

    const-string v2, "update"

    invoke-direct {v1, v2, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 201
    iget-object v0, p0, Lcom/narvii/user/list/FollowersListFragment$1;->this$0:Lcom/narvii/user/list/FollowersListFragment;

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 203
    iget-object v0, p0, Lcom/narvii/user/list/FollowersListFragment$1;->this$0:Lcom/narvii/user/list/FollowersListFragment;

    const-string v1, "account"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 204
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v1

    .line 205
    iget v2, v1, Lcom/narvii/model/User;->membersCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/narvii/model/User;->membersCount:I

    .line 206
    iget-object p1, p1, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v3}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 194
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/user/list/FollowersListFragment$1;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
