.class public Lcom/narvii/services/PhotoServiceProvider;
.super Ljava/lang/Object;
.source "PhotoServiceProvider.java"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Lcom/narvii/photos/PhotoManager;",
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
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/photos/PhotoManager;
    .locals 1

    .line 14
    new-instance v0, Lcom/narvii/photos/PhotoManager;

    invoke-direct {v0, p1}, Lcom/narvii/photos/PhotoManager;-><init>(Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/services/PhotoServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/photos/PhotoManager;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/photos/PhotoManager;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/photos/PhotoManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/PhotoServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/photos/PhotoManager;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/photos/PhotoManager;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/photos/PhotoManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/PhotoServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/photos/PhotoManager;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/photos/PhotoManager;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/photos/PhotoManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/PhotoServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/photos/PhotoManager;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/photos/PhotoManager;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/photos/PhotoManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/PhotoServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/photos/PhotoManager;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/photos/PhotoManager;)V
    .locals 1

    .line 31
    new-instance p2, Ljava/io/File;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string/jumbo v0, "photo"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/narvii/util/Utils;->deleteDir(Ljava/io/File;)Z

    .line 32
    invoke-static {}, Lcom/narvii/comment/post/CommentPostActivity;->clearMemoryDrafts()V

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/photos/PhotoManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/PhotoServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/photos/PhotoManager;)V

    return-void
.end method
