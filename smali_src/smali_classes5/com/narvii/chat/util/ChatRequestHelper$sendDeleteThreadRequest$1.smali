.class public final Lcom/narvii/chat/util/ChatRequestHelper$sendDeleteThreadRequest$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/util/ChatRequestHelper;->sendDeleteThreadRequest(ILjava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $callback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $chatThread:Lcom/narvii/model/ChatThread;

.field final synthetic $chatType:Ljava/lang/String;

.field final synthetic $targetUid:Ljava/lang/String;

.field final synthetic $threadId:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/chat/util/ChatRequestHelper;


# direct methods
.method constructor <init>(Lcom/narvii/chat/util/ChatRequestHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/chat/util/ChatRequestHelper;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/ChatThread;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendDeleteThreadRequest$1;->this$0:Lcom/narvii/chat/util/ChatRequestHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendDeleteThreadRequest$1;->$chatType:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendDeleteThreadRequest$1;->$targetUid:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendDeleteThreadRequest$1;->$threadId:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendDeleteThreadRequest$1;->$chatThread:Lcom/narvii/model/ChatThread;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendDeleteThreadRequest$1;->$callback:Lcom/narvii/util/Callback;

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p7}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 16
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    iget-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendDeleteThreadRequest$1;->$callback:Lcom/narvii/util/Callback;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, p4}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 11
    :cond_0
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendDeleteThreadRequest$1;->this$0:Lcom/narvii/chat/util/ChatRequestHelper;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/chat/util/ChatRequestHelper;->getCtx()Lcom/narvii/app/NVContext;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    sget-object p2, Lcom/narvii/logging/ActSemantic;->leaveChat:Lcom/narvii/logging/ActSemantic;

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    const-string p2, "chatType"

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendDeleteThreadRequest$1;->$chatType:Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParamIfNotNull(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendDeleteThreadRequest$1;->this$0:Lcom/narvii/chat/util/ChatRequestHelper;

    .line 29
    .line 30
    iget-object p2, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendDeleteThreadRequest$1;->$targetUid:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendDeleteThreadRequest$1;->$threadId:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendDeleteThreadRequest$1;->$chatThread:Lcom/narvii/model/ChatThread;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2, v0, v1}, Lcom/narvii/chat/util/ChatRequestHelper;->handleDeleteUserResponse(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;)V

    .line 38
    .line 39
    iget-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendDeleteThreadRequest$1;->$callback:Lcom/narvii/util/Callback;

    .line 40
    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 47
    :cond_0
    return-void
.end method
