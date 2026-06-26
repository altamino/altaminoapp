.class Lcom/narvii/chat/MessageContentDetailFragment$6;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "MessageContentDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/MessageContentDetailFragment;->fetchBubbleInfo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/monetization/bubble/ChatBubbleResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/MessageContentDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/MessageContentDetailFragment;Ljava/lang/Class;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/narvii/chat/MessageContentDetailFragment$6;->this$0:Lcom/narvii/chat/MessageContentDetailFragment;

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

    .line 320
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 308
    check-cast p2, Lcom/narvii/monetization/bubble/ChatBubbleResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/MessageContentDetailFragment$6;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/bubble/ChatBubbleResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/bubble/ChatBubbleResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 311
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 312
    iget-object p1, p0, Lcom/narvii/chat/MessageContentDetailFragment$6;->this$0:Lcom/narvii/chat/MessageContentDetailFragment;

    iget-object v0, p2, Lcom/narvii/monetization/bubble/ChatBubbleResponse;->chatBubble:Lcom/narvii/model/ChatBubble;

    invoke-static {p1, v0}, Lcom/narvii/chat/MessageContentDetailFragment;->access$302(Lcom/narvii/chat/MessageContentDetailFragment;Lcom/narvii/model/ChatBubble;)Lcom/narvii/model/ChatBubble;

    .line 313
    iget-object p1, p0, Lcom/narvii/chat/MessageContentDetailFragment$6;->this$0:Lcom/narvii/chat/MessageContentDetailFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/narvii/chat/MessageContentDetailFragment;->access$402(Lcom/narvii/chat/MessageContentDetailFragment;Z)Z

    .line 314
    iget-object p1, p0, Lcom/narvii/chat/MessageContentDetailFragment$6;->this$0:Lcom/narvii/chat/MessageContentDetailFragment;

    iget-object p2, p2, Lcom/narvii/monetization/bubble/ChatBubbleResponse;->allChatsBubbleId:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/narvii/chat/MessageContentDetailFragment;->access$502(Lcom/narvii/chat/MessageContentDetailFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 315
    iget-object p1, p0, Lcom/narvii/chat/MessageContentDetailFragment$6;->this$0:Lcom/narvii/chat/MessageContentDetailFragment;

    invoke-static {p1}, Lcom/narvii/chat/MessageContentDetailFragment;->access$600(Lcom/narvii/chat/MessageContentDetailFragment;)V

    return-void
.end method
