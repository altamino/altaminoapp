.class Lcom/narvii/comment/CommentHelper$1;
.super Lcom/narvii/comment/CommentHelper$ProxApiResponseListener;
.source "CommentHelper.java"


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

    .line 87
    iput-object p1, p0, Lcom/narvii/comment/CommentHelper$1;->this$0:Lcom/narvii/comment/CommentHelper;

    iput-object p3, p0, Lcom/narvii/comment/CommentHelper$1;->val$c:Lcom/narvii/model/Comment;

    invoke-direct {p0, p1, p2}, Lcom/narvii/comment/CommentHelper$ProxApiResponseListener;-><init>(Lcom/narvii/comment/CommentHelper;Lcom/narvii/util/http/ApiResponseListener;)V

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

    .line 90
    invoke-super {p0, p1, p2}, Lcom/narvii/comment/CommentHelper$ProxApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 91
    iget-object p1, p0, Lcom/narvii/comment/CommentHelper$1;->this$0:Lcom/narvii/comment/CommentHelper;

    iget-object p2, p0, Lcom/narvii/comment/CommentHelper$1;->val$c:Lcom/narvii/model/Comment;

    const-string v0, "delete"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Lcom/narvii/comment/CommentHelper;->sendCommentNotification(Ljava/lang/String;Lcom/narvii/model/Comment;Z)V

    return-void
.end method
