.class public final Lcom/narvii/chat/core/ChatService$VideoMessagePostListener;
.super Lcom/narvii/util/http/ApiResponseProgressListener;
.source "SourceFile"


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
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/chat/core/ChatService;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/core/ChatService;Ljava/lang/Class;Lcom/narvii/model/ChatMessage;)V
    .locals 1
    .param p1    # Lcom/narvii/chat/core/ChatService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .line 1
    .line 2
    const-string v0, "clazz"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "chatMessage"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/chat/core/ChatService$VideoMessagePostListener;->this$0:Lcom/narvii/chat/core/ChatService;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseProgressListener;-><init>(Ljava/lang/Class;)V

    .line 16
    .line 17
    iput-object p3, p0, Lcom/narvii/chat/core/ChatService$VideoMessagePostListener;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 18
    return-void
.end method


# virtual methods
.method public final getChatMessage()Lcom/narvii/model/ChatMessage;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/core/ChatService$VideoMessagePostListener;->chatMessage:Lcom/narvii/model/ChatMessage;

    return-object v0
.end method

.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 8
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    const-string v0, "message"

    .line 8
    .line 9
    .line 10
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "t"

    .line 13
    .line 14
    .line 15
    invoke-static {p6, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService$VideoMessagePostListener;->this$0:Lcom/narvii/chat/core/ChatService;

    .line 21
    move-object v2, p1

    .line 22
    move v3, p2

    .line 23
    move-object v4, p3

    .line 24
    move-object v5, p4

    .line 25
    move-object v6, p5

    .line 26
    move-object v7, p6

    .line 27
    .line 28
    .line 29
    invoke-virtual/range {v1 .. v7}, Lcom/narvii/chat/core/ChatService;->onPostFailed(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService$VideoMessagePostListener;->this$0:Lcom/narvii/chat/core/ChatService;

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lcom/narvii/chat/core/ChatService;->access$getVideoUploadPercents$p(Lcom/narvii/chat/core/ChatService;)Landroid/util/SparseIntArray;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    iget-object p2, p0, Lcom/narvii/chat/core/ChatService$VideoMessagePostListener;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/narvii/model/ChatMessage;->getClientRefIdTmp()I

    .line 41
    move-result p2

    .line 42
    const/4 p3, 0x0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 46
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/MessageResponse;)V
    .locals 1
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/chat/MessageResponse;
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

    iget-object v0, p0, Lcom/narvii/chat/core/ChatService$VideoMessagePostListener;->this$0:Lcom/narvii/chat/core/ChatService;

    .line 3
    invoke-static {v0, p1, p2}, Lcom/narvii/chat/core/ChatService;->access$onPostFinished(Lcom/narvii/chat/core/ChatService;Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/MessageResponse;)V

    iget-object p1, p0, Lcom/narvii/chat/core/ChatService$VideoMessagePostListener;->this$0:Lcom/narvii/chat/core/ChatService;

    .line 4
    invoke-static {p1}, Lcom/narvii/chat/core/ChatService;->access$getVideoUploadPercents$p(Lcom/narvii/chat/core/ChatService;)Landroid/util/SparseIntArray;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/chat/core/ChatService$VideoMessagePostListener;->chatMessage:Lcom/narvii/model/ChatMessage;

    invoke-virtual {p2}, Lcom/narvii/model/ChatMessage;->getClientRefIdTmp()I

    move-result p2

    const/16 v0, 0x64

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/chat/MessageResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/core/ChatService$VideoMessagePostListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/MessageResponse;)V

    return-void
.end method

.method public onPostProgress(II)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "/"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    const-string v1, "chat_video_upload_progress"

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService$VideoMessagePostListener;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/narvii/model/ChatMessage;->getClientRefIdTmp()I

    .line 31
    move-result v0

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    if-nez p2, :cond_0

    .line 36
    const/4 p1, 0x0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    int-to-float p1, p1

    .line 39
    .line 40
    const/high16 v0, 0x42c80000    # 100.0f

    .line 41
    mul-float/2addr p1, v0

    .line 42
    int-to-float p2, p2

    .line 43
    div-float/2addr p1, p2

    .line 44
    float-to-int p1, p1

    .line 45
    .line 46
    :goto_0
    iget-object p2, p0, Lcom/narvii/chat/core/ChatService$VideoMessagePostListener;->this$0:Lcom/narvii/chat/core/ChatService;

    .line 47
    .line 48
    .line 49
    invoke-static {p2}, Lcom/narvii/chat/core/ChatService;->access$getVideoUploadPercents$p(Lcom/narvii/chat/core/ChatService;)Landroid/util/SparseIntArray;

    .line 50
    move-result-object p2

    .line 51
    .line 52
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService$VideoMessagePostListener;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/narvii/model/ChatMessage;->getClientRefIdTmp()I

    .line 56
    move-result v0

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, v0, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 60
    .line 61
    iget-object p2, p0, Lcom/narvii/chat/core/ChatService$VideoMessagePostListener;->this$0:Lcom/narvii/chat/core/ChatService;

    .line 62
    .line 63
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService$VideoMessagePostListener;->chatMessage:Lcom/narvii/model/ChatMessage;

    .line 64
    .line 65
    iget-object v1, v0, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/narvii/model/ChatMessage;->getClientRefIdTmp()I

    .line 69
    move-result v0

    .line 70
    .line 71
    .line 72
    invoke-static {p2, v1, v0, p1}, Lcom/narvii/chat/core/ChatService;->access$dispatchVideoMessagePostProgressChange(Lcom/narvii/chat/core/ChatService;Ljava/lang/String;II)V

    .line 73
    :cond_1
    return-void
.end method

.method public final setChatMessage(Lcom/narvii/model/ChatMessage;)V
    .locals 1
    .param p1    # Lcom/narvii/model/ChatMessage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/core/ChatService$VideoMessagePostListener;->chatMessage:Lcom/narvii/model/ChatMessage;

    return-void
.end method
