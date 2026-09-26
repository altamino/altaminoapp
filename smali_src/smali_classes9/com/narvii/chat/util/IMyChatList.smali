.class public interface abstract Lcom/narvii/chat/util/IMyChatList;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getMappedThreadFromList(Ljava/lang/String;)Lcom/narvii/model/ChatThread;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract onThreadUpdateInfo(Lcom/narvii/chat/core/ThreadUpdateObject;)V
    .param p1    # Lcom/narvii/chat/core/ThreadUpdateObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onUnknownThreadMessageCome(Lcom/narvii/model/ChatMessage;)V
    .param p1    # Lcom/narvii/model/ChatMessage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract refreshList()V
.end method
