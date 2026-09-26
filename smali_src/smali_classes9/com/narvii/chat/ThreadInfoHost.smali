.class public interface abstract Lcom/narvii/chat/ThreadInfoHost;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getThread()Lcom/narvii/model/ChatThread;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getThreadId()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract onThreadChanged(Lcom/narvii/model/ChatThread;)V
.end method
