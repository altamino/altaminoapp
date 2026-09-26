.class Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->sendAllCommentRequest()V
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
.field final synthetic this$1:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;Ljava/lang/Class;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;->this$1:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;

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
    if-ne p2, p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;->this$1:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 12
    const/4 p2, 0x0

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2}, Lcom/narvii/comment/CommentDetailFragment;->J(Lcom/narvii/comment/CommentDetailFragment;Z)V

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;->this$1:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;

    .line 18
    .line 19
    iget-object p2, p1, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->x(Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;)Lcom/narvii/model/Comment;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-static {p2, p1}, Lcom/narvii/comment/CommentDetailFragment;->E(Lcom/narvii/comment/CommentDetailFragment;Lcom/narvii/model/Comment;)V

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;->this$1:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 31
    const/4 p2, 0x1

    .line 32
    .line 33
    .line 34
    invoke-static {p1, p2}, Lcom/narvii/comment/CommentDetailFragment;->F(Lcom/narvii/comment/CommentDetailFragment;Z)V

    .line 35
    .line 36
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;->this$1:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;

    .line 37
    .line 38
    iget-object p2, p1, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 39
    .line 40
    .line 41
    invoke-static {p2}, Lcom/narvii/comment/CommentDetailFragment;->u(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/Comment;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    .line 45
    invoke-static {p1, p2}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->w(Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;Lcom/narvii/model/Comment;)V

    .line 46
    .line 47
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;->this$1:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->notifyDataSetChanged()V

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_0
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;->this$1:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;

    .line 54
    .line 55
    iput-object p4, p1, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->errorMessage:Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->notifyDataSetChanged()V

    .line 59
    :goto_0
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

    invoke-virtual {p0, p1, p2}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/CommentResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/CommentResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;->this$1:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;

    .line 3
    iget-object p1, p1, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    iget-object p2, p2, Lcom/narvii/model/api/CommentResponse;->comment:Lcom/narvii/model/Comment;

    invoke-static {p1, p2}, Lcom/narvii/comment/CommentDetailFragment;->E(Lcom/narvii/comment/CommentDetailFragment;Lcom/narvii/model/Comment;)V

    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;->this$1:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;

    .line 4
    iget-object p1, p1, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {p1}, Lcom/narvii/comment/CommentDetailFragment;->u(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/Comment;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;->this$1:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;

    iget-object p1, p1, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {p1}, Lcom/narvii/comment/CommentDetailFragment;->u(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/Comment;

    move-result-object p1

    iget-object p1, p1, Lcom/narvii/model/Comment;->headCommentId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;->this$1:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;

    .line 5
    iget-object p2, p1, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {p2}, Lcom/narvii/comment/CommentDetailFragment;->u(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/Comment;

    move-result-object p2

    iget-object p2, p2, Lcom/narvii/model/Comment;->headCommentId:Ljava/lang/String;

    new-instance v0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2$1;

    const-class v1, Lcom/narvii/model/api/CommentResponse;

    invoke-direct {v0, p0, v1}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2$1;-><init>(Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;Ljava/lang/Class;)V

    invoke-static {p1, p2, v0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->A(Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;Ljava/lang/String;Lcom/narvii/util/http/ApiResponseListener;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;->this$1:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;

    .line 6
    iget-object p2, p1, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {p2}, Lcom/narvii/comment/CommentDetailFragment;->u(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/Comment;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->w(Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;Lcom/narvii/model/Comment;)V

    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;->this$1:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;

    .line 7
    invoke-virtual {p1}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method
