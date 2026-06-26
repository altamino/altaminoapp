.class public final Lcom/narvii/chat/waitinglist/WaitingListProvider;
.super Ljava/lang/Object;
.source "WaitingListProvider.kt"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/chat/waitinglist/WaitingListService;",
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
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/chat/waitinglist/WaitingListService;
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Lcom/narvii/chat/waitinglist/WaitingListService;

    invoke-direct {v0, p1}, Lcom/narvii/chat/waitinglist/WaitingListService;-><init>(Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/chat/waitinglist/WaitingListProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/chat/waitinglist/WaitingListService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/chat/waitinglist/WaitingListService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Lcom/narvii/chat/waitinglist/WaitingListService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/waitinglist/WaitingListProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/chat/waitinglist/WaitingListService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/chat/waitinglist/WaitingListService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Lcom/narvii/chat/waitinglist/WaitingListService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/waitinglist/WaitingListProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/chat/waitinglist/WaitingListService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/chat/waitinglist/WaitingListService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Lcom/narvii/chat/waitinglist/WaitingListService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/waitinglist/WaitingListProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/chat/waitinglist/WaitingListService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/chat/waitinglist/WaitingListService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Lcom/narvii/chat/waitinglist/WaitingListService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/waitinglist/WaitingListProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/chat/waitinglist/WaitingListService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/chat/waitinglist/WaitingListService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Lcom/narvii/chat/waitinglist/WaitingListService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/waitinglist/WaitingListProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/chat/waitinglist/WaitingListService;)V

    return-void
.end method
