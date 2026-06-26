.class Lcom/narvii/comment/list/CommentListAdapter$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "CommentListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/comment/list/CommentListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/CommentListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/comment/list/CommentListAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/comment/list/CommentListAdapter;Ljava/lang/Class;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$2;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

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

    .line 436
    iget-object p2, p0, Lcom/narvii/comment/list/CommentListAdapter$2;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    invoke-static {p2}, Lcom/narvii/comment/list/CommentListAdapter;->access$000(Lcom/narvii/comment/list/CommentListAdapter;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$2;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    invoke-virtual {p1}, Lcom/narvii/comment/list/CommentListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 371
    check-cast p2, Lcom/narvii/model/api/CommentListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/comment/list/CommentListAdapter$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/CommentListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/CommentListResponse;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter$2;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    invoke-static {v0}, Lcom/narvii/comment/list/CommentListAdapter;->access$000(Lcom/narvii/comment/list/CommentListAdapter;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter$2;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Comment;

    .line 378
    invoke-virtual {v1}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 379
    iget-object p1, p2, Lcom/narvii/model/api/CommentListResponse;->commentList:Ljava/util/List;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 381
    iput-boolean v0, v1, Lcom/narvii/model/Comment;->subcommentIsEnd:Z

    .line 382
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$2;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    invoke-virtual {p1}, Lcom/narvii/comment/list/CommentListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_4

    .line 384
    :cond_2
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$2;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    const-string v2, "account"

    invoke-virtual {p1, v2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    const/4 p1, -0x1

    .line 388
    iget-object v2, v1, Lcom/narvii/model/Comment;->subcommentsPreview:Ljava/util/List;

    if-nez v2, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Comment;

    .line 389
    :goto_0
    iget-object v2, p0, Lcom/narvii/comment/list/CommentListAdapter$2;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    invoke-static {v2}, Lcom/narvii/comment/list/CommentListAdapter;->access$100(Lcom/narvii/comment/list/CommentListAdapter;)Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    .line 390
    iget-object v2, p0, Lcom/narvii/comment/list/CommentListAdapter$2;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    invoke-static {v2}, Lcom/narvii/comment/list/CommentListAdapter;->access$100(Lcom/narvii/comment/list/CommentListAdapter;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 391
    iget-object v4, p0, Lcom/narvii/comment/list/CommentListAdapter$2;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    invoke-static {v4}, Lcom/narvii/comment/list/CommentListAdapter;->access$100(Lcom/narvii/comment/list/CommentListAdapter;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    .line 392
    iget-object v5, p0, Lcom/narvii/comment/list/CommentListAdapter$2;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    invoke-static {v5}, Lcom/narvii/comment/list/CommentListAdapter;->access$100(Lcom/narvii/comment/list/CommentListAdapter;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    const/4 p1, 0x0

    const/4 v7, -0x1

    :goto_1
    if-ge p1, v5, :cond_5

    add-int v8, p1, v4

    if-ge v8, v6, :cond_5

    if-ltz v4, :cond_5

    .line 393
    invoke-interface {v2, v8}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    .line 394
    instance-of v9, v8, Lcom/narvii/model/Comment;

    if-eqz v9, :cond_4

    check-cast v8, Lcom/narvii/model/NVObject;

    invoke-static {v8, v0}, Lcom/narvii/util/Utils;->isIdEquals(Lcom/narvii/model/NVObject;Lcom/narvii/model/NVObject;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 395
    iget-object v7, p0, Lcom/narvii/comment/list/CommentListAdapter$2;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    invoke-static {v7}, Lcom/narvii/comment/list/CommentListAdapter;->access$100(Lcom/narvii/comment/list/CommentListAdapter;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 396
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_5
    move p1, v7

    .line 401
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 402
    iget-object v4, v1, Lcom/narvii/model/Comment;->subcommentStoptime:Ljava/lang/String;

    if-eqz v4, :cond_7

    iget-object v4, v1, Lcom/narvii/model/Comment;->subcommentsPreview:Ljava/util/List;

    if-eqz v4, :cond_7

    .line 403
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 405
    :cond_7
    new-instance v4, Lcom/narvii/util/FilterHelper;

    iget-object v5, p0, Lcom/narvii/comment/list/CommentListAdapter$2;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    invoke-direct {v4, v5}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 406
    iget-object v5, p2, Lcom/narvii/model/api/CommentListResponse;->commentList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/model/Comment;

    .line 408
    invoke-virtual {v4}, Lcom/narvii/util/FilterHelper;->keepForLeaderAndCurator()Lcom/narvii/util/FilterHelper;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/narvii/util/FilterHelper;->isAccessible(Lcom/narvii/model/NVObject;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 409
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 412
    :cond_9
    iput-object v2, v1, Lcom/narvii/model/Comment;->subcommentsPreview:Ljava/util/List;

    .line 413
    iget v2, v1, Lcom/narvii/model/Comment;->subcommentStart:I

    add-int/lit8 v2, v2, 0x19

    iput v2, v1, Lcom/narvii/model/Comment;->subcommentStart:I

    .line 414
    iget-object p2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    iput-object p2, v1, Lcom/narvii/model/Comment;->subcommentStoptime:Ljava/lang/String;

    .line 415
    iget-object p2, p0, Lcom/narvii/comment/list/CommentListAdapter$2;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    invoke-virtual {p2}, Lcom/narvii/comment/list/CommentListAdapter;->notifyDataSetChanged()V

    if-ltz p1, :cond_b

    .line 418
    iget-object p2, p0, Lcom/narvii/comment/list/CommentListAdapter$2;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    invoke-static {p2}, Lcom/narvii/comment/list/CommentListAdapter;->access$100(Lcom/narvii/comment/list/CommentListAdapter;)Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p2

    .line 419
    iget-object v1, p0, Lcom/narvii/comment/list/CommentListAdapter$2;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    invoke-static {v1}, Lcom/narvii/comment/list/CommentListAdapter;->access$100(Lcom/narvii/comment/list/CommentListAdapter;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 420
    invoke-interface {p2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    :goto_3
    add-int v4, v3, v1

    if-ge v4, v2, :cond_b

    if-ltz v1, :cond_b

    .line 421
    invoke-interface {p2, v4}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    .line 422
    instance-of v6, v5, Lcom/narvii/model/Comment;

    if-eqz v6, :cond_a

    check-cast v5, Lcom/narvii/model/NVObject;

    invoke-static {v5, v0}, Lcom/narvii/util/Utils;->isIdEquals(Lcom/narvii/model/NVObject;Lcom/narvii/model/NVObject;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 423
    iget-object v5, p0, Lcom/narvii/comment/list/CommentListAdapter$2;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    invoke-static {v5}, Lcom/narvii/comment/list/CommentListAdapter;->access$100(Lcom/narvii/comment/list/CommentListAdapter;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v4, p1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_b
    :goto_4
    return-void
.end method
