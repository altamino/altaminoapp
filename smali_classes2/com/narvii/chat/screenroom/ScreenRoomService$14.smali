.class Lcom/narvii/chat/screenroom/ScreenRoomService$14;
.super Ljava/lang/Object;
.source "ScreenRoomService.java"

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

    .line 566
    iput-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$14;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 580
    iget-object p2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$14;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-static {p2, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->access$500(Lcom/narvii/chat/screenroom/ScreenRoomService;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 581
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$14;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/chat/screenroom/ScreenRoomService;->access$000(Lcom/narvii/chat/screenroom/ScreenRoomService;Z)V

    .line 582
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$14;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    iput-boolean p2, p1, Lcom/narvii/chat/screenroom/ScreenRoomService;->isCurrentPlayStarted:Z

    :cond_0
    return-void
.end method

.method public onFinish(Ljava/lang/String;Lcom/narvii/youtube/YoutubeVideoList;)V
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$14;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    invoke-static {v0, p1}, Lcom/narvii/chat/screenroom/ScreenRoomService;->access$500(Lcom/narvii/chat/screenroom/ScreenRoomService;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 570
    invoke-virtual {p2}, Lcom/narvii/youtube/YoutubeVideoList;->getUrl()Ljava/lang/String;

    move-result-object p1

    .line 571
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 572
    iget-object p2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$14;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/narvii/chat/screenroom/ScreenRoomService;->access$000(Lcom/narvii/chat/screenroom/ScreenRoomService;Z)V

    .line 573
    iget-object p2, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$14;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    iget-object p2, p2, Lcom/narvii/chat/screenroom/ScreenRoomService;->glVideoView:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-virtual {p2, p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 574
    iget-object p1, p0, Lcom/narvii/chat/screenroom/ScreenRoomService$14;->this$0:Lcom/narvii/chat/screenroom/ScreenRoomService;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/narvii/chat/screenroom/ScreenRoomService;->access$000(Lcom/narvii/chat/screenroom/ScreenRoomService;Z)V

    :cond_0
    return-void
.end method
