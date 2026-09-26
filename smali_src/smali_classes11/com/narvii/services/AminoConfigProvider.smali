.class public Lcom/narvii/services/AminoConfigProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/app/AminoConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private config:Lcom/narvii/app/AminoConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/app/AminoConfig;
    .locals 2

    iget-object v0, p0, Lcom/narvii/services/AminoConfigProvider;->config:Lcom/narvii/app/AminoConfig;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/narvii/app/AminoConfig;

    invoke-direct {v0, p1}, Lcom/narvii/app/AminoConfig;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/services/AminoConfigProvider;->config:Lcom/narvii/app/AminoConfig;

    .line 3
    :cond_0
    instance-of v0, p1, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lcom/narvii/app/NVActivity;

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->_communityId()I

    move-result p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/narvii/services/AminoConfigProvider;->config:Lcom/narvii/app/AminoConfig;

    .line 5
    invoke-virtual {p1}, Lcom/narvii/app/AminoConfig;->getCommunityId()I

    move-result p1

    :goto_0
    if-lez p1, :cond_3

    iget-object v0, p0, Lcom/narvii/services/AminoConfigProvider;->config:Lcom/narvii/app/AminoConfig;

    .line 6
    invoke-virtual {v0}, Lcom/narvii/app/AminoConfig;->getCommunityId()I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t create x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " context in standalone app x"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/narvii/services/AminoConfigProvider;->config:Lcom/narvii/app/AminoConfig;

    invoke-virtual {p1}, Lcom/narvii/app/AminoConfig;->getCommunityId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/narvii/services/AminoConfigProvider;->config:Lcom/narvii/app/AminoConfig;

    return-object p1

    :cond_3
    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/narvii/services/AminoConfigProvider;->config:Lcom/narvii/app/AminoConfig;

    .line 8
    invoke-virtual {p1}, Lcom/narvii/app/AminoConfig;->getGlobalConfig()Lcom/narvii/app/AminoConfig;

    move-result-object p1

    return-object p1

    :cond_4
    iget-object p1, p0, Lcom/narvii/services/AminoConfigProvider;->config:Lcom/narvii/app/AminoConfig;

    return-object p1
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/services/AminoConfigProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/app/AminoConfig;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/app/AminoConfig;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/app/AminoConfig;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AminoConfigProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/app/AminoConfig;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/app/AminoConfig;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/app/AminoConfig;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AminoConfigProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/app/AminoConfig;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/app/AminoConfig;)V
    .locals 2

    .line 2
    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_1

    .line 3
    sget-boolean p1, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz p1, :cond_0

    const-wide/32 v0, 0x493e0

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x36ee80

    :goto_0
    invoke-virtual {p2, v0, v1}, Lcom/narvii/config/ConfigService;->update(J)V

    :cond_1
    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/app/AminoConfig;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AminoConfigProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/app/AminoConfig;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/app/AminoConfig;)V
    .locals 0

    .line 2
    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/narvii/app/AminoConfig;->start()V

    :cond_0
    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/app/AminoConfig;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AminoConfigProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/app/AminoConfig;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/app/AminoConfig;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/app/AminoConfig;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AminoConfigProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/app/AminoConfig;)V

    return-void
.end method
