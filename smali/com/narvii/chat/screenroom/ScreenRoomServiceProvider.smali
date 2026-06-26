.class public Lcom/narvii/chat/screenroom/ScreenRoomServiceProvider;
.super Ljava/lang/Object;
.source "ScreenRoomServiceProvider.java"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/chat/screenroom/ScreenRoomService;",
        ">;"
    }
.end annotation


# instance fields
.field screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/chat/screenroom/ScreenRoomService;
    .locals 1

    .line 16
    new-instance v0, Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-direct {v0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomServiceProvider;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 17
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomServiceProvider;->screenRoomService:Lcom/narvii/chat/screenroom/ScreenRoomService;

    return-object p1
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomServiceProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/chat/screenroom/ScreenRoomService;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/chat/screenroom/ScreenRoomService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/screenroom/ScreenRoomServiceProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/chat/screenroom/ScreenRoomService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/screenroom/ScreenRoomServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/chat/screenroom/ScreenRoomService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/screenroom/ScreenRoomServiceProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/chat/screenroom/ScreenRoomService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/screenroom/ScreenRoomServiceProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/chat/screenroom/ScreenRoomService;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/screenroom/ScreenRoomServiceProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    return-void
.end method
