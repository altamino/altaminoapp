.class Lcom/narvii/chat/screenroom/ScreenRoomService$23;
.super Ljava/lang/Object;
.source "ScreenRoomService.java"

# interfaces
.implements Lcom/narvii/video/pro/VideoPreProcessing$FrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/ScreenRoomService;->onChannelStarted(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

.field final synthetic val$hostUid:I


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/ScreenRoomService;I)V
    .locals 0

    .line 1015
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$23;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    iput p2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$23;->val$hostUid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(I)V
    .locals 1

    .line 1018
    new-instance v0, Lcom/narvii/chat/screenroom/ScreenRoomService$23$1;

    invoke-direct {v0, p0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService$23$1;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService$23;I)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method
