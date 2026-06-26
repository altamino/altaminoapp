.class public interface abstract Lcom/narvii/services/EventLogProfileService$EventLogProfileListener;
.super Ljava/lang/Object;
.source "EventLogProfileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/services/EventLogProfileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventLogProfileListener"
.end annotation


# virtual methods
.method public abstract clearResponseWhenAccountChange()V
.end method

.method public abstract onProfileChanged(Lcom/narvii/logging/EventLogProfileResponse;Z)V
.end method

.method public abstract onRequestFailed(Ljava/lang/String;Z)V
.end method
