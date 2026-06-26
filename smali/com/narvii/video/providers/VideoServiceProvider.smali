.class public final Lcom/narvii/video/providers/VideoServiceProvider;
.super Ljava/lang/Object;
.source "VideoServiceProvider.kt"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Lcom/narvii/video/services/VideoManager;",
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
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/video/services/VideoManager;
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v0, Lcom/narvii/video/services/VideoManager;

    invoke-direct {v0, p1}, Lcom/narvii/video/services/VideoManager;-><init>(Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/video/providers/VideoServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/video/services/VideoManager;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/video/services/VideoManager;)V
    .locals 0

    const-string p2, "ctx"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/video/services/VideoManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/video/providers/VideoServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/video/services/VideoManager;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/video/services/VideoManager;)V
    .locals 0

    const-string p2, "ctx"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/video/services/VideoManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/video/providers/VideoServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/video/services/VideoManager;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/video/services/VideoManager;)V
    .locals 0

    const-string p2, "ctx"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/video/services/VideoManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/video/providers/VideoServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/video/services/VideoManager;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/video/services/VideoManager;)V
    .locals 0

    const-string p2, "ctx"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/video/services/VideoManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/video/providers/VideoServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/video/services/VideoManager;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/video/services/VideoManager;)V
    .locals 0

    const-string p2, "ctx"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/video/services/VideoManager;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/video/providers/VideoServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/video/services/VideoManager;)V

    return-void
.end method
