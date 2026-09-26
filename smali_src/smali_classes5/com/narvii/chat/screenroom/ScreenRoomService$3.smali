.class Lcom/narvii/chat/screenroom/ScreenRoomService$3;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$3;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onSeek(Lnet/protyposis/android/mediaplayer/MediaPlayer;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$3;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->A(Lcom/narvii/chat/screenroom/ScreenRoomService;Z)V

    .line 7
    return-void
.end method
