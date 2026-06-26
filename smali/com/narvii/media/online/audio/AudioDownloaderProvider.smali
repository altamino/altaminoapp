.class public Lcom/narvii/media/online/audio/AudioDownloaderProvider;
.super Ljava/lang/Object;
.source "AudioDownloaderProvider.java"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Lcom/narvii/util/fileloader/FileLoader;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/util/fileloader/FileLoader;
    .locals 1

    .line 14
    new-instance v0, Lcom/narvii/media/online/audio/AudioDownloader;

    invoke-direct {v0, p1}, Lcom/narvii/media/online/audio/AudioDownloader;-><init>(Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/narvii/media/online/audio/AudioDownloaderProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/util/fileloader/FileLoader;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/util/fileloader/FileLoader;)V
    .locals 0

    .line 40
    invoke-virtual {p2}, Lcom/narvii/util/fileloader/FileLoader;->onDestroy()V

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lcom/narvii/util/fileloader/FileLoader;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/media/online/audio/AudioDownloaderProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/util/fileloader/FileLoader;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/fileloader/FileLoader;)V
    .locals 0

    .line 30
    invoke-virtual {p2}, Lcom/narvii/util/fileloader/FileLoader;->onPause()V

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lcom/narvii/util/fileloader/FileLoader;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/media/online/audio/AudioDownloaderProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/fileloader/FileLoader;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/util/fileloader/FileLoader;)V
    .locals 0

    .line 24
    invoke-virtual {p2}, Lcom/narvii/util/fileloader/FileLoader;->onResume()V

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lcom/narvii/util/fileloader/FileLoader;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/media/online/audio/AudioDownloaderProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/util/fileloader/FileLoader;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/util/fileloader/FileLoader;)V
    .locals 0

    .line 19
    invoke-virtual {p2}, Lcom/narvii/util/fileloader/FileLoader;->onStart()V

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lcom/narvii/util/fileloader/FileLoader;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/media/online/audio/AudioDownloaderProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/util/fileloader/FileLoader;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/util/fileloader/FileLoader;)V
    .locals 0

    .line 35
    invoke-virtual {p2}, Lcom/narvii/util/fileloader/FileLoader;->onStop()V

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lcom/narvii/util/fileloader/FileLoader;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/media/online/audio/AudioDownloaderProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/util/fileloader/FileLoader;)V

    return-void
.end method
