.class Lcom/narvii/youtube/YoutubeService$4;
.super Ljava/lang/Object;
.source "YoutubeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/youtube/YoutubeService;->onPreloadFinished(Ljava/lang/String;Lcom/narvii/youtube/YoutubeVideoList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/youtube/YoutubeService;

.field final synthetic val$mp:Lcom/narvii/video/MediaPreloadService;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$videoId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/youtube/YoutubeService;Lcom/narvii/video/MediaPreloadService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/narvii/youtube/YoutubeService$4;->this$0:Lcom/narvii/youtube/YoutubeService;

    iput-object p2, p0, Lcom/narvii/youtube/YoutubeService$4;->val$mp:Lcom/narvii/video/MediaPreloadService;

    iput-object p3, p0, Lcom/narvii/youtube/YoutubeService$4;->val$videoId:Ljava/lang/String;

    iput-object p4, p0, Lcom/narvii/youtube/YoutubeService$4;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService$4;->val$mp:Lcom/narvii/video/MediaPreloadService;

    iget-object v1, p0, Lcom/narvii/youtube/YoutubeService$4;->val$videoId:Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/youtube/YoutubeService$4;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/video/MediaPreloadService;->preload(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
