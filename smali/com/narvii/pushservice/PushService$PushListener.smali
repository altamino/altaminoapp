.class public interface abstract Lcom/narvii/pushservice/PushService$PushListener;
.super Ljava/lang/Object;
.source "PushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/pushservice/PushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PushListener"
.end annotation


# virtual methods
.method public abstract onInterceptNotification(Lcom/narvii/pushservice/PushPayload;)Z
.end method

.method public abstract onPushPayload(Lcom/narvii/pushservice/PushPayload;)V
.end method
