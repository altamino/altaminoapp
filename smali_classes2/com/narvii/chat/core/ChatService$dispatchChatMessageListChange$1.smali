.class final Lcom/narvii/chat/core/ChatService$dispatchChatMessageListChange$1;
.super Ljava/lang/Object;
.source "ChatService.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/core/ChatService;->dispatchChatMessageListChange(Ljava/lang/String;Lcom/narvii/chat/util/ChatMessageDto;)V
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
        "Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $chatMessageDto:Lcom/narvii/chat/util/ChatMessageDto;


# direct methods
.method constructor <init>(Lcom/narvii/chat/util/ChatMessageDto;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/core/ChatService$dispatchChatMessageListChange$1;->$chatMessageDto:Lcom/narvii/chat/util/ChatMessageDto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/narvii/chat/core/ChatService$dispatchChatMessageListChange$1;->$chatMessageDto:Lcom/narvii/chat/util/ChatMessageDto;

    iget v1, v0, Lcom/narvii/chat/util/ChatMessageDto;->ndcId:I

    invoke-interface {p1, v1, v0}, Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;->onNewChatMessage(ILcom/narvii/chat/util/ChatMessageDto;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 107
    check-cast p1, Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/core/ChatService$dispatchChatMessageListChange$1;->call(Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    return-void
.end method
