.class Lcom/narvii/story/detail/VoteHelper$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/detail/VoteHelper;->vote(Lcom/narvii/model/Comment;Ljava/lang/Integer;Lcom/narvii/model/NVObject;Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V
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

.field final synthetic val$comment:Lcom/narvii/model/Comment;

.field final synthetic val$onVoteListener:Lcom/narvii/story/detail/VoteHelper$OnVoteListener;

.field final synthetic val$v:I


# direct methods
.method constructor <init>(Lcom/narvii/story/detail/VoteHelper;Ljava/lang/Class;Lcom/narvii/model/Comment;ILcom/narvii/story/detail/VoteHelper$OnVoteListener;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/story/detail/VoteHelper$2;->this$0:Lcom/narvii/story/detail/VoteHelper;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/story/detail/VoteHelper$2;->val$comment:Lcom/narvii/model/Comment;

    .line 5
    .line 6
    iput p4, p0, Lcom/narvii/story/detail/VoteHelper$2;->val$v:I

    .line 7
    .line 8
    iput-object p5, p0, Lcom/narvii/story/detail/VoteHelper$2;->val$onVoteListener:Lcom/narvii/story/detail/VoteHelper$OnVoteListener;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 12
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
    iget-object p1, p0, Lcom/narvii/story/detail/VoteHelper$2;->val$onVoteListener:Lcom/narvii/story/detail/VoteHelper$OnVoteListener;

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
    iget-object p1, p0, Lcom/narvii/story/detail/VoteHelper$2;->this$0:Lcom/narvii/story/detail/VoteHelper;

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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/story/detail/VoteHelper$2;->val$comment:Lcom/narvii/model/Comment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/model/Comment;

    .line 9
    .line 10
    iget p2, p0, Lcom/narvii/story/detail/VoteHelper$2;->val$v:I

    .line 11
    .line 12
    iput p2, p1, Lcom/narvii/model/Comment;->votedValue:I

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/story/detail/VoteHelper$2;->val$comment:Lcom/narvii/model/Comment;

    .line 15
    .line 16
    iget v0, v0, Lcom/narvii/model/Comment;->votedValue:I

    .line 17
    sub-int/2addr p2, v0

    .line 18
    .line 19
    iget v0, p1, Lcom/narvii/model/Comment;->votesSum:I

    .line 20
    add-int/2addr v0, p2

    .line 21
    .line 22
    iput v0, p1, Lcom/narvii/model/Comment;->votesSum:I

    .line 23
    .line 24
    new-instance p2, Lcom/narvii/notification/Notification;

    .line 25
    .line 26
    .line 27
    const-string/jumbo v0, "update"

    .line 28
    .line 29
    .line 30
    invoke-direct {p2, v0, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/story/detail/VoteHelper$2;->this$0:Lcom/narvii/story/detail/VoteHelper;

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lcom/narvii/story/detail/VoteHelper;->e(Lcom/narvii/story/detail/VoteHelper;)Lcom/narvii/app/NVContext;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-static {p1, p2}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;)V

    .line 40
    .line 41
    iget-object p1, p0, Lcom/narvii/story/detail/VoteHelper$2;->val$onVoteListener:Lcom/narvii/story/detail/VoteHelper$OnVoteListener;

    .line 42
    .line 43
    if-eqz p1, :cond_0

    .line 44
    const/4 p2, 0x1

    .line 45
    .line 46
    .line 47
    invoke-interface {p1, p2}, Lcom/narvii/story/detail/VoteHelper$OnVoteListener;->onVoteEnd(Z)V

    .line 48
    :cond_0
    return-void
.end method
