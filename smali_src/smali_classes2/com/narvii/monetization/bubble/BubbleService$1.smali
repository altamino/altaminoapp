.class Lcom/narvii/monetization/bubble/BubbleService$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/bubble/BubbleService;->requireBubble(ILjava/lang/String;I)V
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
.field final synthetic this$0:Lcom/narvii/monetization/bubble/BubbleService;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/bubble/BubbleService;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleService$1;->this$0:Lcom/narvii/monetization/bubble/BubbleService;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/monetization/bubble/BubbleService$1;->val$key:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 8
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
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleService$1;->this$0:Lcom/narvii/monetization/bubble/BubbleService;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/monetization/bubble/BubbleService;->a(Lcom/narvii/monetization/bubble/BubbleService;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleService$1;->val$key:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

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
    check-cast p2, Lcom/narvii/monetization/bubble/ChatBubbleResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/monetization/bubble/BubbleService$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/bubble/ChatBubbleResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/monetization/bubble/ChatBubbleResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 3
    iget-object p1, p2, Lcom/narvii/monetization/bubble/ChatBubbleResponse;->chatBubble:Lcom/narvii/model/ChatBubble;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleService$1;->this$0:Lcom/narvii/monetization/bubble/BubbleService;

    .line 4
    invoke-static {p2}, Lcom/narvii/monetization/bubble/BubbleService;->b(Lcom/narvii/monetization/bubble/BubbleService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService$1;->val$key:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleService$1;->this$0:Lcom/narvii/monetization/bubble/BubbleService;

    .line 5
    invoke-static {p2}, Lcom/narvii/monetization/bubble/BubbleService;->a(Lcom/narvii/monetization/bubble/BubbleService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleService$1;->val$key:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/narvii/monetization/bubble/BubbleService$1;->this$0:Lcom/narvii/monetization/bubble/BubbleService;

    .line 6
    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Lcom/narvii/model/ChatBubble;->version:I

    iget-object p1, p1, Lcom/narvii/model/ChatBubble;->resourceUrl:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, p1}, Lcom/narvii/monetization/bubble/BubbleService;->requireBubble(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
