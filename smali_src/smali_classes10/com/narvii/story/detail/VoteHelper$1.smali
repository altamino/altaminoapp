.class Lcom/narvii/story/detail/VoteHelper$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/detail/VoteHelper;->vote(Lcom/narvii/model/Feed;Ljava/lang/Integer;Lcom/narvii/util/http/ApiService;Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V
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

.field final synthetic val$feed:Lcom/narvii/model/Feed;

.field final synthetic val$isGlobal:Z

.field final synthetic val$onVoteListener:Lcom/narvii/story/detail/VoteHelper$OnVoteListener;

.field final synthetic val$v:I


# direct methods
.method constructor <init>(Lcom/narvii/story/detail/VoteHelper;Ljava/lang/Class;Lcom/narvii/model/Feed;ZILcom/narvii/story/detail/VoteHelper$OnVoteListener;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/story/detail/VoteHelper$1;->this$0:Lcom/narvii/story/detail/VoteHelper;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/story/detail/VoteHelper$1;->val$feed:Lcom/narvii/model/Feed;

    .line 5
    .line 6
    iput-boolean p4, p0, Lcom/narvii/story/detail/VoteHelper$1;->val$isGlobal:Z

    .line 7
    .line 8
    iput p5, p0, Lcom/narvii/story/detail/VoteHelper$1;->val$v:I

    .line 9
    .line 10
    iput-object p6, p0, Lcom/narvii/story/detail/VoteHelper$1;->val$onVoteListener:Lcom/narvii/story/detail/VoteHelper$OnVoteListener;

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
    iget-object p1, p0, Lcom/narvii/story/detail/VoteHelper$1;->val$onVoteListener:Lcom/narvii/story/detail/VoteHelper$OnVoteListener;

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
    iget-object p1, p0, Lcom/narvii/story/detail/VoteHelper$1;->this$0:Lcom/narvii/story/detail/VoteHelper;

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/story/detail/VoteHelper$1;->val$feed:Lcom/narvii/model/Feed;

    .line 3
    .line 4
    instance-of p2, p1, Lcom/narvii/model/Item;

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    instance-of p2, p1, Lcom/narvii/model/Blog;

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Lcom/narvii/model/Feed;

    .line 18
    .line 19
    iget-boolean p2, p0, Lcom/narvii/story/detail/VoteHelper$1;->val$isGlobal:Z

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Lcom/narvii/model/Feed;->getVoteCount(Z)I

    .line 23
    move-result p2

    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/narvii/story/detail/VoteHelper$1;->val$isGlobal:Z

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    .line 29
    move-result v0

    .line 30
    .line 31
    iget-boolean v1, p0, Lcom/narvii/story/detail/VoteHelper$1;->val$isGlobal:Z

    .line 32
    .line 33
    iget v2, p0, Lcom/narvii/story/detail/VoteHelper$1;->val$v:I

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v1, v2}, Lcom/narvii/model/Feed;->setVotedValue(ZI)V

    .line 37
    const/4 v1, 0x1

    .line 38
    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    iget v2, p0, Lcom/narvii/story/detail/VoteHelper$1;->val$v:I

    .line 42
    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    iget-boolean v0, p0, Lcom/narvii/story/detail/VoteHelper$1;->val$isGlobal:Z

    .line 46
    add-int/2addr p2, v1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0, p2}, Lcom/narvii/model/Feed;->setVoteCount(ZI)V

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_1
    if-eqz v0, :cond_2

    .line 53
    .line 54
    iget v0, p0, Lcom/narvii/story/detail/VoteHelper$1;->val$v:I

    .line 55
    .line 56
    if-nez v0, :cond_2

    .line 57
    .line 58
    iget-boolean v0, p0, Lcom/narvii/story/detail/VoteHelper$1;->val$isGlobal:Z

    .line 59
    sub-int/2addr p2, v1

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0, p2}, Lcom/narvii/model/Feed;->setVoteCount(ZI)V

    .line 63
    .line 64
    :cond_2
    :goto_0
    new-instance p2, Lcom/narvii/notification/Notification;

    .line 65
    .line 66
    .line 67
    const-string/jumbo v0, "update"

    .line 68
    .line 69
    .line 70
    invoke-direct {p2, v0, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 71
    .line 72
    iget-object p1, p0, Lcom/narvii/story/detail/VoteHelper$1;->this$0:Lcom/narvii/story/detail/VoteHelper;

    .line 73
    .line 74
    .line 75
    invoke-static {p1}, Lcom/narvii/story/detail/VoteHelper;->e(Lcom/narvii/story/detail/VoteHelper;)Lcom/narvii/app/NVContext;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    .line 79
    invoke-static {p1, p2}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;)V

    .line 80
    .line 81
    iget-object p1, p0, Lcom/narvii/story/detail/VoteHelper$1;->this$0:Lcom/narvii/story/detail/VoteHelper;

    .line 82
    .line 83
    .line 84
    invoke-static {p1}, Lcom/narvii/story/detail/VoteHelper;->e(Lcom/narvii/story/detail/VoteHelper;)Lcom/narvii/app/NVContext;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    const-string p2, "account"

    .line 88
    .line 89
    .line 90
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 97
    move-result-object p2

    .line 98
    .line 99
    iget-boolean v0, p0, Lcom/narvii/story/detail/VoteHelper$1;->val$isGlobal:Z

    .line 100
    .line 101
    if-eqz v0, :cond_3

    .line 102
    const/4 p2, 0x0

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, p2}, Lcom/narvii/account/AccountService;->getUserProfile(I)Lcom/narvii/model/User;

    .line 106
    move-result-object p2

    .line 107
    .line 108
    :cond_3
    if-eqz p2, :cond_5

    .line 109
    .line 110
    new-instance p1, Lcom/narvii/notification/Notification;

    .line 111
    .line 112
    iget v0, p0, Lcom/narvii/story/detail/VoteHelper$1;->val$v:I

    .line 113
    .line 114
    if-nez v0, :cond_4

    .line 115
    .line 116
    const-string v0, "delete"

    .line 117
    goto :goto_1

    .line 118
    .line 119
    :cond_4
    const-string v0, "new"

    .line 120
    .line 121
    .line 122
    :goto_1
    invoke-direct {p1, v0, p2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 123
    .line 124
    iget-object p2, p0, Lcom/narvii/story/detail/VoteHelper$1;->val$feed:Lcom/narvii/model/Feed;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 128
    move-result-object p2

    .line 129
    .line 130
    iput-object p2, p1, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    .line 131
    .line 132
    iget-object p2, p0, Lcom/narvii/story/detail/VoteHelper$1;->this$0:Lcom/narvii/story/detail/VoteHelper;

    .line 133
    .line 134
    .line 135
    invoke-static {p2}, Lcom/narvii/story/detail/VoteHelper;->e(Lcom/narvii/story/detail/VoteHelper;)Lcom/narvii/app/NVContext;

    .line 136
    move-result-object p2

    .line 137
    .line 138
    const-string v0, "notification"

    .line 139
    .line 140
    .line 141
    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    move-result-object p2

    .line 143
    .line 144
    check-cast p2, Lcom/narvii/notification/NotificationCenter;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2, p1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 148
    .line 149
    :cond_5
    iget-object p1, p0, Lcom/narvii/story/detail/VoteHelper$1;->val$onVoteListener:Lcom/narvii/story/detail/VoteHelper$OnVoteListener;

    .line 150
    .line 151
    if-eqz p1, :cond_6

    .line 152
    .line 153
    .line 154
    invoke-interface {p1, v1}, Lcom/narvii/story/detail/VoteHelper$OnVoteListener;->onVoteEnd(Z)V

    .line 155
    :cond_6
    return-void
.end method
