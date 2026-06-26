.class public Lcom/narvii/services/AminoChatServiceProvider;
.super Ljava/lang/Object;
.source "AminoChatServiceProvider.java"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/chat/core/ChatService;",
        ">;"
    }
.end annotation


# instance fields
.field chatService:Lcom/narvii/chat/core/ChatService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/chat/core/ChatService;
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/narvii/services/AminoChatServiceProvider;->chatService:Lcom/narvii/chat/core/ChatService;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/narvii/chat/core/ChatService;

    invoke-direct {v0, p1}, Lcom/narvii/chat/core/ChatService;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/services/AminoChatServiceProvider;->chatService:Lcom/narvii/chat/core/ChatService;

    :cond_0
    const-string v0, "config"

    .line 19
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 20
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    iget-object v1, p0, Lcom/narvii/services/AminoChatServiceProvider;->chatService:Lcom/narvii/chat/core/ChatService;

    invoke-virtual {v1}, Lcom/narvii/chat/core/ChatService;->onOpenCommunity()V

    .line 24
    :cond_1
    iget-object v1, p0, Lcom/narvii/services/AminoChatServiceProvider;->chatService:Lcom/narvii/chat/core/ChatService;

    invoke-virtual {v1, v0}, Lcom/narvii/chat/core/ChatService;->setCurCid(I)V

    .line 25
    iget-object v0, p0, Lcom/narvii/services/AminoChatServiceProvider;->chatService:Lcom/narvii/chat/core/ChatService;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/core/ChatService;->setCurCommunityContext(Lcom/narvii/app/NVContext;)V

    .line 26
    iget-object p1, p0, Lcom/narvii/services/AminoChatServiceProvider;->chatService:Lcom/narvii/chat/core/ChatService;

    return-object p1
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/services/AminoChatServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/chat/core/ChatService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/chat/core/ChatService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/chat/core/ChatService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AminoChatServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/chat/core/ChatService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/chat/core/ChatService;)V
    .locals 0

    .line 46
    invoke-virtual {p2}, Lcom/narvii/chat/core/ChatService;->pause()V

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/chat/core/ChatService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AminoChatServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/chat/core/ChatService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/chat/core/ChatService;)V
    .locals 0

    .line 35
    invoke-virtual {p2}, Lcom/narvii/chat/core/ChatService;->resume()V

    const-string p2, "config"

    .line 36
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 37
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    if-eqz p1, :cond_0

    .line 39
    iget-object p2, p0, Lcom/narvii/services/AminoChatServiceProvider;->chatService:Lcom/narvii/chat/core/ChatService;

    invoke-virtual {p2, p1}, Lcom/narvii/chat/core/ChatService;->queryThreadCheckInfo(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/chat/core/ChatService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AminoChatServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/chat/core/ChatService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/chat/core/ChatService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/chat/core/ChatService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AminoChatServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/chat/core/ChatService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/chat/core/ChatService;)V
    .locals 1

    const-string v0, "config"

    .line 51
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 52
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p2, p1}, Lcom/narvii/chat/core/ChatService;->clearCommunityLevelData(I)V

    .line 55
    invoke-virtual {p2}, Lcom/narvii/chat/core/ChatService;->storeDraft()V

    :cond_0
    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/chat/core/ChatService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AminoChatServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/chat/core/ChatService;)V

    return-void
.end method
