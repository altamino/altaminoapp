.class Lcom/narvii/chat/screenroom/ScreenRoomService$23$1;
.super Ljava/lang/Object;
.source "ScreenRoomService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/ScreenRoomService$23;->onFrameAvailable(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/screenroom/ScreenRoomService$23;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/ScreenRoomService$23;I)V
    .locals 0

    .line 1018
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$23$1;->this$1:Lcom/narvii/chat/screenroom/ScreenRoomService$23;

    iput p2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$23$1;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1021
    iget v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$23$1;->val$uid:I

    iget-object v1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$23$1;->this$1:Lcom/narvii/chat/screenroom/ScreenRoomService$23;

    iget v2, v1, Lcom/narvii/chat/screenroom/ScreenRoomService$23;->val$hostUid:I

    if-ne v0, v2, :cond_0

    .line 1022
    iget-object v0, v1, Lcom/narvii/chat/screenroom/ScreenRoomService$23;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->access$300(Lcom/narvii/chat/screenroom/ScreenRoomService;Z)V

    .line 1023
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$23$1;->this$1:Lcom/narvii/chat/screenroom/ScreenRoomService$23;

    iget-object v0, v0, Lcom/narvii/chat/screenroom/ScreenRoomService$23;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/narvii/chat/screenroom/ScreenRoomService;->screenRoomHostDataCame:Z

    :cond_0
    return-void
.end method
