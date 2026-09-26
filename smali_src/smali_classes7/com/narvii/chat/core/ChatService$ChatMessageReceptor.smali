.class public interface abstract Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/core/ChatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ChatMessageReceptor"
.end annotation


# virtual methods
.method public abstract onNewChatMessage(ILcom/narvii/chat/util/ChatMessageDto;)V
    .param p2    # Lcom/narvii/chat/util/ChatMessageDto;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onResetChatMessageList()V
.end method

.method public abstract onUnreadThreadCountChanged(I)V
.end method
