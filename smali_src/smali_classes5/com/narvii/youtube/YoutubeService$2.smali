.class Lcom/narvii/youtube/YoutubeService$2;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/youtube/YoutubeService$2;->this$0:Lcom/narvii/youtube/YoutubeService;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/youtube/YoutubeService$2;->val$mp:Lcom/narvii/video/MediaPreloadService;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/youtube/YoutubeService$2;->val$videoId:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/youtube/YoutubeService$2;->val$url:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService$2;->val$mp:Lcom/narvii/video/MediaPreloadService;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/youtube/YoutubeService$2;->val$videoId:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/narvii/youtube/YoutubeService$2;->val$url:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/narvii/video/MediaPreloadService;->preload(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    return-void
.end method
