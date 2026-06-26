.class Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer$1;
.super Ljava/lang/Object;
.source "NVIjkPlayer.java"

# interfaces
.implements Lcom/narvii/youtube/YoutubeVideoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->quickSetting(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$currentYtvFlag:I

.field final synthetic val$ytv:Ljava/lang/String;

.field final synthetic val$ytvUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer$1;->this$0:Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;

    iput-object p2, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer$1;->val$ytvUrl:Ljava/lang/String;

    iput p3, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer$1;->val$currentYtvFlag:I

    iput-object p4, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer$1;->val$ytv:Ljava/lang/String;

    iput-object p5, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 149
    iget-object p1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer$1;->this$0:Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;

    iget-object p2, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer$1;->val$ytvUrl:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->access$000(Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 152
    :cond_0
    iget-object p1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer$1;->this$0:Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;

    invoke-static {p1}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->access$600(Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;)Lcom/narvii/nvplayer/IVideoListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 153
    iget-object p1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer$1;->this$0:Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;

    invoke-static {p1}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->access$600(Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;)Lcom/narvii/nvplayer/IVideoListener;

    move-result-object p1

    new-instance p2, Lcom/narvii/nvplayer/NVVideoException;

    invoke-direct {p2, p3}, Lcom/narvii/nvplayer/NVVideoException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/narvii/nvplayer/IVideoListener;->onPlayerError(Lcom/narvii/nvplayer/NVVideoException;)V

    .line 155
    :cond_1
    iget-object p1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer$1;->this$0:Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;

    invoke-static {p1}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->access$700(Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;)Lcom/narvii/nvplayer/VideoLogHelper;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/narvii/nvplayer/VideoLogHelper;->onPlayError(I)V

    return-void
.end method

.method public onFinish(Ljava/lang/String;Lcom/narvii/youtube/YoutubeVideoList;)V
    .locals 1

    .line 130
    iget-object p1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer$1;->this$0:Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;

    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer$1;->val$ytvUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->access$000(Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 133
    :cond_0
    iget p1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer$1;->val$currentYtvFlag:I

    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer$1;->this$0:Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;

    invoke-static {v0}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->access$100(Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;)I

    move-result v0

    if-eq p1, v0, :cond_1

    return-void

    .line 136
    :cond_1
    invoke-virtual {p2}, Lcom/narvii/youtube/YoutubeVideoList;->getUrl()Ljava/lang/String;

    move-result-object p1

    .line 137
    iget-object p2, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer$1;->this$0:Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;

    invoke-static {p2}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->access$200(Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;)Lcom/narvii/video/MediaPreloadService;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 139
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer$1;->val$ytv:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Lcom/narvii/video/MediaPreloadService;->translateUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 141
    :cond_2
    iget-object p2, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer$1;->this$0:Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;

    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer$1;->val$context:Landroid/content/Context;

    invoke-static {p2, v0, p1}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->access$300(Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;Landroid/content/Context;Ljava/lang/String;)V

    .line 142
    iget-object p1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer$1;->this$0:Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->setLoop(Z)V

    .line 143
    iget-object p1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer$1;->this$0:Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;

    invoke-static {p1, p2}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->access$400(Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;Z)V

    .line 144
    iget-object p1, p0, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer$1;->this$0:Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;

    invoke-static {p1}, Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;->access$500(Lcom/narvii/nvplayer/ijkplayer/NVIjkPlayer;)V

    return-void
.end method
