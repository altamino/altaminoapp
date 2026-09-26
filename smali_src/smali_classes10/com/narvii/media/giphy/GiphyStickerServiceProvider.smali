.class public final Lcom/narvii/media/giphy/GiphyStickerServiceProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Lcom/narvii/media/giphy/GiphyStickerService;",
        ">;"
    }
.end annotation


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
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/media/giphy/GiphyStickerService;
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/narvii/media/giphy/GiphyStickerService;

    invoke-direct {v0, p1}, Lcom/narvii/media/giphy/GiphyStickerService;-><init>(Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/media/giphy/GiphyStickerServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/media/giphy/GiphyStickerService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/media/giphy/GiphyStickerService;)V
    .locals 0
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/media/giphy/GiphyStickerService;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/media/giphy/GiphyStickerService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/media/giphy/GiphyStickerServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/media/giphy/GiphyStickerService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/media/giphy/GiphyStickerService;)V
    .locals 0
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/media/giphy/GiphyStickerService;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/media/giphy/GiphyStickerService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/media/giphy/GiphyStickerServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/media/giphy/GiphyStickerService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/media/giphy/GiphyStickerService;)V
    .locals 0
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/media/giphy/GiphyStickerService;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/media/giphy/GiphyStickerService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/media/giphy/GiphyStickerServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/media/giphy/GiphyStickerService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/media/giphy/GiphyStickerService;)V
    .locals 0
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/media/giphy/GiphyStickerService;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/media/giphy/GiphyStickerService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/media/giphy/GiphyStickerServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/media/giphy/GiphyStickerService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/media/giphy/GiphyStickerService;)V
    .locals 0
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/media/giphy/GiphyStickerService;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/media/giphy/GiphyStickerService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/media/giphy/GiphyStickerServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/media/giphy/GiphyStickerService;)V

    return-void
.end method
