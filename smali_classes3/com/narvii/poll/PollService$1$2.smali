.class Lcom/narvii/poll/PollService$1$2;
.super Ljava/lang/Object;
.source "PollService.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poll/PollService$1;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/poll/PollService$VoteListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/poll/PollService$1;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$task:Lcom/narvii/poll/PollService$Task;


# direct methods
.method constructor <init>(Lcom/narvii/poll/PollService$1;Lcom/narvii/poll/PollService$Task;Ljava/lang/String;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/narvii/poll/PollService$1$2;->this$1:Lcom/narvii/poll/PollService$1;

    iput-object p2, p0, Lcom/narvii/poll/PollService$1$2;->val$task:Lcom/narvii/poll/PollService$Task;

    iput-object p3, p0, Lcom/narvii/poll/PollService$1$2;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/poll/PollService$VoteListener;)V
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/narvii/poll/PollService$1$2;->val$task:Lcom/narvii/poll/PollService$Task;

    iget-object v1, v0, Lcom/narvii/poll/PollService$Task;->blog:Lcom/narvii/model/Blog;

    iget-object v0, v0, Lcom/narvii/poll/PollService$Task;->optId:Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/poll/PollService$1$2;->val$message:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lcom/narvii/poll/PollService$VoteListener;->onVoteFail(Lcom/narvii/model/Blog;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 142
    check-cast p1, Lcom/narvii/poll/PollService$VoteListener;

    invoke-virtual {p0, p1}, Lcom/narvii/poll/PollService$1$2;->call(Lcom/narvii/poll/PollService$VoteListener;)V

    return-void
.end method
