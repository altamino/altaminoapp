.class public final Lcom/narvii/chat/service/MyChatListServiceProvider;
.super Ljava/lang/Object;
.source "MyChatListServiceProvider.kt"

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

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/chat/service/MyChatListService;
    .locals 3

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Lcom/narvii/chat/service/MyChatListService;

    invoke-direct {v0, p1}, Lcom/narvii/chat/service/MyChatListService;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/chat/service/MyChatListServiceProvider;->myChatListService:Lcom/narvii/chat/service/MyChatListService;

    .line 12
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListServiceProvider;->myChatListService:Lcom/narvii/chat/service/MyChatListService;

    const/4 v1, 0x0

    const-string v2, "myChatListService"

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/narvii/chat/service/MyChatListService;->onCreate(Lcom/narvii/app/NVContext;)V

    .line 13
    iget-object p1, p0, Lcom/narvii/chat/service/MyChatListServiceProvider;->myChatListService:Lcom/narvii/chat/service/MyChatListService;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 12
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/narvii/chat/service/MyChatListServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/chat/service/MyChatListService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/chat/service/MyChatListService;)V
    .locals 0

    .line 29
    iget-object p2, p0, Lcom/narvii/chat/service/MyChatListServiceProvider;->myChatListService:Lcom/narvii/chat/service/MyChatListService;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/narvii/chat/service/MyChatListService;->onDestroy(Lcom/narvii/app/NVContext;)V

    return-void

    :cond_0
    const-string p1, "myChatListService"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p2, Lcom/narvii/chat/service/MyChatListService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/service/MyChatListServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/chat/service/MyChatListService;)V

    return-void
.end method

.method public final getMyChatListService()Lcom/narvii/chat/service/MyChatListService;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/narvii/chat/service/MyChatListServiceProvider;->myChatListService:Lcom/narvii/chat/service/MyChatListService;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "myChatListService"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/chat/service/MyChatListService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p2, Lcom/narvii/chat/service/MyChatListService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/service/MyChatListServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/chat/service/MyChatListService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/chat/service/MyChatListService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p2, Lcom/narvii/chat/service/MyChatListService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/service/MyChatListServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/chat/service/MyChatListService;)V

    return-void
.end method

.method public final setMyChatListService(Lcom/narvii/chat/service/MyChatListService;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object p1, p0, Lcom/narvii/chat/service/MyChatListServiceProvider;->myChatListService:Lcom/narvii/chat/service/MyChatListService;

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/chat/service/MyChatListService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p2, Lcom/narvii/chat/service/MyChatListService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/service/MyChatListServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/chat/service/MyChatListService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/chat/service/MyChatListService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p2, Lcom/narvii/chat/service/MyChatListService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/service/MyChatListServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/chat/service/MyChatListService;)V

    return-void
.end method
