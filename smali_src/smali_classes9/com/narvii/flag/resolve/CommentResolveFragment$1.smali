.class Lcom/narvii/flag/resolve/CommentResolveFragment$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/flag/resolve/CommentResolveFragment;->queryCommentInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/CommentResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/flag/resolve/CommentResolveFragment;


# direct methods
.method constructor <init>(Lcom/narvii/flag/resolve/CommentResolveFragment;Ljava/lang/Class;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment$1;->this$0:Lcom/narvii/flag/resolve/CommentResolveFragment;

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
    const/16 p1, 0x2bc

    .line 6
    .line 7
    if-ne p2, p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment$1;->this$0:Lcom/narvii/flag/resolve/CommentResolveFragment;

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lcom/narvii/flag/resolve/CommentResolveFragment;->p(Lcom/narvii/flag/resolve/CommentResolveFragment;)Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment$1;->this$0:Lcom/narvii/flag/resolve/CommentResolveFragment;

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lcom/narvii/flag/resolve/CommentResolveFragment;->p(Lcom/narvii/flag/resolve/CommentResolveFragment;)Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->showAlreadyResolved()V

    .line 25
    .line 26
    :cond_0
    iget-object p1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment$1;->this$0:Lcom/narvii/flag/resolve/CommentResolveFragment;

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lcom/narvii/flag/resolve/CommentResolveFragment;->t(Lcom/narvii/flag/resolve/CommentResolveFragment;)Lcom/narvii/model/Comment;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    .line 33
    invoke-static {p1, p2}, Lcom/narvii/flag/resolve/CommentResolveFragment;->q(Lcom/narvii/flag/resolve/CommentResolveFragment;Lcom/narvii/model/Comment;)V

    .line 34
    .line 35
    iget-object p1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment$1;->this$0:Lcom/narvii/flag/resolve/CommentResolveFragment;

    .line 36
    .line 37
    new-instance p2, Lcom/narvii/model/api/CommentResponse;

    .line 38
    .line 39
    .line 40
    invoke-direct {p2}, Lcom/narvii/model/api/CommentResponse;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-static {p1, p2}, Lcom/narvii/flag/resolve/CommentResolveFragment;->r(Lcom/narvii/flag/resolve/CommentResolveFragment;Lcom/narvii/model/api/CommentResponse;)V

    .line 44
    .line 45
    iget-object p1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment$1;->this$0:Lcom/narvii/flag/resolve/CommentResolveFragment;

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Lcom/narvii/flag/resolve/CommentResolveFragment;->o(Lcom/narvii/flag/resolve/CommentResolveFragment;)Lcom/narvii/model/api/CommentResponse;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    iget-object p2, p0, Lcom/narvii/flag/resolve/CommentResolveFragment$1;->this$0:Lcom/narvii/flag/resolve/CommentResolveFragment;

    .line 52
    .line 53
    .line 54
    invoke-static {p2}, Lcom/narvii/flag/resolve/CommentResolveFragment;->n(Lcom/narvii/flag/resolve/CommentResolveFragment;)Lcom/narvii/model/Comment;

    .line 55
    move-result-object p2

    .line 56
    .line 57
    iput-object p2, p1, Lcom/narvii/model/api/CommentResponse;->comment:Lcom/narvii/model/Comment;

    .line 58
    .line 59
    iget-object p1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment$1;->this$0:Lcom/narvii/flag/resolve/CommentResolveFragment;

    .line 60
    .line 61
    .line 62
    invoke-static {p1}, Lcom/narvii/flag/resolve/CommentResolveFragment;->u(Lcom/narvii/flag/resolve/CommentResolveFragment;)V

    .line 63
    goto :goto_0

    .line 64
    .line 65
    :cond_1
    iget-object p1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment$1;->this$0:Lcom/narvii/flag/resolve/CommentResolveFragment;

    .line 66
    .line 67
    .line 68
    invoke-static {p1, p4}, Lcom/narvii/flag/resolve/CommentResolveFragment;->s(Lcom/narvii/flag/resolve/CommentResolveFragment;Ljava/lang/String;)V

    .line 69
    .line 70
    :goto_0
    iget-object p1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment$1;->this$0:Lcom/narvii/flag/resolve/CommentResolveFragment;

    .line 71
    .line 72
    .line 73
    invoke-static {p1}, Lcom/narvii/flag/resolve/CommentResolveFragment;->u(Lcom/narvii/flag/resolve/CommentResolveFragment;)V

    .line 74
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/narvii/model/api/CommentResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/flag/resolve/CommentResolveFragment$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/CommentResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/CommentResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object p1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment$1;->this$0:Lcom/narvii/flag/resolve/CommentResolveFragment;

    .line 3
    invoke-static {p1, p2}, Lcom/narvii/flag/resolve/CommentResolveFragment;->r(Lcom/narvii/flag/resolve/CommentResolveFragment;Lcom/narvii/model/api/CommentResponse;)V

    iget-object p1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment$1;->this$0:Lcom/narvii/flag/resolve/CommentResolveFragment;

    .line 4
    iget-object p2, p2, Lcom/narvii/model/api/CommentResponse;->comment:Lcom/narvii/model/Comment;

    invoke-static {p1, p2}, Lcom/narvii/flag/resolve/CommentResolveFragment;->q(Lcom/narvii/flag/resolve/CommentResolveFragment;Lcom/narvii/model/Comment;)V

    iget-object p1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment$1;->this$0:Lcom/narvii/flag/resolve/CommentResolveFragment;

    .line 5
    invoke-static {p1}, Lcom/narvii/flag/resolve/CommentResolveFragment;->u(Lcom/narvii/flag/resolve/CommentResolveFragment;)V

    return-void
.end method
