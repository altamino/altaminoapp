.class Lcom/narvii/influencer/FanClubSubscriptionDialog$8;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/influencer/FanClubSubscriptionDialog;->sendFellowRequest()V
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
.field final synthetic this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;


# direct methods
.method constructor <init>(Lcom/narvii/influencer/FanClubSubscriptionDialog;Ljava/lang/Class;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$8;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
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
    .line 3
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$8;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 9
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$8;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->e(Lcom/narvii/influencer/FanClubSubscriptionDialog;)Lcom/narvii/app/NVContext;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    const-string v0, "account"

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    return-void

    .line 25
    .line 26
    :cond_0
    new-instance v1, Lcom/narvii/notification/Notification;

    .line 27
    .line 28
    const-string v2, "new"

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v2, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$8;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->g(Lcom/narvii/influencer/FanClubSubscriptionDialog;)Lcom/narvii/model/User;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    iput-object v0, v1, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$8;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->d(Lcom/narvii/influencer/FanClubSubscriptionDialog;)Lcom/narvii/notification/NotificationCenter;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 53
    .line 54
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$8;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->g(Lcom/narvii/influencer/FanClubSubscriptionDialog;)Lcom/narvii/model/User;

    .line 58
    move-result-object v0

    .line 59
    const/4 v1, 0x1

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/narvii/model/User;->addFollowingStatus(I)V

    .line 63
    .line 64
    iget-object v0, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$8;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    .line 65
    .line 66
    .line 67
    invoke-static {v0}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->g(Lcom/narvii/influencer/FanClubSubscriptionDialog;)Lcom/narvii/model/User;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    iget v2, v0, Lcom/narvii/model/User;->membersCount:I

    .line 71
    add-int/2addr v2, v1

    .line 72
    .line 73
    iput v2, v0, Lcom/narvii/model/User;->membersCount:I

    .line 74
    .line 75
    new-instance v0, Lcom/narvii/notification/Notification;

    .line 76
    .line 77
    iget-object v2, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$8;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    .line 78
    .line 79
    .line 80
    invoke-static {v2}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->g(Lcom/narvii/influencer/FanClubSubscriptionDialog;)Lcom/narvii/model/User;

    .line 81
    move-result-object v2

    .line 82
    .line 83
    const-string v3, "update"

    .line 84
    .line 85
    .line 86
    invoke-direct {v0, v3, v2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 87
    .line 88
    new-instance v2, Landroid/os/Bundle;

    .line 89
    .line 90
    .line 91
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 92
    .line 93
    iput-object v2, v0, Lcom/narvii/notification/Notification;->bundle:Landroid/os/Bundle;

    .line 94
    .line 95
    const-string v3, "keepInfluencerInfo"

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 99
    .line 100
    iget-object v2, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$8;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    .line 101
    .line 102
    .line 103
    invoke-static {v2}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->d(Lcom/narvii/influencer/FanClubSubscriptionDialog;)Lcom/narvii/notification/NotificationCenter;

    .line 104
    move-result-object v2

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v0}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 111
    move-result-object v0

    .line 112
    .line 113
    iget v2, v0, Lcom/narvii/model/User;->joinedCount:I

    .line 114
    add-int/2addr v2, v1

    .line 115
    .line 116
    iput v2, v0, Lcom/narvii/model/User;->joinedCount:I

    .line 117
    .line 118
    iget-object p2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v0, p2, v1}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;Z)V

    .line 122
    .line 123
    iget-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$8;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    .line 124
    .line 125
    .line 126
    invoke-static {p1}, Lcom/narvii/influencer/FanClubSubscriptionDialog;->m(Lcom/narvii/influencer/FanClubSubscriptionDialog;)V

    .line 127
    .line 128
    iget-object p1, p0, Lcom/narvii/influencer/FanClubSubscriptionDialog$8;->this$0:Lcom/narvii/influencer/FanClubSubscriptionDialog;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 132
    return-void
.end method
