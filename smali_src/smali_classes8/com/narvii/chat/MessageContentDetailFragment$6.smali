.class Lcom/narvii/chat/MessageContentDetailFragment$6;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/MessageContentDetailFragment$6;->this$0:Lcom/narvii/chat/MessageContentDetailFragment;

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

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object p1, p0, Lcom/narvii/chat/MessageContentDetailFragment$6;->this$0:Lcom/narvii/chat/MessageContentDetailFragment;

    .line 3
    iget-object v0, p2, Lcom/narvii/monetization/bubble/ChatBubbleResponse;->chatBubble:Lcom/narvii/model/ChatBubble;

    invoke-static {p1, v0}, Lcom/narvii/chat/MessageContentDetailFragment;->s(Lcom/narvii/chat/MessageContentDetailFragment;Lcom/narvii/model/ChatBubble;)V

    iget-object p1, p0, Lcom/narvii/chat/MessageContentDetailFragment$6;->this$0:Lcom/narvii/chat/MessageContentDetailFragment;

    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, Lcom/narvii/chat/MessageContentDetailFragment;->t(Lcom/narvii/chat/MessageContentDetailFragment;Z)V

    iget-object p1, p0, Lcom/narvii/chat/MessageContentDetailFragment$6;->this$0:Lcom/narvii/chat/MessageContentDetailFragment;

    .line 5
    iget-object p2, p2, Lcom/narvii/monetization/bubble/ChatBubbleResponse;->allChatsBubbleId:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/narvii/chat/MessageContentDetailFragment;->r(Lcom/narvii/chat/MessageContentDetailFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/narvii/chat/MessageContentDetailFragment$6;->this$0:Lcom/narvii/chat/MessageContentDetailFragment;

    .line 6
    invoke-static {p1}, Lcom/narvii/chat/MessageContentDetailFragment;->w(Lcom/narvii/chat/MessageContentDetailFragment;)V

    return-void
.end method
