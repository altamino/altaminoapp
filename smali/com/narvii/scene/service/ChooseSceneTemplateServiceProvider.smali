.class public final Lcom/narvii/scene/service/ChooseSceneTemplateServiceProvider;
.super Ljava/lang/Object;
.source "ChooseSceneTemplateServiceProvider.kt"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Lcom/narvii/scene/service/ChooseSceneTemplateService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/scene/service/ChooseSceneTemplateService;
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/narvii/scene/service/ChooseSceneTemplateService;

    invoke-direct {v0, p1}, Lcom/narvii/scene/service/ChooseSceneTemplateService;-><init>(Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/narvii/scene/service/ChooseSceneTemplateServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/scene/service/ChooseSceneTemplateService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/scene/service/ChooseSceneTemplateService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p2, Lcom/narvii/scene/service/ChooseSceneTemplateService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/scene/service/ChooseSceneTemplateServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/scene/service/ChooseSceneTemplateService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/scene/service/ChooseSceneTemplateService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p2, Lcom/narvii/scene/service/ChooseSceneTemplateService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/scene/service/ChooseSceneTemplateServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/scene/service/ChooseSceneTemplateService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/scene/service/ChooseSceneTemplateService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p2, Lcom/narvii/scene/service/ChooseSceneTemplateService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/scene/service/ChooseSceneTemplateServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/scene/service/ChooseSceneTemplateService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/scene/service/ChooseSceneTemplateService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p2, Lcom/narvii/scene/service/ChooseSceneTemplateService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/scene/service/ChooseSceneTemplateServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/scene/service/ChooseSceneTemplateService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/scene/service/ChooseSceneTemplateService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p2, Lcom/narvii/scene/service/ChooseSceneTemplateService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/scene/service/ChooseSceneTemplateServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/scene/service/ChooseSceneTemplateService;)V

    return-void
.end method
