.class public Lcom/narvii/services/ThemePackServiceProvider;
.super Ljava/lang/Object;
.source "ThemePackServiceProvider.java"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Lcom/narvii/theme/ThemePackService;",
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
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/theme/ThemePackService;
    .locals 1

    .line 12
    new-instance v0, Lcom/narvii/theme/ThemePackService;

    invoke-direct {v0, p1}, Lcom/narvii/theme/ThemePackService;-><init>(Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/services/ThemePackServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/theme/ThemePackService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/theme/ThemePackService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Lcom/narvii/theme/ThemePackService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/ThemePackServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/theme/ThemePackService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/theme/ThemePackService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Lcom/narvii/theme/ThemePackService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/ThemePackServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/theme/ThemePackService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/theme/ThemePackService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Lcom/narvii/theme/ThemePackService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/ThemePackServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/theme/ThemePackService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/theme/ThemePackService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Lcom/narvii/theme/ThemePackService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/ThemePackServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/theme/ThemePackService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/theme/ThemePackService;)V
    .locals 3

    .line 31
    invoke-virtual {p2}, Lcom/narvii/theme/ThemePackService;->cancelAll()V

    .line 32
    invoke-virtual {p2}, Lcom/narvii/theme/ThemePackService;->cleanCache()V

    const/16 p1, 0x96

    const/16 v0, 0x32

    const-wide/32 v1, 0xa4cb800

    .line 33
    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/narvii/theme/ThemePackService;->trim(IIJ)V

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Lcom/narvii/theme/ThemePackService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/ThemePackServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/theme/ThemePackService;)V

    return-void
.end method
