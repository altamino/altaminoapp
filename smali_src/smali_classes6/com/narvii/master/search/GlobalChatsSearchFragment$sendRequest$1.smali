.class public final Lcom/narvii/master/search/GlobalChatsSearchFragment$sendRequest$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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
            "Lcom/narvii/master/search/GlobalChatsSearchFragment;",
            "Ljava/lang/Class<",
            "Lcom/narvii/chat/thread/ThreadListResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$sendRequest$1;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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

    .line 1
    .line 2
    const-string v0, "req"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$sendRequest$1;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    .line 11
    const/4 p2, 0x1

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$setRequestSent$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;Z)V

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$sendRequest$1;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$getMergeAdapter$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;)Lcom/narvii/list/MergeAdapter;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 26
    :cond_0
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/thread/ThreadListResponse;)V
    .locals 1
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/chat/thread/ThreadListResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "req"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$sendRequest$1;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$setChatApiRequest$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;Lcom/narvii/util/http/ApiRequest;)V

    iget-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$sendRequest$1;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$setRequestSent$p(Lcom/narvii/master/search/GlobalChatsSearchFragment;Z)V

    iget-object p1, p0, Lcom/narvii/master/search/GlobalChatsSearchFragment$sendRequest$1;->this$0:Lcom/narvii/master/search/GlobalChatsSearchFragment;

    .line 5
    invoke-static {p1, p2}, Lcom/narvii/master/search/GlobalChatsSearchFragment;->access$onRequestFinish(Lcom/narvii/master/search/GlobalChatsSearchFragment;Lcom/narvii/chat/thread/ThreadListResponse;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/chat/thread/ThreadListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/search/GlobalChatsSearchFragment$sendRequest$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/thread/ThreadListResponse;)V

    return-void
.end method
