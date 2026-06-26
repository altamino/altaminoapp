.class Lcom/narvii/user/follow/UserFollowDelegate$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "UserFollowDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/follow/UserFollowDelegate;->follow(Lcom/narvii/model/User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/follow/UserFollowDelegate;

.field final synthetic val$user:Lcom/narvii/model/User;


# direct methods
.method constructor <init>(Lcom/narvii/user/follow/UserFollowDelegate;Ljava/lang/Class;Lcom/narvii/model/User;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/narvii/user/follow/UserFollowDelegate$1;->this$0:Lcom/narvii/user/follow/UserFollowDelegate;

    iput-object p3, p0, Lcom/narvii/user/follow/UserFollowDelegate$1;->val$user:Lcom/narvii/model/User;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/api/ApiResponse;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 79
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowDelegate$1;->this$0:Lcom/narvii/user/follow/UserFollowDelegate;

    invoke-static {p1}, Lcom/narvii/user/follow/UserFollowDelegate;->access$000(Lcom/narvii/user/follow/UserFollowDelegate;)Ljava/util/HashSet;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/user/follow/UserFollowDelegate$1;->val$user:Lcom/narvii/model/User;

    iget-object p2, p2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 80
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowDelegate$1;->this$0:Lcom/narvii/user/follow/UserFollowDelegate;

    invoke-static {p1}, Lcom/narvii/user/follow/UserFollowDelegate;->access$100(Lcom/narvii/user/follow/UserFollowDelegate;)Lcom/narvii/user/follow/IUserFollow;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowDelegate$1;->this$0:Lcom/narvii/user/follow/UserFollowDelegate;

    invoke-static {p1}, Lcom/narvii/user/follow/UserFollowDelegate;->access$100(Lcom/narvii/user/follow/UserFollowDelegate;)Lcom/narvii/user/follow/IUserFollow;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/user/follow/IUserFollow;->followFail()V

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowDelegate$1;->this$0:Lcom/narvii/user/follow/UserFollowDelegate;

    invoke-virtual {p1}, Lcom/narvii/user/follow/UserFollowDelegate;->onFollowStatusUpdated()V

    .line 84
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowDelegate$1;->this$0:Lcom/narvii/user/follow/UserFollowDelegate;

    invoke-static {p1}, Lcom/narvii/user/follow/UserFollowDelegate;->access$200(Lcom/narvii/user/follow/UserFollowDelegate;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowDelegate$1;->this$0:Lcom/narvii/user/follow/UserFollowDelegate;

    invoke-static {p1}, Lcom/narvii/user/follow/UserFollowDelegate;->access$000(Lcom/narvii/user/follow/UserFollowDelegate;)Ljava/util/HashSet;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowDelegate$1;->val$user:Lcom/narvii/model/User;

    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 47
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowDelegate$1;->this$0:Lcom/narvii/user/follow/UserFollowDelegate;

    invoke-static {p1}, Lcom/narvii/user/follow/UserFollowDelegate;->access$100(Lcom/narvii/user/follow/UserFollowDelegate;)Lcom/narvii/user/follow/IUserFollow;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 48
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowDelegate$1;->this$0:Lcom/narvii/user/follow/UserFollowDelegate;

    invoke-static {p1}, Lcom/narvii/user/follow/UserFollowDelegate;->access$100(Lcom/narvii/user/follow/UserFollowDelegate;)Lcom/narvii/user/follow/IUserFollow;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/user/follow/IUserFollow;->followSuccess()V

    .line 50
    :cond_0
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowDelegate$1;->this$0:Lcom/narvii/user/follow/UserFollowDelegate;

    invoke-virtual {p1}, Lcom/narvii/user/follow/UserFollowDelegate;->onFollowStatusUpdated()V

    .line 52
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowDelegate$1;->this$0:Lcom/narvii/user/follow/UserFollowDelegate;

    invoke-static {p1}, Lcom/narvii/user/follow/UserFollowDelegate;->access$200(Lcom/narvii/user/follow/UserFollowDelegate;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string v0, "account"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 53
    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowDelegate$1;->val$user:Lcom/narvii/model/User;

    iget v0, v0, Lcom/narvii/model/User;->ndcId:I

    invoke-virtual {p1, v0}, Lcom/narvii/account/AccountService;->getUserProfile(I)Lcom/narvii/model/User;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 56
    :cond_1
    new-instance v1, Lcom/narvii/notification/Notification;

    const-string v2, "new"

    invoke-direct {v1, v2, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 57
    iget-object v2, p0, Lcom/narvii/user/follow/UserFollowDelegate$1;->val$user:Lcom/narvii/model/User;

    iget-object v2, v2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    iput-object v2, v1, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    .line 58
    iget-object v2, p0, Lcom/narvii/user/follow/UserFollowDelegate$1;->this$0:Lcom/narvii/user/follow/UserFollowDelegate;

    invoke-static {v2}, Lcom/narvii/user/follow/UserFollowDelegate;->access$200(Lcom/narvii/user/follow/UserFollowDelegate;)Lcom/narvii/app/NVContext;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;)V

    .line 60
    iget-object v1, p0, Lcom/narvii/user/follow/UserFollowDelegate$1;->val$user:Lcom/narvii/model/User;

    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/User;

    const/4 v2, 0x1

    .line 61
    invoke-virtual {v1, v2}, Lcom/narvii/model/User;->addFollowingStatus(I)V

    .line 62
    iget v3, v1, Lcom/narvii/model/User;->membersCount:I

    add-int/2addr v3, v2

    iput v3, v1, Lcom/narvii/model/User;->membersCount:I

    .line 63
    new-instance v3, Lcom/narvii/notification/Notification;

    const-string v4, "update"

    invoke-direct {v3, v4, v1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 65
    iget-object v1, p0, Lcom/narvii/user/follow/UserFollowDelegate$1;->this$0:Lcom/narvii/user/follow/UserFollowDelegate;

    invoke-interface {v1}, Lcom/narvii/user/follow/IUserFollow;->needUpdateUserAfterFollow()Z

    move-result v1

    .line 66
    iget-object v4, p0, Lcom/narvii/user/follow/UserFollowDelegate$1;->this$0:Lcom/narvii/user/follow/UserFollowDelegate;

    invoke-static {v4}, Lcom/narvii/user/follow/UserFollowDelegate;->access$100(Lcom/narvii/user/follow/UserFollowDelegate;)Lcom/narvii/user/follow/IUserFollow;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 67
    iget-object v1, p0, Lcom/narvii/user/follow/UserFollowDelegate$1;->this$0:Lcom/narvii/user/follow/UserFollowDelegate;

    invoke-static {v1}, Lcom/narvii/user/follow/UserFollowDelegate;->access$100(Lcom/narvii/user/follow/UserFollowDelegate;)Lcom/narvii/user/follow/IUserFollow;

    move-result-object v1

    invoke-interface {v1}, Lcom/narvii/user/follow/IUserFollow;->needUpdateUserAfterFollow()Z

    move-result v1

    .line 69
    :cond_2
    iget-object v4, p0, Lcom/narvii/user/follow/UserFollowDelegate$1;->this$0:Lcom/narvii/user/follow/UserFollowDelegate;

    invoke-static {v4}, Lcom/narvii/user/follow/UserFollowDelegate;->access$200(Lcom/narvii/user/follow/UserFollowDelegate;)Lcom/narvii/app/NVContext;

    move-result-object v4

    invoke-static {v4, v3, v2, v1}, Lcom/narvii/util/NotificationUtils;->sendUserNotification(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;ZZ)V

    .line 71
    iget v1, v0, Lcom/narvii/model/User;->joinedCount:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/narvii/model/User;->joinedCount:I

    .line 72
    iget-object p2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {p1, v0, p2, v2}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;Z)V

    return-void
.end method
