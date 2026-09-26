.class Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/CommentResponse;)V
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
.field final synthetic this$2:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;


# direct methods
.method constructor <init>(Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;Ljava/lang/Class;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2$1;->this$2:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;

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
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2$1;->this$2:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;->this$1:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;

    .line 8
    .line 9
    iget-object p2, p1, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    .line 10
    .line 11
    .line 12
    invoke-static {p2}, Lcom/narvii/comment/CommentDetailFragment;->u(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/Comment;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p2}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->w(Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;Lcom/narvii/model/Comment;)V

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2$1;->this$2:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;->this$1:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->notifyDataSetChanged()V

    .line 24
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

    invoke-virtual {p0, p1, p2}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/CommentResponse;)V

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

    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2$1;->this$2:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;

    .line 3
    iget-object p1, p1, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;->this$1:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;

    iget-object p1, p1, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    iget-object p2, p2, Lcom/narvii/model/api/CommentResponse;->comment:Lcom/narvii/model/Comment;

    invoke-static {p1, p2}, Lcom/narvii/comment/CommentDetailFragment;->H(Lcom/narvii/comment/CommentDetailFragment;Lcom/narvii/model/Comment;)V

    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2$1;->this$2:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;

    .line 4
    iget-object p1, p1, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;->this$1:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;

    iget-object p2, p1, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {p2}, Lcom/narvii/comment/CommentDetailFragment;->x(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/Comment;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->w(Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;Lcom/narvii/model/Comment;)V

    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2$1;->this$2:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;

    .line 5
    iget-object p1, p1, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;->this$1:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;

    iget-object p2, p1, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {p2}, Lcom/narvii/comment/CommentDetailFragment;->u(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/Comment;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->w(Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;Lcom/narvii/model/Comment;)V

    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2$1;->this$2:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;

    .line 6
    iget-object p1, p1, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;->this$1:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;

    invoke-virtual {p1}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->notifyDataSetChanged()V

    return-void
.end method
