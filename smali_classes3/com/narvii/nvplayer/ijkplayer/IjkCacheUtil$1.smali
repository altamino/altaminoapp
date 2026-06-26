.class Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil$1;
.super Ljava/lang/Object;
.source "IjkCacheUtil.java"

# interfaces
.implements Lcom/narvii/youtube/YoutubeVideoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil;->preload(Lcom/narvii/app/NVContext;Lcom/narvii/nvplayer/INVPlayer;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil;Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil$1;->this$0:Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil;

    iput-object p2, p0, Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onFinish(Ljava/lang/String;Lcom/narvii/youtube/YoutubeVideoList;)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil$1;->this$0:Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil;

    invoke-static {v0}, Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil;->access$000(Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil$1;->val$url:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil$1;->this$0:Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil;

    invoke-static {v0}, Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil;->access$100(Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil;)Lcom/narvii/video/MediaPreloadService;

    move-result-object v0

    invoke-virtual {p2}, Lcom/narvii/youtube/YoutubeVideoList;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/narvii/video/MediaPreloadService;->startPreload(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 64
    new-instance p2, Ljava/util/concurrent/FutureTask;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 65
    iget-object p1, p0, Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil$1;->this$0:Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil;

    invoke-static {p1}, Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil;->access$200(Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil;)Ljava/util/WeakHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/nvplayer/ijkplayer/IjkCacheUtil$1;->val$url:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
