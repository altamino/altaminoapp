.class public Lcom/narvii/services/MessageReadServiceProvider;
.super Ljava/lang/Object;
.source "MessageReadServiceProvider.java"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Lcom/narvii/chat/MessageReadManager;",
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
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/chat/MessageReadManager;
    .locals 1

    .line 13
    new-instance v0, Lcom/narvii/chat/MessageReadManager;

    invoke-direct {v0, p1}, Lcom/narvii/chat/MessageReadManager;-><init>(Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/services/MessageReadServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/chat/MessageReadManager;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/chat/MessageReadManager;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/chat/MessageReadManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/MessageReadServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/chat/MessageReadManager;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/chat/MessageReadManager;)V
    .locals 0

    .line 28
    invoke-virtual {p2}, Lcom/narvii/chat/MessageReadManager;->flush()V

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/chat/MessageReadManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/MessageReadServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/chat/MessageReadManager;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/chat/MessageReadManager;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/chat/MessageReadManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/MessageReadServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/chat/MessageReadManager;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/chat/MessageReadManager;)V
    .locals 0

    .line 18
    invoke-virtual {p2}, Lcom/narvii/chat/MessageReadManager;->start()V

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/chat/MessageReadManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/MessageReadServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/chat/MessageReadManager;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/chat/MessageReadManager;)V
    .locals 0

    .line 33
    invoke-virtual {p2}, Lcom/narvii/chat/MessageReadManager;->stop()V

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/chat/MessageReadManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/MessageReadServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/chat/MessageReadManager;)V

    return-void
.end method
