.class Lcom/narvii/youtube/YoutubeService$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/youtube/YoutubeService$1;->this$0:Lcom/narvii/youtube/YoutubeService;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/youtube/YoutubeService$1;->val$callback:Lcom/narvii/youtube/YoutubeVideoCallback;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/youtube/YoutubeService$1;->val$videoId:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/youtube/YoutubeService$1;->val$callback:Lcom/narvii/youtube/YoutubeVideoCallback;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/youtube/YoutubeService$1;->val$videoId:Ljava/lang/String;

    .line 5
    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    const-string v3, "stbt"

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1, v2, v3}, Lcom/narvii/youtube/YoutubeVideoCallback;->onFail(Ljava/lang/String;ILjava/lang/String;)V

    .line 12
    return-void
.end method
