.class public Lcom/narvii/services/ChatServiceProvider;
.super Ljava/lang/Object;
.source "ChatServiceProvider.java"

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

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/chat/core/ChatService;
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/narvii/services/ChatServiceProvider;->chatService:Lcom/narvii/chat/core/ChatService;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/narvii/chat/core/ChatService;

    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/chat/core/ChatService;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/services/ChatServiceProvider;->chatService:Lcom/narvii/chat/core/ChatService;

    .line 21
    :cond_0
    instance-of v0, p1, Lcom/narvii/services/incubator/CommunityContext;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/narvii/services/incubator/CommunityContext;

    iget v0, v0, Lcom/narvii/services/incubator/CommunityContext;->cid:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 23
    iget-object v1, p0, Lcom/narvii/services/ChatServiceProvider;->chatService:Lcom/narvii/chat/core/ChatService;

    invoke-virtual {v1}, Lcom/narvii/chat/core/ChatService;->onOpenCommunity()V

    .line 25
    :cond_2
    iget-object v1, p0, Lcom/narvii/services/ChatServiceProvider;->chatService:Lcom/narvii/chat/core/ChatService;

    invoke-virtual {v1, v0}, Lcom/narvii/chat/core/ChatService;->setCurCid(I)V

    .line 26
    iget-object v0, p0, Lcom/narvii/services/ChatServiceProvider;->chatService:Lcom/narvii/chat/core/ChatService;

    invoke-virtual {v0, p1}, Lcom/narvii/chat/core/ChatService;->setCurCommunityContext(Lcom/narvii/app/NVContext;)V

    .line 27
    iget-object p1, p0, Lcom/narvii/services/ChatServiceProvider;->chatService:Lcom/narvii/chat/core/ChatService;

    return-object p1
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/narvii/services/ChatServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/chat/core/ChatService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/chat/core/ChatService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p2, Lcom/narvii/chat/core/ChatService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/ChatServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/chat/core/ChatService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/chat/core/ChatService;)V
    .locals 0

    .line 48
    invoke-virtual {p2}, Lcom/narvii/chat/core/ChatService;->pause()V

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p2, Lcom/narvii/chat/core/ChatService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/ChatServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/chat/core/ChatService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/chat/core/ChatService;)V
    .locals 1

    .line 36
    instance-of v0, p1, Lcom/narvii/services/incubator/CommunityContext;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/narvii/services/incubator/CommunityContext;

    iget v0, v0, Lcom/narvii/services/incubator/CommunityContext;->cid:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 37
    :goto_0
    invoke-virtual {p2, v0}, Lcom/narvii/chat/core/ChatService;->setCurCid(I)V

    .line 38
    invoke-virtual {p2, p1}, Lcom/narvii/chat/core/ChatService;->setCurCommunityContext(Lcom/narvii/app/NVContext;)V

    .line 39
    invoke-virtual {p2}, Lcom/narvii/chat/core/ChatService;->resume()V

    if-eqz v0, :cond_1

    .line 41
    iget-object p1, p0, Lcom/narvii/services/ChatServiceProvider;->chatService:Lcom/narvii/chat/core/ChatService;

    invoke-virtual {p1, v0}, Lcom/narvii/chat/core/ChatService;->queryThreadCheckInfo(I)V

    :cond_1
    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p2, Lcom/narvii/chat/core/ChatService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/ChatServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/chat/core/ChatService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/chat/core/ChatService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p2, Lcom/narvii/chat/core/ChatService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/ChatServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/chat/core/ChatService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/chat/core/ChatService;)V
    .locals 2

    .line 53
    instance-of v0, p1, Lcom/narvii/services/incubator/CommunityContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/narvii/services/incubator/CommunityContext;

    iget v0, v0, Lcom/narvii/services/incubator/CommunityContext;->cid:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {p2, v0}, Lcom/narvii/chat/core/ChatService;->clearCommunityLevelData(I)V

    .line 56
    invoke-virtual {p2}, Lcom/narvii/chat/core/ChatService;->storeDraft()V

    .line 58
    :cond_1
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/incubator/IncubatorApplication;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/incubator/IncubatorApplication;

    invoke-virtual {p1}, Lcom/narvii/app/incubator/IncubatorApplication;->hasNoLiveCommunity()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 59
    invoke-virtual {p2, v1}, Lcom/narvii/chat/core/ChatService;->setCurCid(I)V

    const/4 p1, 0x0

    .line 60
    invoke-virtual {p2, p1}, Lcom/narvii/chat/core/ChatService;->setCurCommunityContext(Lcom/narvii/app/NVContext;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p2, Lcom/narvii/chat/core/ChatService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/ChatServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/chat/core/ChatService;)V

    return-void
.end method
