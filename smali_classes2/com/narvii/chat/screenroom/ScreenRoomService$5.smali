.class Lcom/narvii/chat/screenroom/ScreenRoomService$5;
.super Ljava/lang/Object;
.source "ScreenRoomService.java"

# interfaces
.implements Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/ScreenRoomService;->setGlVideoView(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)V
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

    .line 181
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$5;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeek(Lnet/protyposis/android/mediaplayer/MediaPlayer;)V
    .locals 1

    .line 184
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$5;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->access$000(Lcom/narvii/chat/screenroom/ScreenRoomService;Z)V

    return-void
.end method
