.class public final Lcom/narvii/chat/setting/helper/ChatWaitingListProvider;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/chat/setting/helper/ChatWaitingListService;
    .locals 2
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/narvii/chat/setting/helper/ChatWaitingListService;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type com.narvii.app.NVActivity"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/app/NVActivity;

    invoke-direct {v0, p1}, Lcom/narvii/chat/setting/helper/ChatWaitingListService;-><init>(Lcom/narvii/app/NVActivity;)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/chat/setting/helper/ChatWaitingListProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/chat/setting/helper/ChatWaitingListService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/chat/setting/helper/ChatWaitingListService;)V
    .locals 0
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/chat/setting/helper/ChatWaitingListService;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/chat/setting/helper/ChatWaitingListService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/setting/helper/ChatWaitingListProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/chat/setting/helper/ChatWaitingListService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/chat/setting/helper/ChatWaitingListService;)V
    .locals 0
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/chat/setting/helper/ChatWaitingListService;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/chat/setting/helper/ChatWaitingListService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/setting/helper/ChatWaitingListProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/chat/setting/helper/ChatWaitingListService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/chat/setting/helper/ChatWaitingListService;)V
    .locals 0
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/chat/setting/helper/ChatWaitingListService;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/chat/setting/helper/ChatWaitingListService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/setting/helper/ChatWaitingListProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/chat/setting/helper/ChatWaitingListService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/chat/setting/helper/ChatWaitingListService;)V
    .locals 0
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/chat/setting/helper/ChatWaitingListService;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/chat/setting/helper/ChatWaitingListService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/setting/helper/ChatWaitingListProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/chat/setting/helper/ChatWaitingListService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/chat/setting/helper/ChatWaitingListService;)V
    .locals 0
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/chat/setting/helper/ChatWaitingListService;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/chat/setting/helper/ChatWaitingListService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/setting/helper/ChatWaitingListProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/chat/setting/helper/ChatWaitingListService;)V

    return-void
.end method
