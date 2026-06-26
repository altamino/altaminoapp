.class public final Lcom/narvii/chat/setting/helper/ChatWaitingListProvider;
.super Ljava/lang/Object;
.source "ChatWaitingListProvider.kt"

# interfaces
.implements Lcom/narvii/services/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/ServiceProvider<",
        "Lcom/narvii/chat/setting/helper/ChatWaitingListService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/chat/setting/helper/ChatWaitingListService;
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Lcom/narvii/chat/setting/helper/ChatWaitingListService;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/narvii/app/NVActivity;

    invoke-direct {v0, p1}, Lcom/narvii/chat/setting/helper/ChatWaitingListService;-><init>(Lcom/narvii/app/NVActivity;)V

    return-object v0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.app.NVActivity"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/chat/setting/helper/ChatWaitingListProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/chat/setting/helper/ChatWaitingListService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/chat/setting/helper/ChatWaitingListService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 7
    check-cast p2, Lcom/narvii/chat/setting/helper/ChatWaitingListService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/setting/helper/ChatWaitingListProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/chat/setting/helper/ChatWaitingListService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/chat/setting/helper/ChatWaitingListService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 7
    check-cast p2, Lcom/narvii/chat/setting/helper/ChatWaitingListService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/setting/helper/ChatWaitingListProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/chat/setting/helper/ChatWaitingListService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/chat/setting/helper/ChatWaitingListService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 7
    check-cast p2, Lcom/narvii/chat/setting/helper/ChatWaitingListService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/setting/helper/ChatWaitingListProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/chat/setting/helper/ChatWaitingListService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/chat/setting/helper/ChatWaitingListService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 7
    check-cast p2, Lcom/narvii/chat/setting/helper/ChatWaitingListService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/setting/helper/ChatWaitingListProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/chat/setting/helper/ChatWaitingListService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/chat/setting/helper/ChatWaitingListService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 7
    check-cast p2, Lcom/narvii/chat/setting/helper/ChatWaitingListService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/setting/helper/ChatWaitingListProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/chat/setting/helper/ChatWaitingListService;)V

    return-void
.end method
