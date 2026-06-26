.class public Lcom/narvii/util/services/TopActivityServiceProvider;
.super Ljava/lang/Object;
.source "TopActivityServiceProvider.java"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/util/services/TopActivityService;",
        ">;"
    }
.end annotation


# instance fields
.field topActivityService:Lcom/narvii/util/services/TopActivityService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/util/services/TopActivityService;
    .locals 0

    .line 19
    iget-object p1, p0, Lcom/narvii/util/services/TopActivityServiceProvider;->topActivityService:Lcom/narvii/util/services/TopActivityService;

    if-nez p1, :cond_0

    .line 20
    new-instance p1, Lcom/narvii/util/services/TopActivityService;

    invoke-direct {p1}, Lcom/narvii/util/services/TopActivityService;-><init>()V

    iput-object p1, p0, Lcom/narvii/util/services/TopActivityServiceProvider;->topActivityService:Lcom/narvii/util/services/TopActivityService;

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/narvii/util/services/TopActivityServiceProvider;->topActivityService:Lcom/narvii/util/services/TopActivityService;

    return-object p1
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/narvii/util/services/TopActivityServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/util/services/TopActivityService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/util/services/TopActivityService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/narvii/util/services/TopActivityService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/services/TopActivityServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/util/services/TopActivityService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/services/TopActivityService;)V
    .locals 0

    const/4 p1, 0x0

    .line 39
    iput-object p1, p2, Lcom/narvii/util/services/TopActivityService;->topActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/narvii/util/services/TopActivityService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/services/TopActivityServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/services/TopActivityService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/util/services/TopActivityService;)V
    .locals 1

    .line 32
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 33
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p2, Lcom/narvii/util/services/TopActivityService;->topActivity:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/narvii/util/services/TopActivityService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/services/TopActivityServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/util/services/TopActivityService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/util/services/TopActivityService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/narvii/util/services/TopActivityService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/services/TopActivityServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/util/services/TopActivityService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/util/services/TopActivityService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lcom/narvii/util/services/TopActivityService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/services/TopActivityServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/util/services/TopActivityService;)V

    return-void
.end method
