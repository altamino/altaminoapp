.class final Lcom/narvii/video/services/VideoManager$fetchStreamInfo$1;
.super Ljava/lang/Object;
.source "VideoManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/services/VideoManager;->fetchStreamInfo(Ljava/lang/String;Lcom/narvii/video/services/VideoManager$IFetchStreamInfoCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Lcom/narvii/video/services/VideoManager$IFetchStreamInfoCallback;

.field final synthetic $input:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/video/services/VideoManager;


# direct methods
.method constructor <init>(Lcom/narvii/video/services/VideoManager;Lcom/narvii/video/services/VideoManager$IFetchStreamInfoCallback;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/services/VideoManager$fetchStreamInfo$1;->this$0:Lcom/narvii/video/services/VideoManager;

    iput-object p2, p0, Lcom/narvii/video/services/VideoManager$fetchStreamInfo$1;->$callback:Lcom/narvii/video/services/VideoManager$IFetchStreamInfoCallback;

    iput-object p3, p0, Lcom/narvii/video/services/VideoManager$fetchStreamInfo$1;->$input:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/narvii/video/services/VideoManager$fetchStreamInfo$1;->$callback:Lcom/narvii/video/services/VideoManager$IFetchStreamInfoCallback;

    iget-object v1, p0, Lcom/narvii/video/services/VideoManager$fetchStreamInfo$1;->this$0:Lcom/narvii/video/services/VideoManager;

    invoke-static {v1}, Lcom/narvii/video/services/VideoManager;->access$getDelegate$p(Lcom/narvii/video/services/VideoManager;)Lffmpeg/base/IEditor;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/video/services/VideoManager$fetchStreamInfo$1;->$input:Ljava/lang/String;

    invoke-interface {v1, v2}, Lffmpeg/base/IEditor;->fetchStreamingInfo(Ljava/lang/String;)Lcom/narvii/video/model/StreamInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/narvii/video/services/VideoManager$IFetchStreamInfoCallback;->onStreamInfoFetched(Lcom/narvii/video/model/StreamInfo;)V

    return-void
.end method
