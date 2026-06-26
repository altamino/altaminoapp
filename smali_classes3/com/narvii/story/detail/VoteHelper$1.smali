.class Lcom/narvii/story/detail/VoteHelper$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "VoteHelper.java"


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

    .line 182
    iput-object p1, p0, Lcom/narvii/story/detail/VoteHelper$1;->this$0:Lcom/narvii/story/detail/VoteHelper;

    iput-object p3, p0, Lcom/narvii/story/detail/VoteHelper$1;->val$feed:Lcom/narvii/model/Feed;

    iput-boolean p4, p0, Lcom/narvii/story/detail/VoteHelper$1;->val$isGlobal:Z

    iput p5, p0, Lcom/narvii/story/detail/VoteHelper$1;->val$v:I

    iput-object p6, p0, Lcom/narvii/story/detail/VoteHelper$1;->val$onVoteListener:Lcom/narvii/story/detail/VoteHelper$OnVoteListener;

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

    .line 231
    iget-object p1, p0, Lcom/narvii/story/detail/VoteHelper$1;->val$onVoteListener:Lcom/narvii/story/detail/VoteHelper$OnVoteListener;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 232
    invoke-interface {p1, p2}, Lcom/narvii/story/detail/VoteHelper$OnVoteListener;->onVoteEnd(Z)V

    .line 234
    :cond_0
    iget-object p1, p0, Lcom/narvii/story/detail/VoteHelper$1;->this$0:Lcom/narvii/story/detail/VoteHelper;

    invoke-static {p1}, Lcom/narvii/story/detail/VoteHelper;->access$000(Lcom/narvii/story/detail/VoteHelper;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string p3, "notification"

    invoke-interface {p1, p3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 235
    new-instance p3, Lcom/narvii/notification/Notification;

    iget-object p5, p0, Lcom/narvii/story/detail/VoteHelper$1;->val$feed:Lcom/narvii/model/Feed;

    const-string p6, "vote_end"

    invoke-direct {p3, p6, p5}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 236
    invoke-virtual {p1, p3}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 238
    iget-object p1, p0, Lcom/narvii/story/detail/VoteHelper$1;->this$0:Lcom/narvii/story/detail/VoteHelper;

    invoke-static {p1}, Lcom/narvii/story/detail/VoteHelper;->access$000(Lcom/narvii/story/detail/VoteHelper;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

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

    .line 186
    iget-object p1, p0, Lcom/narvii/story/detail/VoteHelper$1;->val$feed:Lcom/narvii/model/Feed;

    instance-of p2, p1, Lcom/narvii/model/Item;

    if-nez p2, :cond_0

    instance-of p1, p1, Lcom/narvii/model/Blog;

    if-nez p1, :cond_0

    return-void

    .line 189
    :cond_0
    iget-object p1, p0, Lcom/narvii/story/detail/VoteHelper$1;->val$feed:Lcom/narvii/model/Feed;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Feed;

    .line 190
    iget-boolean p2, p0, Lcom/narvii/story/detail/VoteHelper$1;->val$isGlobal:Z

    invoke-virtual {p1, p2}, Lcom/narvii/model/Feed;->getVoteCount(Z)I

    move-result p2

    .line 191
    iget-boolean v0, p0, Lcom/narvii/story/detail/VoteHelper$1;->val$isGlobal:Z

    invoke-virtual {p1, v0}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    move-result v0

    .line 192
    iget-boolean v1, p0, Lcom/narvii/story/detail/VoteHelper$1;->val$isGlobal:Z

    iget v2, p0, Lcom/narvii/story/detail/VoteHelper$1;->val$v:I

    invoke-virtual {p1, v1, v2}, Lcom/narvii/model/Feed;->setVotedValue(ZI)V

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 193
    iget v2, p0, Lcom/narvii/story/detail/VoteHelper$1;->val$v:I

    if-eqz v2, :cond_1

    .line 194
    iget-boolean v0, p0, Lcom/narvii/story/detail/VoteHelper$1;->val$isGlobal:Z

    add-int/2addr p2, v1

    invoke-virtual {p1, v0, p2}, Lcom/narvii/model/Feed;->setVoteCount(ZI)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 195
    iget v0, p0, Lcom/narvii/story/detail/VoteHelper$1;->val$v:I

    if-nez v0, :cond_2

    .line 196
    iget-boolean v0, p0, Lcom/narvii/story/detail/VoteHelper$1;->val$isGlobal:Z

    sub-int/2addr p2, v1

    invoke-virtual {p1, v0, p2}, Lcom/narvii/model/Feed;->setVoteCount(ZI)V

    .line 199
    :cond_2
    :goto_0
    new-instance p2, Lcom/narvii/notification/Notification;

    const-string v0, "update"

    invoke-direct {p2, v0, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 200
    iget-object v0, p0, Lcom/narvii/story/detail/VoteHelper$1;->this$0:Lcom/narvii/story/detail/VoteHelper;

    invoke-static {v0}, Lcom/narvii/story/detail/VoteHelper;->access$000(Lcom/narvii/story/detail/VoteHelper;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;)V

    .line 202
    instance-of p2, p1, Lcom/narvii/model/Blog;

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    move-object p2, p1

    check-cast p2, Lcom/narvii/model/Blog;

    iget v2, p2, Lcom/narvii/model/Blog;->type:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_5

    iget-boolean v2, p0, Lcom/narvii/story/detail/VoteHelper$1;->val$isGlobal:Z

    if-eqz v2, :cond_5

    .line 203
    iget-object v3, p0, Lcom/narvii/story/detail/VoteHelper$1;->val$feed:Lcom/narvii/model/Feed;

    invoke-virtual {v3, v2}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Lcom/narvii/story/detail/VoteHelper$1;->val$v:I

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 204
    :goto_1
    new-instance v3, Lcom/narvii/story/StoryHelper;

    iget-object v4, p0, Lcom/narvii/story/detail/VoteHelper$1;->this$0:Lcom/narvii/story/detail/VoteHelper;

    invoke-static {v4}, Lcom/narvii/story/detail/VoteHelper;->access$000(Lcom/narvii/story/detail/VoteHelper;)Lcom/narvii/app/NVContext;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/narvii/story/StoryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    if-eqz v2, :cond_4

    const-string v2, "vote"

    goto :goto_2

    :cond_4
    const-string v2, "unvote"

    .line 205
    :goto_2
    invoke-virtual {v3, p2, v2}, Lcom/narvii/story/StoryHelper;->sendStoryNotification(Lcom/narvii/model/Blog;Ljava/lang/String;)V

    .line 208
    :cond_5
    iget-object p2, p0, Lcom/narvii/story/detail/VoteHelper$1;->this$0:Lcom/narvii/story/detail/VoteHelper;

    invoke-static {p2}, Lcom/narvii/story/detail/VoteHelper;->access$000(Lcom/narvii/story/detail/VoteHelper;)Lcom/narvii/app/NVContext;

    move-result-object p2

    const-string v2, "account"

    invoke-interface {p2, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/account/AccountService;

    .line 209
    invoke-virtual {p2}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v2

    .line 210
    iget-boolean v3, p0, Lcom/narvii/story/detail/VoteHelper$1;->val$isGlobal:Z

    if-eqz v3, :cond_6

    .line 211
    invoke-virtual {p2, v0}, Lcom/narvii/account/AccountService;->getUserProfile(I)Lcom/narvii/model/User;

    move-result-object v2

    :cond_6
    const-string p2, "notification"

    if-eqz v2, :cond_8

    .line 214
    new-instance v0, Lcom/narvii/notification/Notification;

    iget v3, p0, Lcom/narvii/story/detail/VoteHelper$1;->val$v:I

    if-nez v3, :cond_7

    const-string v3, "delete"

    goto :goto_3

    :cond_7
    const-string v3, "new"

    :goto_3
    invoke-direct {v0, v3, v2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 215
    iget-object v2, p0, Lcom/narvii/story/detail/VoteHelper$1;->val$feed:Lcom/narvii/model/Feed;

    invoke-virtual {v2}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    .line 216
    iget-object v2, p0, Lcom/narvii/story/detail/VoteHelper$1;->this$0:Lcom/narvii/story/detail/VoteHelper;

    invoke-static {v2}, Lcom/narvii/story/detail/VoteHelper;->access$000(Lcom/narvii/story/detail/VoteHelper;)Lcom/narvii/app/NVContext;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/notification/NotificationCenter;

    .line 217
    invoke-virtual {v2, v0}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 220
    :cond_8
    iget-object v0, p0, Lcom/narvii/story/detail/VoteHelper$1;->val$onVoteListener:Lcom/narvii/story/detail/VoteHelper$OnVoteListener;

    if-eqz v0, :cond_9

    .line 221
    invoke-interface {v0, v1}, Lcom/narvii/story/detail/VoteHelper$OnVoteListener;->onVoteEnd(Z)V

    .line 223
    :cond_9
    iget-object v0, p0, Lcom/narvii/story/detail/VoteHelper$1;->this$0:Lcom/narvii/story/detail/VoteHelper;

    invoke-static {v0}, Lcom/narvii/story/detail/VoteHelper;->access$000(Lcom/narvii/story/detail/VoteHelper;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/notification/NotificationCenter;

    .line 224
    new-instance v0, Lcom/narvii/notification/Notification;

    const-string v1, "vote_end"

    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 225
    invoke-virtual {p2, v0}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method
