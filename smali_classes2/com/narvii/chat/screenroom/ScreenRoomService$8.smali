.class Lcom/narvii/chat/screenroom/ScreenRoomService$8;
.super Ljava/lang/Object;
.source "ScreenRoomService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/ScreenRoomService;->checkSRHostLoading(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/ScreenRoomService;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$8;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 311
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$8;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    iget-boolean v1, v0, Lcom/narvii/chat/screenroom/ScreenRoomService;->screenRoomHostDataCame:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 312
    invoke-static {v0, v1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->access$300(Lcom/narvii/chat/screenroom/ScreenRoomService;Z)V

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$8;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/narvii/chat/screenroom/ScreenRoomService;->screenRoomHostDataCame:Z

    .line 315
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/narvii/chat/screenroom/ScreenRoomService;->screenRoomHostLoadingCheckRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
