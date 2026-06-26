.class public Lcom/narvii/semicontext/SemiNavigatorProvider;
.super Ljava/lang/Object;
.source "SemiNavigatorProvider.java"

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

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/app/incubator/IncubatorNavigator;
    .locals 3

    .line 18
    sget-boolean v0, Lcom/narvii/semicontext/SemiNavigatorProvider;->schemeInited:Z

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/narvii/util/PackageUtils;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->getMasterScheme()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/narvii/semicontext/SemiNavigatorProvider;->scheme:Ljava/lang/String;

    const/4 v0, 0x1

    .line 21
    sput-boolean v0, Lcom/narvii/semicontext/SemiNavigatorProvider;->schemeInited:Z

    .line 23
    :cond_0
    new-instance v0, Lcom/narvii/app/incubator/IncubatorNavigator;

    sget-object v1, Lcom/narvii/semicontext/SemiNavigatorProvider;->scheme:Ljava/lang/String;

    move-object v2, p1

    check-cast v2, Lcom/narvii/semicontext/SemiActivity;

    invoke-virtual {v2}, Lcom/narvii/semicontext/SemiActivity;->communityId()I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcom/narvii/app/incubator/IncubatorNavigator;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;I)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/narvii/semicontext/SemiNavigatorProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/app/incubator/IncubatorNavigator;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/app/incubator/IncubatorNavigator;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p2, Lcom/narvii/app/incubator/IncubatorNavigator;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/semicontext/SemiNavigatorProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/app/incubator/IncubatorNavigator;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/app/incubator/IncubatorNavigator;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p2, Lcom/narvii/app/incubator/IncubatorNavigator;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/semicontext/SemiNavigatorProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/app/incubator/IncubatorNavigator;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/app/incubator/IncubatorNavigator;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p2, Lcom/narvii/app/incubator/IncubatorNavigator;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/semicontext/SemiNavigatorProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/app/incubator/IncubatorNavigator;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/app/incubator/IncubatorNavigator;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p2, Lcom/narvii/app/incubator/IncubatorNavigator;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/semicontext/SemiNavigatorProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/app/incubator/IncubatorNavigator;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/app/incubator/IncubatorNavigator;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p2, Lcom/narvii/app/incubator/IncubatorNavigator;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/semicontext/SemiNavigatorProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/app/incubator/IncubatorNavigator;)V

    return-void
.end method
