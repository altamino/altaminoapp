.class final Lcom/narvii/chat/core/ChatService$onPostFinished$2$1;
.super Ljava/lang/Object;
.source "ChatService.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/core/ChatService$onPostFinished$2;->call(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/core/ChatService$onPostFinished$2;


# direct methods
.method constructor <init>(Lcom/narvii/chat/core/ChatService$onPostFinished$2;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/core/ChatService$onPostFinished$2$1;->this$0:Lcom/narvii/chat/core/ChatService$onPostFinished$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1120
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService$onPostFinished$2$1;->this$0:Lcom/narvii/chat/core/ChatService$onPostFinished$2;

    iget-object v1, v0, Lcom/narvii/chat/core/ChatService$onPostFinished$2;->this$0:Lcom/narvii/chat/core/ChatService;

    iget-object v2, v0, Lcom/narvii/chat/core/ChatService$onPostFinished$2;->$orig:Lcom/narvii/model/ChatMessage;

    iget-object v0, v0, Lcom/narvii/chat/core/ChatService$onPostFinished$2;->$msg:Lcom/narvii/model/ChatMessage;

    const-string v3, "msg"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2, v0}, Lcom/narvii/chat/core/ChatService;->access$onMessagePostSuccess(Lcom/narvii/chat/core/ChatService;Lcom/narvii/model/ChatMessage;Lcom/narvii/model/ChatMessage;)V

    return-void
.end method
