.class public Lcom/narvii/services/GlobalChatServiceProvider;
.super Ljava/lang/Object;
.source "GlobalChatServiceProvider.java"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/chat/util/GlobalChatService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/chat/util/GlobalChatService;
    .locals 1

    .line 13
    new-instance v0, Lcom/narvii/chat/util/GlobalChatService;

    invoke-direct {v0, p1}, Lcom/narvii/chat/util/GlobalChatService;-><init>(Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/services/GlobalChatServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/chat/util/GlobalChatService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/chat/util/GlobalChatService;)V
    .locals 0

    .line 38
    invoke-virtual {p2}, Lcom/narvii/chat/util/GlobalChatService;->destroy()V

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/chat/util/GlobalChatService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/GlobalChatServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/chat/util/GlobalChatService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/chat/util/GlobalChatService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/chat/util/GlobalChatService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/GlobalChatServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/chat/util/GlobalChatService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/chat/util/GlobalChatService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/chat/util/GlobalChatService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/GlobalChatServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/chat/util/GlobalChatService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/chat/util/GlobalChatService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/chat/util/GlobalChatService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/GlobalChatServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/chat/util/GlobalChatService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/chat/util/GlobalChatService;)V
    .locals 0

    const/4 p1, 0x1

    .line 33
    invoke-virtual {p2, p1}, Lcom/narvii/chat/util/GlobalChatService;->flush(Z)Z

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/chat/util/GlobalChatService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/GlobalChatServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/chat/util/GlobalChatService;)V

    return-void
.end method
