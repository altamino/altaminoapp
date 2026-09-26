.class Lcom/narvii/story/detail/VoteHelper$3;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/detail/VoteHelper;->vote(Lcom/narvii/model/SharedFile;Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V
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
.field final synthetic this$0:Lcom/narvii/story/detail/VoteHelper;

.field final synthetic val$isGlobal:Z

.field final synthetic val$onVoteListener:Lcom/narvii/story/detail/VoteHelper$OnVoteListener;

.field final synthetic val$sharedFile:Lcom/narvii/model/SharedFile;

.field final synthetic val$v:I


# direct methods
.method constructor <init>(Lcom/narvii/story/detail/VoteHelper;Ljava/lang/Class;Lcom/narvii/model/SharedFile;IZLcom/narvii/story/detail/VoteHelper$OnVoteListener;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/story/detail/VoteHelper$3;->this$0:Lcom/narvii/story/detail/VoteHelper;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/story/detail/VoteHelper$3;->val$sharedFile:Lcom/narvii/model/SharedFile;

    .line 5
    .line 6
    iput p4, p0, Lcom/narvii/story/detail/VoteHelper$3;->val$v:I

    .line 7
    .line 8
    iput-boolean p5, p0, Lcom/narvii/story/detail/VoteHelper$3;->val$isGlobal:Z

    .line 9
    .line 10
    iput-object p6, p0, Lcom/narvii/story/detail/VoteHelper$3;->val$onVoteListener:Lcom/narvii/story/detail/VoteHelper$OnVoteListener;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 14
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
    iget-object p1, p0, Lcom/narvii/story/detail/VoteHelper$3;->val$onVoteListener:Lcom/narvii/story/detail/VoteHelper$OnVoteListener;

    .line 3
    const/4 p2, 0x0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, p2}, Lcom/narvii/story/detail/VoteHelper$OnVoteListener;->onVoteEnd(Z)V

    .line 9
    .line 10
    :cond_0
    iget-object p1, p0, Lcom/narvii/story/detail/VoteHelper$3;->this$0:Lcom/narvii/story/detail/VoteHelper;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/story/detail/VoteHelper;->e(Lcom/narvii/story/detail/VoteHelper;)Lcom/narvii/app/NVContext;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 26
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/story/detail/VoteHelper$3;->val$sharedFile:Lcom/narvii/model/SharedFile;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/model/SharedFile;

    .line 9
    .line 10
    iget p2, p0, Lcom/narvii/story/detail/VoteHelper$3;->val$v:I

    .line 11
    .line 12
    iput p2, p1, Lcom/narvii/model/SharedFile;->votedValue:I

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/story/detail/VoteHelper$3;->val$sharedFile:Lcom/narvii/model/SharedFile;

    .line 15
    .line 16
    iget v0, v0, Lcom/narvii/model/SharedFile;->votedValue:I

    .line 17
    const/4 v1, 0x1

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    iget p2, p1, Lcom/narvii/model/SharedFile;->votesCount:I

    .line 24
    add-int/2addr p2, v1

    .line 25
    .line 26
    iput p2, p1, Lcom/narvii/model/SharedFile;->votesCount:I

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    if-eqz v0, :cond_1

    .line 30
    .line 31
    if-nez p2, :cond_1

    .line 32
    .line 33
    iget p2, p1, Lcom/narvii/model/SharedFile;->votesCount:I

    .line 34
    sub-int/2addr p2, v1

    .line 35
    .line 36
    iput p2, p1, Lcom/narvii/model/SharedFile;->votesCount:I

    .line 37
    .line 38
    :cond_1
    :goto_0
    new-instance p2, Lcom/narvii/notification/Notification;

    .line 39
    .line 40
    .line 41
    const-string/jumbo v0, "update"

    .line 42
    .line 43
    .line 44
    invoke-direct {p2, v0, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 45
    .line 46
    iget-object p1, p0, Lcom/narvii/story/detail/VoteHelper$3;->this$0:Lcom/narvii/story/detail/VoteHelper;

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Lcom/narvii/story/detail/VoteHelper;->e(Lcom/narvii/story/detail/VoteHelper;)Lcom/narvii/app/NVContext;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    .line 53
    invoke-static {p1, p2}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;)V

    .line 54
    .line 55
    iget-object p1, p0, Lcom/narvii/story/detail/VoteHelper$3;->this$0:Lcom/narvii/story/detail/VoteHelper;

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Lcom/narvii/story/detail/VoteHelper;->e(Lcom/narvii/story/detail/VoteHelper;)Lcom/narvii/app/NVContext;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    const-string p2, "account"

    .line 62
    .line 63
    .line 64
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 71
    move-result-object p2

    .line 72
    .line 73
    iget-boolean v0, p0, Lcom/narvii/story/detail/VoteHelper$3;->val$isGlobal:Z

    .line 74
    .line 75
    if-eqz v0, :cond_2

    .line 76
    const/4 p2, 0x0

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2}, Lcom/narvii/account/AccountService;->getUserProfile(I)Lcom/narvii/model/User;

    .line 80
    move-result-object p2

    .line 81
    .line 82
    :cond_2
    if-eqz p2, :cond_4

    .line 83
    .line 84
    new-instance p1, Lcom/narvii/notification/Notification;

    .line 85
    .line 86
    iget-object v0, p0, Lcom/narvii/story/detail/VoteHelper$3;->val$sharedFile:Lcom/narvii/model/SharedFile;

    .line 87
    .line 88
    iget v0, v0, Lcom/narvii/model/SharedFile;->votedValue:I

    .line 89
    .line 90
    if-lez v0, :cond_3

    .line 91
    .line 92
    const-string v0, "delete"

    .line 93
    goto :goto_1

    .line 94
    .line 95
    :cond_3
    const-string v0, "new"

    .line 96
    .line 97
    .line 98
    :goto_1
    invoke-direct {p1, v0, p2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 99
    .line 100
    iget-object p2, p0, Lcom/narvii/story/detail/VoteHelper$3;->val$sharedFile:Lcom/narvii/model/SharedFile;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2}, Lcom/narvii/model/SharedFile;->id()Ljava/lang/String;

    .line 104
    move-result-object p2

    .line 105
    .line 106
    iput-object p2, p1, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    .line 107
    .line 108
    iget-object p2, p0, Lcom/narvii/story/detail/VoteHelper$3;->this$0:Lcom/narvii/story/detail/VoteHelper;

    .line 109
    .line 110
    .line 111
    invoke-static {p2}, Lcom/narvii/story/detail/VoteHelper;->e(Lcom/narvii/story/detail/VoteHelper;)Lcom/narvii/app/NVContext;

    .line 112
    move-result-object p2

    .line 113
    .line 114
    const-string v0, "notification"

    .line 115
    .line 116
    .line 117
    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    move-result-object p2

    .line 119
    .line 120
    check-cast p2, Lcom/narvii/notification/NotificationCenter;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2, p1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 124
    .line 125
    :cond_4
    iget-object p1, p0, Lcom/narvii/story/detail/VoteHelper$3;->val$onVoteListener:Lcom/narvii/story/detail/VoteHelper$OnVoteListener;

    .line 126
    .line 127
    if-eqz p1, :cond_5

    .line 128
    .line 129
    .line 130
    invoke-interface {p1, v1}, Lcom/narvii/story/detail/VoteHelper$OnVoteListener;->onVoteEnd(Z)V

    .line 131
    :cond_5
    return-void
.end method
