.class Lcom/narvii/story/detail/VoteHelper$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "VoteHelper.java"


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

    .line 294
    iput-object p1, p0, Lcom/narvii/story/detail/VoteHelper$2;->this$0:Lcom/narvii/story/detail/VoteHelper;

    iput-object p3, p0, Lcom/narvii/story/detail/VoteHelper$2;->val$comment:Lcom/narvii/model/Comment;

    iput p4, p0, Lcom/narvii/story/detail/VoteHelper$2;->val$v:I

    iput-object p5, p0, Lcom/narvii/story/detail/VoteHelper$2;->val$onVoteListener:Lcom/narvii/story/detail/VoteHelper$OnVoteListener;

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

    .line 314
    iget-object p1, p0, Lcom/narvii/story/detail/VoteHelper$2;->val$onVoteListener:Lcom/narvii/story/detail/VoteHelper$OnVoteListener;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 315
    invoke-interface {p1, p2}, Lcom/narvii/story/detail/VoteHelper$OnVoteListener;->onVoteEnd(Z)V

    .line 317
    :cond_0
    iget-object p1, p0, Lcom/narvii/story/detail/VoteHelper$2;->this$0:Lcom/narvii/story/detail/VoteHelper;

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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 298
    iget-object p1, p0, Lcom/narvii/story/detail/VoteHelper$2;->val$comment:Lcom/narvii/model/Comment;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->clone()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Comment;

    .line 299
    iget p2, p0, Lcom/narvii/story/detail/VoteHelper$2;->val$v:I

    iput p2, p1, Lcom/narvii/model/Comment;->votedValue:I

    .line 300
    iget p2, p1, Lcom/narvii/model/Comment;->votedValue:I

    iget-object v0, p0, Lcom/narvii/story/detail/VoteHelper$2;->val$comment:Lcom/narvii/model/Comment;

    iget v0, v0, Lcom/narvii/model/Comment;->votedValue:I

    sub-int/2addr p2, v0

    .line 301
    iget v0, p1, Lcom/narvii/model/Comment;->votesSum:I

    add-int/2addr v0, p2

    iput v0, p1, Lcom/narvii/model/Comment;->votesSum:I

    .line 302
    new-instance p2, Lcom/narvii/notification/Notification;

    const-string v0, "update"

    invoke-direct {p2, v0, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 303
    iget-object p1, p0, Lcom/narvii/story/detail/VoteHelper$2;->this$0:Lcom/narvii/story/detail/VoteHelper;

    invoke-static {p1}, Lcom/narvii/story/detail/VoteHelper;->access$000(Lcom/narvii/story/detail/VoteHelper;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;)V

    .line 306
    iget-object p1, p0, Lcom/narvii/story/detail/VoteHelper$2;->val$onVoteListener:Lcom/narvii/story/detail/VoteHelper$OnVoteListener;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 307
    invoke-interface {p1, p2}, Lcom/narvii/story/detail/VoteHelper$OnVoteListener;->onVoteEnd(Z)V

    :cond_0
    return-void
.end method
