.class public interface abstract Lcom/narvii/util/ws/WsService$WsListener;
.super Ljava/lang/Object;
.source "WsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/ws/WsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WsListener"
.end annotation


# virtual methods
.method public abstract onConnect(Lcom/narvii/util/ws/WsService;)V
.end method

.method public abstract onDisconnect(Lcom/narvii/util/ws/WsService;Ljava/lang/Throwable;)V
.end method

.method public abstract onWsError(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsError;)V
.end method

.method public abstract onWsMessage(Lcom/narvii/util/ws/WsService;Lcom/narvii/util/ws/WsMessage;)V
.end method
