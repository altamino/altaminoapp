.class public Lcom/narvii/services/incubator/CommunityContext;
.super Ljava/lang/Object;
.source "CommunityContext.java"

# interfaces
.implements Lcom/narvii/app/NVContext;


# instance fields
.field public final cid:I

.field private parent:Lcom/narvii/app/NVContext;

.field public final serviceManager:Lcom/narvii/services/ServiceManager;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;I)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/narvii/services/incubator/CommunityContext;->parent:Lcom/narvii/app/NVContext;

    .line 19
    iput p2, p0, Lcom/narvii/services/incubator/CommunityContext;->cid:I

    .line 20
    new-instance p1, Lcom/narvii/services/ServiceManager;

    invoke-direct {p1, p0}, Lcom/narvii/services/ServiceManager;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/services/incubator/CommunityContext;->serviceManager:Lcom/narvii/services/ServiceManager;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/narvii/services/incubator/CommunityContext;->parent:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getContextId()J
    .locals 4

    .line 45
    iget v0, p0, Lcom/narvii/services/incubator/CommunityContext;->cid:I

    int-to-long v0, v0

    const-wide v2, 0x7f00000000L

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public getParentContext()Lcom/narvii/app/NVContext;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/narvii/services/incubator/CommunityContext;->parent:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public getService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/narvii/services/incubator/CommunityContext;->serviceManager:Lcom/narvii/services/ServiceManager;

    invoke-virtual {v0, p1}, Lcom/narvii/services/ServiceManager;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/narvii/services/incubator/CommunityContext;->parent:Lcom/narvii/app/NVContext;

    invoke-interface {v0, p1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/narvii/services/incubator/CommunityContext;->parent:Lcom/narvii/app/NVContext;

    invoke-interface {v0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
