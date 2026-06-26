.class public Lcom/narvii/services/MediaRecorderServiceProvider;
.super Ljava/lang/Object;
.source "MediaRecorderServiceProvider.java"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Lcom/narvii/media/MediaRecordManager;",
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
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/media/MediaRecordManager;
    .locals 1

    .line 12
    new-instance v0, Lcom/narvii/media/MediaRecordManager;

    invoke-direct {v0, p1}, Lcom/narvii/media/MediaRecordManager;-><init>(Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/services/MediaRecorderServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/media/MediaRecordManager;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/media/MediaRecordManager;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Lcom/narvii/media/MediaRecordManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/MediaRecorderServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/media/MediaRecordManager;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/media/MediaRecordManager;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Lcom/narvii/media/MediaRecordManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/MediaRecorderServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/media/MediaRecordManager;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/media/MediaRecordManager;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Lcom/narvii/media/MediaRecordManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/MediaRecorderServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/media/MediaRecordManager;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/media/MediaRecordManager;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Lcom/narvii/media/MediaRecordManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/MediaRecorderServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/media/MediaRecordManager;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/media/MediaRecordManager;)V
    .locals 0

    .line 32
    invoke-virtual {p2}, Lcom/narvii/media/MediaRecordManager;->deleteRecordDir()V

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Lcom/narvii/media/MediaRecordManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/MediaRecorderServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/media/MediaRecordManager;)V

    return-void
.end method
