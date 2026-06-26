.class final Lcom/narvii/chat/core/ChatService$onPostFinished$2;
.super Ljava/lang/Object;
.source "ChatService.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/core/ChatService;->onPostFinished(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/MessageResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $msg:Lcom/narvii/model/ChatMessage;

.field final synthetic $orig:Lcom/narvii/model/ChatMessage;

.field final synthetic this$0:Lcom/narvii/chat/core/ChatService;


# direct methods
.method constructor <init>(Lcom/narvii/chat/core/ChatService;Lcom/narvii/model/ChatMessage;Lcom/narvii/model/ChatMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/core/ChatService$onPostFinished$2;->this$0:Lcom/narvii/chat/core/ChatService;

    iput-object p2, p0, Lcom/narvii/chat/core/ChatService$onPostFinished$2;->$orig:Lcom/narvii/model/ChatMessage;

    iput-object p3, p0, Lcom/narvii/chat/core/ChatService$onPostFinished$2;->$msg:Lcom/narvii/model/ChatMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Boolean;)V
    .locals 0

    .line 1120
    new-instance p1, Lcom/narvii/chat/core/ChatService$onPostFinished$2$1;

    invoke-direct {p1, p0}, Lcom/narvii/chat/core/ChatService$onPostFinished$2$1;-><init>(Lcom/narvii/chat/core/ChatService$onPostFinished$2;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 107
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/core/ChatService$onPostFinished$2;->call(Ljava/lang/Boolean;)V

    return-void
.end method
