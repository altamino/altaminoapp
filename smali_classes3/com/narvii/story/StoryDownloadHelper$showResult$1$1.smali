.class public final Lcom/narvii/story/StoryDownloadHelper$showResult$1$1;
.super Ljava/lang/Object;
.source "StoryDownloadHelper.kt"

# interfaces
.implements Lcom/narvii/video/services/VideoManager$IFetchStreamInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/StoryDownloadHelper$showResult$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lcom/narvii/story/StoryDownloadHelper$showResult$1;


# direct methods
.method constructor <init>(Lcom/narvii/story/StoryDownloadHelper$showResult$1;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 227
    iput-object p1, p0, Lcom/narvii/story/StoryDownloadHelper$showResult$1$1;->this$0:Lcom/narvii/story/StoryDownloadHelper$showResult$1;

    iput-object p2, p0, Lcom/narvii/story/StoryDownloadHelper$showResult$1$1;->$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStreamInfoFetched(Lcom/narvii/video/model/StreamInfo;)V
    .locals 4

    const-string v0, "streamInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/narvii/story/StoryDownloadHelper$showResult$1$1;->$context:Landroid/content/Context;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/narvii/story/StoryDownloadHelper$showResult$1$1;->this$0:Lcom/narvii/story/StoryDownloadHelper$showResult$1;

    iget-object v2, v2, Lcom/narvii/story/StoryDownloadHelper$showResult$1;->$filePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/narvii/video/model/StreamInfo;->durationInMs:I

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/narvii/util/image/MediaStoreUtils;->addVideo(Landroid/content/Context;Ljava/io/File;J)Landroid/net/Uri;

    .line 230
    iget-object p1, p0, Lcom/narvii/story/StoryDownloadHelper$showResult$1$1;->$context:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/narvii/story/StoryDownloadHelper$showResult$1$1;->this$0:Lcom/narvii/story/StoryDownloadHelper$showResult$1;

    iget-object v1, v1, Lcom/narvii/story/StoryDownloadHelper$showResult$1;->$filePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
