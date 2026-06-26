.class public final Lcom/narvii/services/AuidServiceProvider;
.super Ljava/lang/Object;
.source "AuidServiceProvider.kt"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/account/AuidService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/account/AuidService;
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v0, Lcom/narvii/account/AuidService;

    invoke-direct {v0, p1}, Lcom/narvii/account/AuidService;-><init>(Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/services/AuidServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/account/AuidService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/account/AuidService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Lcom/narvii/account/AuidService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AuidServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/account/AuidService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/account/AuidService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Lcom/narvii/account/AuidService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AuidServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/account/AuidService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/account/AuidService;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 18
    invoke-virtual {p2}, Lcom/narvii/account/AuidService;->refreshAuid()V

    :cond_0
    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Lcom/narvii/account/AuidService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AuidServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/account/AuidService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/account/AuidService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Lcom/narvii/account/AuidService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AuidServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/account/AuidService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/account/AuidService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Lcom/narvii/account/AuidService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/AuidServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/account/AuidService;)V

    return-void
.end method
