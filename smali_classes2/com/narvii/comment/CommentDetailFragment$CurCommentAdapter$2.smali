.class Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "CommentDetailFragment.java"


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

    .line 691
    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;->this$1:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;

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

    .line 722
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    const/16 p1, 0x2bc

    if-ne p2, p1, :cond_0

    .line 725
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;->this$1:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;

    iget-object p1, p1, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/comment/CommentDetailFragment;->access$1902(Lcom/narvii/comment/CommentDetailFragment;Z)Z

    .line 726
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;->this$1:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;

    iget-object p2, p1, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {p1}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->access$2000(Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;)Lcom/narvii/model/Comment;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/narvii/comment/CommentDetailFragment;->access$1402(Lcom/narvii/comment/CommentDetailFragment;Lcom/narvii/model/Comment;)Lcom/narvii/model/Comment;

    .line 727
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;->this$1:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;

    iget-object p1, p1, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/narvii/comment/CommentDetailFragment;->access$1102(Lcom/narvii/comment/CommentDetailFragment;Z)Z

    .line 728
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;->this$1:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;

    iget-object p2, p1, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {p2}, Lcom/narvii/comment/CommentDetailFragment;->access$1400(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/Comment;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->access$1700(Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;Lcom/narvii/model/Comment;)V

    .line 729
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;->this$1:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;

    invoke-virtual {p1}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 731
    :cond_0
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;->this$1:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;

    iput-object p4, p1, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->errorMessage:Ljava/lang/String;

    .line 732
    invoke-virtual {p1}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->notifyDataSetChanged()V

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

    .line 691
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

    .line 694
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 695
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;->this$1:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;

    iget-object p1, p1, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    iget-object p2, p2, Lcom/narvii/model/api/CommentResponse;->comment:Lcom/narvii/model/Comment;

    invoke-static {p1, p2}, Lcom/narvii/comment/CommentDetailFragment;->access$1402(Lcom/narvii/comment/CommentDetailFragment;Lcom/narvii/model/Comment;)Lcom/narvii/model/Comment;

    .line 696
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;->this$1:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;

    iget-object p1, p1, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {p1}, Lcom/narvii/comment/CommentDetailFragment;->access$1400(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/Comment;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;->this$1:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;

    iget-object p1, p1, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {p1}, Lcom/narvii/comment/CommentDetailFragment;->access$1400(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/Comment;

    move-result-object p1

    iget-object p1, p1, Lcom/narvii/model/Comment;->headCommentId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 697
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;->this$1:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;

    iget-object p2, p1, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {p2}, Lcom/narvii/comment/CommentDetailFragment;->access$1400(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/Comment;

    move-result-object p2

    iget-object p2, p2, Lcom/narvii/model/Comment;->headCommentId:Ljava/lang/String;

    new-instance v0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2$1;

    const-class v1, Lcom/narvii/model/api/CommentResponse;

    invoke-direct {v0, p0, v1}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2$1;-><init>(Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;Ljava/lang/Class;)V

    invoke-static {p1, p2, v0}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->access$1800(Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;Ljava/lang/String;Lcom/narvii/util/http/ApiResponseListener;)V

    goto :goto_0

    .line 715
    :cond_0
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;->this$1:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;

    iget-object p2, p1, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->this$0:Lcom/narvii/comment/CommentDetailFragment;

    invoke-static {p2}, Lcom/narvii/comment/CommentDetailFragment;->access$1400(Lcom/narvii/comment/CommentDetailFragment;)Lcom/narvii/model/Comment;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->access$1700(Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;Lcom/narvii/model/Comment;)V

    .line 716
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter$2;->this$1:Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;

    invoke-virtual {p1}, Lcom/narvii/comment/CommentDetailFragment$CurCommentAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method
