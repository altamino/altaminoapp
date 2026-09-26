.class public final Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$1$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/profile/GlobalProfileFragment;->follow(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
.field final synthetic $following:Z

.field final synthetic $it:Lcom/narvii/model/User;

.field final synthetic this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;ZLcom/narvii/model/User;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/master/home/profile/GlobalProfileFragment;",
            "Z",
            "Lcom/narvii/model/User;",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$1$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$1$1;->$following:Z

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$1$1;->$it:Lcom/narvii/model/User;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p4}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 10
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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
    .line 3
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$1$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 6
    .line 7
    iget-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$1$1;->$it:Lcom/narvii/model/User;

    .line 8
    const/4 p3, 0x0

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p3, p2}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->access$follow$updateFollowState(Lcom/narvii/master/home/profile/GlobalProfileFragment;ZLcom/narvii/model/User;)V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$1$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-static {p1, p4, p3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 25
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 4
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$1$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->access$setPerformFollowAnimation$p(Lcom/narvii/master/home/profile/GlobalProfileFragment;Z)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$1$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getAccountService()Lcom/narvii/account/AccountService;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    return-void

    .line 20
    .line 21
    :cond_0
    new-instance v1, Lcom/narvii/notification/Notification;

    .line 22
    .line 23
    iget-boolean v2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$1$1;->$following:Z

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    const-string v2, "delete"

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_1
    const-string v2, "new"

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-direct {v1, v2, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 34
    .line 35
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$1$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 36
    .line 37
    const-string v2, "id"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    iput-object p1, v1, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    .line 44
    .line 45
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$1$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v1}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 49
    .line 50
    iget-boolean p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$1$1;->$following:Z

    .line 51
    const/4 v1, 0x0

    .line 52
    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$1$1;->$it:Lcom/narvii/model/User;

    .line 56
    .line 57
    iget v2, p1, Lcom/narvii/model/User;->followingStatus:I

    .line 58
    .line 59
    and-int/lit8 v2, v2, 0x2

    .line 60
    .line 61
    iput v2, p1, Lcom/narvii/model/User;->followingStatus:I

    .line 62
    .line 63
    iget v2, p1, Lcom/narvii/model/User;->membershipStatus:I

    .line 64
    .line 65
    and-int/lit8 v2, v2, 0x2

    .line 66
    .line 67
    iput v2, p1, Lcom/narvii/model/User;->membershipStatus:I

    .line 68
    .line 69
    iget v2, p1, Lcom/narvii/model/User;->membersCount:I

    .line 70
    .line 71
    add-int/lit8 v2, v2, -0x1

    .line 72
    .line 73
    iput v2, p1, Lcom/narvii/model/User;->membersCount:I

    .line 74
    .line 75
    iput v1, p1, Lcom/narvii/model/User;->notificationSubscriptionStatus:I

    .line 76
    goto :goto_1

    .line 77
    .line 78
    :cond_2
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$1$1;->$it:Lcom/narvii/model/User;

    .line 79
    .line 80
    iget v2, p1, Lcom/narvii/model/User;->followingStatus:I

    .line 81
    or-int/2addr v2, v0

    .line 82
    .line 83
    iput v2, p1, Lcom/narvii/model/User;->followingStatus:I

    .line 84
    .line 85
    iget v2, p1, Lcom/narvii/model/User;->membershipStatus:I

    .line 86
    or-int/2addr v2, v0

    .line 87
    .line 88
    iput v2, p1, Lcom/narvii/model/User;->membershipStatus:I

    .line 89
    .line 90
    iget v2, p1, Lcom/narvii/model/User;->membersCount:I

    .line 91
    add-int/2addr v2, v0

    .line 92
    .line 93
    iput v2, p1, Lcom/narvii/model/User;->membersCount:I

    .line 94
    .line 95
    :goto_1
    new-instance p1, Lcom/narvii/notification/Notification;

    .line 96
    .line 97
    const-string v2, "update"

    .line 98
    .line 99
    iget-object v3, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$1$1;->$it:Lcom/narvii/model/User;

    .line 100
    .line 101
    .line 102
    invoke-direct {p1, v2, v3}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 103
    .line 104
    iget-object v2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$1$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, p1}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 108
    .line 109
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$1$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getAccountService()Lcom/narvii/account/AccountService;

    .line 113
    move-result-object p1

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 117
    move-result-object p1

    .line 118
    .line 119
    iget-boolean v2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$1$1;->$following:Z

    .line 120
    .line 121
    if-eqz v2, :cond_3

    .line 122
    .line 123
    iget v2, p1, Lcom/narvii/model/User;->joinedCount:I

    .line 124
    .line 125
    add-int/lit8 v2, v2, -0x1

    .line 126
    .line 127
    iput v2, p1, Lcom/narvii/model/User;->joinedCount:I

    .line 128
    goto :goto_2

    .line 129
    .line 130
    :cond_3
    iget v2, p1, Lcom/narvii/model/User;->joinedCount:I

    .line 131
    add-int/2addr v2, v0

    .line 132
    .line 133
    iput v2, p1, Lcom/narvii/model/User;->joinedCount:I

    .line 134
    .line 135
    :goto_2
    iget-object v2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$1$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->getAccountService()Lcom/narvii/account/AccountService;

    .line 139
    move-result-object v2

    .line 140
    .line 141
    if-eqz p2, :cond_4

    .line 142
    .line 143
    iget-object p2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    .line 144
    goto :goto_3

    .line 145
    :cond_4
    const/4 p2, 0x0

    .line 146
    .line 147
    .line 148
    :goto_3
    invoke-virtual {v2, p1, p2, v0}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;Z)V

    .line 149
    .line 150
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$1$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    .line 151
    .line 152
    iget-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$1$1;->$it:Lcom/narvii/model/User;

    .line 153
    .line 154
    .line 155
    invoke-static {p1, v1, p2}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->access$follow$updateFollowState(Lcom/narvii/master/home/profile/GlobalProfileFragment;ZLcom/narvii/model/User;)V

    .line 156
    return-void
.end method
