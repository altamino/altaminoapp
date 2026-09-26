.class Lcom/narvii/comment/list/CommentListAdapter$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$2;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

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
    iget-object p2, p0, Lcom/narvii/comment/list/CommentListAdapter$2;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    .line 3
    .line 4
    .line 5
    invoke-static {p2}, Lcom/narvii/comment/list/CommentListAdapter;->o(Lcom/narvii/comment/list/CommentListAdapter;)Ljava/util/HashMap;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$2;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/comment/list/CommentListAdapter;->notifyDataSetChanged()V

    .line 15
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

    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter$2;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    .line 2
    invoke-static {v0}, Lcom/narvii/comment/list/CommentListAdapter;->o(Lcom/narvii/comment/list/CommentListAdapter;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter$2;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    .line 3
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Comment;

    .line 4
    invoke-virtual {v1}, Lcom/narvii/model/Comment;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    iget-object p1, p2, Lcom/narvii/model/api/CommentListResponse;->commentList:Ljava/util/List;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iput-boolean v0, v1, Lcom/narvii/model/Comment;->subcommentIsEnd:Z

    iget-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$2;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    .line 7
    invoke-virtual {p1}, Lcom/narvii/comment/list/CommentListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_4

    :cond_2
    iget-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter$2;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    const-string v2, "account"

    .line 8
    invoke-virtual {p1, v2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 9
    iget-object p1, v1, Lcom/narvii/model/Comment;->subcommentsPreview:Ljava/util/List;

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Comment;

    :goto_0
    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter$2;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    .line 10
    invoke-static {v0}, Lcom/narvii/comment/list/CommentListAdapter;->n(Lcom/narvii/comment/list/CommentListAdapter;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter$2;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    .line 11
    invoke-static {v0}, Lcom/narvii/comment/list/CommentListAdapter;->n(Lcom/narvii/comment/list/CommentListAdapter;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget-object v4, p0, Lcom/narvii/comment/list/CommentListAdapter$2;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    .line 12
    invoke-static {v4}, Lcom/narvii/comment/list/CommentListAdapter;->n(Lcom/narvii/comment/list/CommentListAdapter;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v4

    iget-object v5, p0, Lcom/narvii/comment/list/CommentListAdapter$2;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    .line 13
    invoke-static {v5}, Lcom/narvii/comment/list/CommentListAdapter;->n(Lcom/narvii/comment/list/CommentListAdapter;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v6

    move v7, v2

    :goto_1
    if-ge v7, v5, :cond_5

    add-int v8, v7, v4

    if-ge v8, v6, :cond_5

    if-ltz v4, :cond_5

    .line 14
    invoke-interface {v0, v8}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    .line 15
    instance-of v9, v8, Lcom/narvii/model/Comment;

    if-eqz v9, :cond_4

    check-cast v8, Lcom/narvii/model/NVObject;

    invoke-static {v8, p1}, Lcom/narvii/util/Utils;->isIdEquals(Lcom/narvii/model/NVObject;Lcom/narvii/model/NVObject;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v3, p0, Lcom/narvii/comment/list/CommentListAdapter$2;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    .line 16
    invoke-static {v3}, Lcom/narvii/comment/list/CommentListAdapter;->n(Lcom/narvii/comment/list/CommentListAdapter;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 17
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 18
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    iget-object v4, v1, Lcom/narvii/model/Comment;->subcommentStoptime:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, v1, Lcom/narvii/model/Comment;->subcommentsPreview:Ljava/util/List;

    if-eqz v4, :cond_6

    .line 20
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 21
    :cond_6
    new-instance v4, Lcom/narvii/util/FilterHelper;

    iget-object v5, p0, Lcom/narvii/comment/list/CommentListAdapter$2;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    invoke-direct {v4, v5}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 22
    iget-object v5, p2, Lcom/narvii/model/api/CommentListResponse;->commentList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/model/Comment;

    .line 23
    invoke-virtual {v4}, Lcom/narvii/util/FilterHelper;->keepForLeaderAndCurator()Lcom/narvii/util/FilterHelper;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/narvii/util/FilterHelper;->isAccessible(Lcom/narvii/model/NVObject;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 24
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 25
    :cond_8
    iput-object v0, v1, Lcom/narvii/model/Comment;->subcommentsPreview:Ljava/util/List;

    .line 26
    iget v0, v1, Lcom/narvii/model/Comment;->subcommentStart:I

    add-int/lit8 v0, v0, 0x19

    iput v0, v1, Lcom/narvii/model/Comment;->subcommentStart:I

    .line 27
    iget-object p2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    iput-object p2, v1, Lcom/narvii/model/Comment;->subcommentStoptime:Ljava/lang/String;

    iget-object p2, p0, Lcom/narvii/comment/list/CommentListAdapter$2;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    .line 28
    invoke-virtual {p2}, Lcom/narvii/comment/list/CommentListAdapter;->notifyDataSetChanged()V

    if-ltz v3, :cond_a

    iget-object p2, p0, Lcom/narvii/comment/list/CommentListAdapter$2;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    .line 29
    invoke-static {p2}, Lcom/narvii/comment/list/CommentListAdapter;->n(Lcom/narvii/comment/list/CommentListAdapter;)Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter$2;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    .line 30
    invoke-static {v0}, Lcom/narvii/comment/list/CommentListAdapter;->n(Lcom/narvii/comment/list/CommentListAdapter;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    .line 31
    invoke-interface {p2}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    :goto_3
    add-int v4, v2, v0

    if-ge v4, v1, :cond_a

    if-ltz v0, :cond_a

    .line 32
    invoke-interface {p2, v4}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    .line 33
    instance-of v6, v5, Lcom/narvii/model/Comment;

    if-eqz v6, :cond_9

    check-cast v5, Lcom/narvii/model/NVObject;

    invoke-static {v5, p1}, Lcom/narvii/util/Utils;->isIdEquals(Lcom/narvii/model/NVObject;Lcom/narvii/model/NVObject;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/narvii/comment/list/CommentListAdapter$2;->this$0:Lcom/narvii/comment/list/CommentListAdapter;

    .line 34
    invoke-static {v5}, Lcom/narvii/comment/list/CommentListAdapter;->n(Lcom/narvii/comment/list/CommentListAdapter;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    :goto_4
    return-void
.end method
