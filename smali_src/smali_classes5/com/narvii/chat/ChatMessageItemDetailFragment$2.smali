.class Lcom/narvii/chat/ChatMessageItemDetailFragment$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/ChatMessageItemDetailFragment;->sendRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/chat/MessageResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/ChatMessageItemDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatMessageItemDetailFragment;Ljava/lang/Class;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment$2;->this$0:Lcom/narvii/chat/ChatMessageItemDetailFragment;

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
    const/16 p1, 0x641

    .line 6
    .line 7
    if-ne p2, p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment$2;->this$0:Lcom/narvii/chat/ChatMessageItemDetailFragment;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->buildDeletedMessage()V

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment$2;->this$0:Lcom/narvii/chat/ChatMessageItemDetailFragment;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->q(Lcom/narvii/chat/ChatMessageItemDetailFragment;)V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment$2;->this$0:Lcom/narvii/chat/ChatMessageItemDetailFragment;

    .line 21
    .line 22
    .line 23
    invoke-static {p1, p4}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->o(Lcom/narvii/chat/ChatMessageItemDetailFragment;Ljava/lang/String;)V

    .line 24
    .line 25
    iget-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment$2;->this$0:Lcom/narvii/chat/ChatMessageItemDetailFragment;

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->q(Lcom/narvii/chat/ChatMessageItemDetailFragment;)V

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment$2;->this$0:Lcom/narvii/chat/ChatMessageItemDetailFragment;

    .line 31
    const/4 p2, 0x0

    .line 32
    .line 33
    .line 34
    invoke-static {p1, p2}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->p(Lcom/narvii/chat/ChatMessageItemDetailFragment;Z)V

    .line 35
    :goto_0
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/MessageResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment$2;->this$0:Lcom/narvii/chat/ChatMessageItemDetailFragment;

    .line 3
    iget-object p2, p2, Lcom/narvii/chat/MessageResponse;->message:Lcom/narvii/model/ChatMessage;

    iput-object p2, p1, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 4
    invoke-static {p1}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->q(Lcom/narvii/chat/ChatMessageItemDetailFragment;)V

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
    check-cast p2, Lcom/narvii/chat/MessageResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/ChatMessageItemDetailFragment$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/MessageResponse;)V

    return-void
.end method
