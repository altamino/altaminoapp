.class Lcom/narvii/chat/screenroom/ScreenRoomService$9;
.super Ljava/lang/Object;
.source "ScreenRoomService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/ScreenRoomService;->onScreenRoomHostLoading(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

.field final synthetic val$loading:Z


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/ScreenRoomService;Z)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$9;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    iput-boolean p2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$9;->val$loading:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$9;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->access$400(Lcom/narvii/chat/screenroom/ScreenRoomService;)Lcom/narvii/util/EventDispatcher;

    move-result-object v0

    new-instance v1, Lcom/narvii/chat/screenroom/ScreenRoomService$9$1;

    invoke-direct {v1, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService$9$1;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService$9;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->safeDispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method
