.class Lcom/narvii/chat/screenroom/ScreenRoomService$11;
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


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$11;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    new-instance p1, Lcom/narvii/chat/screenroom/q;

    .line 8
    .line 9
    .line 10
    invoke-direct {p1}, Lcom/narvii/chat/screenroom/q;-><init>()V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$11;->callback:Lcom/narvii/util/Callback;

    .line 13
    return-void
.end method

.method public static synthetic a(Lcom/narvii/chat/screenroom/SRHostMicListener;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/chat/screenroom/ScreenRoomService$11;->lambda$$0(Lcom/narvii/chat/screenroom/SRHostMicListener;)V

    return-void
.end method

.method private static synthetic lambda$$0(Lcom/narvii/chat/screenroom/SRHostMicListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lcom/narvii/chat/screenroom/SRHostMicListener;->onMicMuted()V

    .line 4
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$11;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->q(Lcom/narvii/chat/screenroom/ScreenRoomService;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$11;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->v(Lcom/narvii/chat/screenroom/ScreenRoomService;Z)V

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$11;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->t(Lcom/narvii/chat/screenroom/ScreenRoomService;)Lcom/narvii/util/EventDispatcher;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$11;->callback:Lcom/narvii/util/Callback;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 26
    return-void
.end method
