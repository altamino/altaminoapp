.class Lcom/narvii/chat/screenroom/ScreenRoomService$25;
.super Ljava/lang/Object;
.source "ScreenRoomService.java"

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


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V
    .locals 0

    .line 1185
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$25;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1186
    new-instance p1, Lcom/narvii/chat/screenroom/ScreenRoomService$25$1;

    invoke-direct {p1, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService$25$1;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService$25;)V

    iput-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$25;->callback:Lcom/narvii/util/Callback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1195
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$25;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->access$700(Lcom/narvii/chat/screenroom/ScreenRoomService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1196
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$25;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->access$702(Lcom/narvii/chat/screenroom/ScreenRoomService;Z)Z

    .line 1198
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$25;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->access$600(Lcom/narvii/chat/screenroom/ScreenRoomService;)Lcom/narvii/util/EventDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$25;->callback:Lcom/narvii/util/Callback;

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method
