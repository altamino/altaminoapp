.class public Lcom/narvii/services/incubator/IncubatorNavigatorProvider;
.super Ljava/lang/Object;
.source "IncubatorNavigatorProvider.java"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Lcom/narvii/app/incubator/IncubatorNavigator;",
        ">;"
    }
.end annotation


# static fields
.field private static scheme:Ljava/lang/String;

.field private static schemeInited:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/app/incubator/IncubatorNavigator;
    .locals 3

    .line 17
    instance-of v0, p1, Lcom/narvii/services/incubator/CommunityContext;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/narvii/services/incubator/CommunityContext;

    iget v0, v0, Lcom/narvii/services/incubator/CommunityContext;->cid:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    sget-boolean v1, Lcom/narvii/services/incubator/IncubatorNavigatorProvider;->schemeInited:Z

    if-nez v1, :cond_1

    .line 19
    new-instance v1, Lcom/narvii/util/PackageUtils;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-virtual {v1}, Lcom/narvii/util/PackageUtils;->getMasterScheme()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/narvii/services/incubator/IncubatorNavigatorProvider;->scheme:Ljava/lang/String;

    const/4 v1, 0x1

    .line 21
    sput-boolean v1, Lcom/narvii/services/incubator/IncubatorNavigatorProvider;->schemeInited:Z

    .line 23
    :cond_1
    new-instance v1, Lcom/narvii/app/incubator/IncubatorNavigator;

    sget-object v2, Lcom/narvii/services/incubator/IncubatorNavigatorProvider;->scheme:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v0}, Lcom/narvii/app/incubator/IncubatorNavigator;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;I)V

    return-object v1
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/narvii/services/incubator/IncubatorNavigatorProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/app/incubator/IncubatorNavigator;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/app/incubator/IncubatorNavigator;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lcom/narvii/app/incubator/IncubatorNavigator;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorNavigatorProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/app/incubator/IncubatorNavigator;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/app/incubator/IncubatorNavigator;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lcom/narvii/app/incubator/IncubatorNavigator;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorNavigatorProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/app/incubator/IncubatorNavigator;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/app/incubator/IncubatorNavigator;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lcom/narvii/app/incubator/IncubatorNavigator;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorNavigatorProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/app/incubator/IncubatorNavigator;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/app/incubator/IncubatorNavigator;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lcom/narvii/app/incubator/IncubatorNavigator;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorNavigatorProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/app/incubator/IncubatorNavigator;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/app/incubator/IncubatorNavigator;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lcom/narvii/app/incubator/IncubatorNavigator;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorNavigatorProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/app/incubator/IncubatorNavigator;)V

    return-void
.end method
