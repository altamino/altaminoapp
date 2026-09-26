.class public final Lcom/narvii/chat/util/ChatRequestHelper$sendKickUserRequest$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/util/ChatRequestHelper;->sendKickUserRequest(Ljava/lang/String;Ljava/lang/String;ZZLcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;)V
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

.field final synthetic $targetUid:Ljava/lang/String;

.field final synthetic $threadId:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/chat/util/ChatRequestHelper;


# direct methods
.method constructor <init>(Lcom/narvii/chat/util/ChatRequestHelper;Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;Lcom/narvii/util/Callback;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/chat/util/ChatRequestHelper;",
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
    iput-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendKickUserRequest$1;->this$0:Lcom/narvii/chat/util/ChatRequestHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendKickUserRequest$1;->$targetUid:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendKickUserRequest$1;->$threadId:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendKickUserRequest$1;->$chatThread:Lcom/narvii/model/ChatThread;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendKickUserRequest$1;->$callback:Lcom/narvii/util/Callback;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p6}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 14
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
    iget-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendKickUserRequest$1;->$callback:Lcom/narvii/util/Callback;

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
    iget-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendKickUserRequest$1;->this$0:Lcom/narvii/chat/util/ChatRequestHelper;

    .line 6
    .line 7
    iget-object p2, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendKickUserRequest$1;->$targetUid:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendKickUserRequest$1;->$threadId:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendKickUserRequest$1;->$chatThread:Lcom/narvii/model/ChatThread;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2, v0, v1}, Lcom/narvii/chat/util/ChatRequestHelper;->handleDeleteUserResponse(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/ChatThread;)V

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/chat/util/ChatRequestHelper$sendKickUserRequest$1;->$callback:Lcom/narvii/util/Callback;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 24
    :cond_0
    return-void
.end method
