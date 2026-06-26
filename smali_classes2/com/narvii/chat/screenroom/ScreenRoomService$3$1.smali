.class Lcom/narvii/chat/screenroom/ScreenRoomService$3$1;
.super Ljava/lang/Object;
.source "ScreenRoomService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/ScreenRoomService$3;->onError(Lnet/protyposis/android/mediaplayer/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/screenroom/ScreenRoomService$3;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/ScreenRoomService$3;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$3$1;->this$1:Lcom/narvii/chat/screenroom/ScreenRoomService$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$3$1;->this$1:Lcom/narvii/chat/screenroom/ScreenRoomService$3;

    iget-object v0, v0, Lcom/narvii/chat/screenroom/ScreenRoomService$3;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->access$100(Lcom/narvii/chat/screenroom/ScreenRoomService;)V

    return-void
.end method
