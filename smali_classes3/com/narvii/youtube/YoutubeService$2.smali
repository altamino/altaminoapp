.class Lcom/narvii/youtube/YoutubeService$2;
.super Ljava/lang/Object;
.source "YoutubeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/youtube/YoutubeService;->exec(Ljava/lang/String;Lcom/narvii/youtube/YoutubeLoggingStub;Lcom/narvii/youtube/YoutubeVideoCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/youtube/YoutubeService;

.field final synthetic val$callback:Lcom/narvii/youtube/YoutubeVideoCallback;

.field final synthetic val$videoId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/youtube/YoutubeService;Lcom/narvii/youtube/YoutubeVideoCallback;Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/narvii/youtube/YoutubeService$2;->this$0:Lcom/narvii/youtube/YoutubeService;

    iput-object p2, p0, Lcom/narvii/youtube/YoutubeService$2;->val$callback:Lcom/narvii/youtube/YoutubeVideoCallback;

    iput-object p3, p0, Lcom/narvii/youtube/YoutubeService$2;->val$videoId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService$2;->val$callback:Lcom/narvii/youtube/YoutubeVideoCallback;

    iget-object v1, p0, Lcom/narvii/youtube/YoutubeService$2;->val$videoId:Ljava/lang/String;

    const/16 v2, 0x9

    const-string v3, "videoId is null"

    invoke-interface {v0, v1, v2, v3}, Lcom/narvii/youtube/YoutubeVideoCallback;->onFail(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
