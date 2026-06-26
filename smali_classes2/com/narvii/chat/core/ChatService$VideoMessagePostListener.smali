.class public final Lcom/narvii/chat/core/ChatService$VideoMessagePostListener;
.super Lcom/narvii/util/http/ApiResponseProgressListener;
.source "ChatService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/core/ChatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "VideoMessagePostListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseProgressListener<",
        "Lcom/narvii/chat/MessageResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private chatMessage:Lcom/narvii/model/ChatMessage;

.field final synthetic this$0:Lcom/narvii/chat/core/ChatService;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/core/ChatService;Ljava/lang/Class;Lcom/narvii/model/ChatMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/chat/MessageResponse;",
            ">;",
            "Lcom/narvii/model/ChatMessage;",
            ")V"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatMessage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1735
    iput-object p1, p0, Lcom/narvii/chat/core/ChatService$VideoMessagePostListener;->this$0:Lcom/narvii/chat/core/ChatService;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseProgressListener;-><init>(Ljava/lang/Class;)V

    iput-object p3, p0, Lcom/narvii/chat/core/ChatService$VideoMessagePostListener;->chatMessage:Lcom/narvii/model/ChatMessage;

    return-void
.end method


# virtual methods
.method public final getChatMessage()Lcom/narvii/model/ChatMessage;
    .locals 1

    .line 1735
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService$VideoMessagePostListener;->chatMessage:Lcom/narvii/model/ChatMessage;

    return-object v0
.end method

.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 8
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

    const-string v0, "message"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "t"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1745
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 1746
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService$VideoMessagePostListener;->this$0:Lcom/narvii/chat/core/ChatService;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/narvii/chat/core/ChatService;->onPostFailed(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 1747
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService$VideoMessagePostListener;->this$0:Lcom/narvii/chat/core/ChatService;

    invoke-static {p1}, Lcom/narvii/chat/core/ChatService;->access$getVideoUploadPercents$p(Lcom/narvii/chat/core/ChatService;)Landroid/util/SparseArray;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/chat/core/ChatService$VideoMessagePostListener;->chatMessage:Lcom/narvii/model/ChatMessage;

    iget p2, p2, Lcom/narvii/model/ChatMessage;->clientRefId:I

    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/MessageResponse;)V
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

    .line 1739
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 1740
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService$VideoMessagePostListener;->this$0:Lcom/narvii/chat/core/ChatService;

    invoke-static {v0, p1, p2}, Lcom/narvii/chat/core/ChatService;->access$onPostFinished(Lcom/narvii/chat/core/ChatService;Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/MessageResponse;)V

    .line 1741
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService$VideoMessagePostListener;->this$0:Lcom/narvii/chat/core/ChatService;

    invoke-static {p1}, Lcom/narvii/chat/core/ChatService;->access$getVideoUploadPercents$p(Lcom/narvii/chat/core/ChatService;)Landroid/util/SparseArray;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/chat/core/ChatService$VideoMessagePostListener;->chatMessage:Lcom/narvii/model/ChatMessage;

    iget p2, p2, Lcom/narvii/model/ChatMessage;->clientRefId:I

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1735
    check-cast p2, Lcom/narvii/chat/MessageResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/core/ChatService$VideoMessagePostListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/MessageResponse;)V

    return-void
.end method

.method public onPostProgress(II)V
    .locals 2

    .line 1751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chat_video_upload_progress"

    invoke-static {v1, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1752
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService$VideoMessagePostListener;->chatMessage:Lcom/narvii/model/ChatMessage;

    iget v0, v0, Lcom/narvii/model/ChatMessage;->clientRefId:I

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    int-to-float p2, p2

    div-float/2addr p1, p2

    float-to-int p1, p1

    .line 1754
    :goto_0
    iget-object p2, p0, Lcom/narvii/chat/core/ChatService$VideoMessagePostListener;->this$0:Lcom/narvii/chat/core/ChatService;

    invoke-static {p2}, Lcom/narvii/chat/core/ChatService;->access$getVideoUploadPercents$p(Lcom/narvii/chat/core/ChatService;)Landroid/util/SparseArray;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/chat/core/ChatService$VideoMessagePostListener;->chatMessage:Lcom/narvii/model/ChatMessage;

    iget v0, v0, Lcom/narvii/model/ChatMessage;->clientRefId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1755
    iget-object p2, p0, Lcom/narvii/chat/core/ChatService$VideoMessagePostListener;->this$0:Lcom/narvii/chat/core/ChatService;

    iget-object v0, p0, Lcom/narvii/chat/core/ChatService$VideoMessagePostListener;->chatMessage:Lcom/narvii/model/ChatMessage;

    iget-object v1, v0, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    iget v0, v0, Lcom/narvii/model/ChatMessage;->clientRefId:I

    invoke-static {p2, v1, v0, p1}, Lcom/narvii/chat/core/ChatService;->access$dispatchVideoMessagePostProgressChange(Lcom/narvii/chat/core/ChatService;Ljava/lang/String;II)V

    :cond_1
    return-void
.end method

.method public final setChatMessage(Lcom/narvii/model/ChatMessage;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1735
    iput-object p1, p0, Lcom/narvii/chat/core/ChatService$VideoMessagePostListener;->chatMessage:Lcom/narvii/model/ChatMessage;

    return-void
.end method
