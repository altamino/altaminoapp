.class public final Lcom/narvii/master/search/GlobalChatsSearchFragment$sendRequest$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "GlobalChatsSearchFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/search/GlobalChatsSearchFragment;->sendRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/chat/thread/ThreadListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/search/GlobalChatsSearchFragment;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 404
    iput-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$sendRequest$1;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/api/ApiResponse;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "req"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 415
    iget-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$sendRequest$1;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$setRequestSent$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;Z)V

    .line 416
    iget-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$sendRequest$1;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    invoke-static {p1}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$getMergeAdapter$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Lcom/narvii/list/MergeAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/thread/ThreadListResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "req"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 408
    iget-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$sendRequest$1;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$setChatApiRequest$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;Lcom/narvii/util/http/ApiRequest;)V

    .line 409
    iget-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$sendRequest$1;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$setRequestSent$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;Z)V

    .line 410
    iget-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$sendRequest$1;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    invoke-static {p1, p2}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$onRequestFinish(Lcom/narvii/master/search/GlobalChatsSearchFragment;Lcom/narvii/chat/thread/ThreadListResponse;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 404
    check-cast p2, Lcom/narvii/chat/thread/ThreadListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/search/GlobalChatsSearchFragment$sendRequest$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/thread/ThreadListResponse;)V

    return-void
.end method
