.class public interface abstract Lcom/narvii/chat/util/IMyChatList;
.super Ljava/lang/Object;
.source "IMyChatList.kt"


# virtual methods
.method public abstract getMappedThreadFromList(Ljava/lang/String;)Lcom/narvii/model/ChatThread;
.end method

.method public abstract onThreadUpdateInfo(Lcom/narvii/chat/core/ThreadUpdateObject;)V
.end method

.method public abstract onUnknownThreadMessageCome(Lcom/narvii/model/ChatMessage;)V
.end method

.method public abstract refreshList()V
.end method
