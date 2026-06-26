.class Lcom/narvii/chat/screenroom/ScreenRoomService$1;
.super Ljava/lang/Object;
.source "ScreenRoomService.java"

# interfaces
.implements Lnet/protyposis/android/mediaplayer/MediaPlayer$OnInfoListener;


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

    .line 138
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$1;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Lnet/protyposis/android/mediaplayer/MediaPlayer;II)Z
    .locals 0

    const/16 p1, 0x2bd

    const/4 p3, 0x0

    if-eq p2, p1, :cond_1

    const/16 p1, 0x2be

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$1;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-static {p1, p3}, Lcom/narvii/chat/screenroom/ScreenRoomService;->access$000(Lcom/narvii/chat/screenroom/ScreenRoomService;Z)V

    goto :goto_0

    .line 143
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$1;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/narvii/chat/screenroom/ScreenRoomService;->access$000(Lcom/narvii/chat/screenroom/ScreenRoomService;Z)V

    :goto_0
    return p3
.end method
