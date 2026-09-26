.class Lcom/narvii/comment/CommentHelper$1;
.super Lcom/narvii/comment/CommentHelper$ProxApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/comment/CommentHelper;->sendDeleteCommentRequest(Lcom/narvii/model/Comment;Lcom/narvii/util/http/ApiResponseListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/comment/CommentHelper;

.field final synthetic val$c:Lcom/narvii/model/Comment;


# direct methods
.method constructor <init>(Lcom/narvii/comment/CommentHelper;Lcom/narvii/util/http/ApiResponseListener;Lcom/narvii/model/Comment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/comment/CommentHelper$1;->this$0:Lcom/narvii/comment/CommentHelper;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/comment/CommentHelper$1;->val$c:Lcom/narvii/model/Comment;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Lcom/narvii/comment/CommentHelper$ProxApiResponseListener;-><init>(Lcom/narvii/comment/CommentHelper;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 8
    return-void
.end method


# virtual methods
.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/comment/CommentHelper$ProxApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/comment/CommentHelper$1;->this$0:Lcom/narvii/comment/CommentHelper;

    .line 6
    .line 7
    iget-object p2, p0, Lcom/narvii/comment/CommentHelper$1;->val$c:Lcom/narvii/model/Comment;

    .line 8
    const/4 v0, 0x1

    .line 9
    .line 10
    const-string v1, "delete"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v1, p2, v0}, Lcom/narvii/comment/CommentHelper;->sendCommentNotification(Ljava/lang/String;Lcom/narvii/model/Comment;Z)V

    .line 14
    return-void
.end method
