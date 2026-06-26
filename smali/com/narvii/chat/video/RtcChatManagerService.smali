.class public Lcom/narvii/chat/video/RtcChatManagerService;
.super Ljava/lang/Object;
.source "RtcChatManagerService.java"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Lcom/narvii/chat/video/RtcChatManager;",
        ">;"
    }
.end annotation


# instance fields
.field rtcManager:Lcom/narvii/chat/video/RtcChatManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/chat/video/RtcChatManager;
    .locals 1

    .line 16
    new-instance v0, Lcom/narvii/chat/video/RtcChatManager;

    invoke-direct {v0, p1}, Lcom/narvii/chat/video/RtcChatManager;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/chat/video/RtcChatManagerService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    .line 17
    iget-object p1, p0, Lcom/narvii/chat/video/RtcChatManagerService;->rtcManager:Lcom/narvii/chat/video/RtcChatManager;

    return-object p1
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/RtcChatManagerService;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/chat/video/RtcChatManager;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/chat/video/RtcChatManager;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/chat/video/RtcChatManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/video/RtcChatManagerService;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/chat/video/RtcChatManager;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/chat/video/RtcChatManager;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/chat/video/RtcChatManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/video/RtcChatManagerService;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/chat/video/RtcChatManager;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/chat/video/RtcChatManager;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/chat/video/RtcChatManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/video/RtcChatManagerService;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/chat/video/RtcChatManager;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/chat/video/RtcChatManager;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/chat/video/RtcChatManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/video/RtcChatManagerService;->start(Lcom/narvii/app/NVContext;Lcom/narvii/chat/video/RtcChatManager;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/chat/video/RtcChatManager;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/chat/video/RtcChatManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/video/RtcChatManagerService;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/chat/video/RtcChatManager;)V

    return-void
.end method
