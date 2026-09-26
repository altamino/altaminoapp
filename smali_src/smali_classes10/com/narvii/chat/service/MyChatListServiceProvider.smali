.class public final Lcom/narvii/chat/service/MyChatListServiceProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Lcom/narvii/chat/service/MyChatListService;",
        ">;"
    }
.end annotation


# instance fields
.field public myChatListService:Lcom/narvii/chat/service/MyChatListService;


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
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/chat/service/MyChatListService;
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
    new-instance v0, Lcom/narvii/chat/service/MyChatListService;

    invoke-direct {v0, p1}, Lcom/narvii/chat/service/MyChatListService;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {p0, v0}, Lcom/narvii/chat/service/MyChatListServiceProvider;->setMyChatListService(Lcom/narvii/chat/service/MyChatListService;)V

    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/service/MyChatListServiceProvider;->getMyChatListService()Lcom/narvii/chat/service/MyChatListService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/chat/service/MyChatListService;->onCreate(Lcom/narvii/app/NVContext;)V

    .line 4
    invoke-virtual {p0}, Lcom/narvii/chat/service/MyChatListServiceProvider;->getMyChatListService()Lcom/narvii/chat/service/MyChatListService;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/chat/service/MyChatListServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/chat/service/MyChatListService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/chat/service/MyChatListService;)V
    .locals 0
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/chat/service/MyChatListService;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p0}, Lcom/narvii/chat/service/MyChatListServiceProvider;->getMyChatListService()Lcom/narvii/chat/service/MyChatListService;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/narvii/chat/service/MyChatListService;->onDestroy(Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/chat/service/MyChatListService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/service/MyChatListServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/chat/service/MyChatListService;)V

    return-void
.end method

.method public final getMyChatListService()Lcom/narvii/chat/service/MyChatListService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListServiceProvider;->myChatListService:Lcom/narvii/chat/service/MyChatListService;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    :cond_0
    const-string v0, "myChatListService"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/chat/service/MyChatListService;)V
    .locals 0
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/chat/service/MyChatListService;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/chat/service/MyChatListService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/service/MyChatListServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/chat/service/MyChatListService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/chat/service/MyChatListService;)V
    .locals 0
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/chat/service/MyChatListService;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/chat/service/MyChatListService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/service/MyChatListServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/chat/service/MyChatListService;)V

    return-void
.end method

.method public final setMyChatListService(Lcom/narvii/chat/service/MyChatListService;)V
    .locals 1
    .param p1    # Lcom/narvii/chat/service/MyChatListService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/narvii/chat/service/MyChatListServiceProvider;->myChatListService:Lcom/narvii/chat/service/MyChatListService;

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/chat/service/MyChatListService;)V
    .locals 0
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/chat/service/MyChatListService;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/chat/service/MyChatListService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/service/MyChatListServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/chat/service/MyChatListService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/chat/service/MyChatListService;)V
    .locals 0
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/chat/service/MyChatListService;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/chat/service/MyChatListService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/service/MyChatListServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/chat/service/MyChatListService;)V

    return-void
.end method
