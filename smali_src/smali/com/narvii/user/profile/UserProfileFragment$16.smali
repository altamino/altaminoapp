.class Lcom/narvii/user/profile/UserProfileFragment$16;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/profile/UserProfileFragment;->follow(Z)V
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
.field final synthetic this$0:Lcom/narvii/user/profile/UserProfileFragment;

.field final synthetic val$following:Z


# direct methods
.method constructor <init>(Lcom/narvii/user/profile/UserProfileFragment;Ljava/lang/Class;Z)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$16;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 3
    .line 4
    iput-boolean p3, p0, Lcom/narvii/user/profile/UserProfileFragment$16;->val$following:Z

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
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$16;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 3
    const/4 p2, 0x0

    .line 4
    .line 5
    iput-boolean p2, p1, Lcom/narvii/user/profile/UserProfileFragment;->sendingFollow:Z

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/user/profile/UserProfileFragment;->updateHeader()V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$16;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 22
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 5

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$16;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    iput-boolean v0, p1, Lcom/narvii/user/profile/UserProfileFragment;->sendingFollow:Z

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/user/profile/UserProfileFragment;->updateHeader()V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$16;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 11
    .line 12
    const-string v0, "account"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    return-void

    .line 26
    .line 27
    :cond_0
    new-instance v1, Lcom/narvii/notification/Notification;

    .line 28
    .line 29
    iget-boolean v2, p0, Lcom/narvii/user/profile/UserProfileFragment$16;->val$following:Z

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    const-string v2, "delete"

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_1
    const-string v2, "new"

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-direct {v1, v2, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$16;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 42
    .line 43
    const-string v2, "id"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    iput-object v0, v1, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$16;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 52
    .line 53
    .line 54
    invoke-static {v0, v1}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;)V

    .line 55
    .line 56
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$16;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 62
    move-result-object v0

    .line 63
    const/4 v1, 0x1

    .line 64
    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$16;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 68
    .line 69
    iget-object v0, v0, Lcom/narvii/user/profile/UserProfileFragment;->bioAdapter:Lcom/narvii/user/profile/UserProfileFragment$BioAdapter;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    check-cast v0, Lcom/narvii/model/User;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    check-cast v0, Lcom/narvii/model/User;

    .line 82
    .line 83
    iget-boolean v3, p0, Lcom/narvii/user/profile/UserProfileFragment$16;->val$following:Z

    .line 84
    .line 85
    if-eqz v3, :cond_2

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lcom/narvii/model/User;->removeFollowingStatus(I)V

    .line 89
    .line 90
    iget v3, v0, Lcom/narvii/model/User;->membersCount:I

    .line 91
    sub-int/2addr v3, v1

    .line 92
    .line 93
    iput v3, v0, Lcom/narvii/model/User;->membersCount:I

    .line 94
    goto :goto_1

    .line 95
    .line 96
    .line 97
    :cond_2
    invoke-virtual {v0, v1}, Lcom/narvii/model/User;->addFollowingStatus(I)V

    .line 98
    .line 99
    iget v3, v0, Lcom/narvii/model/User;->membersCount:I

    .line 100
    add-int/2addr v3, v1

    .line 101
    .line 102
    iput v3, v0, Lcom/narvii/model/User;->membersCount:I

    .line 103
    .line 104
    :goto_1
    new-instance v3, Lcom/narvii/notification/Notification;

    .line 105
    .line 106
    .line 107
    const-string/jumbo v4, "update"

    .line 108
    .line 109
    .line 110
    invoke-direct {v3, v4, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 111
    .line 112
    iget-object v0, p0, Lcom/narvii/user/profile/UserProfileFragment$16;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 113
    .line 114
    .line 115
    invoke-static {v0, v3}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;)V

    .line 116
    .line 117
    .line 118
    :cond_3
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 119
    move-result-object v0

    .line 120
    .line 121
    iget-boolean v3, p0, Lcom/narvii/user/profile/UserProfileFragment$16;->val$following:Z

    .line 122
    .line 123
    if-eqz v3, :cond_4

    .line 124
    .line 125
    iget v3, v0, Lcom/narvii/model/User;->joinedCount:I

    .line 126
    sub-int/2addr v3, v1

    .line 127
    .line 128
    iput v3, v0, Lcom/narvii/model/User;->joinedCount:I

    .line 129
    goto :goto_2

    .line 130
    .line 131
    :cond_4
    iget v3, v0, Lcom/narvii/model/User;->joinedCount:I

    .line 132
    add-int/2addr v3, v1

    .line 133
    .line 134
    iput v3, v0, Lcom/narvii/model/User;->joinedCount:I

    .line 135
    .line 136
    .line 137
    :goto_2
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 138
    move-result-object v3

    .line 139
    .line 140
    iget-object v4, p0, Lcom/narvii/user/profile/UserProfileFragment$16;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    move-result-object v2

    .line 145
    .line 146
    .line 147
    invoke-static {v3, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 148
    move-result v2

    .line 149
    .line 150
    if-eqz v2, :cond_5

    .line 151
    .line 152
    iget-object p2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, v0, p2, v1}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;Z)V

    .line 156
    :cond_5
    return-void
.end method
