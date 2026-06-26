.class Lcom/narvii/poll/PollService$1$1;
.super Ljava/lang/Object;
.source "PollService.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poll/PollService$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
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

.field final synthetic val$result:Lcom/narvii/model/Blog;

.field final synthetic val$task:Lcom/narvii/poll/PollService$Task;


# direct methods
.method constructor <init>(Lcom/narvii/poll/PollService$1;Lcom/narvii/model/Blog;Lcom/narvii/poll/PollService$Task;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/narvii/poll/PollService$1$1;->this$1:Lcom/narvii/poll/PollService$1;

    iput-object p2, p0, Lcom/narvii/poll/PollService$1$1;->val$result:Lcom/narvii/model/Blog;

    iput-object p3, p0, Lcom/narvii/poll/PollService$1$1;->val$task:Lcom/narvii/poll/PollService$Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/poll/PollService$VoteListener;)V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/narvii/poll/PollService$1$1;->val$result:Lcom/narvii/model/Blog;

    iget-object v1, p0, Lcom/narvii/poll/PollService$1$1;->val$task:Lcom/narvii/poll/PollService$Task;

    iget-object v1, v1, Lcom/narvii/poll/PollService$Task;->optId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/narvii/poll/PollService$VoteListener;->onVoteFinish(Lcom/narvii/model/Blog;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 127
    check-cast p1, Lcom/narvii/poll/PollService$VoteListener;

    invoke-virtual {p0, p1}, Lcom/narvii/poll/PollService$1$1;->call(Lcom/narvii/poll/PollService$VoteListener;)V

    return-void
.end method
