.class Lcom/narvii/story/detail/VoteHelper$3;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "VoteHelper.java"


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

    .line 374
    iput-object p1, p0, Lcom/narvii/story/detail/VoteHelper$3;->this$0:Lcom/narvii/story/detail/VoteHelper;

    iput-object p3, p0, Lcom/narvii/story/detail/VoteHelper$3;->val$sharedFile:Lcom/narvii/model/SharedFile;

    iput p4, p0, Lcom/narvii/story/detail/VoteHelper$3;->val$v:I

    iput-boolean p5, p0, Lcom/narvii/story/detail/VoteHelper$3;->val$isGlobal:Z

    iput-object p6, p0, Lcom/narvii/story/detail/VoteHelper$3;->val$onVoteListener:Lcom/narvii/story/detail/VoteHelper$OnVoteListener;

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

    .line 408
    iget-object p1, p0, Lcom/narvii/story/detail/VoteHelper$3;->val$onVoteListener:Lcom/narvii/story/detail/VoteHelper$OnVoteListener;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 409
    invoke-interface {p1, p2}, Lcom/narvii/story/detail/VoteHelper$OnVoteListener;->onVoteEnd(Z)V

    .line 411
    :cond_0
    iget-object p1, p0, Lcom/narvii/story/detail/VoteHelper$3;->this$0:Lcom/narvii/story/detail/VoteHelper;

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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 379
    iget-object p1, p0, Lcom/narvii/story/detail/VoteHelper$3;->val$sharedFile:Lcom/narvii/model/SharedFile;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/SharedFile;

    .line 380
    iget p2, p0, Lcom/narvii/story/detail/VoteHelper$3;->val$v:I

    iput p2, p1, Lcom/narvii/model/SharedFile;->votedValue:I

    .line 381
    iget-object v0, p0, Lcom/narvii/story/detail/VoteHelper$3;->val$sharedFile:Lcom/narvii/model/SharedFile;

    iget v0, v0, Lcom/narvii/model/SharedFile;->votedValue:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 382
    iget p2, p1, Lcom/narvii/model/SharedFile;->votesCount:I

    add-int/2addr p2, v1

    iput p2, p1, Lcom/narvii/model/SharedFile;->votesCount:I

    goto :goto_0

    .line 383
    :cond_0
    iget-object p2, p0, Lcom/narvii/story/detail/VoteHelper$3;->val$sharedFile:Lcom/narvii/model/SharedFile;

    iget p2, p2, Lcom/narvii/model/SharedFile;->votedValue:I

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/narvii/story/detail/VoteHelper$3;->val$v:I

    if-nez p2, :cond_1

    .line 384
    iget p2, p1, Lcom/narvii/model/SharedFile;->votesCount:I

    sub-int/2addr p2, v1

    iput p2, p1, Lcom/narvii/model/SharedFile;->votesCount:I

    .line 386
    :cond_1
    :goto_0
    new-instance p2, Lcom/narvii/notification/Notification;

    const-string v0, "update"

    invoke-direct {p2, v0, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 387
    iget-object p1, p0, Lcom/narvii/story/detail/VoteHelper$3;->this$0:Lcom/narvii/story/detail/VoteHelper;

    invoke-static {p1}, Lcom/narvii/story/detail/VoteHelper;->access$000(Lcom/narvii/story/detail/VoteHelper;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;)V

    .line 389
    iget-object p1, p0, Lcom/narvii/story/detail/VoteHelper$3;->this$0:Lcom/narvii/story/detail/VoteHelper;

    invoke-static {p1}, Lcom/narvii/story/detail/VoteHelper;->access$000(Lcom/narvii/story/detail/VoteHelper;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string p2, "account"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 390
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object p2

    .line 391
    iget-boolean v0, p0, Lcom/narvii/story/detail/VoteHelper$3;->val$isGlobal:Z

    if-eqz v0, :cond_2

    const/4 p2, 0x0

    .line 392
    invoke-virtual {p1, p2}, Lcom/narvii/account/AccountService;->getUserProfile(I)Lcom/narvii/model/User;

    move-result-object p2

    :cond_2
    if-eqz p2, :cond_4

    .line 395
    new-instance p1, Lcom/narvii/notification/Notification;

    iget-object v0, p0, Lcom/narvii/story/detail/VoteHelper$3;->val$sharedFile:Lcom/narvii/model/SharedFile;

    iget v0, v0, Lcom/narvii/model/SharedFile;->votedValue:I

    if-lez v0, :cond_3

    const-string v0, "delete"

    goto :goto_1

    :cond_3
    const-string v0, "new"

    :goto_1
    invoke-direct {p1, v0, p2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 396
    iget-object p2, p0, Lcom/narvii/story/detail/VoteHelper$3;->val$sharedFile:Lcom/narvii/model/SharedFile;

    invoke-virtual {p2}, Lcom/narvii/model/SharedFile;->id()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    .line 397
    iget-object p2, p0, Lcom/narvii/story/detail/VoteHelper$3;->this$0:Lcom/narvii/story/detail/VoteHelper;

    invoke-static {p2}, Lcom/narvii/story/detail/VoteHelper;->access$000(Lcom/narvii/story/detail/VoteHelper;)Lcom/narvii/app/NVContext;

    move-result-object p2

    const-string v0, "notification"

    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/notification/NotificationCenter;

    .line 398
    invoke-virtual {p2, p1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 401
    :cond_4
    iget-object p1, p0, Lcom/narvii/story/detail/VoteHelper$3;->val$onVoteListener:Lcom/narvii/story/detail/VoteHelper$OnVoteListener;

    if-eqz p1, :cond_5

    .line 402
    invoke-interface {p1, v1}, Lcom/narvii/story/detail/VoteHelper$OnVoteListener;->onVoteEnd(Z)V

    :cond_5
    return-void
.end method
