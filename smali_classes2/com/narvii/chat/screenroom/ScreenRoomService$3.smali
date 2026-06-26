.class Lcom/narvii/chat/screenroom/ScreenRoomService$3;
.super Ljava/lang/Object;
.source "ScreenRoomService.java"

# interfaces
.implements Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;


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

.field final synthetic val$glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/ScreenRoomService;Lcom/narvii/chat/screenroom/widgets/GLVideoView;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$3;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    iput-object p2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$3;->val$glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lnet/protyposis/android/mediaplayer/MediaPlayer;II)Z
    .locals 1

    .line 164
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "what:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "-extra:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$3;->val$glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-virtual {p2}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->getUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mediaPlayer"

    invoke-static {p2, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance p1, Lcom/narvii/chat/screenroom/ScreenRoomService$3$1;

    invoke-direct {p1, p0}, Lcom/narvii/chat/screenroom/ScreenRoomService$3$1;-><init>(Lcom/narvii/chat/screenroom/ScreenRoomService$3;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method
