.class Lcom/narvii/chat/screenroom/ScreenRoomService$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/screenroom/ScreenRoomService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field callback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/chat/screenroom/SRHostMicListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

.field v:F


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$10;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    new-instance p1, Lcom/narvii/chat/screenroom/ScreenRoomService$10$1;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService$10$1;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService$10;)V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$10;->callback:Lcom/narvii/util/Callback;

    .line 13
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$10;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->getSrHostMicLevelIndicator()F

    .line 6
    move-result v0

    .line 7
    .line 8
    iput v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$10;->v:F

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$10;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/narvii/chat/screenroom/ScreenRoomService;->rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lcom/narvii/chat/rtc/RtcService;->updateLocalUserVolume(F)V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$10;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->t(Lcom/narvii/chat/screenroom/ScreenRoomService;)Lcom/narvii/util/EventDispatcher;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$10;->callback:Lcom/narvii/util/Callback;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 27
    return-void
.end method
