.class public Lcom/narvii/services/incubator/IncubatorFilesDirServiceProvider;
.super Ljava/lang/Object;
.source "IncubatorFilesDirServiceProvider.java"

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

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Ljava/io/File;
    .locals 4

    .line 14
    instance-of v0, p1, Lcom/narvii/services/incubator/CommunityContext;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/narvii/services/incubator/CommunityContext;

    iget v0, v0, Lcom/narvii/services/incubator/CommunityContext;->cid:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    .line 16
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    return-object v1
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/narvii/services/incubator/IncubatorFilesDirServiceProvider;->create(Lcom/narvii/app/NVContext;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Ljava/io/File;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorFilesDirServiceProvider;->destroy(Lcom/narvii/app/NVContext;Ljava/io/File;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Ljava/io/File;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorFilesDirServiceProvider;->pause(Lcom/narvii/app/NVContext;Ljava/io/File;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Ljava/io/File;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorFilesDirServiceProvider;->resume(Lcom/narvii/app/NVContext;Ljava/io/File;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Ljava/io/File;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorFilesDirServiceProvider;->start(Lcom/narvii/app/NVContext;Ljava/io/File;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Ljava/io/File;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorFilesDirServiceProvider;->stop(Lcom/narvii/app/NVContext;Ljava/io/File;)V

    return-void
.end method
