.class Lcom/narvii/flag/resolve/CommentResolveFragment$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "CommentResolveFragment.java"


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

    .line 113
    iput-object p1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment$1;->this$0:Lcom/narvii/flag/resolve/CommentResolveFragment;

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

    .line 124
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    const/16 p1, 0x2bc

    if-ne p2, p1, :cond_1

    .line 126
    iget-object p1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment$1;->this$0:Lcom/narvii/flag/resolve/CommentResolveFragment;

    invoke-static {p1}, Lcom/narvii/flag/resolve/CommentResolveFragment;->access$300(Lcom/narvii/flag/resolve/CommentResolveFragment;)Lcom/narvii/flag/resolve/FlagResolveBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 127
    iget-object p1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment$1;->this$0:Lcom/narvii/flag/resolve/CommentResolveFragment;

    invoke-static {p1}, Lcom/narvii/flag/resolve/CommentResolveFragment;->access$300(Lcom/narvii/flag/resolve/CommentResolveFragment;)Lcom/narvii/flag/resolve/FlagResolveBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->showAlreadyResolved()V

    .line 129
    :cond_0
    iget-object p1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment$1;->this$0:Lcom/narvii/flag/resolve/CommentResolveFragment;

    invoke-static {p1}, Lcom/narvii/flag/resolve/CommentResolveFragment;->access$400(Lcom/narvii/flag/resolve/CommentResolveFragment;)Lcom/narvii/model/Comment;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/flag/resolve/CommentResolveFragment;->access$102(Lcom/narvii/flag/resolve/CommentResolveFragment;Lcom/narvii/model/Comment;)Lcom/narvii/model/Comment;

    .line 130
    iget-object p1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment$1;->this$0:Lcom/narvii/flag/resolve/CommentResolveFragment;

    new-instance p2, Lcom/narvii/model/api/CommentResponse;

    invoke-direct {p2}, Lcom/narvii/model/api/CommentResponse;-><init>()V

    invoke-static {p1, p2}, Lcom/narvii/flag/resolve/CommentResolveFragment;->access$002(Lcom/narvii/flag/resolve/CommentResolveFragment;Lcom/narvii/model/api/CommentResponse;)Lcom/narvii/model/api/CommentResponse;

    .line 131
    iget-object p1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment$1;->this$0:Lcom/narvii/flag/resolve/CommentResolveFragment;

    invoke-static {p1}, Lcom/narvii/flag/resolve/CommentResolveFragment;->access$000(Lcom/narvii/flag/resolve/CommentResolveFragment;)Lcom/narvii/model/api/CommentResponse;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/flag/resolve/CommentResolveFragment$1;->this$0:Lcom/narvii/flag/resolve/CommentResolveFragment;

    invoke-static {p2}, Lcom/narvii/flag/resolve/CommentResolveFragment;->access$100(Lcom/narvii/flag/resolve/CommentResolveFragment;)Lcom/narvii/model/Comment;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/model/api/CommentResponse;->comment:Lcom/narvii/model/Comment;

    .line 132
    iget-object p1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment$1;->this$0:Lcom/narvii/flag/resolve/CommentResolveFragment;

    invoke-static {p1}, Lcom/narvii/flag/resolve/CommentResolveFragment;->access$200(Lcom/narvii/flag/resolve/CommentResolveFragment;)V

    goto :goto_0

    .line 134
    :cond_1
    iget-object p1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment$1;->this$0:Lcom/narvii/flag/resolve/CommentResolveFragment;

    invoke-static {p1, p4}, Lcom/narvii/flag/resolve/CommentResolveFragment;->access$502(Lcom/narvii/flag/resolve/CommentResolveFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    :goto_0
    iget-object p1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment$1;->this$0:Lcom/narvii/flag/resolve/CommentResolveFragment;

    invoke-static {p1}, Lcom/narvii/flag/resolve/CommentResolveFragment;->access$200(Lcom/narvii/flag/resolve/CommentResolveFragment;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 113
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

    .line 116
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 117
    iget-object p1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment$1;->this$0:Lcom/narvii/flag/resolve/CommentResolveFragment;

    invoke-static {p1, p2}, Lcom/narvii/flag/resolve/CommentResolveFragment;->access$002(Lcom/narvii/flag/resolve/CommentResolveFragment;Lcom/narvii/model/api/CommentResponse;)Lcom/narvii/model/api/CommentResponse;

    .line 118
    iget-object p1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment$1;->this$0:Lcom/narvii/flag/resolve/CommentResolveFragment;

    iget-object p2, p2, Lcom/narvii/model/api/CommentResponse;->comment:Lcom/narvii/model/Comment;

    invoke-static {p1, p2}, Lcom/narvii/flag/resolve/CommentResolveFragment;->access$102(Lcom/narvii/flag/resolve/CommentResolveFragment;Lcom/narvii/model/Comment;)Lcom/narvii/model/Comment;

    .line 119
    iget-object p1, p0, Lcom/narvii/flag/resolve/CommentResolveFragment$1;->this$0:Lcom/narvii/flag/resolve/CommentResolveFragment;

    invoke-static {p1}, Lcom/narvii/flag/resolve/CommentResolveFragment;->access$200(Lcom/narvii/flag/resolve/CommentResolveFragment;)V

    return-void
.end method
