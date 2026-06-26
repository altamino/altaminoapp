.class Lcom/narvii/chat/ChatMessageItemDetailFragment$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "ChatMessageItemDetailFragment.java"


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

    .line 357
    iput-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment$2;->this$0:Lcom/narvii/chat/ChatMessageItemDetailFragment;

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

    .line 367
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    const/16 p1, 0x641

    if-ne p2, p1, :cond_0

    .line 369
    iget-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment$2;->this$0:Lcom/narvii/chat/ChatMessageItemDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->buildDeletedMessage()V

    .line 370
    iget-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment$2;->this$0:Lcom/narvii/chat/ChatMessageItemDetailFragment;

    invoke-static {p1}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->access$200(Lcom/narvii/chat/ChatMessageItemDetailFragment;)V

    goto :goto_0

    .line 372
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment$2;->this$0:Lcom/narvii/chat/ChatMessageItemDetailFragment;

    invoke-static {p1, p4}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->access$302(Lcom/narvii/chat/ChatMessageItemDetailFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 373
    iget-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment$2;->this$0:Lcom/narvii/chat/ChatMessageItemDetailFragment;

    invoke-static {p1}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->access$200(Lcom/narvii/chat/ChatMessageItemDetailFragment;)V

    .line 374
    iget-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment$2;->this$0:Lcom/narvii/chat/ChatMessageItemDetailFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->access$100(Lcom/narvii/chat/ChatMessageItemDetailFragment;Z)V

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

    .line 360
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 361
    iget-object p1, p0, Lcom/narvii/chat/ChatMessageItemDetailFragment$2;->this$0:Lcom/narvii/chat/ChatMessageItemDetailFragment;

    iget-object p2, p2, Lcom/narvii/chat/MessageResponse;->message:Lcom/narvii/model/ChatMessage;

    iput-object p2, p1, Lcom/narvii/chat/ChatMessageItemDetailFragment;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 362
    invoke-static {p1}, Lcom/narvii/chat/ChatMessageItemDetailFragment;->access$200(Lcom/narvii/chat/ChatMessageItemDetailFragment;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 357
    check-cast p2, Lcom/narvii/chat/MessageResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/ChatMessageItemDetailFragment$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/MessageResponse;)V

    return-void
.end method
