.class public Lcom/narvii/services/FilesDirServiceProvider;
.super Ljava/lang/Object;
.source "FilesDirServiceProvider.java"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Ljava/io/File;",
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
.method public create(Lcom/narvii/app/NVContext;)Ljava/io/File;
    .locals 0

    .line 13
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/services/FilesDirServiceProvider;->create(Lcom/narvii/app/NVContext;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Ljava/io/File;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/FilesDirServiceProvider;->destroy(Lcom/narvii/app/NVContext;Ljava/io/File;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Ljava/io/File;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/FilesDirServiceProvider;->pause(Lcom/narvii/app/NVContext;Ljava/io/File;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Ljava/io/File;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/FilesDirServiceProvider;->resume(Lcom/narvii/app/NVContext;Ljava/io/File;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Ljava/io/File;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/FilesDirServiceProvider;->start(Lcom/narvii/app/NVContext;Ljava/io/File;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Ljava/io/File;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/FilesDirServiceProvider;->stop(Lcom/narvii/app/NVContext;Ljava/io/File;)V

    return-void
.end method
