.class Lcom/narvii/user/follow/UserFollowDelegate$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/follow/UserFollowDelegate$1;->this$0:Lcom/narvii/user/follow/UserFollowDelegate;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/user/follow/UserFollowDelegate$1;->val$user:Lcom/narvii/model/User;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 8
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

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowDelegate$1;->this$0:Lcom/narvii/user/follow/UserFollowDelegate;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/user/follow/UserFollowDelegate;->c(Lcom/narvii/user/follow/UserFollowDelegate;)Ljava/util/HashSet;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    iget-object p2, p0, Lcom/narvii/user/follow/UserFollowDelegate$1;->val$user:Lcom/narvii/model/User;

    .line 9
    .line 10
    iget-object p2, p2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowDelegate$1;->this$0:Lcom/narvii/user/follow/UserFollowDelegate;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/narvii/user/follow/UserFollowDelegate;->b(Lcom/narvii/user/follow/UserFollowDelegate;)Lcom/narvii/user/follow/IUserFollow;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowDelegate$1;->this$0:Lcom/narvii/user/follow/UserFollowDelegate;

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/narvii/user/follow/UserFollowDelegate;->b(Lcom/narvii/user/follow/UserFollowDelegate;)Lcom/narvii/user/follow/IUserFollow;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-interface {p1}, Lcom/narvii/user/follow/IUserFollow;->followFail()V

    .line 31
    .line 32
    :cond_0
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowDelegate$1;->this$0:Lcom/narvii/user/follow/UserFollowDelegate;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/narvii/user/follow/UserFollowDelegate;->onFollowStatusUpdated()V

    .line 36
    .line 37
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowDelegate$1;->this$0:Lcom/narvii/user/follow/UserFollowDelegate;

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lcom/narvii/user/follow/UserFollowDelegate;->a(Lcom/narvii/user/follow/UserFollowDelegate;)Lcom/narvii/app/NVContext;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 45
    move-result-object p1

    .line 46
    const/4 p2, 0x0

    .line 47
    .line 48
    .line 49
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 54
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowDelegate$1;->this$0:Lcom/narvii/user/follow/UserFollowDelegate;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/user/follow/UserFollowDelegate;->c(Lcom/narvii/user/follow/UserFollowDelegate;)Ljava/util/HashSet;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowDelegate$1;->val$user:Lcom/narvii/model/User;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowDelegate$1;->this$0:Lcom/narvii/user/follow/UserFollowDelegate;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/narvii/user/follow/UserFollowDelegate;->b(Lcom/narvii/user/follow/UserFollowDelegate;)Lcom/narvii/user/follow/IUserFollow;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowDelegate$1;->this$0:Lcom/narvii/user/follow/UserFollowDelegate;

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/narvii/user/follow/UserFollowDelegate;->b(Lcom/narvii/user/follow/UserFollowDelegate;)Lcom/narvii/user/follow/IUserFollow;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-interface {p1}, Lcom/narvii/user/follow/IUserFollow;->followSuccess()V

    .line 31
    .line 32
    :cond_0
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowDelegate$1;->this$0:Lcom/narvii/user/follow/UserFollowDelegate;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/narvii/user/follow/UserFollowDelegate;->onFollowStatusUpdated()V

    .line 36
    .line 37
    iget-object p1, p0, Lcom/narvii/user/follow/UserFollowDelegate$1;->this$0:Lcom/narvii/user/follow/UserFollowDelegate;

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lcom/narvii/user/follow/UserFollowDelegate;->a(Lcom/narvii/user/follow/UserFollowDelegate;)Lcom/narvii/app/NVContext;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    const-string v0, "account"

    .line 44
    .line 45
    .line 46
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowDelegate$1;->val$user:Lcom/narvii/model/User;

    .line 52
    .line 53
    iget v0, v0, Lcom/narvii/model/User;->ndcId:I

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Lcom/narvii/account/AccountService;->getUserProfile(I)Lcom/narvii/model/User;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    if-nez v0, :cond_1

    .line 60
    return-void

    .line 61
    .line 62
    :cond_1
    new-instance v1, Lcom/narvii/notification/Notification;

    .line 63
    .line 64
    const-string v2, "new"

    .line 65
    .line 66
    .line 67
    invoke-direct {v1, v2, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 68
    .line 69
    iget-object v2, p0, Lcom/narvii/user/follow/UserFollowDelegate$1;->val$user:Lcom/narvii/model/User;

    .line 70
    .line 71
    iget-object v2, v2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 72
    .line 73
    iput-object v2, v1, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    .line 74
    .line 75
    iget-object v2, p0, Lcom/narvii/user/follow/UserFollowDelegate$1;->this$0:Lcom/narvii/user/follow/UserFollowDelegate;

    .line 76
    .line 77
    .line 78
    invoke-static {v2}, Lcom/narvii/user/follow/UserFollowDelegate;->a(Lcom/narvii/user/follow/UserFollowDelegate;)Lcom/narvii/app/NVContext;

    .line 79
    move-result-object v2

    .line 80
    .line 81
    .line 82
    invoke-static {v2, v1}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;)V

    .line 83
    .line 84
    iget-object v1, p0, Lcom/narvii/user/follow/UserFollowDelegate$1;->val$user:Lcom/narvii/model/User;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 88
    move-result-object v1

    .line 89
    .line 90
    check-cast v1, Lcom/narvii/model/User;

    .line 91
    const/4 v2, 0x1

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v2}, Lcom/narvii/model/User;->addFollowingStatus(I)V

    .line 95
    .line 96
    iget v3, v1, Lcom/narvii/model/User;->membersCount:I

    .line 97
    add-int/2addr v3, v2

    .line 98
    .line 99
    iput v3, v1, Lcom/narvii/model/User;->membersCount:I

    .line 100
    .line 101
    new-instance v3, Lcom/narvii/notification/Notification;

    .line 102
    .line 103
    .line 104
    const-string/jumbo v4, "update"

    .line 105
    .line 106
    .line 107
    invoke-direct {v3, v4, v1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 108
    .line 109
    iget-object v1, p0, Lcom/narvii/user/follow/UserFollowDelegate$1;->this$0:Lcom/narvii/user/follow/UserFollowDelegate;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Lcom/narvii/user/follow/UserFollowDelegate;->needUpdateUserAfterFollow()Z

    .line 113
    move-result v1

    .line 114
    .line 115
    iget-object v4, p0, Lcom/narvii/user/follow/UserFollowDelegate$1;->this$0:Lcom/narvii/user/follow/UserFollowDelegate;

    .line 116
    .line 117
    .line 118
    invoke-static {v4}, Lcom/narvii/user/follow/UserFollowDelegate;->b(Lcom/narvii/user/follow/UserFollowDelegate;)Lcom/narvii/user/follow/IUserFollow;

    .line 119
    move-result-object v4

    .line 120
    .line 121
    if-eqz v4, :cond_2

    .line 122
    .line 123
    iget-object v1, p0, Lcom/narvii/user/follow/UserFollowDelegate$1;->this$0:Lcom/narvii/user/follow/UserFollowDelegate;

    .line 124
    .line 125
    .line 126
    invoke-static {v1}, Lcom/narvii/user/follow/UserFollowDelegate;->b(Lcom/narvii/user/follow/UserFollowDelegate;)Lcom/narvii/user/follow/IUserFollow;

    .line 127
    move-result-object v1

    .line 128
    .line 129
    .line 130
    invoke-interface {v1}, Lcom/narvii/user/follow/IUserFollow;->needUpdateUserAfterFollow()Z

    .line 131
    move-result v1

    .line 132
    .line 133
    :cond_2
    iget-object v4, p0, Lcom/narvii/user/follow/UserFollowDelegate$1;->this$0:Lcom/narvii/user/follow/UserFollowDelegate;

    .line 134
    .line 135
    .line 136
    invoke-static {v4}, Lcom/narvii/user/follow/UserFollowDelegate;->a(Lcom/narvii/user/follow/UserFollowDelegate;)Lcom/narvii/app/NVContext;

    .line 137
    move-result-object v4

    .line 138
    .line 139
    .line 140
    invoke-static {v4, v3, v2, v1}, Lcom/narvii/util/NotificationUtils;->sendUserNotification(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;ZZ)V

    .line 141
    .line 142
    iget v1, v0, Lcom/narvii/model/User;->joinedCount:I

    .line 143
    add-int/2addr v1, v2

    .line 144
    .line 145
    iput v1, v0, Lcom/narvii/model/User;->joinedCount:I

    .line 146
    .line 147
    iget-object p2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, v0, p2, v2}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;Z)V

    .line 151
    return-void
.end method
