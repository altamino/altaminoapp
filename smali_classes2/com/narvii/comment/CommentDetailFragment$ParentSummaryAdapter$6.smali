.class Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter$6;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "CommentDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->getApiResponseListener(I)Lcom/narvii/util/http/ApiResponseListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/sharedfolder/SharedFileResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;Ljava/lang/Class;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter$6;->this$1:Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 8
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

    .line 477
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    const/16 v0, 0xd4a

    if-ne p2, v0, :cond_0

    .line 479
    iget-object v1, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter$6;->this$1:Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v1 .. v7}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->access$900(Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 481
    :cond_0
    iget-object p1, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter$6;->this$1:Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

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

    .line 468
    check-cast p2, Lcom/narvii/sharedfolder/SharedFileResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter$6;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/sharedfolder/SharedFileResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/sharedfolder/SharedFileResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 471
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 472
    iget-object v0, p0, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter$6;->this$1:Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;

    invoke-static {v0, p1, p2}, Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;->access$800(Lcom/narvii/comment/CommentDetailFragment$ParentSummaryAdapter;Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V

    return-void
.end method
