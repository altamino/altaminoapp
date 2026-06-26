.class Lcom/narvii/chat/ChatFragment$9;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "ChatFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/ChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/chat/ThreadResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/ChatFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChatFragment;Ljava/lang/Class;)V
    .locals 0

    .line 842
    iput-object p1, p0, Lcom/narvii/chat/ChatFragment$9;->this$0:Lcom/narvii/chat/ChatFragment;

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

    .line 862
    iget-object p1, p0, Lcom/narvii/chat/ChatFragment$9;->this$0:Lcom/narvii/chat/ChatFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/chat/ChatFragment;->access$502(Lcom/narvii/chat/ChatFragment;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/ThreadResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 848
    iget-object p1, p0, Lcom/narvii/chat/ChatFragment$9;->this$0:Lcom/narvii/chat/ChatFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/chat/ChatFragment;->access$502(Lcom/narvii/chat/ChatFragment;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;

    .line 849
    iget-object p1, p0, Lcom/narvii/chat/ChatFragment$9;->this$0:Lcom/narvii/chat/ChatFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 852
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/ChatFragment$9;->this$0:Lcom/narvii/chat/ChatFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/narvii/chat/ChatFragment;->access$602(Lcom/narvii/chat/ChatFragment;Z)Z

    .line 853
    iget-object p1, p0, Lcom/narvii/chat/ChatFragment$9;->this$0:Lcom/narvii/chat/ChatFragment;

    iget-object p2, p2, Lcom/narvii/chat/ThreadResponse;->thread:Lcom/narvii/model/ChatThread;

    invoke-virtual {p1, p2, v0}, Lcom/narvii/chat/ChatFragment;->setThread(Lcom/narvii/model/ChatThread;Z)V

    .line 854
    iget-object p1, p0, Lcom/narvii/chat/ChatFragment$9;->this$0:Lcom/narvii/chat/ChatFragment;

    invoke-static {p1}, Lcom/narvii/chat/ChatFragment;->access$700(Lcom/narvii/chat/ChatFragment;)V

    .line 855
    iget-object p1, p0, Lcom/narvii/chat/ChatFragment$9;->this$0:Lcom/narvii/chat/ChatFragment;

    invoke-static {p1}, Lcom/narvii/chat/ChatFragment;->access$800(Lcom/narvii/chat/ChatFragment;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 842
    check-cast p2, Lcom/narvii/chat/ThreadResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/ChatFragment$9;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/ThreadResponse;)V

    return-void
.end method
