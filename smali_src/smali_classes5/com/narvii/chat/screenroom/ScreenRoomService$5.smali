.class Lcom/narvii/chat/screenroom/ScreenRoomService$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/youtube/YoutubeVideoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/ScreenRoomService;->setPlayStatusReady()V
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
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$5;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iget-object p2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$5;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 3
    .line 4
    .line 5
    invoke-static {p2, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->w(Lcom/narvii/chat/screenroom/ScreenRoomService;Ljava/lang/String;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$5;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 11
    const/4 p2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2}, Lcom/narvii/chat/screenroom/ScreenRoomService;->A(Lcom/narvii/chat/screenroom/ScreenRoomService;Z)V

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$5;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 17
    .line 18
    iput-boolean p2, p1, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentPlayStarted:Z

    .line 19
    :cond_0
    return-void
.end method

.method public onFinish(Ljava/lang/String;Lcom/narvii/youtube/YoutubeVideoList;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$5;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->w(Lcom/narvii/chat/screenroom/ScreenRoomService;Ljava/lang/String;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/narvii/youtube/YoutubeVideoList;->getUrl()Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    iget-object p2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$5;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 19
    const/4 v0, 0x0

    .line 20
    .line 21
    .line 22
    invoke-static {p2, v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->A(Lcom/narvii/chat/screenroom/ScreenRoomService;Z)V

    .line 23
    .line 24
    iget-object p2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$5;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 25
    .line 26
    iget-object p2, p2, Lcom/narvii/chat/screenroom/ScreenRoomService;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$5;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    .line 32
    const/4 p2, 0x1

    .line 33
    .line 34
    .line 35
    invoke-static {p1, p2}, Lcom/narvii/chat/screenroom/ScreenRoomService;->A(Lcom/narvii/chat/screenroom/ScreenRoomService;Z)V

    .line 36
    :cond_0
    return-void
.end method
