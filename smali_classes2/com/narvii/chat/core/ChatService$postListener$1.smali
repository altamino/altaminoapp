.class public final Lcom/narvii/chat/core/ChatService$postListener$1;
.super Lcom/narvii/util/http/ApiResponseProgressListener;
.source "ChatService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/core/ChatService;-><init>(Lcom/narvii/app/NVContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseProgressListener<",
        "Lcom/narvii/chat/MessageResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/core/ChatService;


# direct methods
.method constructor <init>(Lcom/narvii/chat/core/ChatService;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 1072
    iput-object p1, p0, Lcom/narvii/chat/core/ChatService$postListener$1;->this$0:Lcom/narvii/chat/core/ChatService;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseProgressListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
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

    .line 1082
    iget-object v1, p0, Lcom/narvii/chat/core/ChatService$postListener$1;->this$0:Lcom/narvii/chat/core/ChatService;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/narvii/chat/core/ChatService;->onPostFailed(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

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

    .line 1075
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService$postListener$1;->this$0:Lcom/narvii/chat/core/ChatService;

    invoke-static {v0, p1, p2}, Lcom/narvii/chat/core/ChatService;->access$onPostFinished(Lcom/narvii/chat/core/ChatService;Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/MessageResponse;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1072
    check-cast p2, Lcom/narvii/chat/MessageResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/core/ChatService$postListener$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/MessageResponse;)V

    return-void
.end method

.method public onPostProgress(II)V
    .locals 0

    return-void
.end method
