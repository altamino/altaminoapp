.class public Lcom/narvii/services/YoutubeServiceProvider;
.super Ljava/lang/Object;
.source "YoutubeServiceProvider.java"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Lcom/narvii/youtube/YoutubeService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/youtube/YoutubeService;
    .locals 1

    .line 12
    new-instance v0, Lcom/narvii/youtube/YoutubeService;

    invoke-direct {v0, p1}, Lcom/narvii/youtube/YoutubeService;-><init>(Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/services/YoutubeServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/youtube/YoutubeService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/youtube/YoutubeService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Lcom/narvii/youtube/YoutubeService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/YoutubeServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/youtube/YoutubeService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/youtube/YoutubeService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Lcom/narvii/youtube/YoutubeService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/YoutubeServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/youtube/YoutubeService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/youtube/YoutubeService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Lcom/narvii/youtube/YoutubeService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/YoutubeServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/youtube/YoutubeService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/youtube/YoutubeService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Lcom/narvii/youtube/YoutubeService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/YoutubeServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/youtube/YoutubeService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/youtube/YoutubeService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Lcom/narvii/youtube/YoutubeService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/YoutubeServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/youtube/YoutubeService;)V

    return-void
.end method
