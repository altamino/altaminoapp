.class public Lcom/narvii/services/MediaPlayerProvider;
.super Ljava/lang/Object;
.source "MediaPlayerProvider.java"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Lcom/narvii/media/MediaPlayerManager;",
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
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/media/MediaPlayerManager;
    .locals 1

    .line 13
    new-instance v0, Lcom/narvii/media/MediaPlayerManager;

    invoke-direct {v0, p1}, Lcom/narvii/media/MediaPlayerManager;-><init>(Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/services/MediaPlayerProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/media/MediaPlayerManager;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/media/MediaPlayerManager;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/media/MediaPlayerManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/MediaPlayerProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/media/MediaPlayerManager;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/media/MediaPlayerManager;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/media/MediaPlayerManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/MediaPlayerProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/media/MediaPlayerManager;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/media/MediaPlayerManager;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/media/MediaPlayerManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/MediaPlayerProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/media/MediaPlayerManager;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/media/MediaPlayerManager;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/media/MediaPlayerManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/MediaPlayerProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/media/MediaPlayerManager;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/media/MediaPlayerManager;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/media/MediaPlayerManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/MediaPlayerProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/media/MediaPlayerManager;)V

    return-void
.end method
